import 'package:flutter/material.dart';

import '../../models/project.dart';

class AppStrings {
  // ── Navigation ─────────────────────────────────────────────────────────────
  final String navHome;
  final String navAbout;
  final String navSkills;
  final String navProjects;
  final String navContact;
  final String navBlog;

  // ── Hero ───────────────────────────────────────────────────────────────────
  final String heroRole;
  final String heroBio;

  // ── CTAs ───────────────────────────────────────────────────────────────────
  final String ctaDownloadCV;
  final String ctaViewWorks;
  final String ctaViewAll;
  final String ctaBack;
  final String ctaExploreMore;

  // ── About ──────────────────────────────────────────────────────────────────
  final String aboutLabel;
  final String aboutHeading;
  final String aboutBio1;
  final String aboutBio2;
  final String aboutBio3;
  final String areasOfExpertise;
  final String expertiseSubtitle;

  // ── Expertise labels ───────────────────────────────────────────────────────
  final String expMobileArch;
  final String expFlutter;
  final String expAndroid;
  final String expSpringBoot;
  final String expFintechSecurity;
  final String expOwasp;
  final String expVapt;
  final String expEncryption;
  final String expAi;

  // ── Services ───────────────────────────────────────────────────────────────
  final String servicesLabel;
  final String servicesHeading;
  final String servicesSubtitle;
  final String svcFlutterTitle;
  final String svcFlutterDesc;
  final String svcAndroidTitle;
  final String svcAndroidDesc;
  final String svcSpringBootTitle;
  final String svcSpringBootDesc;
  final String svcFullStackTitle;
  final String svcFullStackDesc;
  final String svcBloggingTitle;
  final String svcBloggingDesc;
  final String svcOpenSourceTitle;
  final String svcOpenSourceDesc;

  // ── My process ─────────────────────────────────────────────────────────────
  final String myProcess;
  final String myProcessSubtitle;
  final String proc1Title;
  final String proc1Desc;
  final String proc2Title;
  final String proc2Desc;
  final String proc3Title;
  final String proc3Desc;
  final String proc4Title;
  final String proc4Desc;
  final String proc5Title;
  final String proc5Desc;
  final String proc6Title;
  final String proc6Desc;

  // ── Projects ───────────────────────────────────────────────────────────────
  final String projectsLabel;
  final String projectsHeading;

  // ── Stats ──────────────────────────────────────────────────────────────────
  final String statsYears;
  final String statsProjects;
  final String statsDownloads;
  final String statsAwards;

  // ── Contact ────────────────────────────────────────────────────────────────
  final String contactLabel;
  final String contactHeading;
  final String contactSubtitle;
  final String contactLocation;
  final String contactPhoneWA;
  final String contactEmail;
  final String developedWith;

  // ── Works page ─────────────────────────────────────────────────────────────
  final String worksPortfolioLabel;
  final String worksTitle;
  final String worksSubtitle;

  // ── Project sector badge labels ────────────────────────────────────────────
  final String badgeHealthcare;
  final String badgeEcommerce;
  final String badgeFintech;
  final String badgeRemittance;
  final String badgeForex;
  final String badgeFintechSecurity;
  final String badgeFlutterPkg;
  final String badgeAndroid;
  final String badgeBackend;
  final String badgeFullStack;

  // ── Sector project descriptions ────────────────────────────────────────────
  final String projHealthcareDesc;
  final String projEcomDesc;
  final String projFintechDesc;
  final String projRemittanceDesc;
  final String projForexDesc;
  final String projSecurityDesc;

  // ── Project CTA labels ─────────────────────────────────────────────────────
  final String ctaPubDev;
  final String ctaGitHub;
  final String ctaLiveSite;

  // ── Header logo tagline ─────────────────────────────────────────────────────
  final String headerTagline;

  // ── Open-source & personal project descriptions ─────────────────────────────
  final String projFlutterSafetyDesc;
  final String projFlutterDialogDesc;
  final String projFlutterSvgDesc;
  final String projAndroidArchDesc;
  final String projSpringApiDesc;
  final String projPortfolioDesc;

  const AppStrings({
    required this.navHome,
    required this.navAbout,
    required this.navSkills,
    required this.navProjects,
    required this.navContact,
    required this.navBlog,
    required this.heroRole,
    required this.heroBio,
    required this.ctaDownloadCV,
    required this.ctaViewWorks,
    required this.ctaViewAll,
    required this.ctaBack,
    required this.ctaExploreMore,
    required this.aboutLabel,
    required this.aboutHeading,
    required this.aboutBio1,
    required this.aboutBio2,
    required this.aboutBio3,
    required this.areasOfExpertise,
    required this.expertiseSubtitle,
    required this.expMobileArch,
    required this.expFlutter,
    required this.expAndroid,
    required this.expSpringBoot,
    required this.expFintechSecurity,
    required this.expOwasp,
    required this.expVapt,
    required this.expEncryption,
    required this.expAi,
    required this.servicesLabel,
    required this.servicesHeading,
    required this.servicesSubtitle,
    required this.svcFlutterTitle,
    required this.svcFlutterDesc,
    required this.svcAndroidTitle,
    required this.svcAndroidDesc,
    required this.svcSpringBootTitle,
    required this.svcSpringBootDesc,
    required this.svcFullStackTitle,
    required this.svcFullStackDesc,
    required this.svcBloggingTitle,
    required this.svcBloggingDesc,
    required this.svcOpenSourceTitle,
    required this.svcOpenSourceDesc,
    required this.myProcess,
    required this.myProcessSubtitle,
    required this.proc1Title,
    required this.proc1Desc,
    required this.proc2Title,
    required this.proc2Desc,
    required this.proc3Title,
    required this.proc3Desc,
    required this.proc4Title,
    required this.proc4Desc,
    required this.proc5Title,
    required this.proc5Desc,
    required this.proc6Title,
    required this.proc6Desc,
    required this.projectsLabel,
    required this.projectsHeading,
    required this.statsYears,
    required this.statsProjects,
    required this.statsDownloads,
    required this.statsAwards,
    required this.contactLabel,
    required this.contactHeading,
    required this.contactSubtitle,
    required this.contactLocation,
    required this.contactPhoneWA,
    required this.contactEmail,
    required this.developedWith,
    required this.worksPortfolioLabel,
    required this.worksTitle,
    required this.worksSubtitle,
    required this.badgeHealthcare,
    required this.badgeEcommerce,
    required this.badgeFintech,
    required this.badgeRemittance,
    required this.badgeForex,
    required this.badgeFintechSecurity,
    required this.badgeFlutterPkg,
    required this.badgeAndroid,
    required this.badgeBackend,
    required this.badgeFullStack,
    required this.projHealthcareDesc,
    required this.projEcomDesc,
    required this.projFintechDesc,
    required this.projRemittanceDesc,
    required this.projForexDesc,
    required this.projSecurityDesc,
    required this.ctaPubDev,
    required this.ctaGitHub,
    required this.ctaLiveSite,
    required this.headerTagline,
    required this.projFlutterSafetyDesc,
    required this.projFlutterDialogDesc,
    required this.projFlutterSvgDesc,
    required this.projAndroidArchDesc,
    required this.projSpringApiDesc,
    required this.projPortfolioDesc,
  });

  // ── Project localization lookup ────────────────────────────────────────────
  ({String badge, String desc, String cta}) projectStrings(ProjectKey key) {
    switch (key) {
      case ProjectKey.healthcare:
        return (badge: badgeHealthcare,     desc: projHealthcareDesc, cta: ctaGitHub);
      case ProjectKey.ecommerce:
        return (badge: badgeEcommerce,      desc: projEcomDesc,       cta: ctaGitHub);
      case ProjectKey.fintech:
        return (badge: badgeFintech,        desc: projFintechDesc,    cta: ctaGitHub);
      case ProjectKey.remittance:
        return (badge: badgeRemittance,     desc: projRemittanceDesc, cta: ctaGitHub);
      case ProjectKey.forex:
        return (badge: badgeForex,          desc: projForexDesc,      cta: ctaGitHub);
      case ProjectKey.fintechSecurity:
        return (badge: badgeFintechSecurity, desc: projSecurityDesc,  cta: ctaGitHub);
      case ProjectKey.flutterSafety:
        return (badge: badgeFlutterPkg, desc: projFlutterSafetyDesc, cta: ctaPubDev);
      case ProjectKey.flutterDialog:
        return (badge: badgeFlutterPkg, desc: projFlutterDialogDesc, cta: ctaPubDev);
      case ProjectKey.flutterSvg:
        return (badge: badgeFlutterPkg, desc: projFlutterSvgDesc,    cta: ctaPubDev);
      case ProjectKey.androidArch:
        return (badge: badgeAndroid,    desc: projAndroidArchDesc,   cta: ctaGitHub);
      case ProjectKey.springApi:
        return (badge: badgeBackend,    desc: projSpringApiDesc,     cta: ctaGitHub);
      case ProjectKey.portfolio:
        return (badge: badgeFullStack,  desc: projPortfolioDesc,     cta: ctaLiveSite);
    }
  }

  static AppStrings forLocale(Locale locale) {
    switch (locale.languageCode) {
      case 'ar': return _ar;
      case 'fr': return _fr;
      case 'de': return _de;
      case 'it': return _it;
      case 'es': return _es;
      case 'pt': return _pt;
      case 'ru': return _ru;
      case 'zh': return _zh;
      case 'ja': return _ja;
      case 'ko': return _ko;
      case 'hi': return _hi;
      default:   return _en;
    }
  }
}

// ── Language metadata ─────────────────────────────────────────────────────────
class LangMeta {
  final Locale locale;
  final String code;
  final String nativeName;
  final String flag;
  const LangMeta(this.locale, this.code, this.nativeName, this.flag);
}

const supportedLanguages = [
  LangMeta(Locale('en'), 'EN', 'English',    '🇬🇧'),
  LangMeta(Locale('ar'), 'AR', 'العربية',    '🇸🇦'),
  LangMeta(Locale('fr'), 'FR', 'Français',   '🇫🇷'),
  LangMeta(Locale('de'), 'DE', 'Deutsch',    '🇩🇪'),
  LangMeta(Locale('it'), 'IT', 'Italiano',   '🇮🇹'),
  LangMeta(Locale('es'), 'ES', 'Español',    '🇪🇸'),
  LangMeta(Locale('pt'), 'PT', 'Português',  '🇧🇷'),
  LangMeta(Locale('ru'), 'RU', 'Русский',    '🇷🇺'),
  LangMeta(Locale('zh'), 'ZH', '中文',        '🇨🇳'),
  LangMeta(Locale('ja'), 'JA', '日本語',      '🇯🇵'),
  LangMeta(Locale('ko'), 'KO', '한국어',      '🇰🇷'),
  LangMeta(Locale('hi'), 'HI', 'हिन्दी',     '🇮🇳'),
];

