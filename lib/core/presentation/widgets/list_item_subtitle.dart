import 'package:flutter/material.dart';

class SubTitle extends StatelessWidget {
  final String subTitle;
  final IconData? icon;

  const SubTitle({Key? key, required this.subTitle, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: RichText(
          text: TextSpan(
            children: [
              WidgetSpan(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 4.0, vertical: 2.0),
                  child: icon != null
                      ? Icon(
                          icon,
                          size: 12.0,
                          color: Theme.of(context).colorScheme.secondary,
                        )
                      : null,
                ),
              ),
              TextSpan(
                text: subTitle,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 12.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
