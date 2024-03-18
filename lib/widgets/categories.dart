import 'package:flutter/material.dart';

class VerticalRowImages extends StatelessWidget {
  const VerticalRowImages({
    super.key,
    required this.image,
    required this.title,
    this.onTap,
  });
  final String image, title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 12),
        child: Column(
          children: [
            Container(
              height: 56,
              width: 56,
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: Colors.orange,
                  width: 3,
                ),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
              // child: Center(
              //   child: ClipOval(
              //     child: Image(
              //       image: AssetImage(image),
              //       fit: BoxFit.cover,
              //     ),
              //   ),
              // ),
            ),
            const SizedBox(height: 6),
            SizedBox(
                width: 55,
                child: Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ))
          ],
        ),
      ),
    );
  }
}
