import 'package:bookshelf/components/button.dart';
import 'package:bookshelf/components/form.dart';
import 'package:flutter/material.dart';
import 'package:bookshelf/themes/colors.dart';

class Authentification extends StatelessWidget {
  final _keyForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [

          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image:DecorationImage(
                image: AssetImage("assets/img/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.white.withAlpha(100),
            ),
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height/3,),
                RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(text: "Book", style: Theme.of(context).textTheme.headline4),
                        TextSpan(text: "Shelf", style: Theme.of(context).textTheme.headline4.copyWith(fontWeight: FontWeight.bold))
                      ]
                  ),
                ),
                SizedBox(height: 20.0,),
                FlatButton(
                  textColor: Colors.black,
                  onPressed: () => Navigator.pushNamed(context, '/home'),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text("Start reading",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
