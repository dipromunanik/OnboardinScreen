import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:onboardingscreen/home.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  _IntroductionPageState createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'Book Shop',
                bodyWidget: const Padding(
                  padding: EdgeInsets.only(left: 20,right: 20),
                  child: Text("An online bookstore software projects that acts as a central database containing various books in stock along with their title, author and cost. This project is a website that acts as a central book store. This web project is developed using asp.net as the front end and sql as a back-end. The sql database stores various book related details.",
                  textAlign: TextAlign.justify,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Color(0xff36454F),fontFamily: 'OleoScriptSwashCaps')),
                ),
                image: Lottie.network('https://assets8.lottiefiles.com/packages/lf20_ad3uxjiv.json',fit: BoxFit.cover),
              decoration: const PageDecoration(
                titleTextStyle: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold,fontFamily: 'Oswald'),
              ),
            ),
            PageViewModel(
              title: 'Book Store',
              bodyWidget: const Padding(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: Text("Customers can get their book delivered instead of actually going and buying the book. They can make payment online itself.Managing of inventory in the shop for shopkeeper becomes easier as customers are not visiting and ordering online.This system saves both time and travelling cost of customers.",
                    textAlign: TextAlign.justify,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Color(0xff36454F),fontFamily: 'OleoScriptSwashCaps')),
              ),
              image: Lottie.network('https://assets1.lottiefiles.com/packages/lf20_wu0yt0ej.json',fit: BoxFit.cover,height: 500),
              decoration: const PageDecoration(
                  titleTextStyle: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold,fontFamily: 'Oswald')
              ),
            ),
            PageViewModel(
              title: 'Book Collect',
              bodyWidget: const Padding(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: Text("The only disadvantage is if the customer receives a book that is not in proper condition or has some kind of defect then there incurs an additional charge of posting it back.",
                    textAlign: TextAlign.justify,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Color(0xff36454F),fontFamily: 'OleoScriptSwashCaps')),
              ),
              image: Lottie.network('https://assets10.lottiefiles.com/private_files/lf30_jlnohmax.json',fit: BoxFit.cover),
              decoration: const PageDecoration(
                  titleTextStyle: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold,fontFamily: 'Oswald')
              ),
            ),
          ],
          onDone: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
          },
          done: const Text('Done',style: TextStyle(color: Colors.pink,fontWeight: FontWeight.bold,fontFamily: 'OleoScriptSwashCaps',fontSize: 35)),
          showDoneButton: true,
          skip: const Text('SKIP',style: TextStyle(color: Colors.pink,fontSize: 20,fontFamily: 'Oswald',fontWeight: FontWeight.bold)),
          showSkipButton: true,
          showNextButton: true,
          next: const Icon(Icons.arrow_forward_ios,color: Colors.pink,size: 20,),
          globalBackgroundColor: Color(0xff5c7a89),
          dotsDecorator: DotsDecorator(
            color: Colors.green,
            activeColor: Colors.orangeAccent,
            size: const Size.square(10),
            activeSize: const Size(25, 15),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            )
          ),
        ),
      ),
    );
  }
}
