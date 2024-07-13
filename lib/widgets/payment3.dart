import 'package:flutter/material.dart';

class PaymentStep3 extends StatelessWidget {
  const PaymentStep3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bước 3: Hoàn tất thanh toán"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Add your payment completion widgets here
            // Example: Button to confirm payment, success message, etc.
            // ...
          ],
        ),
      ),
    );
  }
}