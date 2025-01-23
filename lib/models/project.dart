

import '../core/utils/constants.dart';
import 'link.dart';
import 'technology.dart';

class ProjectModel {
  final String project;
  final String title;
  final String description;
  final String? appPhotos;
  final String projectLink;
  final bool internalLink;
  final List<TechnologyModel> techUsed;
  List<LinkModel>? links = [];
  final String? buttonText;

  ProjectModel({
    required this.project,
    required this.title,
    required this.description,
    this.appPhotos,
    required this.projectLink,
    this.internalLink = false,
    required this.techUsed,
    this.buttonText,
    this.links,
  });

  static List<ProjectModel> projects = [
    ProjectModel(
      project: "Flutter Package",
      title: "device_safety_info",
      description:
          "This Plugin used to find Flutter JailBreak, Rooted, Emulator/Simulator, External storage and Screen Lock detection.",
      appPhotos: AppConstants.flutterImage,
      projectLink: "https://pub.dev/packages/device_safety_info",
      techUsed: [
        TechnologyConstants.flutter,
      ],
      buttonText: "Pub Dev",
    ),
    ProjectModel(
      project: "Flutter Package",
      title: "awesome_custom_dialog",
      description:
      "This Plugin used to design custom dialogs in flutter.",
      appPhotos: AppConstants.flutterImage,
      projectLink: "https://pub.dev/packages/awesome_custom_dialog",
      techUsed: [
        TechnologyConstants.flutter,
      ],
      buttonText: "Pub Dev",
    ),
    ProjectModel(
      project: "Flutter Package",
      title: "svg_image_flutter",
      description:
      "This Plugin used to integrate SVG images in flutter app.",
      appPhotos: AppConstants.flutterImage,
      projectLink: "https://pub.dev/packages/svg_image_flutter",
      techUsed: [
        TechnologyConstants.flutter,
      ],
      buttonText: "Pub Dev",
    ),

  ];

  static List<ProjectModel> demos = [
    ProjectModel(
      project: "Portfolio",
      title: "Portfolio",
      description: "",
      appPhotos: AppConstants.portfolioGif,
      projectLink: "https://amitkumartiwarimobiledeveloper.web.app/",
      techUsed: [],
      buttonText: "Github Link",
    ),
  ];
}
