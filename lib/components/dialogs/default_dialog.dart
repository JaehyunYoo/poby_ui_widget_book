import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class DefaultDialog extends StatelessWidget {
  const DefaultDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder().toggleRotate();
  }
}

extension A on Function {}

// final t =

//
// Timer? timer;
// return () {
// if (timer?.isActive ?? false) timer?.cancel();
// timer = Timer(delay, () => this.call());
// };
