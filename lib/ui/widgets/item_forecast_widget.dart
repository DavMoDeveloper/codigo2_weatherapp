import 'package:flutter/material.dart';

class ItemForecastWidget extends StatelessWidget {
  const ItemForecastWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16.0,bottom: 12.0),
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.12),
        borderRadius: BorderRadius.circular(50.0),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.16),
              offset: const Offset(0, 5),
              blurRadius: 12.0),
        ],
      ),
      child: Column(
        children: [
          Text(
            "10 am",
            style: TextStyle(color: Colors.white60, fontSize: 14.0),
          ),
          SizedBox(
            height: 6.0,
          ),
          Image.asset(
            'assets/images/dom.png',
            height: 38,
            color: Colors.white,
          ),
          SizedBox(
            height: 6.0,
          ),
          Text(
            "25 °c",
            style: TextStyle(color: Colors.white, fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}
