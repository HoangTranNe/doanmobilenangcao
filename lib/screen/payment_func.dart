import 'package:flutter/material.dart';
import 'package:main_project/widgets/payment1.dart';
import 'package:main_project/widgets/payment2.dart';
import 'package:main_project/widgets/payment3.dart';

class PaymentFunc extends StatelessWidget {
  const PaymentFunc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Thanh toán"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, // Center the content
          children: [
            const Text(
              "Chọn phương thức thanh toán",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navigate to the first payment step
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PaymentStep1(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                textStyle: const TextStyle(
                    fontSize: 16, color: Colors.orange), // Orange text
              ),
              child: const Text("Bước 1: Chọn phương thức thanh toán"),
            ),
            const SizedBox(height: 16),
            const Text(
              "Xác nhận thông tin",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navigate to the second payment step
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const PaymentStep2(selectedPaymentMethod: 0),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                textStyle: const TextStyle(
                    fontSize: 16, color: Colors.orange), // Orange text
              ),
              child: const Text("Bước 2: Xác nhận thông tin"),
            ),
            const SizedBox(height: 16),
            const Text(
              "Hoàn tất thanh toán",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navigate to the third payment step
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PaymentStep3(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                textStyle: const TextStyle(
                    fontSize: 16, color: Colors.orange), // Orange text
              ),
              child: const Text("Bước 3: Hoàn tất thanh toán"),
            ),
          ],
        ),
      ),
    );
  }
}






