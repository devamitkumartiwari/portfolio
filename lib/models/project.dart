
class ProjectModel {
  final String project;
  final String title;
  final String description;
  final String? appPhotos;
  final String projectLink;
  final bool internalLink;

  final String? buttonText;

  ProjectModel({
    required this.project,
    required this.title,
    required this.description,
    this.appPhotos,
    required this.projectLink,
    this.internalLink = false,
    this.buttonText,
  });

  static List<ProjectModel> projects = [
    ProjectModel(
      project: "Flutter Package",
      title: "Device Safety Info",
      description:
          "This Plugin used to find Flutter JailBreak, Rooted, Emulator/Simulator, External storage and Screen Lock detection.",
      projectLink: "https://pub.dev/packages/device_safety_info",

      buttonText: "Pub Dev",
    ),
    ProjectModel(
      project: "Flutter Package",
      title: "File Saver Plus",
      description:
      "FileSaverPlus is a mobile application that allows users to save and manage files efficiently on their devices.",
      projectLink: "https://pub.dev/packages/filesaverplus",

      buttonText: "Pub Dev",
    ),
    ProjectModel(
      project: "Flutter Package",
      title: "Awesome Custom Dialog",
      description:
      "This Plugin used to design custom dialogs in flutter.",
      projectLink: "https://pub.dev/packages/awesome_custom_dialog",

      buttonText: "Pub Dev",
    ),
    ProjectModel(
      project: "Flutter Package",
      title: "SVG Image Flutter",
      description:
      "This Plugin used to integrate SVG images in flutter app.",
      projectLink: "https://pub.dev/packages/svg_image_flutter",

      buttonText: "Pub Dev",
    ),

  ];

  static List<ProjectModel> demos = [
    ProjectModel(
      project: "Portfolio",
      title: "Portfolio",
      description: "",
      projectLink: "https://amitkumartiwarimobiledeveloper.web.app/",
      buttonText: "Github Link",
    ),
  ];
}
