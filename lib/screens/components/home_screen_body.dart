import 'package:flutter/material.dart';
import 'package:learning_nice_loading_effect/screens/components/news_card.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...List.generate(
            10,
            (index) => NewsCard(),
          ),
        ],
      ),
    );
  }
}
