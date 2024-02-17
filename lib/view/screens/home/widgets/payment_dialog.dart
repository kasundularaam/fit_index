import 'package:fit_index/view/widgets/light_box.dart';
import 'package:flutter/material.dart';

class PaymentMethodDialog extends StatelessWidget {
  const PaymentMethodDialog({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          color: Colors.white),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.workspace_premium_rounded,
                color: Colors.deepOrange,
              ),
              SizedBox(width: 12),
              Text(
                "Unlock BMI Calculation",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Divider(thickness: 1),
          SizedBox(height: 10),
          Text(
              "To continue using the BMI calculator, please select a payment method below.",
              style: TextStyle(color: Colors.black54)),
          SizedBox(height: 20),
          LightBox(
            backgroundColor: 0xFF0000FF,
            child: Row(
              children: [
                Text("Pay per Calculation:",
                    style: TextStyle(color: Colors.black54, fontSize: 18)),
                Spacer(),
                Text("\$4.99",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          SizedBox(height: 12),
          LightBox(
            backgroundColor: 0xFF0000FF,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("Monthly Subscription:",
                        style: TextStyle(color: Colors.black54, fontSize: 18)),
                    Spacer(),
                    Text("\$19.99/m",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Text("*Recommended",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 12,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
