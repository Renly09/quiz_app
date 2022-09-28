import 'package:flutter/material.dart';

class PostsScreen extends StatefulWidget {

  static const String routeName = "/posts_screen";

  const PostsScreen({Key? key}) : super(key: key);

  @override
  _PostsScreenState createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          // Add Past (Pick image and go to create post screen)
          IconButton(onPressed: (){}, icon: const Icon(Icons.add, size: 30,)),
          // Log out(Navigate back to sign in screen)
          IconButton(onPressed: (){}, icon: const Icon(Icons.logout, size: 30,))
        ],
      ),
      body: ListView.builder(itemBuilder: (context, index,){
        return Container();
      }),
    );
  }
}
