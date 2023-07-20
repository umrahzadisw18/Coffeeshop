import 'package:coffee_shop/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(top: 100, bottom: 40),
        decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage("images/bg.png"),
              fit: BoxFit.cover,
              opacity: 0.6,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Coffee Shop",
              style: GoogleFonts.pacifico(
                fontSize: 50,
                color: Colors.white,
              ),
            ),
            Column(
              children: [
                Text(
                  "Feeling low? Take a sip of coffee",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white.withOpacity(0.8),
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(height: 80,),
                InkWell(
                  splashColor: Colors.black,
                  onTap: () {
                    Navigator.push(context ,MaterialPageRoute(
                      builder: (context)=> HomeScreen()));
                  },
                child: Ink(
                  child: Container(
                  padding: EdgeInsets.symmetric(vertical:15 ,horizontal: 50),
                  decoration: BoxDecoration(
                    color: Color(0xFFE57734),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:Text("Get Start",style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w500,
                  ),),
                  ),
                ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
