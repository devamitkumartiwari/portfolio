
import '../core/utils/constants.dart';

class TechnologyModel {
  final String name;
  final String logo;

  TechnologyModel(this.name, this.logo);
}

class TechnologyConstants {
  static TechnologyModel flutter = TechnologyModel("Flutter", AppConstants.flutterImage);

  static TechnologyModel composeMultiplatform = TechnologyModel("Compose Multiplatform", AppConstants.composeImage);

  static TechnologyModel nativeAndroid = TechnologyModel("Native Android", AppConstants.androidImage);

  static TechnologyModel nativeIOS = TechnologyModel("Native iOS", AppConstants.iosImage);

  static TechnologyModel springBoot = TechnologyModel("Spring Boot", AppConstants.springImage);

  static TechnologyModel java = TechnologyModel("Java", AppConstants.javaImage);

  static TechnologyModel kotlin = TechnologyModel("Kotlin", AppConstants.kotlinImage);

  static TechnologyModel javascript = TechnologyModel("Java Script", AppConstants.javascriptImage);



  static List<TechnologyModel> technologyLearned = [
    flutter,
    composeMultiplatform,
    nativeAndroid,
    nativeIOS,
    springBoot,
    java,
    kotlin,
    javascript,
  ];
}
