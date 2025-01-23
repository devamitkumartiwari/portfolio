import 'package:flutter/material.dart';

import '../core/utils/screen_helper.dart';
import '../pages/home/components/header.dart';


class CommonHeader extends StatelessWidget {
  const CommonHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.95),
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: ScreenHelper.isDesktop(context) ? 24 : 16.0),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HeaderLogo(),
          ],
        ),
      ),
    );
  }
}
