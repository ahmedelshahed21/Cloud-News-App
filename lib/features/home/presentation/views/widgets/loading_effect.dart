import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingEffect extends StatelessWidget {
  const LoadingEffect({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Padding(
          padding: const EdgeInsets.only(bottom:24.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white70
                ),
                height: 200,
                width: double.infinity,
              ),
              const SizedBox(
                height: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 12,
                    width: 350,
                    color: Colors.white70,
                  ),
                  const SizedBox(height: 5),
                  Container(
                    height: 12,
                    width: 200,
                    color: Colors.white70,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 8,
                    width: 400,
                    color: Colors.white70,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 8,
                    width: 350,
                    color: Colors.white70,
                  ),
                ],
              ),
            ],
          ),
        )
    );
  }
}