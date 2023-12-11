import 'package:coffe_shop_app/page/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Container(
            width: 468,
            height: 420,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/loginCoffee.png'),
                    fit: BoxFit.fill)),
          ),
          Column(
            children: [
              Container(
                decoration: const BoxDecoration(color: Colors.black),
                child: const Text(
                  "Coffee so good,            your taste buds                     will love it.",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 0.2,
              ),
            ],
          ),
          Container(
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: const BoxDecoration(color: Colors.black),
                  child: const Text(
                    "The best grain, the finest roast, the                                  powerful flavor.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                   ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:const  Color(0xFFC67C4E),                
                        minimumSize: const Size(340, 62),
                        elevation: 0,
                        ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => const HomePage() ));
                      }, 
                      child: const Text("Get Started",
                      style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600, color: Colors.white),)
                    ),
                    Container(
                      color: Colors.black,
                      width: 468,
                      height: 40,
                    )
              ],
            ),
          )
        ],
      ),
    );
  }
}
