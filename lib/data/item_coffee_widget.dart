import 'package:coffe_shop_app/data/coffee.dart';
import 'package:coffe_shop_app/page/detail_page.dart';
import 'package:flutter/material.dart';

class item_Coffee extends StatelessWidget {
  const item_Coffee({Key? key,required this.coffee,}) : super(key: key);
  final Coffee coffee;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen(coffee: coffee);
                }
                )
                );
              },
                child: Card(
                        elevation: 2,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(
                          children: [
                            Hero(
                                tag: coffee.imageUrl,
                                child: SizedBox(
                                  width: 150,
                                  child: Image.asset(coffee.imageUrl),
                                )),
                            const SizedBox(
                              height: 6,
                            ),
                            const Text(
                              "Cappucino",
                              style: TextStyle(
                                color: Color(0xFF2F2D2C),
                                fontSize: 16,
                                fontFamily: 'Sora',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const Text(
                              'with Chocolate',
                              style: TextStyle(
                                  color: Color(0xFF9B9B9B),
                                  fontSize: 12,
                                  fontFamily: 'Sora',
                                  fontWeight: FontWeight.w400),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  '\$ 4.53',
                                  style: TextStyle(
                                      color: Color(0xFF2F4B4E),
                                      fontSize: 18,
                                      fontFamily: 'Sora',
                                      fontWeight: FontWeight.w600),
                                ),
                                Container(
                                  width: 32,
                                  height: 32,
                                  decoration: ShapeDecoration(
                                      color: const Color(0xFFC67C4E),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10))),
                                  child: const Icon(Icons.add),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
    );
    
  }
}