import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'no_internet_component.dart';

class ErrorComponent extends StatelessWidget {
  final String errorMessage;
  final bool isAppBar;

  const ErrorComponent({
    Key? key,
    required this.errorMessage,
    this.isAppBar = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return errorMessage == 'Please check your internet connection'
        ? NoInternet(
            isAppbar: isAppBar,
          )
        : SizedBox(
            // width: 1.sw,
            // height: 1.sh,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    errorMessage,
                    style: AdaptiveTheme.of(context).theme.textTheme.headline4,
                  )
                ],
              ),
            ),
          );
  }
}
