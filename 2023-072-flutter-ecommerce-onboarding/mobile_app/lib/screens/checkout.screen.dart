import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/screens/summary.screen.dart';

import '../widgets/checkout.widget.dart';

class CheckoutScreen extends StatefulWidget {
  static const routeName = 'checkout';

  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int activeStep = 0;
  final steps = [
    const DeliveryWidget(),
    const AddressWidget(),
    const PaymentWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
      ),
      body: Column(
        children: [
          EasyStepper(
            activeStep: activeStep,
            lineLength: 50,
            stepShape: StepShape.circle,
            stepBorderRadius: 20,
            borderThickness: 2,
            padding: const EdgeInsets.all(10),
            stepRadius: 28,
            finishedStepBorderColor: Colors.deepOrange,
            finishedStepTextColor: Colors.deepOrange,
            finishedStepBackgroundColor: Colors.deepOrange,
            activeStepIconColor: Colors.deepOrange,
            showLoadingAnimation: false,
            steps: [
              EasyStep(
                customStep: Opacity(
                  opacity: activeStep >= 0 ? 1 : 0.3,
                  child: const Icon(
                    Icons.home,
                    size: 50,
                    color: Colors.deepOrange,
                  ),
                ),
                customTitle: const Text(
                  'Delivery',
                  textAlign: TextAlign.center,
                ),
              ),
              EasyStep(
                customStep: Opacity(
                  opacity: activeStep >= 1 ? 1 : 0.3,
                  child: const Icon(
                    Icons.map,
                    size: 50,
                    color: Colors.deepOrange,
                  ),
                ),
                customTitle: const Text(
                  'Address',
                  textAlign: TextAlign.center,
                ),
              ),
              EasyStep(
                customStep: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Opacity(
                    opacity: activeStep >= 2 ? 1 : 0.3,
                    child: const Icon(
                      Icons.payment,
                      size: 50,
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
                customTitle: const Text(
                  'Payment',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          steps[activeStep],
          const SizedBox(height: 20),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (activeStep > 0)
                  Expanded(
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        foregroundColor: Colors.deepOrange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                          side: const BorderSide(
                            color: Colors.deepOrange,
                          ),
                        ),
                      ),
                      onPressed: () {
                        if (activeStep > 0) {
                          setState(() => activeStep--);
                        }
                      },
                      label: const Text('Back'),
                      icon: const Icon(Icons.arrow_back),
                    ),
                  ),
                if (activeStep > 0) const SizedBox(width: 20),
                Expanded(
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.deepOrange,
                    ),
                    onPressed: () {
                      if (activeStep < steps.length - 1) {
                        setState(() => activeStep++);
                      } else {
                        Navigator.of(context).pushNamed(SummaryScreen.routeName);
                      }
                    },
                    label: Text(
                        steps.length - 1 == activeStep ? 'Finish' : 'Next'),
                    icon: const Icon(Icons.arrow_forward),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
