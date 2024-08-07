import 'package:flutter/cupertino.dart';
import  'package:flutter/material.dart';
import 'package:main_project/screen/cart_screen.dart';

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
                  decoration: BoxDecoration(
                    color: const Color(0xFFF7F8FA),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(sizes[i]),
                )
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              const Text(
                "Color",
                style: TextStyle(
                  fontSize:17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: 30,),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                padding: const EdgeInsets.all(13),
                decoration: BoxDecoration(
                  color: const Color(0xFF031C3C),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                padding: const EdgeInsets.all(13),
                decoration: BoxDecoration(
                  color: const Color(0xFF3BA48D),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                padding: const EdgeInsets.all(13),
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              const Text(
                "Tổng Tiền",
                style: TextStyle(
                  fontSize:17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: 30,),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color(0xFFF7F8FA),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Icon(
                  CupertinoIcons.minus,
                  size:18,
                  color: Colors.redAccent,
                ),
              ),
              const SizedBox(width: 8,),
              const Text(
                "01",
                style: TextStyle(
                  fontSize:17,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 8,),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color(0xFFF7F8FA),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Icon(
                  CupertinoIcons.plus,
                  size:18,
                  color: Colors.redAccent,
                ),
              ),
            ],
          ),
          const SizedBox(height: 40,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Tổng Tiền: ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "\$300.540",
                style:TextStyle(
                  color: Color(0xFFFD725A),
                  fontSize:20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30,),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => const CartScreen(),
              ));
            },
            child: Container(
              padding:const EdgeInsets.symmetric(vertical: 20,horizontal: 100),
              decoration: BoxDecoration(
                color: const Color(0xFFFD725A),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                "Kiểm tra",
                style: TextStyle(
                  fontSize:17,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                  color: Colors.white.withOpacity(0.9),
                ),
              ),
            )
          )
        ],
      ),
    );
  }
}