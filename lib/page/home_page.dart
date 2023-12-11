import 'package:coffe_shop_app/data/item_coffee_widget.dart';
import 'package:flutter/material.dart';
import 'package:coffe_shop_app/data/coffee.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        title: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: SizedBox(
                width: 161,
                height: 37,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Location",
                      style: TextStyle(
                          color: Color(0xFFB6B6B6),
                          fontSize: 12,
                          fontFamily: 'Sora',
                          fontWeight: FontWeight.w400),
                    ),
                    Text("Menteng,Jakarta",
                        style: TextStyle(
                            color: Color(0xFFDDDDDD),
                            fontSize: 14,
                            fontFamily: 'Sora',
                            fontWeight: FontWeight.w600,
                            height: 0))
                  ],
                ),
              ),
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Container(
              width: 44,
              height: 44,
              decoration: ShapeDecoration(
                  image: const DecorationImage(
                    image: AssetImage('images/Image.png'),
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14))),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, right: 30, left: 30),
            child: Container(
              height: 60,
              width: 200,
              padding: const EdgeInsets.symmetric(
                vertical: 6.0,
                horizontal: 10.0,
              ),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 213, 202, 202),
                borderRadius: const BorderRadius.all(
                  Radius.circular(12.0),
                ),
                border: Border.all(
                  width: 1.0,
                  color: const Color.fromARGB(255, 202, 147, 147),
                ),
              ),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.search),
                  ),
                  Expanded(
                    child: TextFormField(
                      initialValue: null,
                      decoration: const InputDecoration.collapsed(
                        filled: true,
                        fillColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        hintText: "Search Coffee",
                      ),
                      onFieldSubmitted: (value) {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 0,
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Image.asset('images/coffee_promo.png'),
          ),
          const DefaultTabController(
                  length: 6,
                  child: TabBar(isScrollable: true, tabs: [
                    Tab(
                      child: Text(
                        "Cappucino ",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Tab(
                      child: Text("Machiato"),
                    ),
                    Tab(
                      child: Text("Latte"),
                    ),
                    Tab(
                      child: Text("Arabica"),
                    ),
                    Tab(
                      child: Text("Expreso"),
                    ),
                    Tab(
                      child: Text("Americano"),
                    ),
                  ])),
                Expanded(
                  child: GridView.builder(
                    
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 0.7,
                    ),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return item_Coffee(coffee: listCoffee[index]);
                    },
                    itemCount: listCoffee.length,
                  ),
                ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: ShapeDecoration(
            color: Colors.black,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: GNav(
              backgroundColor: Colors.black,
              color: Colors.yellow,
              activeColor: Colors.yellow,
              tabBackgroundColor: Color.fromARGB(255, 15, 99, 117),
              gap: 5,
              padding: EdgeInsets.all(8),
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(icon: Icons.favorite_border, text: 'Favorites'),
                GButton(
                  icon: Icons.shopping_basket_outlined,
                  text: 'Shop',
                ),
                GButton(
                  icon: Icons.notifications,
                  text: 'Notification',
                )
              ]),
        ),
      ),
    );
  }
}
