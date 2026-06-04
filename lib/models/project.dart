import '../core/utils/constants.dart';
import 'link.dart';
import 'technology.dart';

// ── Project key — used to look up translated badge + description ───────────────
enum ProjectKey {
  healthcare,
  ecommerce,
  fintech,
  remittance,
  forex,
  fintechSecurity,
  flutterSafety,
  flutterDialog,
  flutterSvg,
  androidArch,
  springApi,
  portfolio,
}

// ─────────────────────────────────────────────────────────────────────────────
class ProjectModel {
  final ProjectKey key;
  final String title;
  final String? appPhotos;
  final String projectLink;
  final bool internalLink;
  final List<TechnologyModel> techUsed;
  List<LinkModel>? links = [];

  ProjectModel({
    required this.key,
    required this.title,
    this.appPhotos,
    required this.projectLink,
    this.internalLink = false,
    required this.techUsed,
    this.links,
  });

  // ── All projects — sector projects first (home page shows take(4)) ───────────
  static List<ProjectModel> projects = [
    ProjectModel(
      key: ProjectKey.healthcare,
      title: "MediConnect",
      appPhotos: AppConstants.iosImage,
      projectLink: "https://github.com/amitkumartiwaridis",
      techUsed: [TechnologyConstants.flutter, TechnologyConstants.springBoot],
    ),
    ProjectModel(
      key: ProjectKey.ecommerce,
      title: "ShopNow",
      appPhotos: AppConstants.androidImage,
      projectLink: "https://github.com/amitkumartiwaridis",
      techUsed: [TechnologyConstants.flutter, TechnologyConstants.kotlin],
    ),
    ProjectModel(
      key: ProjectKey.fintech,
      title: "PaySwift",
      appPhotos: AppConstants.kotlinImage,
      projectLink: "https://github.com/amitkumartiwaridis",
      techUsed: [TechnologyConstants.flutter, TechnologyConstants.java],
    ),
    ProjectModel(
      key: ProjectKey.remittance,
      title: "RemitGo",
      appPhotos: AppConstants.springImage,
      projectLink: "https://github.com/amitkumartiwaridis",
      techUsed: [TechnologyConstants.springBoot, TechnologyConstants.kotlin],
    ),
    ProjectModel(
      key: ProjectKey.forex,
      title: "ForexPro",
      appPhotos: AppConstants.javaImage,
      projectLink: "https://github.com/amitkumartiwaridis",
      techUsed: [TechnologyConstants.nativeAndroid, TechnologyConstants.java],
    ),
    ProjectModel(
      key: ProjectKey.fintechSecurity,
      title: "SecureBank SDK",
      appPhotos: AppConstants.flutterImage,
      projectLink: "https://github.com/amitkumartiwaridis",
      techUsed: [TechnologyConstants.flutter, TechnologyConstants.kotlin],
    ),
    ProjectModel(
      key: ProjectKey.flutterSafety,
      title: "device_safety_info",
      appPhotos: AppConstants.flutterImage,
      projectLink: "https://pub.dev/packages/device_safety_info",
      techUsed: [TechnologyConstants.flutter],
    ),
    ProjectModel(
      key: ProjectKey.flutterDialog,
      title: "awesome_custom_dialog",
      appPhotos: AppConstants.flutterImage,
      projectLink: "https://pub.dev/packages/awesome_custom_dialog",
      techUsed: [TechnologyConstants.flutter],
    ),
    ProjectModel(
      key: ProjectKey.flutterSvg,
      title: "svg_image_flutter",
      appPhotos: AppConstants.flutterImage,
      projectLink: "https://pub.dev/packages/svg_image_flutter",
      techUsed: [TechnologyConstants.flutter],
    ),
    ProjectModel(
      key: ProjectKey.androidArch,
      title: "Android Architecture Series",
      appPhotos: AppConstants.androidImage,
      projectLink: "https://github.com/amitkumartiwaridis",
      techUsed: [TechnologyConstants.nativeAndroid, TechnologyConstants.kotlin, TechnologyConstants.java],
    ),
    ProjectModel(
      key: ProjectKey.springApi,
      title: "REST API Boilerplate",
      appPhotos: AppConstants.springImage,
      projectLink: "https://github.com/amitkumartiwaridis",
      techUsed: [TechnologyConstants.springBoot, TechnologyConstants.java],
    ),
    ProjectModel(
      key: ProjectKey.portfolio,
      title: "Portfolio Website",
      appPhotos: AppConstants.flutterImage,
      projectLink: "https://amitkumartiwarimobiledeveloper.web.app/",
      techUsed: [TechnologyConstants.flutter],
    ),
  ];

  static List<ProjectModel> demos = [
    ProjectModel(
      key: ProjectKey.portfolio,
      title: "Portfolio",
      appPhotos: AppConstants.portfolioGif,
      projectLink: "https://amitkumartiwarimobiledeveloper.web.app/",
      techUsed: [],
    ),
  ];
}
