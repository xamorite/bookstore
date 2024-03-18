import 'package:flutter/material.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key, required this.text, this.icon,
  });

  final String text;
  final IconData? icon;


  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 10),
      child:  Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(color: Colors.grey),
        ),
        child: Row(
          children: [
            Icon(icon,
              color: Colors.grey.shade800,
            ),
          const  SizedBox(width: 24,),
            Text(text),
          ],
        ),
      ),
    );
  }
}