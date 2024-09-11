import 'package:e_commerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:e_commerce/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:flutter/material.dart';

class CPrimaryHeaderContainer extends StatelessWidget {
  const CPrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CCurvedEdgesWidget(
      child: Container(
        color: Colors.blue,
        padding: const EdgeInsets.all(0.0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(top: -150,right: -250,child: CCircularContainer(backgroundColor: const Color.fromARGB(255, 177, 211, 240).withOpacity(0.3),)),
              Positioned(top: 100,right: -300,child: CCircularContainer(backgroundColor: const Color.fromARGB(255, 177, 211, 240).withOpacity(0.3),)),
              child,
            ],
          ),
        ),
      ),
    );
  }
}

