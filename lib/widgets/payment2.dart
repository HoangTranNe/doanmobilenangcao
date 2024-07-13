import 'package:flutter/material.dart';
import 'package:main_project/widgets/payments/google_pay.dart'; // Import the Google Pay widget

class PaymentStep2 extends StatelessWidget {
  final int selectedPaymentMethod;

  const PaymentStep2({super.key, required this.selectedPaymentMethod});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bước 2: Xác nhận thông tin"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Display the selected payment method
            Text(
              "Phương thức thanh toán đã chọn: ${getPaymentMethodName(selectedPaymentMethod)}",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            if (selectedPaymentMethod == 0)
              const GooglePayWidget(), // Display the Google Pay widget
            // else if (selectedPaymentMethod == 1)
            //   const GooglePayWidget(), // Display the Google Wallet widget
            // else if (selectedPaymentMethod == 2)
            //   const GooglePayWidget(), // Display the Momo widget                                                
          ],
        ),
      ),
    );
  }

  String getPaymentMethodName(int paymentMethod) {
    switch (paymentMethod) {
      case 0:
        return "Google Pay";
      case 1:
        return "Google Wallet";
      case 2:
        return "Momo";
      default:
        return "Unknown";
    }
  }
}