// ─────────────────────────────────────────────────────────────────────────────
// EN — English
// ─────────────────────────────────────────────────────────────────────────────
const _en = AppStrings(
  navHome: 'Home',          navAbout: 'About',     navSkills: 'Skills',
  navProjects: 'Projects',  navContact: 'Contact', navBlog: 'Blog',
  heroRole: 'Full Stack Developer',
  heroBio: '10+ years architecting mobile products with Flutter, Java Spring Boot & Native Android. Specialist in Fintech Security, OWASP, VAPT & AI integration.',
  ctaDownloadCV: 'Download CV',   ctaViewWorks: 'View Works',
  ctaViewAll: 'View all',         ctaBack: 'Back',
  ctaExploreMore: 'Explore more',
  aboutLabel: 'ABOUT ME',         aboutHeading: 'Who I Am',
  aboutBio1: "I'm Amit Kumar Tiwari — Mobile Architect & Full Stack Developer.",
  aboutBio2: 'With 10+ years of professional experience, I design and deliver end-to-end digital products: cross-platform apps with Flutter, native Android in Java & Kotlin, and scalable backends with Java Spring Boot.',
  aboutBio3: 'I specialise in Fintech-grade mobile security — OWASP Mobile Top 10, VAPT, end-to-end data encryption (AES-256, RSA, TLS), certificate pinning, and secure coding practices.',
  areasOfExpertise: 'Areas of Expertise',
  expertiseSubtitle: 'Specialisations built across 10 years in production',
  expMobileArch: 'Mobile Architecture',        expFlutter: 'Flutter & Cross-Platform',
  expAndroid: 'Native Android (Java/Kotlin)',  expSpringBoot: 'Java Spring Boot APIs',
  expFintechSecurity: 'Fintech App Security',  expOwasp: 'OWASP Mobile Guidelines',
  expVapt: 'VAPT & Pen Testing',              expEncryption: 'Data Encryption & PKI',
  expAi: 'AI / ML Integration',
  servicesLabel: 'SKILLS & SERVICES',          servicesHeading: 'What I Build',
  servicesSubtitle: 'Mobile · Backend · Full Stack — end-to-end delivery',
  svcFlutterTitle: 'Flutter Development',
  svcFlutterDesc: 'Beautiful, performant cross-platform apps for iOS, Android & Web.',
  svcAndroidTitle: 'Native Android',
  svcAndroidDesc: 'Production-grade Android apps in Java & Kotlin with Jetpack.',
  svcSpringBootTitle: 'Backend — Spring Boot',
  svcSpringBootDesc: 'RESTful APIs, microservices and server-side logic with Java Spring Boot.',
  svcFullStackTitle: 'Full Stack Delivery',
  svcFullStackDesc: 'End-to-end ownership: mobile frontend + REST backend.',
  svcBloggingTitle: 'Technical Blogging',
  svcBloggingDesc: 'In-depth articles on architecture, security and mobile engineering.',
  svcOpenSourceTitle: 'Open Source',
  svcOpenSourceDesc: 'Flutter packages on pub.dev used by thousands of developers.',
  myProcess: 'My Process',
  myProcessSubtitle: 'How I take a product from idea to production',
  proc1Title: 'Discover',  proc1Desc: 'Understand goals, users and scope.',
  proc2Title: 'Design',    proc2Desc: 'Architect patterns, APIs and UI flows.',
  proc3Title: 'Develop',   proc3Desc: 'Build with quality-first, reviewed code.',
  proc4Title: 'Test',      proc4Desc: 'Unit, integration & security (VAPT) testing.',
  proc5Title: 'Deploy',    proc5Desc: 'CI/CD pipelines to Play Store, App Store or cloud.',
  proc6Title: 'Iterate',   proc6Desc: 'Monitor metrics and continuously improve.',
  projectsLabel: 'PROJECTS',  projectsHeading: 'Recent Work',
  statsYears: 'Years\nExperience',   statsProjects: 'Projects\nDelivered',
  statsDownloads: 'Pub.dev\nDownloads', statsAwards: 'Awards\nWon',
  contactLabel: 'CONTACT',            contactHeading: 'Get in Touch',
  contactSubtitle: 'Open to new projects and opportunities',
  contactLocation: 'Location',        contactPhoneWA: 'Phone / WhatsApp',
  contactEmail: 'Email',              developedWith: 'Developed with ❤️ in Flutter',
  worksPortfolioLabel: 'PORTFOLIO',   worksTitle: 'My Works',
  worksSubtitle: 'A selection of Flutter packages and projects I\'ve built',
  badgeHealthcare: 'Healthcare',      badgeEcommerce: 'E-Commerce',
  badgeFintech: 'Fintech',            badgeRemittance: 'Remittance',
  badgeForex: 'Forex',               badgeFintechSecurity: 'Fintech Security',
  badgeFlutterPkg: 'Flutter Package', badgeAndroid: 'Native Android',
  badgeBackend: 'Backend',           badgeFullStack: 'Full Stack',
  projHealthcareDesc: 'Teleconsultation & health records platform serving 500k+ patients. Flutter + Spring Boot, HL7 FHIR standards, end-to-end encrypted health data, and HIPAA-compliant architecture.',
  projEcomDesc: 'Multi-vendor shopping app with real-time inventory, Razorpay/Stripe payments, push notifications, and AI-driven recommendations. 100k+ daily active users.',
  projFintechDesc: 'Digital payments wallet with UPI, NEFT & RTGS support. AES-256 encrypted, certificate-pinned, OWASP Mobile Top 10 compliant. 1M+ monthly transactions.',
  projRemittanceDesc: 'International money transfer across 50+ countries — live forex rates, FEMA compliance, AML/KYC integration, and real-time settlement notifications.',
  projForexDesc: 'Real-time FX rates tracker with multi-currency portfolio, automated trade alerts, WebSocket price feeds, and tier-1 bank API integrations.',
  projSecurityDesc: 'Security SDK for banking apps — root/jailbreak detection, RASP, SSL certificate pinning, VAPT-audited codebase, OWASP Mobile Top 10 compliant.',
  ctaPubDev: 'View on Pub.dev',      ctaGitHub: 'View on GitHub',    ctaLiveSite: 'Live Site',
  headerTagline: '/ Mobile Architect',
  projFlutterSafetyDesc: 'Detect jailbreak, root, emulator, external storage, and screen-lock status in any Flutter app.',
  projFlutterDialogDesc: 'Flexible, highly customisable dialog library for Flutter with animated transitions and theming.',
  projFlutterSvgDesc: 'Lightweight Flutter plugin for rendering SVG images across all platforms with a minimal API.',
  projAndroidArchDesc: 'Open-source sample: MVVM, Clean Architecture, Hilt DI, Coroutines, and Jetpack Compose.',
  projSpringApiDesc: 'Production-ready Spring Boot template with JWT auth, role-based access, Hibernate ORM, and Docker.',
  projPortfolioDesc: 'This portfolio — built with Flutter Web, responsive across mobile, tablet, and desktop.',
);

// ─────────────────────────────────────────────────────────────────────────────
// AR — Arabic
// ─────────────────────────────────────────────────────────────────────────────
const _ar = AppStrings(
  navHome: 'الرئيسية',     navAbout: 'عني',        navSkills: 'المهارات',
  navProjects: 'المشاريع', navContact: 'التواصل',  navBlog: 'المدونة',
  heroRole: 'مطور متكامل',
  heroBio: 'أكثر من 10 سنوات في تصميم المنتجات المتنقلة باستخدام Flutter وJava Spring Boot وAndroid الأصلي. متخصص في أمان Fintech وOWASP وVAPT ودمج الذكاء الاصطناعي.',
  ctaDownloadCV: 'تحميل السيرة الذاتية', ctaViewWorks: 'عرض الأعمال',
  ctaViewAll: 'عرض الكل',               ctaBack: 'رجوع',
  ctaExploreMore: 'استكشاف المزيد',
  aboutLabel: 'نبذة عني',               aboutHeading: 'من أنا',
  aboutBio1: 'أنا Amit Kumar Tiwari — مهندس معماري للهاتف المحمول ومطور متكامل.',
  aboutBio2: 'مع أكثر من 10 سنوات من الخبرة المهنية، أصمم وأقدم منتجات رقمية متكاملة: تطبيقات متعددة المنصات باستخدام Flutter، وتطبيقات Android الأصلية بـ Java وKotlin، وخدمات خلفية قابلة للتوسع بـ Java Spring Boot.',
  aboutBio3: 'أنا متخصص في أمان الهاتف المحمول بمستوى Fintech — OWASP Mobile Top 10 وVAPT وتشفير البيانات الشامل (AES-256 وRSA وTLS) وممارسات البرمجة الآمنة.',
  areasOfExpertise: 'مجالات الخبرة',
  expertiseSubtitle: 'تخصصات تراكمت عبر 10 سنوات في بيئات الإنتاج',
  expMobileArch: 'هندسة التطبيقات المحمولة', expFlutter: 'Flutter والمنصات المتعددة',
  expAndroid: 'Android الأصلي (Java/Kotlin)', expSpringBoot: 'واجهات Java Spring Boot',
  expFintechSecurity: 'أمان تطبيقات Fintech',  expOwasp: 'إرشادات OWASP للجوال',
  expVapt: 'اختبار VAPT والاختراق',           expEncryption: 'تشفير البيانات و PKI',
  expAi: 'تكامل الذكاء الاصطناعي',
  servicesLabel: 'المهارات والخدمات',          servicesHeading: 'ما أبنيه',
  servicesSubtitle: 'جوال · خلفية · متكامل — تسليم متكامل من البداية للنهاية',
  svcFlutterTitle: 'تطوير Flutter',
  svcFlutterDesc: 'تطبيقات متعددة المنصات جميلة وعالية الأداء لـ iOS وAndroid والويب.',
  svcAndroidTitle: 'Android الأصلي',
  svcAndroidDesc: 'تطبيقات Android احترافية بـ Java وKotlin مع Jetpack.',
  svcSpringBootTitle: 'الخلفية — Spring Boot',
  svcSpringBootDesc: 'واجهات RESTful وخدمات مصغرة ومنطق الخادم بـ Java Spring Boot.',
  svcFullStackTitle: 'التسليم المتكامل',
  svcFullStackDesc: 'ملكية كاملة من البداية للنهاية: واجهة جوال + خلفية REST.',
  svcBloggingTitle: 'التدوين التقني',
  svcBloggingDesc: 'مقالات متعمقة حول البنية والأمان وهندسة الجوال.',
  svcOpenSourceTitle: 'المصدر المفتوح',
  svcOpenSourceDesc: 'حزم Flutter على pub.dev تستخدمها آلاف المطورين.',
  myProcess: 'أسلوب عملي',
  myProcessSubtitle: 'كيف أنقل المنتج من الفكرة إلى الإنتاج',
  proc1Title: 'الاكتشاف', proc1Desc: 'فهم الأهداف والمستخدمين والنطاق.',
  proc2Title: 'التصميم',  proc2Desc: 'تصميم الأنماط وواجهات البرمجة وتدفقات UI.',
  proc3Title: 'التطوير',  proc3Desc: 'البناء بأولوية الجودة ومراجعة الكود.',
  proc4Title: 'الاختبار', proc4Desc: 'اختبارات الوحدة والتكامل والأمان (VAPT).',
  proc5Title: 'النشر',    proc5Desc: 'خطوط CI/CD لـ Play Store وApp Store أو السحابة.',
  proc6Title: 'التحسين',  proc6Desc: 'مراقبة المقاييس والتحسين المستمر.',
  projectsLabel: 'المشاريع',           projectsHeading: 'أعمال حديثة',
  statsYears: 'سنوات\nالخبرة',         statsProjects: 'مشاريع\nمُنجزة',
  statsDownloads: 'تنزيلات\nPub.dev',  statsAwards: 'جوائز\nمُكتسبة',
  contactLabel: 'تواصل',               contactHeading: 'تواصل معي',
  contactSubtitle: 'متاح لمشاريع وفرص جديدة',
  contactLocation: 'الموقع',           contactPhoneWA: 'الهاتف / واتساب',
  contactEmail: 'البريد الإلكتروني',   developedWith: 'طُوِّر بـ ❤️ في Flutter',
  worksPortfolioLabel: 'المحفظة',       worksTitle: 'أعمالي',
  worksSubtitle: 'مجموعة مختارة من حزم Flutter والمشاريع التي بنيتها',
  badgeHealthcare: 'الرعاية الصحية',   badgeEcommerce: 'التجارة الإلكترونية',
  badgeFintech: 'تقنية مالية',          badgeRemittance: 'تحويل الأموال',
  badgeForex: 'صرف العملات',           badgeFintechSecurity: 'أمان مالي',
  badgeFlutterPkg: 'حزمة Flutter',     badgeAndroid: 'Android أصلي',
  badgeBackend: 'خلفية',              badgeFullStack: 'متكامل',
  projHealthcareDesc: 'منصة استشارات طبية عن بُعد وسجلات صحية لـ 500 ألف+ مريض. Flutter + Spring Boot، معايير HL7 FHIR، تشفير بيانات الصحة، وبنية متوافقة مع HIPAA.',
  projEcomDesc: 'تطبيق تسوق متعدد البائعين مع مخزون فوري، مدفوعات Razorpay/Stripe، إشعارات دفع، وتوصيات ذكاء اصطناعي. 100 ألف+ مستخدم نشط يومياً.',
  projFintechDesc: 'محفظة مدفوعات رقمية تدعم UPI وNEFT وRTGS. تشفير AES-256، تثبيت الشهادة، متوافقة مع OWASP Mobile Top 10. مليون+ معاملة شهرياً.',
  projRemittanceDesc: 'تحويل دولي للأموال عبر 50+ دولة — أسعار الصرف الفورية، امتثال FEMA، تكامل AML/KYC، وإشعارات تسوية آنية.',
  projForexDesc: 'تطبيق تتبع أسعار الصرف الفوري مع محفظة متعددة العملات، تنبيهات التداول، بيانات WebSocket، وتكاملات API مع البنوك الكبرى.',
  projSecurityDesc: 'SDK أمان لتطبيقات البنوك — اكتشاف الجذر/الجيلبريك، RASP، تثبيت شهادة SSL، قاعدة كود مدققة VAPT، متوافقة مع OWASP Mobile Top 10.',
  ctaPubDev: 'عرض على Pub.dev',       ctaGitHub: 'عرض على GitHub',    ctaLiveSite: 'الموقع المباشر',
  headerTagline: '/ مهندس تطبيقات جوال',
  projFlutterSafetyDesc: 'اكتشاف الجيلبريك والجذر والمحاكي وحالة قفل الشاشة في أي تطبيق Flutter.',
  projFlutterDialogDesc: 'مكتبة حوارات مرنة وقابلة للتخصيص بدرجة عالية لـ Flutter مع انتقالات متحركة وتمييز.',
  projFlutterSvgDesc: 'إضافة Flutter خفيفة الوزن لعرض صور SVG عبر جميع المنصات بواجهة برمجية بسيطة.',
  projAndroidArchDesc: 'نموذج مفتوح المصدر: MVVM، Clean Architecture، Hilt DI، Coroutines وJetpack Compose.',
  projSpringApiDesc: 'قالب Spring Boot جاهز للإنتاج مع مصادقة JWT، وصول مبني على الأدوار، Hibernate ORM وDocker.',
  projPortfolioDesc: 'هذا الموقع المحفظة — مبني بـ Flutter Web، متجاوب على الجوال والجهاز اللوحي وسطح المكتب.',
);

