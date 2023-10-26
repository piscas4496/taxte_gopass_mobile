import 'package:flutter/material.dart';

import 'package:get/get.dart';

class PaiementView extends GetView {
  const PaiementView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PaiementView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PaiementView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
