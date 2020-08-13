import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:vendor/Components/rounded_button.dart';
import 'package:vendor/Screens/signin.dart';

class Walkthrough extends StatefulWidget {
  static const String id = 'walkthrough_screen';
  @override
  _WalkthroughState createState() => _WalkthroughState();
}

class _WalkthroughState extends State<Walkthrough> {
  final controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
           child: PageView(
             controller: controller,
             children: <Widget>[
               _Page(
                 title: 'We make things easier',
                 text: 'Lorem ipsum dolor sit amet secular\n'
                     'in seculorum',
                 amountOfPages: 4,
                 currentIndex: 0,
                 isLastPage: false,
               )
             ],
           ),
        ),
    );
  }
}

class _Page extends StatelessWidget{
  final String title;
  final String text;

  final bool isLastPage;
  final int amountOfPages;
  final int currentIndex;


  const _Page(
      {Key key,
        @required this.title,
        @required this.text,
        @required this.amountOfPages,
        @required this.currentIndex,
        this.isLastPage = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      child: Opacity(
        opacity:  1.0,
        child: Container(

          decoration: BoxDecoration(
          image: DecorationImage(
          image: AssetImage("images/car.jpg"),
    fit: BoxFit.cover,
    ),
          ),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  top: 160),
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 30,
                      color: Color(0xff61FA65),
                      fontWeight: FontWeight.w600

                  ),

                ),
              ),

              Padding(
                //padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                padding: const EdgeInsets.only(top: 50.0),
                child: Center(
                  child: Text(

                    text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,



                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: DotsIndicator(
                  dotsCount: amountOfPages,
                  position: currentIndex.roundToDouble(),
                  decorator: DotsDecorator(
                    color:Colors.white , // Inactive color
                    activeColor: Color(0xff61FA65),
                    spacing: const EdgeInsets.all(13.0),
                    size: const Size(13, 13),
                    activeSize: const Size(12, 12)

                  ),
                )
              ),

              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: RoundedButton(
                  title: 'REGISTER',
                  colour: Color(0xff009500),
                  textColor: Colors.white,
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child:InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, Signin.id);
                  },
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    ),
                  ),
                )
              )


            ],
          ),
        ),
      ),

    );
  }


}
