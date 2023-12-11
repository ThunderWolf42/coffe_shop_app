
import 'package:coffe_shop_app/button/FavoriteButton.dart';
import 'package:coffe_shop_app/data/coffee.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {  
  const DetailScreen ({
    Key? key, required this.coffee,}) : super(key: key);
  final Coffee coffee;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          }, 
          icon: const Icon(Icons.arrow_back_ios_new_rounded)
          ),
          title: const Text("Detail",style: TextStyle(
            fontSize: 23,
            fontFamily: 'Sora',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
          ),
        actions: const[
          FavoriteButton()
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Hero(
                tag: coffee.imageUrl, 
                child: Container(
                  width: 340,
                  height: 240,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage(coffee.imageUrl),
                      fit: BoxFit.fill
                      ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)
                    )
                    ),
                
                ),
            ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                coffee.name, 
                style: const TextStyle(
                  color: Color(0xFF2E2D2C),
                  fontSize: 20,
                  fontFamily: 'Sora',
                  fontWeight: FontWeight.w600,
                ),
                
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                "with Chocolate", 
                style: TextStyle(
                  color: Color(0xFF9B9B9B),
                  fontSize: 12,
                  fontFamily: 'Sora',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Icon(Icons.star_border,size: 20,),
                    ),
                    Text(coffee.rating,style: const TextStyle(
                        color: Color(0xFF2F2D2C),
                        fontSize: 16,
                        fontFamily: 'Sora',
                        fontWeight: FontWeight.w600,
                      ),),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      "(230)",style: TextStyle(
                        color: Color(0xFF2F2D2C),
                        fontSize: 16,
                        fontFamily: 'Sora',
                        fontWeight: FontWeight.w600
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 160,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 44,
                      height: 44,
                      child: Image.asset('images/bean.png'),
                    ),
                    SizedBox(
                      width: 44,
                      height: 44,
                      child: Image.asset('images/milk.png'),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                width: 340,
                decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color.fromARGB(255, 0, 0, 0),
                        ),
                    ),
                  ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                "Description", style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Sora',
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: Text(coffee.description,style: const TextStyle(
                color: Color(0xFF9B9B9B),
                fontSize: 14,
                fontFamily: 'Sora',
                fontWeight: FontWeight.w600
              ),
              textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text('Size',style: TextStyle(fontSize: 16, fontFamily: 'Sora', fontWeight: FontWeight.w600),textAlign: TextAlign.start,),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {}, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 216, 17, 100). withOpacity(0.4),
                  fixedSize: const Size(96, 43),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  )
                ), 
                child: const Center(
                  child: Text("S", style: TextStyle(
                    color: Color(0xFF2F2D2C),
                    fontSize: 14,
                    fontFamily: 'Sora',
                    fontWeight: FontWeight.w400
                  ),),
                ),
                ),
                ElevatedButton(onPressed: () {}, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 17, 216, 17). withOpacity(0.4),
                  fixedSize: const Size(96, 43),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  )
                ), 
                child: const Center(
                  child: Text("M", style: TextStyle(
                    color: Color(0xFF2F2D2C),
                    fontSize: 14,
                    fontFamily: 'Sora',
                    fontWeight: FontWeight.w400
                  ),),
                ),
                ),
                ElevatedButton(onPressed: () {}, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 179, 45, 159). withOpacity(0.4),
                  fixedSize: const Size(96, 43),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  )
                ), 
                child: const Center(
                  child: Text("L", style: TextStyle(
                    color: Color(0xFF2F2D2C),
                    fontSize: 14,
                    fontFamily: 'Sora',
                    fontWeight: FontWeight.w400
                  ),),
                ),
                )
              ],
            ),
            SizedBox(
              width: 375,
              height: 121,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 30, top: 20),
                        child: Text("Price", style: TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                          fontFamily: 'Sora',
                          fontWeight: FontWeight.w400,
                        ),),
                      ),
                      Padding(padding: const EdgeInsets.only(left: 30, top: 8),
                        child: Text(coffee.price, style: const TextStyle(
                          color: Color(0xFFC67C4E),
                          fontSize: 18,
                          fontFamily: 'Sora',
                          fontWeight: FontWeight.w600,
                        ),),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 42,
                  ),
                  ElevatedButton(onPressed: () {}, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFC67C4E),
                  fixedSize: const Size(217, 62),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  )
                ), 
                child: const Center(
                  child: Text("Buy Now", style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Sora',
                    fontWeight: FontWeight.w400
                  ),),
                ),
                ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

