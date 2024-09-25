import 'package:flutter/material.dart';
import 'package:portfolio1/details_section.dart';
import 'package:portfolio1/portfolio_app_bar.dart';
import 'package:portfolio1/white_box.dart';

class Portfolio2Screen extends StatelessWidget {
  const Portfolio2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      //backgroundColor: Colors.blue,
      appBar: PortfolioAppBar(),

      body: Column(
        children: [
          Container(
           // color: Colors.blue,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 200,
                    width: width,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(15)),
                        child: Image.asset("assets/girl2.png"),
                  ),
                ),
                
                //Align(alignment: Alignment.bottomLeft,
                 Positioned(
                 left: 0,
                  bottom: 0,
                   child: Row(
                     children: [
                       Container(
                          width: 140,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(.20),
                              borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                children: [
                                  Row(children: [
                                    Icon(Icons.facebook),
                                    SizedBox(width: 6,),
                                    Text("Facebook")
                                  ],),
                                  Text("Follow me")
                                ],
                              ),
                             
                        ),
                        SizedBox(width: 20,),
                        Container(
                          width: 140,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(.20),
                              borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                children: [
                                  Row(children: [
                                    Icon(Icons.facebook),
                                    SizedBox(width: 6,),
                                    Text("Instagram")
                                  ],),
                                  Text("Follow me")
                                ],
                              ),
                             
                        ),
                        SizedBox(width: 20,),
                        
                     ],
                   ),
                 ),
                 //),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