// ─────────────────────────────────────────────────────────────────────────────
// FR — French
// ─────────────────────────────────────────────────────────────────────────────
const _fr = AppStrings(
  navHome: 'Accueil',      navAbout: 'À Propos',     navSkills: 'Compétences',
  navProjects: 'Projets',  navContact: 'Contact',    navBlog: 'Blog',
  heroRole: 'Développeur Full Stack',
  heroBio: 'Plus de 10 ans à concevoir des produits mobiles avec Flutter, Java Spring Boot et Android natif. Spécialiste en sécurité Fintech, OWASP, VAPT et intégration IA.',
  ctaDownloadCV: 'Télécharger CV',   ctaViewWorks: 'Voir les projets',
  ctaViewAll: 'Voir tout',           ctaBack: 'Retour',
  ctaExploreMore: 'Explorer plus',
  aboutLabel: 'À PROPOS DE MOI',     aboutHeading: 'Qui Suis-Je',
  aboutBio1: 'Je suis Amit Kumar Tiwari — Architecte Mobile & Développeur Full Stack.',
  aboutBio2: 'Avec plus de 10 ans d\'expérience professionnelle, je conçois et livre des produits numériques complets : applications multiplateformes avec Flutter, apps Android natives en Java & Kotlin, et backends Java Spring Boot.',
  aboutBio3: 'Je me spécialise en sécurité mobile Fintech — OWASP Mobile Top 10, VAPT, chiffrement de bout en bout (AES-256, RSA, TLS), épinglage de certificats et pratiques de codage sécurisé.',
  areasOfExpertise: 'Domaines d\'Expertise',
  expertiseSubtitle: 'Spécialisations développées sur 10 ans en production',
  expMobileArch: 'Architecture Mobile',        expFlutter: 'Flutter & Multiplateforme',
  expAndroid: 'Android Natif (Java/Kotlin)',   expSpringBoot: 'APIs Java Spring Boot',
  expFintechSecurity: 'Sécurité Fintech',      expOwasp: 'Directives OWASP Mobile',
  expVapt: 'VAPT & Test de Pénétration',      expEncryption: 'Chiffrement & PKI',
  expAi: 'Intégration IA / ML',
  servicesLabel: 'COMPÉTENCES & SERVICES',     servicesHeading: 'Ce que je Construis',
  servicesSubtitle: 'Mobile · Backend · Full Stack — livraison complète',
  svcFlutterTitle: 'Développement Flutter',
  svcFlutterDesc: 'Applications multiplateformes belles et performantes pour iOS, Android & Web.',
  svcAndroidTitle: 'Android Natif',
  svcAndroidDesc: 'Applications Android professionnelles en Java & Kotlin avec Jetpack.',
  svcSpringBootTitle: 'Backend — Spring Boot',
  svcSpringBootDesc: 'APIs RESTful, microservices et logique serveur avec Java Spring Boot.',
  svcFullStackTitle: 'Livraison Full Stack',
  svcFullStackDesc: 'Propriété complète : frontend mobile + backend REST.',
  svcBloggingTitle: 'Blog Technique',
  svcBloggingDesc: 'Articles approfondis sur l\'architecture, la sécurité et le mobile.',
  svcOpenSourceTitle: 'Open Source',
  svcOpenSourceDesc: 'Packages Flutter sur pub.dev utilisés par des milliers de développeurs.',
  myProcess: 'Mon Processus',
  myProcessSubtitle: 'Comment je passe d\'une idée à la production',
  proc1Title: 'Découvrir', proc1Desc: 'Comprendre les objectifs, utilisateurs et portée.',
  proc2Title: 'Concevoir', proc2Desc: 'Architecturer les patterns, APIs et flux UI.',
  proc3Title: 'Développer', proc3Desc: 'Coder avec priorité à la qualité et revues.',
  proc4Title: 'Tester',   proc4Desc: 'Tests unitaires, intégration & sécurité (VAPT).',
  proc5Title: 'Déployer', proc5Desc: 'CI/CD vers Play Store, App Store ou cloud.',
  proc6Title: 'Itérer',   proc6Desc: 'Surveiller les métriques et améliorer en continu.',
  projectsLabel: 'PROJETS',               projectsHeading: 'Travaux Récents',
  statsYears: 'Années\nd\'Expérience',    statsProjects: 'Projets\nLivrés',
  statsDownloads: 'Téléchargements\nPub.dev', statsAwards: 'Prix\nRemportés',
  contactLabel: 'CONTACT',                contactHeading: 'Me Contacter',
  contactSubtitle: 'Ouvert aux nouveaux projets et opportunités',
  contactLocation: 'Localisation',        contactPhoneWA: 'Tél / WhatsApp',
  contactEmail: 'E-mail',                 developedWith: 'Développé avec ❤️ en Flutter',
  worksPortfolioLabel: 'PORTFOLIO',        worksTitle: 'Mes Réalisations',
  worksSubtitle: 'Une sélection de packages Flutter et projets que j\'ai construits',
  badgeHealthcare: 'Santé',               badgeEcommerce: 'E-Commerce',
  badgeFintech: 'Fintech',                badgeRemittance: 'Transfert',
  badgeForex: 'Forex',                   badgeFintechSecurity: 'Sécurité Fintech',
  badgeFlutterPkg: 'Package Flutter',     badgeAndroid: 'Android Natif',
  badgeBackend: 'Backend',               badgeFullStack: 'Full Stack',
  projHealthcareDesc: 'Plateforme de téléconsultation et dossiers médicaux pour 500k+ patients. Flutter + Spring Boot, normes HL7 FHIR, données chiffrées bout-en-bout, architecture HIPAA.',
  projEcomDesc: 'App shopping multi-vendeurs avec stock temps réel, paiements Razorpay/Stripe, notifications push et recommandations IA. 100k+ utilisateurs actifs par jour.',
  projFintechDesc: 'Portefeuille de paiements numériques UPI, NEFT & RTGS. Chiffrement AES-256, certificate pinning, conforme OWASP Mobile Top 10. 1M+ transactions/mois.',
  projRemittanceDesc: 'Transfert international dans 50+ pays — taux de change live, conformité FEMA, intégration AML/KYC, notifications de règlement en temps réel.',
  projForexDesc: 'Suivi des taux de change temps réel avec portefeuille multi-devises, alertes automatiques, flux WebSocket, intégrations API bancaires de premier rang.',
  projSecurityDesc: 'SDK sécurité pour apps bancaires — détection root/jailbreak, RASP, épinglage SSL, code base auditée VAPT, conforme OWASP Mobile Top 10.',
  ctaPubDev: 'Voir sur Pub.dev',         ctaGitHub: 'Voir sur GitHub',    ctaLiveSite: 'Site en direct',
  headerTagline: '/ Architecte Mobile',
  projFlutterSafetyDesc: 'Détecte le jailbreak, le root, l\'émulateur et l\'état de verrouillage d\'écran dans toute app Flutter.',
  projFlutterDialogDesc: 'Bibliothèque de dialogues flexible et hautement personnalisable pour Flutter avec transitions animées.',
  projFlutterSvgDesc: 'Plugin Flutter léger pour le rendu d\'images SVG sur toutes les plateformes avec une API minimale.',
  projAndroidArchDesc: 'Exemple open-source : MVVM, Clean Architecture, Hilt DI, Coroutines et Jetpack Compose.',
  projSpringApiDesc: 'Template Spring Boot prêt pour la production avec auth JWT, accès par rôle, Hibernate ORM et Docker.',
  projPortfolioDesc: 'Ce portfolio — construit avec Flutter Web, responsive sur mobile, tablette et desktop.',
);

// ─────────────────────────────────────────────────────────────────────────────
// DE — German
// ─────────────────────────────────────────────────────────────────────────────
const _de = AppStrings(
  navHome: 'Startseite',    navAbout: 'Über Mich',    navSkills: 'Fähigkeiten',
  navProjects: 'Projekte',  navContact: 'Kontakt',    navBlog: 'Blog',
  heroRole: 'Full-Stack-Entwickler',
  heroBio: 'Über 10 Jahre Entwicklung mobiler Produkte mit Flutter, Java Spring Boot und nativem Android. Spezialist für Fintech-Sicherheit, OWASP, VAPT und KI-Integration.',
  ctaDownloadCV: 'Lebenslauf herunterladen', ctaViewWorks: 'Projekte ansehen',
  ctaViewAll: 'Alle ansehen',               ctaBack: 'Zurück',
  ctaExploreMore: 'Mehr entdecken',
  aboutLabel: 'ÜBER MICH',                  aboutHeading: 'Wer Ich Bin',
  aboutBio1: 'Ich bin Amit Kumar Tiwari — Mobile-Architekt & Full-Stack-Entwickler.',
  aboutBio2: 'Mit über 10 Jahren Berufserfahrung entwickle und liefere ich End-to-End-Digitalprodukte: plattformübergreifende Apps mit Flutter, native Android-Apps in Java & Kotlin und skalierbare Backends mit Java Spring Boot.',
  aboutBio3: 'Ich bin spezialisiert auf Fintech-Mobilsicherheit — OWASP Mobile Top 10, VAPT, Ende-zu-Ende-Verschlüsselung (AES-256, RSA, TLS), Zertifikat-Pinning und sichere Programmierpraktiken.',
  areasOfExpertise: 'Fachgebiete',
  expertiseSubtitle: 'Spezialisierungen aus 10 Jahren Produktionserfahrung',
  expMobileArch: 'Mobile-Architektur',         expFlutter: 'Flutter & Cross-Platform',
  expAndroid: 'Natives Android (Java/Kotlin)', expSpringBoot: 'Java Spring Boot APIs',
  expFintechSecurity: 'Fintech-Sicherheit',    expOwasp: 'OWASP Mobile Richtlinien',
  expVapt: 'VAPT & Penetrationstests',        expEncryption: 'Datenverschlüsselung & PKI',
  expAi: 'KI / ML Integration',
  servicesLabel: 'FÄHIGKEITEN & DIENSTE',      servicesHeading: 'Was Ich Baue',
  servicesSubtitle: 'Mobile · Backend · Full Stack — vollständige Lieferung',
  svcFlutterTitle: 'Flutter-Entwicklung',
  svcFlutterDesc: 'Schöne, performante plattformübergreifende Apps für iOS, Android & Web.',
  svcAndroidTitle: 'Natives Android',
  svcAndroidDesc: 'Professionelle Android-Apps in Java & Kotlin mit Jetpack.',
  svcSpringBootTitle: 'Backend — Spring Boot',
  svcSpringBootDesc: 'RESTful APIs, Microservices und serverseitige Logik mit Java Spring Boot.',
  svcFullStackTitle: 'Full-Stack-Lieferung',
  svcFullStackDesc: 'Vollständige Verantwortung: mobiles Frontend + REST-Backend.',
  svcBloggingTitle: 'Technisches Bloggen',
  svcBloggingDesc: 'Tiefgehende Artikel zu Architektur, Sicherheit und mobilem Engineering.',
  svcOpenSourceTitle: 'Open Source',
  svcOpenSourceDesc: 'Flutter-Pakete auf pub.dev, die tausende Entwickler nutzen.',
  myProcess: 'Mein Prozess',
  myProcessSubtitle: 'Wie ich ein Produkt von der Idee zur Produktion bringe',
  proc1Title: 'Entdecken',   proc1Desc: 'Ziele, Nutzer und Umfang verstehen.',
  proc2Title: 'Gestalten',   proc2Desc: 'Patterns, APIs und UI-Flows architekturieren.',
  proc3Title: 'Entwickeln',  proc3Desc: 'Qualitätsorientiert mit Code-Reviews bauen.',
  proc4Title: 'Testen',      proc4Desc: 'Unit-, Integrations- & Sicherheitstests (VAPT).',
  proc5Title: 'Deployen',    proc5Desc: 'CI/CD zu Play Store, App Store oder Cloud.',
  proc6Title: 'Iterieren',   proc6Desc: 'Metriken überwachen und kontinuierlich verbessern.',
  projectsLabel: 'PROJEKTE',              projectsHeading: 'Aktuelle Arbeiten',
  statsYears: 'Jahre\nErfahrung',         statsProjects: 'Gelieferte\nProjekte',
  statsDownloads: 'Pub.dev\nDownloads',   statsAwards: 'Gewonnene\nAuszeichnungen',
  contactLabel: 'KONTAKT',                contactHeading: 'Kontakt aufnehmen',
  contactSubtitle: 'Offen für neue Projekte und Möglichkeiten',
  contactLocation: 'Standort',            contactPhoneWA: 'Tel / WhatsApp',
  contactEmail: 'E-Mail',                 developedWith: 'Entwickelt mit ❤️ in Flutter',
  worksPortfolioLabel: 'PORTFOLIO',        worksTitle: 'Meine Arbeiten',
  worksSubtitle: 'Eine Auswahl meiner Flutter-Pakete und Projekte',
  badgeHealthcare: 'Gesundheit',          badgeEcommerce: 'E-Commerce',
  badgeFintech: 'Fintech',               badgeRemittance: 'Überweisung',
  badgeForex: 'Forex',                   badgeFintechSecurity: 'Fintech-Sicherheit',
  badgeFlutterPkg: 'Flutter-Paket',      badgeAndroid: 'Natives Android',
  badgeBackend: 'Backend',              badgeFullStack: 'Full Stack',
  projHealthcareDesc: 'Telemedizin- und Gesundheitsakten für 500k+ Patienten. Flutter + Spring Boot, HL7 FHIR, Ende-zu-Ende-Verschlüsselung, HIPAA-konforme Architektur.',
  projEcomDesc: 'Multi-Vendor-Shop-App mit Echtzeit-Inventar, Razorpay/Stripe-Zahlungen, Push-Benachrichtigungen und KI-Empfehlungen. 100k+ täglich aktive Nutzer.',
  projFintechDesc: 'Digitale Zahlungs-Wallet mit UPI, NEFT & RTGS. AES-256, Certificate-Pinning, OWASP Mobile Top 10-konform. 1M+ monatliche Transaktionen.',
  projRemittanceDesc: 'Internationaler Geldtransfer in 50+ Länder — Live-Kurse, FEMA-Konformität, AML/KYC-Integration, Echtzeit-Abrechnungsbenachrichtigungen.',
  projForexDesc: 'Echtzeit-Devisenkurs-Tracker mit Multi-Währungs-Portfolio, automatischen Handelsalarmen, WebSocket-Feeds und Tier-1-Bank-API-Integrationen.',
  projSecurityDesc: 'Sicherheits-SDK für Banking-Apps — Root/Jailbreak-Erkennung, RASP, SSL-Pinning, VAPT-geprüfte Codebasis, OWASP Mobile Top 10-konform.',
  ctaPubDev: 'Auf Pub.dev ansehen',      ctaGitHub: 'Auf GitHub ansehen', ctaLiveSite: 'Live-Seite',
  headerTagline: '/ Mobile-Architekt',
  projFlutterSafetyDesc: 'Erkennt Jailbreak, Root, Emulator und Bildschirm-Sperrstatus in jeder Flutter-App.',
  projFlutterDialogDesc: 'Flexible, hochgradig anpassbare Dialog-Bibliothek für Flutter mit animierten Übergängen.',
  projFlutterSvgDesc: 'Leichtgewichtiges Flutter-Plugin zum Rendern von SVG-Bildern auf allen Plattformen mit minimaler API.',
  projAndroidArchDesc: 'Open-Source-Beispiel: MVVM, Clean Architecture, Hilt DI, Coroutines und Jetpack Compose.',
  projSpringApiDesc: 'Produktionsfertiges Spring Boot Template mit JWT-Auth, rollenbasiertem Zugriff, Hibernate ORM und Docker.',
  projPortfolioDesc: 'Dieses Portfolio — mit Flutter Web gebaut, responsiv auf Mobile, Tablet und Desktop.',
);

