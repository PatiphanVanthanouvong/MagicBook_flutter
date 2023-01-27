import 'package:flutter/material.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: Center(
        child: ElevatedButton(
          
          onPressed: () {
            Navigator.pop(context);
          },
         child: Icon(
                        Icons.arrow_back_ios_new,
                        size: 25,
                      ),
          // child: Text("Payment Completed!",
          //   style: TextStyle(fontSize: 30, 
          //   fontWeight: FontWeight.bold,
          //   color: Colors.white

          //   ),
          //   ),
        ),
      ),
      
      
      backgroundColor: Color(0xff4E6859),
    
      
      
      
    );
  }
}
