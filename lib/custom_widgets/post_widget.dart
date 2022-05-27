import 'package:flutter/material.dart';

Widget getBlogPost({required String imageName, required String titleName}) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image(
          image: AssetImage('images/$imageName'),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        'تاریخ 15 اردیبهشت $titleName سیگنال خرید',
        textAlign: TextAlign.center,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      const SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'فروش روی : 13,100 تومان',
            style: TextStyle(color: Colors.red),
          ),
          SizedBox(width: 6),
          Icon(
            Icons.arrow_upward,
            color: Colors.red,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            'خرید روی : 12,930 تومان',
            style: TextStyle(color: Colors.green),
          ),
          SizedBox(width: 6),
          Icon(
            Icons.arrow_downward,
            color: Colors.green,
          ),
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      const SizedBox(
        width: 200,
        child: Divider(
          color: Colors.grey,
        ),
      )
    ],
  );
}
