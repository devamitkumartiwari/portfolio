import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../configs/configs.dart';

class ScrollCubit extends Cubit<ScrollController> {
  ScrollCubit() : super(ScrollController());

  ScrollController get controller => state;

  // Method to scroll on desktop/tablets
  void scroll(int index) {
    double offset = _getOffset(index, isMobile: false);

    controller.animateTo(
      AppDimensions.normalize(offset * index.toDouble()),
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  // Method to scroll on mobile
  void scrollMobile(int index) {
    double offset = _getOffset(index, isMobile: true);

    controller.animateTo(
      AppDimensions.normalize(offset * index.toDouble()),
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  // Helper function to calculate the offset based on index
  double _getOffset(int index, {required bool isMobile}) {
    if (isMobile) {
      return index == 1
          ? 290
          : index == 2
              ? 360
              : index == 3
                  ? 300
                  : 310;
    } else {
      return index == 1
          ? 270
          : index == 2
              ? 255
              : index == 3
                  ? 250
                  : 245;
    }
  }
}
