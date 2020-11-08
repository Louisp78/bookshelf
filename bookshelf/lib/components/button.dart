import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:partytime/components/product_category.dart';
import 'package:partytime/themes/colors.dart';


class GoogleLoginButton extends StatelessWidget {
  final Function onPressed;
  GoogleLoginButton({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.white,
      shape: CircleBorder(),
      onPressed: onPressed!= null ? onPressed : (){},
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: SvgPicture.asset('assets/img/icons/google.svg', width: 25.0,)
    );
  }
}


class SmallButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final Color color;
  final Color textColor;
  SmallButton({this.text, this.onPressed,this.color, this.textColor});
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      color: color!=null ? color : Theme.of(context).accentColor,
      onPressed: onPressed,
      child: Text('$text', style: Theme.of(context).textTheme.button.copyWith(color: textColor!=null ? textColor : Colors.black),),
    );
  }
}

class NormalButton extends StatelessWidget {
   final Function onPressed;
   final String text;
   NormalButton({this.text, this.onPressed,});
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.symmetric(horizontal: 50.0),
      color: Theme.of(context).accentColor,
      onPressed: onPressed,
      child: Text('$text', style: Theme.of(context).textTheme.button,),
    );
  }
}

class NormalSvgIconButton extends StatelessWidget {
  final Function onTap;
  final String iconSvg;
  final double width;
  final Color iconColor;
  final Text text;
  final double space;
  final double textWidth;
  NormalSvgIconButton({this.iconSvg, this.onTap, this.iconColor, this.width, this.text, this.space, this.textWidth});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: text==null ? SvgPicture.asset( 'assets/img/icons/$iconSvg',width:  width== null ? 24.0 : width, color: iconColor,) :
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset( 'assets/img/icons/$iconSvg',width:  width== null ? 24.0 : width, color: iconColor,),
          SizedBox(height: space!=null ? space : 5.0,),
          textWidth == null ? text : Container(
              width: textWidth,
              child: text,
          ),
        ],
      ),
    );
  }
}

class RoundedRectangleSvgIconButton extends StatelessWidget {
  final Function onTap;
  final String iconSvg;
  final double width;
  final Color iconColor;
  final Color backColor;
  RoundedRectangleSvgIconButton({this.width, this.backColor, this.onTap, this.iconSvg, this.iconColor});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: backColor,
            width: 2.0
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(width/4),
          child: SvgPicture.asset('assets/img/icons/$iconSvg', width: width,color: iconColor)
        ),
      ),
    );
  }
}


class FormSvgIconButton extends StatelessWidget {
  final Function onTap;
  final String iconSvg;
  final double width;
  final Color iconColor;
  final TextFormField textFormField;
  final double textFormFieldWidth;
  final double space;
  FormSvgIconButton({this.iconSvg, this.onTap, this.iconColor, this.width, this.textFormField, this.space, this.textFormFieldWidth});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: textFormField==null ? SvgPicture.asset( 'assets/img/icons/$iconSvg',width:  width== null ? 24.0 : width, color: iconColor,) :
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset( 'assets/img/icons/$iconSvg',width:  width== null ? 24.0 : width, color: iconColor,),
          SizedBox(height: space!=null ? space : 5.0,),
          Container(
              width: textFormFieldWidth,
              child: textFormField
          ),
        ],
      ),
    );
  }
}


class BlackAndWhiteButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  BlackAndWhiteButton({this.text, this.onPressed,});
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      onPressed: onPressed,
      child: Text('$text', style: Theme.of(context).textTheme.button,),
    );
  }
}

class ValidButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  ValidButton({this.onPressed, this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(color: blueAccent, width: 2.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$text',
              style: Theme.of(context).textTheme.button.copyWith(color: blueAccent),
            ),
            SizedBox(width: 12.0,),
            SvgPicture.asset('assets/img/icons/check.svg', width: 24.0, color: blueAccent,),

          ],
        ),
      ),
    );
  }
}


class CrossButton extends StatelessWidget {
  final Function onPressed;
  CrossButton({this.onPressed});
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(Icons.close),
      iconSize: 28.0,
      color: menu,
    );
  }
}

class MenuButton extends StatelessWidget {
  final Function onPressed;
  MenuButton({this.onPressed});
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        Icons.reorder,
        size: 28.0,
        color: menu,
      ),
    );
  }
}

class CancelButton extends StatelessWidget {
  final Function onTap;
  CancelButton({this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset('assets/img/icons/cancel.svg', width: 24.0,color: Theme.of(context).accentColor,),
    );
  }
}