// ─────────────────────────────────────────────────────────────────────────────
// IT — Italian
// ─────────────────────────────────────────────────────────────────────────────
const _it = AppStrings(
  navHome: 'Home',         navAbout: 'Chi Sono',     navSkills: 'Competenze',
  navProjects: 'Progetti', navContact: 'Contatti',   navBlog: 'Blog',
  heroRole: 'Sviluppatore Full Stack',
  heroBio: 'Oltre 10 anni a progettare prodotti mobili con Flutter, Java Spring Boot e Android nativo. Specialista in sicurezza Fintech, OWASP, VAPT e integrazione AI.',
  ctaDownloadCV: 'Scarica CV',          ctaViewWorks: 'Vedi i lavori',
  ctaViewAll: 'Vedi tutto',             ctaBack: 'Indietro',
  ctaExploreMore: 'Esplora di più',
  aboutLabel: 'CHI SONO',               aboutHeading: 'Chi Sono',
  aboutBio1: 'Sono Amit Kumar Tiwari — Architetto Mobile & Sviluppatore Full Stack.',
  aboutBio2: 'Con oltre 10 anni di esperienza professionale, progetto e consegno prodotti digitali end-to-end: app multipiattaforma con Flutter, app Android native in Java & Kotlin e backend scalabili con Java Spring Boot.',
  aboutBio3: 'Sono specializzato in sicurezza mobile Fintech — OWASP Mobile Top 10, VAPT, crittografia end-to-end (AES-256, RSA, TLS), certificate pinning e pratiche di codice sicuro.',
  areasOfExpertise: 'Aree di Competenza',
  expertiseSubtitle: 'Specializzazioni costruite in 10 anni di produzione',
  expMobileArch: 'Architettura Mobile',        expFlutter: 'Flutter & Multipiattaforma',
  expAndroid: 'Android Nativo (Java/Kotlin)',  expSpringBoot: 'API Java Spring Boot',
  expFintechSecurity: 'Sicurezza Fintech',     expOwasp: 'Linee guida OWASP Mobile',
  expVapt: 'VAPT & Test di Penetrazione',     expEncryption: 'Crittografia & PKI',
  expAi: 'Integrazione AI / ML',
  servicesLabel: 'COMPETENZE & SERVIZI',       servicesHeading: 'Cosa Costruisco',
  servicesSubtitle: 'Mobile · Backend · Full Stack — consegna completa',
  svcFlutterTitle: 'Sviluppo Flutter',
  svcFlutterDesc: 'App multipiattaforma belle e performanti per iOS, Android e Web.',
  svcAndroidTitle: 'Android Nativo',
  svcAndroidDesc: 'App Android professionali in Java & Kotlin con Jetpack.',
  svcSpringBootTitle: 'Backend — Spring Boot',
  svcSpringBootDesc: 'API RESTful, microservizi e logica server con Java Spring Boot.',
  svcFullStackTitle: 'Consegna Full Stack',
  svcFullStackDesc: 'Responsabilità completa: frontend mobile + backend REST.',
  svcBloggingTitle: 'Blog Tecnico',
  svcBloggingDesc: 'Articoli approfonditi su architettura, sicurezza e mobile engineering.',
  svcOpenSourceTitle: 'Open Source',
  svcOpenSourceDesc: 'Pacchetti Flutter su pub.dev usati da migliaia di sviluppatori.',
  myProcess: 'Il Mio Processo',
  myProcessSubtitle: 'Come porto un prodotto dall\'idea alla produzione',
  proc1Title: 'Scoprire',   proc1Desc: 'Comprendere obiettivi, utenti e portata.',
  proc2Title: 'Progettare', proc2Desc: 'Architetturare pattern, API e flussi UI.',
  proc3Title: 'Sviluppare', proc3Desc: 'Costruire con priorità alla qualità e revisioni.',
  proc4Title: 'Testare',    proc4Desc: 'Test unitari, integrazione e sicurezza (VAPT).',
  proc5Title: 'Distribuire', proc5Desc: 'Pipeline CI/CD verso Play Store, App Store o cloud.',
  proc6Title: 'Iterare',    proc6Desc: 'Monitorare metriche e migliorare continuamente.',
  projectsLabel: 'PROGETTI',               projectsHeading: 'Lavori Recenti',
  statsYears: 'Anni\nd\'Esperienza',       statsProjects: 'Progetti\nConsegnati',
  statsDownloads: 'Download\nPub.dev',     statsAwards: 'Premi\nVinti',
  contactLabel: 'CONTATTI',                contactHeading: 'Contattami',
  contactSubtitle: 'Aperto a nuovi progetti e opportunità',
  contactLocation: 'Posizione',            contactPhoneWA: 'Tel / WhatsApp',
  contactEmail: 'E-mail',                  developedWith: 'Sviluppato con ❤️ in Flutter',
  worksPortfolioLabel: 'PORTFOLIO',         worksTitle: 'I Miei Lavori',
  worksSubtitle: 'Una selezione di pacchetti Flutter e progetti che ho costruito',
  badgeHealthcare: 'Sanità',               badgeEcommerce: 'E-Commerce',
  badgeFintech: 'Fintech',                badgeRemittance: 'Rimessa',
  badgeForex: 'Forex',                   badgeFintechSecurity: 'Sicurezza Fintech',
  badgeFlutterPkg: 'Pacchetto Flutter',   badgeAndroid: 'Android Nativo',
  badgeBackend: 'Backend',              badgeFullStack: 'Full Stack',
  projHealthcareDesc: 'Piattaforma di teleconsultazione e cartelle cliniche per 500k+ pazienti. Flutter + Spring Boot, HL7 FHIR, dati sanitari crittografati, architettura HIPAA.',
  projEcomDesc: 'App shopping multi-vendor con inventario tempo reale, pagamenti Razorpay/Stripe, notifiche push e raccomandazioni IA. 100k+ utenti attivi al giorno.',
  projFintechDesc: 'Portafoglio pagamenti digitali UPI, NEFT & RTGS. AES-256, certificate pinning, conforme OWASP Mobile Top 10. 1M+ transazioni mensili.',
  projRemittanceDesc: 'Trasferimento internazionale in 50+ paesi — tassi di cambio live, conformità FEMA, integrazione AML/KYC, notifiche di liquidazione in tempo reale.',
  projForexDesc: 'Tracker di tassi di cambio in tempo reale con portafoglio multi-valuta, avvisi automatici, feed WebSocket, integrazioni API bancarie di primo livello.',
  projSecurityDesc: 'SDK di sicurezza per app bancarie — rilevamento root/jailbreak, RASP, SSL certificate pinning, codebase verificata VAPT, conforme OWASP Mobile Top 10.',
  ctaPubDev: 'Vedi su Pub.dev',          ctaGitHub: 'Vedi su GitHub',    ctaLiveSite: 'Sito live',
  headerTagline: '/ Architetto Mobile',
  projFlutterSafetyDesc: 'Rileva jailbreak, root, emulatore e stato del blocco schermo in qualsiasi app Flutter.',
  projFlutterDialogDesc: 'Libreria di dialoghi flessibile e altamente personalizzabile per Flutter con transizioni animate.',
  projFlutterSvgDesc: 'Plugin Flutter leggero per renderizzare immagini SVG su tutte le piattaforme con un\'API minimale.',
  projAndroidArchDesc: 'Esempio open-source: MVVM, Clean Architecture, Hilt DI, Coroutines e Jetpack Compose.',
  projSpringApiDesc: 'Template Spring Boot pronto per la produzione con auth JWT, accesso per ruolo, Hibernate ORM e Docker.',
  projPortfolioDesc: 'Questo portfolio — costruito con Flutter Web, responsivo su mobile, tablet e desktop.',
);

