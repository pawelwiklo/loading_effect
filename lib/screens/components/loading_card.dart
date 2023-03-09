import 'package:flutter/material.dart';

import 'package:learning_nice_loading_effect/constraints.dart';
import 'package:learning_nice_loading_effect/screens/components/gray_box.dart';

class LoadingCard extends StatelessWidget {
  const LoadingCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          bottom: kDefaultPadding,
          left: kDefaultPadding,
          right: kDefaultPadding),
      width: double.infinity,
      height: 100,
      // color: Colors.blueGrey,
      child: Row(
        children: [
          GrayBox(width: 100, height: 100),
          SizedBox(
            width: kDefaultPadding,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GrayBox(width: 100, height: 10),
                SizedBox(
                  height: kDefaultPadding / 2,
                ),
                GrayBox(width: 200, height: 10),
                SizedBox(height: kDefaultPadding / 2),
                GrayBox(width: 200, height: 10),
                SizedBox(height: kDefaultPadding / 2),
                GrayBox(width: 200, height: 10),
                Row(
                  children: [
                    GrayBox(width: 90, height: 10),
                    SizedBox(
                      width: 20,
                    ),
                    GrayBox(width: 90, height: 10),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            width: kDefaultPadding / 2,
          ),
        ],
      ),
    );
  }
}
