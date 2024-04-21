import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PostBloc(),
      child: MaterialApp(
        title: 'Posts using Bloc',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

class Post {
  final int id;
  final String title;
  final String body;

  Post({
    required this.id,
    required this.title,
    required this.body,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}

abstract class PostEvent {}

class FetchPostsEvent extends PostEvent {}

abstract class BasePostState {}

class InitialPostState extends BasePostState {}

class LoadingPostState extends BasePostState {}

class FetchedPostState extends BasePostState {
  final List<Post> posts;

  FetchedPostState(this.posts);
}

class PostBloc extends Bloc<PostEvent, BasePostState> {
  PostBloc() : super(InitialPostState()) {
    on<FetchPostsEvent>(_fetchPosts);
  }

  Future<void> _fetchPosts(FetchPostsEvent event, Emitter<BasePostState> emit) async {
    emit(LoadingPostState());
    try {
      final response =
          await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
      if (response.statusCode == 200) {
        final List<dynamic> jsonData = json.decode(response.body);
        final posts = jsonData.map((item) => Post.fromJson(item)).toList();
        emit(FetchedPostState(posts));
      } else {
        throw Exception('Failed to fetch posts');
      }
    } catch (e) {
      emit(InitialPostState());
    }
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final postBloc = BlocProvider.of<PostBloc>(context);
    postBloc.add(FetchPostsEvent());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts using Bloc'),
      ),
      body: BlocBuilder<PostBloc, BasePostState>(
        builder: (context, state) {
          if (state is InitialPostState) {
            return const Center(child: Text('No posts available'));
          } else if (state is LoadingPostState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is FetchedPostState) {
            final posts = state.posts;
            return ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                final post = posts[index];
                return Container(
                  margin: const EdgeInsets.all(8.0),
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: ListTile(
                    title: Text(post.title),
                    subtitle: Text(post.body),
                  ),
                );
              },
            );
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}