// ─────────────────────────────────────────────────────────────────────────────
// ES — Spanish
// ─────────────────────────────────────────────────────────────────────────────
const _es = AppStrings(
  navHome: 'Inicio',        navAbout: 'Sobre Mí',     navSkills: 'Habilidades',
  navProjects: 'Proyectos', navContact: 'Contacto',   navBlog: 'Blog',
  heroRole: 'Desarrollador Full Stack',
  heroBio: 'Más de 10 años arquitectando productos móviles con Flutter, Java Spring Boot y Android nativo. Especialista en seguridad Fintech, OWASP, VAPT e integración de IA.',
  ctaDownloadCV: 'Descargar CV',      ctaViewWorks: 'Ver trabajos',
  ctaViewAll: 'Ver todo',             ctaBack: 'Volver',
  ctaExploreMore: 'Explorar más',
  aboutLabel: 'SOBRE MÍ',             aboutHeading: 'Quién Soy',
  aboutBio1: 'Soy Amit Kumar Tiwari — Arquitecto Mobile & Desarrollador Full Stack.',
  aboutBio2: 'Con más de 10 años de experiencia profesional, diseño y entrego productos digitales de extremo a extremo: apps multiplataforma con Flutter, apps Android nativas en Java & Kotlin y backends escalables con Java Spring Boot.',
  aboutBio3: 'Me especializo en seguridad móvil Fintech — OWASP Mobile Top 10, VAPT, cifrado de extremo a extremo (AES-256, RSA, TLS), certificate pinning y prácticas de codificación segura.',
  areasOfExpertise: 'Áreas de Especialización',
  expertiseSubtitle: 'Especializaciones construidas en 10 años en producción',
  expMobileArch: 'Arquitectura Mobile',        expFlutter: 'Flutter y Multiplataforma',
  expAndroid: 'Android Nativo (Java/Kotlin)',  expSpringBoot: 'APIs Java Spring Boot',
  expFintechSecurity: 'Seguridad Fintech',     expOwasp: 'Guías OWASP Mobile',
  expVapt: 'VAPT y Pruebas de Penetración',   expEncryption: 'Cifrado de Datos & PKI',
  expAi: 'Integración IA / ML',
  servicesLabel: 'HABILIDADES Y SERVICIOS',    servicesHeading: 'Qué Construyo',
  servicesSubtitle: 'Móvil · Backend · Full Stack — entrega completa',
  svcFlutterTitle: 'Desarrollo Flutter',
  svcFlutterDesc: 'Apps multiplataforma hermosas y de alto rendimiento para iOS, Android y Web.',
  svcAndroidTitle: 'Android Nativo',
  svcAndroidDesc: 'Apps Android profesionales en Java & Kotlin con Jetpack.',
  svcSpringBootTitle: 'Backend — Spring Boot',
  svcSpringBootDesc: 'APIs RESTful, microservicios y lógica de servidor con Java Spring Boot.',
  svcFullStackTitle: 'Entrega Full Stack',
  svcFullStackDesc: 'Responsabilidad completa: frontend móvil + backend REST.',
  svcBloggingTitle: 'Blog Técnico',
  svcBloggingDesc: 'Artículos profundos sobre arquitectura, seguridad e ingeniería móvil.',
  svcOpenSourceTitle: 'Código Abierto',
  svcOpenSourceDesc: 'Paquetes Flutter en pub.dev usados por miles de desarrolladores.',
  myProcess: 'Mi Proceso',
  myProcessSubtitle: 'Cómo llevo un producto de la idea a la producción',
  proc1Title: 'Descubrir',   proc1Desc: 'Entender objetivos, usuarios y alcance.',
  proc2Title: 'Diseñar',     proc2Desc: 'Arquitecturar patrones, APIs y flujos UI.',
  proc3Title: 'Desarrollar', proc3Desc: 'Construir con calidad prioritaria y revisiones.',
  proc4Title: 'Probar',      proc4Desc: 'Pruebas unitarias, integración y seguridad (VAPT).',
  proc5Title: 'Desplegar',   proc5Desc: 'Pipelines CI/CD a Play Store, App Store o nube.',
  proc6Title: 'Iterar',      proc6Desc: 'Monitorear métricas y mejorar continuamente.',
  projectsLabel: 'PROYECTOS',             projectsHeading: 'Trabajo Reciente',
  statsYears: 'Años de\nExperiencia',     statsProjects: 'Proyectos\nEntregados',
  statsDownloads: 'Descargas\nPub.dev',   statsAwards: 'Premios\nGanados',
  contactLabel: 'CONTACTO',               contactHeading: 'Ponerse en Contacto',
  contactSubtitle: 'Abierto a nuevos proyectos y oportunidades',
  contactLocation: 'Ubicación',           contactPhoneWA: 'Tel / WhatsApp',
  contactEmail: 'Correo electrónico',     developedWith: 'Desarrollado con ❤️ en Flutter',
  worksPortfolioLabel: 'PORTAFOLIO',       worksTitle: 'Mis Trabajos',
  worksSubtitle: 'Una selección de paquetes Flutter y proyectos que he construido',
  badgeHealthcare: 'Salud',               badgeEcommerce: 'E-Commerce',
  badgeFintech: 'Fintech',               badgeRemittance: 'Remesa',
  badgeForex: 'Forex',                   badgeFintechSecurity: 'Seguridad Fintech',
  badgeFlutterPkg: 'Paquete Flutter',    badgeAndroid: 'Android Nativo',
  badgeBackend: 'Backend',              badgeFullStack: 'Full Stack',
  projHealthcareDesc: 'Plataforma de teleconsultas y registros de salud para 500k+ pacientes. Flutter + Spring Boot, HL7 FHIR, datos de salud cifrados, arquitectura HIPAA.',
  projEcomDesc: 'App de compras multi-vendedor con inventario en tiempo real, pagos Razorpay/Stripe, notificaciones push y recomendaciones IA. 100k+ usuarios activos diarios.',
  projFintechDesc: 'Billetera de pagos digitales UPI, NEFT & RTGS. AES-256, certificate pinning, conforme OWASP Mobile Top 10. 1M+ transacciones mensuales.',
  projRemittanceDesc: 'Transferencias internacionales en 50+ países — tipos de cambio live, cumplimiento FEMA, integración AML/KYC, notificaciones de liquidación en tiempo real.',
  projForexDesc: 'Rastreador de tipos de cambio tiempo real con cartera multi-divisa, alertas automáticas, feeds WebSocket e integraciones API bancarias de primer nivel.',
  projSecurityDesc: 'SDK de seguridad para apps bancarias — detección root/jailbreak, RASP, SSL certificate pinning, codebase auditada VAPT, conforme OWASP Mobile Top 10.',
  ctaPubDev: 'Ver en Pub.dev',           ctaGitHub: 'Ver en GitHub',     ctaLiveSite: 'Sitio en vivo',
  headerTagline: '/ Arquitecto Mobile',
  projFlutterSafetyDesc: 'Detecta jailbreak, root, emulador y estado de bloqueo de pantalla en cualquier app Flutter.',
  projFlutterDialogDesc: 'Librería de diálogos flexible y altamente personalizable para Flutter con transiciones animadas.',
  projFlutterSvgDesc: 'Plugin Flutter ligero para renderizar imágenes SVG en todas las plataformas con una API mínima.',
  projAndroidArchDesc: 'Ejemplo open-source: MVVM, Clean Architecture, Hilt DI, Coroutines y Jetpack Compose.',
  projSpringApiDesc: 'Plantilla Spring Boot lista para producción con auth JWT, acceso por roles, Hibernate ORM y Docker.',
  projPortfolioDesc: 'Este portfolio — construido con Flutter Web, responsivo en móvil, tablet y escritorio.',
);

// ─────────────────────────────────────────────────────────────────────────────
// PT — Portuguese
// ─────────────────────────────────────────────────────────────────────────────
const _pt = AppStrings(
  navHome: 'Início',        navAbout: 'Sobre Mim',    navSkills: 'Habilidades',
  navProjects: 'Projetos',  navContact: 'Contato',    navBlog: 'Blog',
  heroRole: 'Desenvolvedor Full Stack',
  heroBio: 'Mais de 10 anos arquitetando produtos móveis com Flutter, Java Spring Boot e Android nativo. Especialista em segurança Fintech, OWASP, VAPT e integração de IA.',
  ctaDownloadCV: 'Baixar CV',           ctaViewWorks: 'Ver trabalhos',
  ctaViewAll: 'Ver tudo',               ctaBack: 'Voltar',
  ctaExploreMore: 'Explorar mais',
  aboutLabel: 'SOBRE MIM',              aboutHeading: 'Quem Sou',
  aboutBio1: 'Sou Amit Kumar Tiwari — Arquiteto Mobile & Desenvolvedor Full Stack.',
  aboutBio2: 'Com mais de 10 anos de experiência profissional, projeto e entrego produtos digitais de ponta a ponta: apps multiplataforma com Flutter, apps Android nativas em Java & Kotlin e backends escaláveis com Java Spring Boot.',
  aboutBio3: 'Especializo-me em segurança móvel Fintech — OWASP Mobile Top 10, VAPT, criptografia de ponta a ponta (AES-256, RSA, TLS), certificate pinning e práticas de codificação segura.',
  areasOfExpertise: 'Áreas de Expertise',
  expertiseSubtitle: 'Especializações construídas em 10 anos de produção',
  expMobileArch: 'Arquitetura Mobile',         expFlutter: 'Flutter & Multiplataforma',
  expAndroid: 'Android Nativo (Java/Kotlin)',  expSpringBoot: 'APIs Java Spring Boot',
  expFintechSecurity: 'Segurança Fintech',     expOwasp: 'Diretrizes OWASP Mobile',
  expVapt: 'VAPT & Testes de Penetração',     expEncryption: 'Criptografia & PKI',
  expAi: 'Integração IA / ML',
  servicesLabel: 'HABILIDADES & SERVIÇOS',     servicesHeading: 'O Que Construo',
  servicesSubtitle: 'Mobile · Backend · Full Stack — entrega completa',
  svcFlutterTitle: 'Desenvolvimento Flutter',
  svcFlutterDesc: 'Apps multiplataforma belas e performáticas para iOS, Android e Web.',
  svcAndroidTitle: 'Android Nativo',
  svcAndroidDesc: 'Apps Android profissionais em Java & Kotlin com Jetpack.',
  svcSpringBootTitle: 'Backend — Spring Boot',
  svcSpringBootDesc: 'APIs RESTful, microsserviços e lógica de servidor com Java Spring Boot.',
  svcFullStackTitle: 'Entrega Full Stack',
  svcFullStackDesc: 'Responsabilidade completa: frontend móvel + backend REST.',
  svcBloggingTitle: 'Blog Técnico',
  svcBloggingDesc: 'Artigos detalhados sobre arquitetura, segurança e engenharia mobile.',
  svcOpenSourceTitle: 'Código Aberto',
  svcOpenSourceDesc: 'Pacotes Flutter no pub.dev usados por milhares de desenvolvedores.',
  myProcess: 'Meu Processo',
  myProcessSubtitle: 'Como levo um produto da ideia à produção',
  proc1Title: 'Descobrir',    proc1Desc: 'Entender objetivos, usuários e escopo.',
  proc2Title: 'Projetar',     proc2Desc: 'Arquiteturar padrões, APIs e fluxos UI.',
  proc3Title: 'Desenvolver',  proc3Desc: 'Construir com prioridade à qualidade e revisões.',
  proc4Title: 'Testar',       proc4Desc: 'Testes unitários, integração e segurança (VAPT).',
  proc5Title: 'Implantar',    proc5Desc: 'Pipelines CI/CD para Play Store, App Store ou nuvem.',
  proc6Title: 'Iterar',       proc6Desc: 'Monitorar métricas e melhorar continuamente.',
  projectsLabel: 'PROJETOS',              projectsHeading: 'Trabalhos Recentes',
  statsYears: 'Anos de\nExperiência',     statsProjects: 'Projetos\nEntregues',
  statsDownloads: 'Downloads\nPub.dev',   statsAwards: 'Prêmios\nGanhos',
  contactLabel: 'CONTATO',                contactHeading: 'Entre em Contato',
  contactSubtitle: 'Aberto a novos projetos e oportunidades',
  contactLocation: 'Localização',         contactPhoneWA: 'Tel / WhatsApp',
  contactEmail: 'E-mail',                 developedWith: 'Desenvolvido com ❤️ em Flutter',
  worksPortfolioLabel: 'PORTFÓLIO',        worksTitle: 'Meus Trabalhos',
  worksSubtitle: 'Uma seleção de pacotes Flutter e projetos que construí',
  badgeHealthcare: 'Saúde',               badgeEcommerce: 'E-Commerce',
  badgeFintech: 'Fintech',               badgeRemittance: 'Remessa',
  badgeForex: 'Forex',                   badgeFintechSecurity: 'Segurança Fintech',
  badgeFlutterPkg: 'Pacote Flutter',     badgeAndroid: 'Android Nativo',
  badgeBackend: 'Backend',              badgeFullStack: 'Full Stack',
  projHealthcareDesc: 'Plataforma de teleconsulta e prontuários para 500k+ pacientes. Flutter + Spring Boot, HL7 FHIR, dados de saúde criptografados, arquitetura HIPAA-compliant.',
  projEcomDesc: 'App de compras multi-vendedor com estoque em tempo real, pagamentos Razorpay/Stripe, notificações push e recomendações por IA. 100k+ usuários ativos diários.',
  projFintechDesc: 'Carteira de pagamentos digitais UPI, NEFT & RTGS. AES-256, certificate pinning, conforme OWASP Mobile Top 10. 1M+ transações mensais.',
  projRemittanceDesc: 'Transferência internacional em 50+ países — taxas de câmbio ao vivo, conformidade FEMA, integração AML/KYC, notificações de liquidação em tempo real.',
  projForexDesc: 'Rastreador de câmbio em tempo real com portfólio multicurrency, alertas automáticos, feeds WebSocket e integrações API bancárias de primeiro nível.',
  projSecurityDesc: 'SDK de segurança para apps bancários — detecção root/jailbreak, RASP, SSL certificate pinning, codebase auditada VAPT, conforme OWASP Mobile Top 10.',
  ctaPubDev: 'Ver no Pub.dev',           ctaGitHub: 'Ver no GitHub',     ctaLiveSite: 'Site ao vivo',
  headerTagline: '/ Arquiteto Mobile',
  projFlutterSafetyDesc: 'Detecta jailbreak, root, emulador e estado do bloqueio de tela em qualquer app Flutter.',
  projFlutterDialogDesc: 'Biblioteca de diálogos flexível e altamente personalizável para Flutter com transições animadas.',
  projFlutterSvgDesc: 'Plugin Flutter leve para renderizar imagens SVG em todas as plataformas com uma API mínima.',
  projAndroidArchDesc: 'Exemplo open-source: MVVM, Clean Architecture, Hilt DI, Coroutines e Jetpack Compose.',
  projSpringApiDesc: 'Template Spring Boot pronto para produção com auth JWT, acesso por papel, Hibernate ORM e Docker.',
  projPortfolioDesc: 'Este portfólio — construído com Flutter Web, responsivo em mobile, tablet e desktop.',
);

