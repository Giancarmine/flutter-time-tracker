import 'package:flutter/material.dart';
import 'package:time_tracker/common_widgets/custom_raised_button.dart';

class SocialSignInButton extends CustomRaisedButton {
  SocialSignInButton({
    @required String assetName,
    @required String text,
    Color color,
    Color textColor,
    VoidCallback onPressed,
  }) : super(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(assetName),
              Text(
                text,
                style: TextStyle(
                  fontSize: 14.0,
                  color: textColor,
                ),
              ),
              Opacity(
                opacity: 0.0,
                child: Image.network(assetName),
              ),
            ],
          ),
          color: color,
          onPressed: onPressed,
        );
}
