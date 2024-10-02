import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/animations/entrance_fader.dart';
import 'package:portfolio/configs/configs.dart';

import '../bloc/ScrollCubit.dart';

class NavBarActionButton extends StatelessWidget {
  final String label;
  final int index;
  const NavBarActionButton({
    super.key,
    required this.label,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final scrollCubit = context.read<ScrollCubit>();

    return EntranceFader(
      offset: const Offset(0, -10),
      delay: const Duration(milliseconds: 100),
      duration: const Duration(milliseconds: 250),
      child: Container(
        margin: Space.h!,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: MaterialButton(
          splashColor: Colors.white54,
          highlightColor: Colors.white54,
          hoverColor: AppTheme.currentTheme!.primary,
          onPressed: () {
            scrollCubit.scroll(index);
          },
          child: Padding(
            padding: Space.all(0.15, 0.45),
            child: Text(
              label,
              style: AppText.l1,
            ),
          ),
        ),
      ),
    );
  }
}
