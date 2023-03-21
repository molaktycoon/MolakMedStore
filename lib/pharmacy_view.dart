import 'package:flutter/material.dart';

class PharmacyStoreView extends StatefulWidget {
  const PharmacyStoreView({super.key});

  @override
  State<PharmacyStoreView> createState() => _PharmacyStoreViewState();
}

class _PharmacyStoreViewState extends State<PharmacyStoreView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
appBar: AppBar(
  title: const Text('Pharmacy'),
),

    );
  }
}