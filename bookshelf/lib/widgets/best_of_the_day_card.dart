import 'package:bookshelf/models/book.dart';
import 'package:bookshelf/themes/colors.dart';
import 'package:bookshelf/widgets/two_side_rounded_button.dart';
import 'package:flutter/material.dart';

import 'book_rating.dart';

class bestOfTheDayCard extends StatelessWidget {
  final Book book;
  final Function pressRead;
  bestOfTheDayCard({this.book,this.pressRead,Key key,}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 245,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: 24,
                top: 24,
                right: size.width * .35,
              ),
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFEAEAEA).withOpacity(.45),
                borderRadius: BorderRadius.circular(29),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: Text(
                      "New York Time Best For 11th March 2020",
                      style: TextStyle(
                        fontSize: 9,
                        color: kLightBlackColor,
                      ),
                    ),
                  ),
                  Text(
                    book.title,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  Text(
                    book.auth,
                    style: TextStyle(color: kLightBlackColor),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10.0),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: BookRating(score: book.rating),
                        ),
                        Expanded(
                          child: Text(
                            "When the earth was flat and everyone wanted to win the game of the best and people….",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 10,
                              color: kLightBlackColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              book.image,
              width: size.width * .37,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 40,
              width: size.width * .3,
              child: TwoSideRoundedButton(
                text: "Read",
                radious: 24,
                press: pressRead,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