// ─────────────────────────────────────────────────────────────────────────────
// RU — Russian
// ─────────────────────────────────────────────────────────────────────────────
const _ru = AppStrings(
  navHome: 'Главная',       navAbout: 'Обо Мне',      navSkills: 'Навыки',
  navProjects: 'Проекты',   navContact: 'Контакт',    navBlog: 'Блог',
  heroRole: 'Full-Stack разработчик',
  heroBio: 'Более 10 лет проектирования мобильных продуктов с Flutter, Java Spring Boot и нативным Android. Специалист по безопасности Fintech, OWASP, VAPT и интеграции ИИ.',
  ctaDownloadCV: 'Скачать резюме',     ctaViewWorks: 'Смотреть работы',
  ctaViewAll: 'Смотреть все',          ctaBack: 'Назад',
  ctaExploreMore: 'Подробнее',
  aboutLabel: 'ОБО МНЕ',              aboutHeading: 'Кто Я',
  aboutBio1: 'Я Amit Kumar Tiwari — Mobile-архитектор и Full-Stack разработчик.',
  aboutBio2: 'С более чем 10-летним профессиональным опытом я проектирую и поставляю цифровые продукты: кроссплатформенные приложения на Flutter, нативные Android-приложения на Java и Kotlin, масштабируемые бэкенды на Java Spring Boot.',
  aboutBio3: 'Специализируюсь на мобильной безопасности Fintech-уровня — OWASP Mobile Top 10, VAPT, сквозное шифрование (AES-256, RSA, TLS), закрепление сертификатов и безопасное программирование.',
  areasOfExpertise: 'Области Экспертизы',
  expertiseSubtitle: 'Специализации, накопленные за 10 лет в продакшене',
  expMobileArch: 'Мобильная архитектура',      expFlutter: 'Flutter и кроссплатформа',
  expAndroid: 'Нативный Android (Java/Kotlin)', expSpringBoot: 'API Java Spring Boot',
  expFintechSecurity: 'Безопасность Fintech',  expOwasp: 'Руководства OWASP Mobile',
  expVapt: 'VAPT и пентест',                  expEncryption: 'Шифрование и PKI',
  expAi: 'Интеграция ИИ / МО',
  servicesLabel: 'НАВЫКИ И УСЛУГИ',            servicesHeading: 'Что Я Создаю',
  servicesSubtitle: 'Мобильное · Бэкенд · Full Stack — полный цикл',
  svcFlutterTitle: 'Разработка Flutter',
  svcFlutterDesc: 'Красивые, производительные кроссплатформенные приложения для iOS, Android и Web.',
  svcAndroidTitle: 'Нативный Android',
  svcAndroidDesc: 'Профессиональные Android-приложения на Java и Kotlin с Jetpack.',
  svcSpringBootTitle: 'Бэкенд — Spring Boot',
  svcSpringBootDesc: 'RESTful API, микросервисы и серверная логика на Java Spring Boot.',
  svcFullStackTitle: 'Full-Stack разработка',
  svcFullStackDesc: 'Полная ответственность: мобильный фронтенд + REST-бэкенд.',
  svcBloggingTitle: 'Технический блог',
  svcBloggingDesc: 'Глубокие статьи об архитектуре, безопасности и мобильной инженерии.',
  svcOpenSourceTitle: 'Open Source',
  svcOpenSourceDesc: 'Пакеты Flutter на pub.dev, которыми пользуются тысячи разработчиков.',
  myProcess: 'Мой процесс',
  myProcessSubtitle: 'Как я веду продукт от идеи до продакшена',
  proc1Title: 'Исследование', proc1Desc: 'Понять цели, пользователей и объём.',
  proc2Title: 'Проектирование', proc2Desc: 'Архитектура паттернов, API и UI-потоков.',
  proc3Title: 'Разработка',   proc3Desc: 'Качественный код с обязательными ревью.',
  proc4Title: 'Тестирование', proc4Desc: 'Юнит-, интеграционные и тесты безопасности (VAPT).',
  proc5Title: 'Деплой',       proc5Desc: 'CI/CD пайплайны в Play Store, App Store или облако.',
  proc6Title: 'Итерация',     proc6Desc: 'Мониторинг метрик и непрерывное улучшение.',
  projectsLabel: 'ПРОЕКТЫ',               projectsHeading: 'Последние Работы',
  statsYears: 'Лет\nопыта',              statsProjects: 'Проектов\nсдано',
  statsDownloads: 'Загрузок\nPub.dev',    statsAwards: 'Полученных\nнаград',
  contactLabel: 'КОНТАКТ',                contactHeading: 'Связаться',
  contactSubtitle: 'Открыт для новых проектов и возможностей',
  contactLocation: 'Местоположение',      contactPhoneWA: 'Тел / WhatsApp',
  contactEmail: 'Эл. почта',              developedWith: 'Создано с ❤️ на Flutter',
  worksPortfolioLabel: 'ПОРТФОЛИО',        worksTitle: 'Мои Работы',
  worksSubtitle: 'Подборка пакетов Flutter и проектов, которые я создал',
  badgeHealthcare: 'Здравоохранение',     badgeEcommerce: 'Интернет-магазин',
  badgeFintech: 'Финтех',                badgeRemittance: 'Денежные переводы',
  badgeForex: 'Форекс',                  badgeFintechSecurity: 'Безопасность Финтех',
  badgeFlutterPkg: 'Пакет Flutter',      badgeAndroid: 'Нативный Android',
  badgeBackend: 'Бэкенд',              badgeFullStack: 'Full Stack',
  projHealthcareDesc: 'Платформа телемедицины и медицинских записей для 500k+ пациентов. Flutter + Spring Boot, HL7 FHIR, сквозное шифрование, HIPAA-совместимая архитектура.',
  projEcomDesc: 'Мультивендорное торговое приложение с инвентарём в реальном времени, платежами Razorpay/Stripe, push-уведомлениями и рекомендациями ИИ. 100k+ пользователей в день.',
  projFintechDesc: 'Цифровой платёжный кошелёк UPI, NEFT и RTGS. AES-256, закрепление сертификатов, соответствие OWASP Mobile Top 10. 1M+ транзакций в месяц.',
  projRemittanceDesc: 'Международные переводы в 50+ стран — live-курсы, соответствие FEMA, интеграция AML/KYC, уведомления о расчётах в реальном времени.',
  projForexDesc: 'Трекер курсов валют в реальном времени с мультивалютным портфелем, торговыми оповещениями, WebSocket-фидами и API банков первого уровня.',
  projSecurityDesc: 'SDK безопасности для банковских приложений — обнаружение root/jailbreak, RASP, SSL-пиннинг, VAPT-аудит кода, соответствие OWASP Mobile Top 10.',
  ctaPubDev: 'На Pub.dev',               ctaGitHub: 'На GitHub',         ctaLiveSite: 'Живой сайт',
  headerTagline: '/ Mobile-архитектор',
  projFlutterSafetyDesc: 'Определяет jailbreak, root, эмулятор и статус блокировки экрана в любом Flutter-приложении.',
  projFlutterDialogDesc: 'Гибкая, высоко настраиваемая библиотека диалогов для Flutter с анимированными переходами.',
  projFlutterSvgDesc: 'Лёгкий Flutter-плагин для рендеринга SVG-изображений на всех платформах с минимальным API.',
  projAndroidArchDesc: 'Open-source пример: MVVM, Clean Architecture, Hilt DI, Coroutines и Jetpack Compose.',
  projSpringApiDesc: 'Продакшен-готовый шаблон Spring Boot с JWT-аутентификацией, ролевым доступом, Hibernate ORM и Docker.',
  projPortfolioDesc: 'Это портфолио — создано на Flutter Web, адаптивное для мобильного, планшета и десктопа.',
);

// ─────────────────────────────────────────────────────────────────────────────
// ZH — Chinese Simplified
// ─────────────────────────────────────────────────────────────────────────────
const _zh = AppStrings(
  navHome: '首页',      navAbout: '关于我',    navSkills: '技能',
  navProjects: '项目',  navContact: '联系',   navBlog: '博客',
  heroRole: '全栈开发工程师',
  heroBio: '10余年使用Flutter、Java Spring Boot和原生Android构建移动产品。专注于金融科技安全、OWASP、VAPT及AI集成领域。',
  ctaDownloadCV: '下载简历',    ctaViewWorks: '查看作品',
  ctaViewAll: '查看全部',       ctaBack: '返回',
  ctaExploreMore: '了解更多',
  aboutLabel: '关于我',         aboutHeading: '个人简介',
  aboutBio1: '我是Amit Kumar Tiwari — 移动架构师和全栈开发工程师。',
  aboutBio2: '拥有10余年专业经验，我设计并交付端到端数字产品：使用Flutter构建跨平台应用、使用Java & Kotlin构建原生Android应用，以及使用Java Spring Boot构建可扩展的后端服务。',
  aboutBio3: '专注于金融级移动安全 — OWASP移动Top 10、VAPT、端到端数据加密（AES-256、RSA、TLS）、证书固定和安全编码实践。',
  areasOfExpertise: '专业领域',
  expertiseSubtitle: '10年生产环境中积累的专业技能',
  expMobileArch: '移动架构',             expFlutter: 'Flutter跨平台开发',
  expAndroid: '原生Android (Java/Kotlin)', expSpringBoot: 'Java Spring Boot API',
  expFintechSecurity: '金融科技安全',    expOwasp: 'OWASP移动安全指南',
  expVapt: 'VAPT渗透测试',             expEncryption: '数据加密与PKI',
  expAi: 'AI / ML集成',
  servicesLabel: '技能与服务',           servicesHeading: '我的专长',
  servicesSubtitle: '移动端 · 后端 · 全栈 — 端到端产品交付',
  svcFlutterTitle: 'Flutter开发',
  svcFlutterDesc: '为iOS、Android和Web构建美观、高性能的跨平台应用。',
  svcAndroidTitle: '原生Android开发',
  svcAndroidDesc: '使用Java & Kotlin和Jetpack构建专业级Android应用。',
  svcSpringBootTitle: '后端 — Spring Boot',
  svcSpringBootDesc: '使用Java Spring Boot构建RESTful API、微服务和服务端逻辑。',
  svcFullStackTitle: '全栈交付',
  svcFullStackDesc: '全程负责：移动端前端 + REST后端一体化。',
  svcBloggingTitle: '技术博客',
  svcBloggingDesc: '关于架构、安全和移动工程的深度文章。',
  svcOpenSourceTitle: '开源贡献',
  svcOpenSourceDesc: 'pub.dev上被数千名开发者使用的Flutter软件包。',
  myProcess: '工作流程',
  myProcessSubtitle: '如何将产品从创意推进到生产',
  proc1Title: '需求分析', proc1Desc: '了解目标、用户和范围。',
  proc2Title: '设计规划', proc2Desc: '设计模式、API和UI交互流程。',
  proc3Title: '开发实现', proc3Desc: '以质量为先，代码评审驱动开发。',
  proc4Title: '测试验证', proc4Desc: '单元测试、集成测试及安全测试（VAPT）。',
  proc5Title: '部署上线', proc5Desc: 'CI/CD流水线部署至Play Store、App Store或云端。',
  proc6Title: '持续迭代', proc6Desc: '监控指标，持续优化改进。',
  projectsLabel: '项目',              projectsHeading: '近期作品',
  statsYears: '年\n经验',             statsProjects: '已交付\n项目',
  statsDownloads: 'Pub.dev\n下载量',  statsAwards: '获得的\n奖项',
  contactLabel: '联系我',             contactHeading: '与我联系',
  contactSubtitle: '欢迎新项目合作与机会',
  contactLocation: '位置',            contactPhoneWA: '电话 / WhatsApp',
  contactEmail: '电子邮件',           developedWith: '用 ❤️ 以Flutter构建',
  worksPortfolioLabel: '作品集',       worksTitle: '我的作品',
  worksSubtitle: '我构建的Flutter软件包和项目精选',
  badgeHealthcare: '医疗健康',        badgeEcommerce: '电子商务',
  badgeFintech: '金融科技',           badgeRemittance: '跨境汇款',
  badgeForex: '外汇',                badgeFintechSecurity: '金融安全',
  badgeFlutterPkg: 'Flutter包',      badgeAndroid: '原生Android',
  badgeBackend: '后端',              badgeFullStack: '全栈',
  projHealthcareDesc: '面向50万+患者的远程医疗与健康档案平台。Flutter + Spring Boot，HL7 FHIR标准，端到端加密医疗数据，符合HIPAA合规架构。',
  projEcomDesc: '多商户购物应用，支持实时库存、Razorpay/Stripe支付、推送通知和AI个性化推荐。日活用户超10万。',
  projFintechDesc: '支持UPI、NEFT和RTGS的数字支付钱包。AES-256加密，证书绑定，符合OWASP移动Top 10。每月处理超100万笔交易。',
  projRemittanceDesc: '覆盖50+国家的国际汇款 — 实时汇率、FEMA合规、AML/KYC集成，以及实时到账通知。',
  projForexDesc: '实时外汇汇率追踪器，支持多货币投资组合、自动交易提醒、WebSocket价格推送和一级银行API集成。',
  projSecurityDesc: '银行应用安全SDK — Root/越狱检测、RASP、SSL证书绑定、通过VAPT审计的代码库，符合OWASP移动Top 10。',
  ctaPubDev: '查看Pub.dev',          ctaGitHub: '查看GitHub',        ctaLiveSite: '访问网站',
  headerTagline: '/ 移动架构师',
  projFlutterSafetyDesc: '检测任何Flutter应用中的越狱、Root、模拟器和屏幕锁状态。',
  projFlutterDialogDesc: '适用于Flutter的灵活、高度可定制的对话框库，支持动画过渡和主题化。',
  projFlutterSvgDesc: '用于在所有平台上渲染SVG图像的轻量级Flutter插件，API简洁。',
  projAndroidArchDesc: '开源示例：MVVM、Clean Architecture、Hilt DI、Coroutines和Jetpack Compose。',
  projSpringApiDesc: '生产就绪的Spring Boot模板，包含JWT认证、基于角色的访问控制、Hibernate ORM和Docker。',
  projPortfolioDesc: '本作品集网站 — 使用Flutter Web构建，完美适配移动端、平板和桌面端。',
);