class CircularButton extends StatelessWidget {
  final Function onPressed;
  final Color color;
  final IconData iconData;
  final String iconSvg;
  final Color iconColor;
  final EdgeInsets padding;
  final Text text;
  CircularButton({this.onPressed, this.color, this.iconData,this.iconSvg, this.iconColor, this.padding, this.text});
  @override
  Widget build(BuildContext context) {
    return text == null ? FlatButton(
      padding: padding ?? EdgeInsets.symmetric(vertical: 7.0),
      onPressed: onPressed,
      shape: CircleBorder(
      ),
      color: color,
      child: iconSvg == null ? Icon(
        iconData,
        size : 31.0,
        color: iconColor,
      ) : SvgPicture.asset('assets/img/icons/$iconSvg', width: 31.0, color: iconColor,)
    ) : Column(
      children: [
        FlatButton(
            padding: padding ?? EdgeInsets.symmetric(vertical: 7.0),
            onPressed: onPressed,
            shape: CircleBorder(
            ),
            color: color,
            child: iconSvg == null ? Icon(
              iconData,
              size : 31.0,
              color: iconColor,
            ) : SvgPicture.asset('assets/img/icons/$iconSvg', width: 31.0, color: iconColor,)
        ),
        SizedBox(height: 5.0,),
        text
      ],
    );
  }
}

class FormCircularButton extends StatelessWidget {
  final Function onPressed;
  final Color color;
  final IconData iconData;
  final String iconSvg;
  final Color iconColor;
  final EdgeInsets padding;
  final TextFormField textFormField;
  final double textFormFieldWidth;
  FormCircularButton({this.onPressed, this.color, this.iconData,this.iconSvg, this.iconColor, this.padding, this.textFormField, this.textFormFieldWidth});
  @override
  Widget build(BuildContext context) {
    return textFormField == null ? FlatButton(
        padding: padding ?? EdgeInsets.symmetric(vertical: 7.0),
        onPressed: onPressed,
        shape: CircleBorder(
        ),
        color: color,
        child: iconSvg == null ? Icon(
          iconData,
          size : 31.0,
          color: iconColor,
        ) : SvgPicture.asset('assets/img/icons/$iconSvg', width: 31.0, color: iconColor,)
    ) : Column(
      children: [
        FlatButton(
            padding: padding ?? EdgeInsets.symmetric(vertical: 7.0),
            onPressed: onPressed,
            shape: CircleBorder(
            ),
            color: color,
            child: iconSvg == null ? Icon(
              iconData,
              size : 31.0,
              color: iconColor,
            ) : SvgPicture.asset('assets/img/icons/$iconSvg', width: 31.0, color: iconColor,)
        ),
        SizedBox(height: 5.0,),
        Container(
            width: textFormFieldWidth,
            child: textFormField
        )
      ],
    );
  }
}


class CircularRaisedButton extends StatelessWidget {
  final Function onPressed;
  final Color color;
  final IconData iconData;
  final String iconSvg;
  final Color iconColor;
  final double iconSize;
  final EdgeInsets padding;
  final Text text;
  final double elevation;
  CircularRaisedButton({this.onPressed, this.color, this.iconData,this.iconSvg, this.iconColor, this.padding, this.text,this.elevation, this.iconSize});
  @override
  Widget build(BuildContext context) {
    return text == null ? RaisedButton(
        elevation: elevation,
        padding: padding ?? EdgeInsets.symmetric(vertical: 7.0),
        onPressed: onPressed,
        shape: CircleBorder(
        ),
        color: color,
        child: iconSvg == null ? Icon(
          iconData,
          size : iconSize,
          color: iconColor,
        ) : SvgPicture.asset('assets/img/icons/$iconSvg', width: iconSize, color: iconColor,)
    ) : Column(
      children: [
        RaisedButton(
            elevation: elevation,
            padding: padding ?? EdgeInsets.symmetric(vertical: 7.0),
            onPressed: onPressed,
            shape: CircleBorder(
            ),
            color: color,
            child: iconSvg == null ? Icon(
              iconData,
              size : iconSize,
              color: iconColor,
            ) : SvgPicture.asset('assets/img/icons/$iconSvg', width: iconSize, color: iconColor,)
        ),
        SizedBox(height: 2.0,),
        text
      ],
    );
  }
}


class NotificationCounterIcon extends StatelessWidget {
  final Function onTap;
  final String counter;
  final String icon;
  final Color color;
  NotificationCounterIcon({this.icon, this.color, this.counter, this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(counter.length == 1 ? 10.0 : 5.0 + counter.length*6),
              child: SvgPicture.asset(icon, width: 28.0, color: color,),
          ),
          Positioned(
            right: 0.0,
            top: 0.0,
            child: Container(
              padding: EdgeInsets.all(3.5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: red,
              ),
              child: Text('$counter', textAlign: TextAlign.center ,style: Theme.of(context).textTheme.headline5),
            ),
          ),
        ],
      ),
    );
  }
}


class MenuCardButton extends StatelessWidget {
  final Function onTap;
  final String iconSvg;
  final String text;

  MenuCardButton({this.iconSvg, this.onTap, this.text});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Row(
          children: [
            NormalSvgIconButton(
              onTap: null,
              iconColor: blueAccent,
              width: 30.0,
              iconSvg: iconSvg,
            ),
            SizedBox(width: 20.0,),
            Text('$text', style: Theme.of(context).textTheme.headline5.copyWith(fontWeight: FontWeight.w700),),
          ],
        ),
      ),
    );
  }
}


