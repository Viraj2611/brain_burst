import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class QuizCategoryScreen extends StatelessWidget {
  const QuizCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(
            'assets/bg.svg',
          ),
          GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemCount: 50,
            itemBuilder: (context, index) {
              return Card(
                  child: Column(
                children: [
                  Icon(Icons.category),
                  Text('Quiz Title $index'),
                  Text('Quiz Subtitle $index')
                ],
              ));
            },
          )
        ],
      ),
    );
  }
}
