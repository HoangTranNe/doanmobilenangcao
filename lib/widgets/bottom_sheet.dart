import  'package:flutter/material.dart';

class CustomBottomSheet extends StatelessWidget {

  List sizes = ['S', 'M', 'L', 'XL'];

  CustomBottomSheet({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(left:20,right:20,bottom:50),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 10,),
          Container(
            height: 4,
            width:50,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 223, 211, 211),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(height: 20,),
          Row(
            children: [
              const Text(
                "Size",
                style: TextStyle(
                  fontSize:17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: 30,),
              for(int i = 0; i< sizes.length; i++)
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: Color(0xFFF7F8FA),
                    borderRadius: 
                  ),
                )
            ],
          )
        ],
      ),
    );
  }
}