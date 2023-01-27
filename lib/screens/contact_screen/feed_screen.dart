import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            width: double.infinity,
            height: 600,
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.2)),
            
            // child: Image.asset(
            //   "images/BG1.jpeg"
            //   ,fit: BoxFit.cover,
            // ),
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                 
                  child: Image.asset(
                    "images/product8.png",
                    width: double.infinity,
                   fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  flex: 1,
                    child: Container(
                     decoration: BoxDecoration(color: Colors.green.withOpacity(0.2)),
            
             child: Text(""" Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
             Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
              when an unknown printer took a galley of type and scrambled it to make a 
              type specimen book.""",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize:13,
                color: Colors.white,
              ),),
                ))
              ],
            ),
          ),
           Container(
            margin: EdgeInsets.all(15),
            width: double.infinity,
            height: 600,
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.2)),
            
            // child: Image.asset(
            //   "images/BG1.jpeg"
            //   ,fit: BoxFit.cover,
            // ),
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                 
                  child: Image.asset(
                    "images/product8.png",
                    width: double.infinity,
                   fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  flex: 1,
                    child: Container(
                     decoration: BoxDecoration(color: Colors.green.withOpacity(0.2)),
             child: Text(""" Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
             Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
              when an unknown printer took a galley of type and scrambled it to make a 
              type specimen book."""),
             
                ))
              ],
            ),
          ),
           Container(
            margin: EdgeInsets.all(15),
            width: double.infinity,
            height: 600,
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.2)),
            
            // child: Image.asset(
            //   "images/BG1.jpeg"
            //   ,fit: BoxFit.cover,
            // ),
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                 
                  child: Image.asset(
                    "images/product8.png",
                    width: double.infinity,
                   fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  flex: 1,
                    child: Container(
                     decoration: BoxDecoration(color: Colors.green.withOpacity(0.2)),
            
              child: Text(""" Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
             Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
              when an unknown printer took a galley of type and scrambled it to make a 
              type specimen book.""",
              ),
                ))
              ],
            ),
          )
          
        ],
      ),
    );
  }
}
