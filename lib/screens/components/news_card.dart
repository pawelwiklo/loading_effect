import 'package:flutter/material.dart';
import 'package:learning_nice_loading_effect/constraints.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
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
          Container(
            width: 100,
            height: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                "assets/images/news_cover.png",
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            width: kDefaultPadding,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Euronews',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 10,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: kDefaultPadding / 2,
                ),
                Expanded(
                  child: Text(
                    'Świetne skoki Kubackiego! Wspaniały konkurs w Ga-Pa! Zdeklasował rywali i prowadzi w rywalizacji.',
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Politics',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 11,
                          fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
                      child: Icon(
                        Icons.circle,
                        size: 6,
                      ),
                    ),
                    Text(
                      '3m ago',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 11,
                          fontWeight: FontWeight.w500),
                    ),
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
