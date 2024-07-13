import 'package:flutter/material.dart';
import 'package:main_project/widgets/payment2.dart';

class PaymentStep1 extends StatefulWidget {
  const PaymentStep1({super.key});

  @override
  State<PaymentStep1> createState() => _PaymentStep1State();
}

class _PaymentStep1State extends State<PaymentStep1> {
  int _selectedPaymentMethod = 0; // Default to Google Pay

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bước 1: Chọn phương thức thanh toán"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Chọn phương thức thanh toán:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            ListTile(
              title: const Text("Google Pay"),
              leading: Image.asset(
                  'assets/images/google_pay_logo.png'), // Replace with actual Google Pay logo
              trailing: Radio<int>(
                value: 0,
                groupValue: _selectedPaymentMethod,
                onChanged: (value) {
                  setState(() {
                    _selectedPaymentMethod = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text("Google Wallet"),
              leading: Image.asset(
                  'assets/images/google_wallet_logo.png'), // Replace with actual Google Wallet logo
              trailing: Radio<int>(
                value: 1,
                groupValue: _selectedPaymentMethod,
                onChanged: (value) {
                  setState(() {
                    _selectedPaymentMethod = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text("Momo"),
              leading: Image.asset(
                  'assets/images/momo_logo.png'), // Replace with actual Momo logo
              trailing: Radio<int>(
                value: 2,
                groupValue: _selectedPaymentMethod,
                onChanged: (value) {
                  setState(() {
                    _selectedPaymentMethod = value!;
                  });
                },
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                // Proceed to the next step (PaymentStep2)
                // You can pass the selected payment method to the next screen if needed
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaymentStep2(
                      selectedPaymentMethod: _selectedPaymentMethod,
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                textStyle: const TextStyle(
                    fontSize: 16, color: Colors.orange), // Orange text
              ),
              child: const Text("Tiếp tục"),
            ),
          ],
        ),
      ),
    );
  }
}