// ─────────────────────────────────────────────────────────────────────────────
// JA — Japanese
// ─────────────────────────────────────────────────────────────────────────────
const _ja = AppStrings(
  navHome: 'ホーム',       navAbout: '自己紹介',     navSkills: 'スキル',
  navProjects: 'プロジェクト', navContact: 'お問合せ', navBlog: 'ブログ',
  heroRole: 'フルスタック開発者',
  heroBio: 'Flutter・Java Spring Boot・ネイティブAndroidで10年以上モバイル製品を設計。フィンテックセキュリティ・OWASP・VAPT・AI統合のスペシャリスト。',
  ctaDownloadCV: '履歴書をダウンロード', ctaViewWorks: '作品を見る',
  ctaViewAll: 'すべて見る',            ctaBack: '戻る',
  ctaExploreMore: 'もっと見る',
  aboutLabel: '自己紹介',              aboutHeading: '私について',
  aboutBio1: '私はAmit Kumar Tiwariです — モバイルアーキテクト & フルスタック開発者。',
  aboutBio2: '10年以上の職業経験を持ち、エンドツーエンドのデジタル製品を設計・提供：Flutterによるクロスプラットフォームアプリ、Java & KotlinによるネイティブAndroid、Java Spring Bootによるスケーラブルなバックエンド。',
  aboutBio3: 'フィンテック品質のモバイルセキュリティを専門としています — OWASP Mobile Top 10、VAPT、エンドツーエンド暗号化（AES-256、RSA、TLS）、証明書ピン固定、セキュアコーディング。',
  areasOfExpertise: '専門分野',
  expertiseSubtitle: '10年の本番環境で培った専門技術',
  expMobileArch: 'モバイルアーキテクチャ',      expFlutter: 'Flutter & クロスプラットフォーム',
  expAndroid: 'ネイティブAndroid (Java/Kotlin)', expSpringBoot: 'Java Spring Boot API',
  expFintechSecurity: 'フィンテックセキュリティ', expOwasp: 'OWASPモバイルガイドライン',
  expVapt: 'VAPT & ペネトレーションテスト',     expEncryption: 'データ暗号化 & PKI',
  expAi: 'AI / ML インテグレーション',
  servicesLabel: 'スキルとサービス',            servicesHeading: '私が作るもの',
  servicesSubtitle: 'モバイル · バックエンド · フルスタック — エンドツーエンド',
  svcFlutterTitle: 'Flutter開発',
  svcFlutterDesc: 'iOS・Android・Web向けの美しく高性能なクロスプラットフォームアプリ。',
  svcAndroidTitle: 'ネイティブAndroid',
  svcAndroidDesc: 'Java & KotlinとJetpackによるプロダクション品質のAndroidアプリ。',
  svcSpringBootTitle: 'バックエンド — Spring Boot',
  svcSpringBootDesc: 'Java Spring BootによるRESTful API・マイクロサービス・サーバーロジック。',
  svcFullStackTitle: 'フルスタック納品',
  svcFullStackDesc: '全責任範囲：モバイルフロントエンド + RESTバックエンド。',
  svcBloggingTitle: 'テクニカルブログ',
  svcBloggingDesc: 'アーキテクチャ・セキュリティ・モバイルエンジニアリングの詳細な記事。',
  svcOpenSourceTitle: 'オープンソース',
  svcOpenSourceDesc: 'pub.devの何千もの開発者に利用されるFlutterパッケージ。',
  myProcess: '私のプロセス',
  myProcessSubtitle: 'アイデアから本番環境まで',
  proc1Title: '発見',       proc1Desc: '目標・ユーザー・スコープを理解する。',
  proc2Title: '設計',       proc2Desc: 'パターン・API・UIフローを設計する。',
  proc3Title: '開発',       proc3Desc: '品質優先・コードレビューで構築する。',
  proc4Title: 'テスト',     proc4Desc: 'ユニット・統合・セキュリティテスト（VAPT）。',
  proc5Title: 'デプロイ',   proc5Desc: 'CI/CDパイプラインでPlay Store・App Store・クラウドへ。',
  proc6Title: 'イテレーション', proc6Desc: 'メトリクスを監視し継続的に改善する。',
  projectsLabel: 'プロジェクト',          projectsHeading: '最近の作品',
  statsYears: '年の\n経験',              statsProjects: '納品した\nプロジェクト',
  statsDownloads: 'Pub.dev\nダウンロード', statsAwards: '受賞した\n賞',
  contactLabel: 'お問合せ',              contactHeading: 'お問い合わせ',
  contactSubtitle: '新しいプロジェクトや機会を歓迎します',
  contactLocation: '場所',              contactPhoneWA: '電話 / WhatsApp',
  contactEmail: 'メール',               developedWith: 'Flutterで ❤️ を込めて開発',
  worksPortfolioLabel: 'ポートフォリオ',   worksTitle: '作品集',
  worksSubtitle: '私が制作したFlutterパッケージとプロジェクトの一覧',
  badgeHealthcare: 'ヘルスケア',          badgeEcommerce: 'Eコマース',
  badgeFintech: 'フィンテック',           badgeRemittance: '国際送金',
  badgeForex: '外国為替',               badgeFintechSecurity: 'フィンテック安全',
  badgeFlutterPkg: 'Flutterパッケージ',  badgeAndroid: 'ネイティブAndroid',
  badgeBackend: 'バックエンド',          badgeFullStack: 'フルスタック',
  projHealthcareDesc: '50万人以上の患者向け遠隔診療・健康記録プラットフォーム。Flutter + Spring Boot、HL7 FHIR標準、エンドツーエンド暗号化、HIPAA準拠アーキテクチャ。',
  projEcomDesc: 'リアルタイム在庫管理・Razorpay/Stripe決済・プッシュ通知・AIレコメンドを備えたマルチベンダーショッピングアプリ。日間アクティブユーザー10万人以上。',
  projFintechDesc: 'UPI・NEFT・RTGS対応デジタル決済ウォレット。AES-256、証明書ピン固定、OWASP Mobile Top 10準拠。月間100万件以上の取引を処理。',
  projRemittanceDesc: '50カ国以上への国際送金 — ライブ為替レート、FEMA準拠、AML/KYC統合、リアルタイム送金完了通知。',
  projForexDesc: 'リアルタイム為替レートトラッカー。マルチ通貨ポートフォリオ・自動取引アラート・WebSocketフィード・第一級銀行API統合を搭載。',
  projSecurityDesc: 'バンキングアプリ向けセキュリティSDK — root/ジェイルブレイク検出、RASP、SSL証明書ピン固定、VAPT監査済みコードベース、OWASP Mobile Top 10準拠。',
  ctaPubDev: 'Pub.devで見る',            ctaGitHub: 'GitHubで見る',      ctaLiveSite: 'サイトを見る',
  headerTagline: '/ モバイルアーキテクト',
  projFlutterSafetyDesc: '任意のFlutterアプリでジェイルブレイク・root・エミュレーター・画面ロック状態を検出。',
  projFlutterDialogDesc: 'アニメーションとテーマに対応した、Flutter向けの柔軟で高度にカスタマイズ可能なダイアログライブラリ。',
  projFlutterSvgDesc: '最小限のAPIですべてのプラットフォームにSVG画像をレンダリングする軽量Flutterプラグイン。',
  projAndroidArchDesc: 'オープンソースサンプル：MVVM・Clean Architecture・Hilt DI・Coroutines・Jetpack Compose。',
  projSpringApiDesc: 'JWT認証・ロールベースアクセス・Hibernate ORM・Docker対応の本番環境向けSpring Bootテンプレート。',
  projPortfolioDesc: 'このポートフォリオ — Flutter Webで構築、モバイル・タブレット・デスクトップ対応。',
);

// ─────────────────────────────────────────────────────────────────────────────
// KO — Korean
// ─────────────────────────────────────────────────────────────────────────────
const _ko = AppStrings(
  navHome: '홈',          navAbout: '소개',       navSkills: '기술',
  navProjects: '프로젝트', navContact: '연락',    navBlog: '블로그',
  heroRole: '풀스택 개발자',
  heroBio: 'Flutter, Java Spring Boot, 네이티브 Android로 10년 이상 모바일 제품을 설계했습니다. 핀테크 보안, OWASP, VAPT 및 AI 통합 전문가.',
  ctaDownloadCV: '이력서 다운로드',   ctaViewWorks: '작업물 보기',
  ctaViewAll: '전체 보기',            ctaBack: '뒤로',
  ctaExploreMore: '더 알아보기',
  aboutLabel: '소개',                aboutHeading: '저에 대해',
  aboutBio1: '저는 Amit Kumar Tiwari — 모바일 아키텍트 & 풀스택 개발자입니다.',
  aboutBio2: '10년 이상의 전문 경험을 바탕으로 엔드투엔드 디지털 제품을 설계하고 제공합니다: Flutter로 크로스플랫폼 앱, Java & Kotlin로 네이티브 Android 앱, Java Spring Boot로 확장 가능한 백엔드.',
  aboutBio3: '핀테크 수준의 모바일 보안을 전문으로 합니다 — OWASP Mobile Top 10, VAPT, 엔드투엔드 데이터 암호화(AES-256, RSA, TLS), 인증서 피닝 및 보안 코딩 실천.',
  areasOfExpertise: '전문 분야',
  expertiseSubtitle: '10년간 프로덕션 환경에서 쌓은 전문성',
  expMobileArch: '모바일 아키텍처',          expFlutter: 'Flutter & 크로스플랫폼',
  expAndroid: '네이티브 Android (Java/Kotlin)', expSpringBoot: 'Java Spring Boot API',
  expFintechSecurity: '핀테크 앱 보안',       expOwasp: 'OWASP 모바일 가이드라인',
  expVapt: 'VAPT & 침투 테스트',             expEncryption: '데이터 암호화 & PKI',
  expAi: 'AI / ML 통합',
  servicesLabel: '기술 & 서비스',             servicesHeading: '제가 구축하는 것',
  servicesSubtitle: '모바일 · 백엔드 · 풀스택 — 엔드투엔드 제공',
  svcFlutterTitle: 'Flutter 개발',
  svcFlutterDesc: 'iOS, Android, Web을 위한 아름답고 고성능 크로스플랫폼 앱.',
  svcAndroidTitle: '네이티브 Android',
  svcAndroidDesc: 'Java & Kotlin과 Jetpack을 활용한 프로덕션급 Android 앱.',
  svcSpringBootTitle: '백엔드 — Spring Boot',
  svcSpringBootDesc: 'Java Spring Boot로 RESTful API, 마이크로서비스, 서버 로직.',
  svcFullStackTitle: '풀스택 납품',
  svcFullStackDesc: '완전한 책임: 모바일 프론트엔드 + REST 백엔드.',
  svcBloggingTitle: '기술 블로그',
  svcBloggingDesc: '아키텍처, 보안, 모바일 엔지니어링에 관한 심층 글.',
  svcOpenSourceTitle: '오픈 소스',
  svcOpenSourceDesc: '수천 명의 개발자가 사용하는 pub.dev Flutter 패키지.',
  myProcess: '나의 프로세스',
  myProcessSubtitle: '아이디어에서 프로덕션까지',
  proc1Title: '발견',    proc1Desc: '목표, 사용자, 범위를 이해합니다.',
  proc2Title: '설계',    proc2Desc: '패턴, API, UI 흐름을 아키텍처링합니다.',
  proc3Title: '개발',    proc3Desc: '품질 우선, 코드 리뷰 중심으로 구축합니다.',
  proc4Title: '테스트',  proc4Desc: '유닛, 통합 및 보안(VAPT) 테스트.',
  proc5Title: '배포',    proc5Desc: 'Play Store, App Store 또는 클라우드로 CI/CD.',
  proc6Title: '반복',    proc6Desc: '지표를 모니터링하고 지속적으로 개선합니다.',
  projectsLabel: '프로젝트',              projectsHeading: '최근 작업',
  statsYears: '년\n경력',                statsProjects: '납품\n프로젝트',
  statsDownloads: 'Pub.dev\n다운로드',    statsAwards: '수상\n내역',
  contactLabel: '연락',                  contactHeading: '연락하기',
  contactSubtitle: '새로운 프로젝트와 기회에 열려 있습니다',
  contactLocation: '위치',               contactPhoneWA: '전화 / WhatsApp',
  contactEmail: '이메일',                developedWith: 'Flutter로 ❤️ 를 담아 개발',
  worksPortfolioLabel: '포트폴리오',       worksTitle: '나의 작업물',
  worksSubtitle: '제가 구축한 Flutter 패키지 및 프로젝트 모음',
  badgeHealthcare: '헬스케어',            badgeEcommerce: '이커머스',
  badgeFintech: '핀테크',                badgeRemittance: '해외송금',
  badgeForex: '외환',                   badgeFintechSecurity: '핀테크 보안',
  badgeFlutterPkg: 'Flutter 패키지',     badgeAndroid: '네이티브 Android',
  badgeBackend: '백엔드',               badgeFullStack: '풀스택',
  projHealthcareDesc: '50만+ 환자를 위한 원격진료 및 건강기록 플랫폼. Flutter + Spring Boot, HL7 FHIR 표준, 엔드투엔드 암호화, HIPAA 규정 준수 아키텍처.',
  projEcomDesc: '실시간 재고, Razorpay/Stripe 결제, 푸시 알림, AI 추천을 갖춘 멀티벤더 쇼핑 앱. 일일 활성 사용자 10만+.',
  projFintechDesc: 'UPI, NEFT & RTGS를 지원하는 디지털 결제 지갑. AES-256, 인증서 피닝, OWASP 모바일 Top 10 준수. 월 100만+ 건 처리.',
  projRemittanceDesc: '50개국+ 국제 송금 — 실시간 환율, FEMA 준수, AML/KYC 통합, 실시간 정산 알림.',
  projForexDesc: '다중 통화 포트폴리오, 자동 거래 알림, WebSocket 가격 피드, 1등급 은행 API 통합을 갖춘 실시간 환율 트래커.',
  projSecurityDesc: '뱅킹 앱용 보안 SDK — 루트/탈옥 감지, RASP, SSL 인증서 피닝, VAPT 감사된 코드베이스, OWASP 모바일 Top 10 준수.',
  ctaPubDev: 'Pub.dev에서 보기',         ctaGitHub: 'GitHub에서 보기',    ctaLiveSite: '라이브 사이트',
  headerTagline: '/ 모바일 아키텍트',
  projFlutterSafetyDesc: '모든 Flutter 앱에서 탈옥, 루트, 에뮬레이터, 화면 잠금 상태를 감지합니다.',
  projFlutterDialogDesc: '애니메이션 전환과 테마 지원이 있는 Flutter용 유연하고 고도로 커스터마이징 가능한 다이얼로그 라이브러리.',
  projFlutterSvgDesc: '최소한의 API로 모든 플랫폼에서 SVG 이미지를 렌더링하는 경량 Flutter 플러그인.',
  projAndroidArchDesc: '오픈소스 샘플: MVVM, Clean Architecture, Hilt DI, Coroutines, Jetpack Compose.',
  projSpringApiDesc: 'JWT 인증, 역할 기반 접근 제어, Hibernate ORM, Docker가 포함된 프로덕션 준비 Spring Boot 템플릿.',
  projPortfolioDesc: '이 포트폴리오 — Flutter Web으로 제작, 모바일·태블릿·데스크톱 반응형 대응.',
);

