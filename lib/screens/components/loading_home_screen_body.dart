import 'package:flutter/material.dart';
import 'package:learning_nice_loading_effect/screens/components/loading_card.dart';
import 'package:learning_nice_loading_effect/screens/components/news_card.dart';

class LoadingHomeScreenBody extends StatelessWidget {
  const LoadingHomeScreenBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...List.generate(
            5,
            (index) => LoadingCard(),
          ),
        ],
      ),
    );
  }
}
