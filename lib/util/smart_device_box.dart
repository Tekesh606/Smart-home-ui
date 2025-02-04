import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmartDeviceBox extends StatelessWidget {
  final String smartDeviceName;
  final String iconPath;
  final bool powerOn;
  final void Function(bool)? onChanged;
  final Color color;

  const SmartDeviceBox({
    super.key,
    required this.smartDeviceName,
    required this.iconPath,
    required this.powerOn,
    required this.onChanged,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    // Determine text and icon color based on the smart device name
    final textColor = smartDeviceName == "Smart Light" ? Colors.white : Colors.black;
    final iconColor = smartDeviceName == "Smart Light" ? Colors.white : Colors.black;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: color,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Icon
              Image.asset(
                iconPath,
                height: 65,
                color: iconColor,
              ),
              Center(
                child: Text(
                  smartDeviceName,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              CupertinoSwitch(
                value: powerOn,
                onChanged: onChanged,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