// ─────────────────────────────────────────────────────────────────────────────
// HI — Hindi
// ─────────────────────────────────────────────────────────────────────────────
const _hi = AppStrings(
  navHome: 'होम',          navAbout: 'परिचय',       navSkills: 'कौशल',
  navProjects: 'परियोजनाएं', navContact: 'संपर्क',  navBlog: 'ब्लॉग',
  heroRole: 'फुल स्टैक डेवलपर',
  heroBio: 'Flutter, Java Spring Boot और नेटिव Android के साथ 10+ वर्षों से मोबाइल उत्पाद निर्माण। Fintech सुरक्षा, OWASP, VAPT और AI एकीकरण विशेषज्ञ।',
  ctaDownloadCV: 'CV डाउनलोड करें',  ctaViewWorks: 'काम देखें',
  ctaViewAll: 'सभी देखें',             ctaBack: 'वापस',
  ctaExploreMore: 'और जानें',
  aboutLabel: 'मेरे बारे में',         aboutHeading: 'मैं कौन हूँ',
  aboutBio1: 'मैं Amit Kumar Tiwari हूँ — Mobile Architect और Full Stack Developer।',
  aboutBio2: '10+ वर्षों के पेशेवर अनुभव के साथ, मैं एंड-टू-एंड डिजिटल उत्पाद डिजाइन और डिलीवर करता हूँ: Flutter के साथ क्रॉस-प्लेटफॉर्म ऐप्स, Java & Kotlin में नेटिव Android ऐप्स, और Java Spring Boot के साथ स्केलेबल बैकएंड सेवाएं।',
  aboutBio3: 'मैं Fintech-ग्रेड मोबाइल सुरक्षा में विशेषज्ञ हूँ — OWASP Mobile Top 10, VAPT, एंड-टू-एंड डेटा एन्क्रिप्शन (AES-256, RSA, TLS), सर्टिफिकेट पिनिंग और सुरक्षित कोडिंग अभ्यास।',
  areasOfExpertise: 'विशेषज्ञता के क्षेत्र',
  expertiseSubtitle: '10 वर्षों में प्रोडक्शन में निर्मित विशेषताएं',
  expMobileArch: 'मोबाइल आर्किटेक्चर',        expFlutter: 'Flutter और क्रॉस-प्लेटफॉर्म',
  expAndroid: 'नेटिव Android (Java/Kotlin)',   expSpringBoot: 'Java Spring Boot APIs',
  expFintechSecurity: 'Fintech ऐप सुरक्षा',   expOwasp: 'OWASP मोबाइल दिशानिर्देश',
  expVapt: 'VAPT और पेनेट्रेशन टेस्टिंग',    expEncryption: 'डेटा एन्क्रिप्शन और PKI',
  expAi: 'AI / ML एकीकरण',
  servicesLabel: 'कौशल और सेवाएं',             servicesHeading: 'मैं क्या बनाता हूँ',
  servicesSubtitle: 'मोबाइल · बैकएंड · फुल स्टैक — संपूर्ण डिलीवरी',
  svcFlutterTitle: 'Flutter विकास',
  svcFlutterDesc: 'iOS, Android और Web के लिए सुंदर, उच्च-प्रदर्शन क्रॉस-प्लेटफॉर्म ऐप्स।',
  svcAndroidTitle: 'नेटिव Android',
  svcAndroidDesc: 'Java & Kotlin और Jetpack के साथ प्रोडक्शन-ग्रेड Android ऐप्स।',
  svcSpringBootTitle: 'बैकएंड — Spring Boot',
  svcSpringBootDesc: 'Java Spring Boot के साथ RESTful APIs, माइक्रोसर्विसेस और सर्वर लॉजिक।',
  svcFullStackTitle: 'फुल स्टैक डिलीवरी',
  svcFullStackDesc: 'संपूर्ण जिम्मेदारी: मोबाइल फ्रंटएंड + REST बैकएंड।',
  svcBloggingTitle: 'तकनीकी ब्लॉगिंग',
  svcBloggingDesc: 'आर्किटेक्चर, सुरक्षा और मोबाइल इंजीनियरिंग पर गहन लेख।',
  svcOpenSourceTitle: 'ओपन सोर्स',
  svcOpenSourceDesc: 'pub.dev पर Flutter पैकेज जो हजारों डेवलपर उपयोग करते हैं।',
  myProcess: 'मेरी प्रक्रिया',
  myProcessSubtitle: 'विचार से प्रोडक्शन तक कैसे पहुँचता हूँ',
  proc1Title: 'खोज',       proc1Desc: 'लक्ष्य, उपयोगकर्ता और दायरा समझना।',
  proc2Title: 'डिजाइन',   proc2Desc: 'पैटर्न, APIs और UI फ्लो आर्किटेक्ट करना।',
  proc3Title: 'विकास',    proc3Desc: 'गुणवत्ता-प्रथम, समीक्षित कोड के साथ निर्माण।',
  proc4Title: 'परीक्षण',  proc4Desc: 'यूनिट, इंटीग्रेशन और सुरक्षा (VAPT) टेस्टिंग।',
  proc5Title: 'तैनाती',   proc5Desc: 'Play Store, App Store या क्लाउड के लिए CI/CD।',
  proc6Title: 'पुनरावृत्ति', proc6Desc: 'मेट्रिक्स मॉनिटर करें और निरंतर सुधार करें।',
  projectsLabel: 'परियोजनाएं',          projectsHeading: 'हाल के काम',
  statsYears: 'साल का\nअनुभव',          statsProjects: 'डिलीवर\nप्रोजेक्ट',
  statsDownloads: 'Pub.dev\nडाउनलोड',   statsAwards: 'पुरस्कार\nजीते',
  contactLabel: 'संपर्क',               contactHeading: 'संपर्क करें',
  contactSubtitle: 'नए प्रोजेक्ट और अवसरों के लिए खुला',
  contactLocation: 'स्थान',             contactPhoneWA: 'फोन / WhatsApp',
  contactEmail: 'ईमेल',                 developedWith: 'Flutter में ❤️ के साथ विकसित',
  worksPortfolioLabel: 'पोर्टफोलियो',    worksTitle: 'मेरे काम',
  worksSubtitle: 'Flutter पैकेज और प्रोजेक्ट का संग्रह',
  badgeHealthcare: 'स्वास्थ्य सेवा',    badgeEcommerce: 'ई-कॉमर्स',
  badgeFintech: 'फिनटेक',              badgeRemittance: 'धन प्रेषण',
  badgeForex: 'विदेशी मुद्रा',          badgeFintechSecurity: 'फिनटेक सुरक्षा',
  badgeFlutterPkg: 'Flutter पैकेज',    badgeAndroid: 'नेटिव Android',
  badgeBackend: 'बैकएंड',             badgeFullStack: 'फुल स्टैक',
  projHealthcareDesc: '5 लाख+ मरीजों के लिए टेलीकंसल्टेशन और स्वास्थ्य रिकॉर्ड प्लेटफॉर्म। Flutter + Spring Boot, HL7 FHIR मानक, एंड-टू-एंड एन्क्रिप्टेड डेटा, HIPAA-अनुपालक।',
  projEcomDesc: 'रियल-टाइम इन्वेंटरी, Razorpay/Stripe भुगतान, पुश नोटिफिकेशन और AI अनुशंसाओं के साथ मल्टी-वेंडर शॉपिंग ऐप। 1 लाख+ दैनिक सक्रिय उपयोगकर्ता।',
  projFintechDesc: 'UPI, NEFT और RTGS समर्थन के साथ डिजिटल पेमेंट वॉलेट। AES-256, सर्टिफिकेट पिनिंग, OWASP मोबाइल Top 10 अनुपालक। मासिक 10 लाख+ लेनदेन।',
  projRemittanceDesc: '50+ देशों में अंतर्राष्ट्रीय धन हस्तांतरण — लाइव विदेशी मुद्रा दरें, FEMA अनुपालन, AML/KYC एकीकरण, रीयल-टाइम सेटलमेंट सूचनाएं।',
  projForexDesc: 'मल्टी-करेंसी पोर्टफोलियो, ट्रेड अलर्ट, WebSocket मूल्य फीड और टियर-1 बैंक API एकीकरण के साथ रीयल-टाइम विदेशी मुद्रा ट्रैकर।',
  projSecurityDesc: 'बैंकिंग ऐप्स के लिए सुरक्षा SDK — रूट/जेलब्रेक डिटेक्शन, RASP, SSL सर्टिफिकेट पिनिंग, VAPT-ऑडिटेड कोडबेस, OWASP मोबाइल Top 10 अनुपालक।',
  ctaPubDev: 'Pub.dev पर देखें',       ctaGitHub: 'GitHub पर देखें',   ctaLiveSite: 'लाइव साइट',
  headerTagline: '/ मोबाइल आर्किटेक्ट',
  projFlutterSafetyDesc: 'किसी भी Flutter ऐप में जेलब्रेक, रूट, एमुलेटर और स्क्रीन-लॉक स्थिति का पता लगाएं।',
  projFlutterDialogDesc: 'Flutter के लिए लचीली, उच्च-अनुकूलनीय डायलॉग लाइब्रेरी जिसमें एनिमेटेड ट्रांज़िशन और थीमिंग है।',
  projFlutterSvgDesc: 'सभी प्लेटफॉर्म पर SVG छवियों को न्यूनतम API के साथ रेंडर करने के लिए हल्का Flutter प्लगइन।',
  projAndroidArchDesc: 'ओपन-सोर्स सैंपल: MVVM, Clean Architecture, Hilt DI, Coroutines और Jetpack Compose।',
  projSpringApiDesc: 'JWT ऑथ, रोल-बेस्ड एक्सेस, Hibernate ORM और Docker के साथ प्रोडक्शन-रेडी Spring Boot टेम्पलेट।',
  projPortfolioDesc: 'यह पोर्टफोलियो — Flutter Web से बनाया गया, मोबाइल, टैबलेट और डेस्कटॉप पर रेस्पॉन्सिव।',
);
