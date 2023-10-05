import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ResetpasswordView extends GetView {
  const ResetpasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ResetpasswordView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ResetpasswordView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
