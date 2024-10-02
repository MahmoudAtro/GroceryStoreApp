import 'package:flutter/material.dart';
import 'package:modernlogintute/core/utils/assets.dart';

class CustomHomeAppbar extends StatelessWidget {
  const CustomHomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Container(
      padding: const EdgeInsets.only(top: 10),
      // color: Colors.grey[200],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Icon(
                  Icons.location_on,
                  color: Colors.grey[700],
                  size: width * 0.044,
                ),
              ),
              Text(
                'Syria, Idlib',
                style: TextStyle(
                    fontSize: width * 0.045,
                    color: Colors.grey[800],
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Container(
              width: width * 0.18,
              height: height * 0.09,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[200],
                  image: const DecorationImage(
                    image: AssetImage(
                      myimg,
                    ),
                    fit: BoxFit.contain,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
