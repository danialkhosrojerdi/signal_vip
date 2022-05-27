import 'package:flutter/material.dart';
import 'package:signal_vip/custom_widgets/post_widget.dart';

class BlogPage extends StatelessWidget {
  BlogPage({Key? key}) : super(key: key);

  final listBlogWidget = [
    getBlogPost(imageName: 'a.png', titleName: 'َAlchemy Pay'),
    getBlogPost(imageName: 'c.png', titleName: 'َCosmos'),
    getBlogPost(imageName: 'r.png', titleName: 'َRipple')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('اخبار دنیای رمزارزها'),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ...listBlogWidget,
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.red),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      'خروج از حساب کاربری',
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
