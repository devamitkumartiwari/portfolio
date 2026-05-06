
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
          "A Flutter plugin for runtime device security checks — jailbreak/root detection, emulator detection, external storage access, and screen lock status. Used in VAPT-compliant fintech apps.",
      projectLink: "https://pub.dev/packages/device_safety_info",
      buttonText: "View on Pub Dev",
    ),
    ProjectModel(
      project: "Flutter Package",
      title: "File Saver Plus",
      description:
          "A Flutter plugin enabling efficient file saving and management across Android and iOS, with support for custom paths and media types. Handles edge cases for scoped storage on Android 10+.",
      projectLink: "https://pub.dev/packages/filesaverplus",
      buttonText: "View on Pub Dev",
    ),
    ProjectModel(
      project: "Flutter Package",
      title: "Awesome Custom Dialog",
      description:
          "A highly customisable Flutter dialog package with support for animations, custom content, multiple action buttons, and theme-aware styling — designed to drop into any production app.",
      projectLink: "https://pub.dev/packages/awesome_custom_dialog",
      buttonText: "View on Pub Dev",
    ),
    ProjectModel(
      project: "Flutter Package",
      title: "SVG Image Flutter",
      description:
          "A lightweight Flutter plugin for rendering SVG images from assets, network, and memory sources — with caching support and fallback handling for production reliability.",
      projectLink: "https://pub.dev/packages/svg_image_flutter",
      buttonText: "View on Pub Dev",
    ),
  ];

  static List<ProjectModel> demos = [
    ProjectModel(
      project: "Portfolio",
      title: "Portfolio",
      description: "",
      projectLink: "https://amitkumartiwarimobiledeveloper.web.app/",
      buttonText: "Live Site",
    ),
  ];
}
