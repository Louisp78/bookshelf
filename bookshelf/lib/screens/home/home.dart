
import 'package:bookshelf/models/book.dart';
import 'package:bookshelf/screens/details/details_screen.dart';
import 'package:bookshelf/themes/colors.dart';
import 'package:bookshelf/widgets/best_of_the_day_card.dart';
import 'package:bookshelf/widgets/book_rating.dart';
import 'package:bookshelf/widgets/reading_card_list.dart';
import 'package:bookshelf/widgets/two_side_rounded_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  Book book1 = Book(
    image: "assets/images/book-1.png",
    title: "Crushing & Influence",
    auth: "Gary Venchuk",
    rating: 4.9,
  );
  Book book2 = Book(
    image: "assets/images/book-2.png",
    title: "Top Ten Business Hacks",
    auth: "Herman Joel",
    rating: 4.8,
  );

  Book book3 = Book(
    title: "How To Win \nFriends &  Influence",
    auth: "Gary Venchuk",
    image: "assets/images/book-3.png",
    rating: 4.9,
  );


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/main_page_bg.png"),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: size.height * .1),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: RichText(
                      text: TextSpan(
                        style: Theme
                            .of(context)
                            .textTheme
                            .headline4,
                        children: [
                          TextSpan(text: "What are you \nreading "),
                          TextSpan(
                              text: "today?",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        ReadingListCard(
                          book: book1,
                          pressDetails: () =>
                              Navigator.pushNamed(context, '/home/details', arguments: book1),
                        ),
                        ReadingListCard(
                          book: book2,
                          pressDetails: () =>
                              Navigator.pushNamed(context, '/home/details', arguments: book2),
                        ),
                        SizedBox(width: 30),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            style: Theme
                                .of(context)
                                .textTheme
                                .headline5,
                            children: [
                              TextSpan(text: "Best of the "),
                              TextSpan(
                                text: "day",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        bestOfTheDayCard(book: book3,),
                        RichText(
                          text: TextSpan(
                            style: Theme
                                .of(context)
                                .textTheme
                                .subtitle1,
                            children: [
                              TextSpan(text: "Continue "),
                              TextSpan(
                                text: "reading...",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(38.5),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 33,
                                color: Color(0xFFD3D3D3).withOpacity(.84),
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(38.5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding:
                                    EdgeInsets.only(left: 30, right: 20),
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.end,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                "Crushing & Influence",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                "Gary Venchuk",
                                                style: TextStyle(
                                                  color: kLightBlackColor,
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                Alignment.bottomRight,
                                                child: Text(
                                                  "Chapter 7 of 10",
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: kLightBlackColor,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 5),
                                            ],
                                          ),
                                        ),
                                        Image.asset(
                                          "assets/images/book-1.png",
                                          width: 55,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 7,
                                  width: size.width * .65,
                                  decoration: BoxDecoration(
                                    color: kProgressIndicator,
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 40),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
