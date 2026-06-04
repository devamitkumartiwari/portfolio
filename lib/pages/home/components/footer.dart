import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/l10n/app_strings.dart';
import '../../../core/l10n/locale_provider.dart';
import '../../../core/utils/constants.dart';
import '../../../core/utils/screen_helper.dart';
import '../../../core/utils/utils.dart';
import '../../../models/footer_item.dart';
import '../../../provider/theme.dart';

List<FooterItem> _buildFooterItems(AppStrings s) => [
  FooterItem(iconData: Icons.location_on_rounded,  title: s.contactLocation, text1: "Lucknow, Uttar Pradesh, India", onTap: Utilty.openMyLocation),
  FooterItem(iconData: Icons.phone_rounded,         title: s.contactPhoneWA,  text1: "+91 9871192371",               onTap: Utilty.openWhatsapp),
  FooterItem(iconData: Icons.mail_outline_rounded,  title: s.contactEmail,    text1: "amtechnovation@gmail.com",     onTap: Utilty.openMail),
];

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final isDark = ref.watch(themeProvider).isDarkMode;
      final textColor = isDark ? kDarkText : kLightText;
      final secColor = isDark ? kDarkTextSec : kLightTextSec;
      final cardColor = isDark ? kDarkCard : kLightCard;
      final borderColor = isDark ? kDarkBorder : kLightBorder;
      final isMobile = ScreenHelper.isMobile(context);
      final s = ref.watch(stringsProvider);
      final items = _buildFooterItems(s);

      return PageWrapper(
        extraPadding: EdgeInsets.symmetric(
          horizontal: isMobile ? 24 : 40,
          vertical: isMobile ? 48 : 80,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Section header
            Text(
              s.contactLabel,
              style: GoogleFonts.outfit(
                color: kAccent,
                fontSize: 12,
                fontWeight: FontWeight.w700,
                letterSpacing: 2.5,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              s.contactHeading,
              style: GoogleFonts.outfit(
                fontWeight: FontWeight.w800,
                fontSize: isMobile ? 32 : 42,
                height: 1.15,
                color: textColor,
                letterSpacing: -1,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              s.contactSubtitle,
              style: GoogleFonts.outfit(color: secColor, fontSize: 15),
            ),
            const SizedBox(height: 40),

            // Contact cards grid
            LayoutBuilder(builder: (context, constraints) {
              final cols = isMobile ? 1 : 3;
              final cardWidth = (constraints.maxWidth - (cols - 1) * 16) / cols;
              return Wrap(
                spacing: 16,
                runSpacing: 16,
                children: items.map((item) {
                  return _ContactCard(
                    item: item,
                    width: cardWidth,
                    cardColor: cardColor,
                    borderColor: borderColor,
                    textColor: textColor,
                    secColor: secColor,
                  );
                }).toList(),
              );
            }),

            const SizedBox(height: 48),

            // Social row + copyright
            Flex(
              direction: isMobile ? Axis.vertical : Axis.horizontal,
              mainAxisAlignment: isMobile
                  ? MainAxisAlignment.start
                  : MainAxisAlignment.spaceBetween,
              crossAxisAlignment: isMobile
                  ? CrossAxisAlignment.start
                  : CrossAxisAlignment.center,
              children: [
                Wrap(
                  spacing: 12,
                  children: AppConstants.socialLoginListItems.map((e) {
                    return _FooterSocialBtn(
                      iconData: e.iconData,
                      onTap: e.onTap,
                      cardColor: cardColor,
                      borderColor: borderColor,
                      secColor: secColor,
                    );
                  }).toList(),
                ),
                if (isMobile) const SizedBox(height: 20),
                Text(
                  s.developedWith,
                  style: GoogleFonts.outfit(
                    color: secColor,
                    fontSize: 13,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),
          ],
        ),
      );
    });
  }
}

class _ContactCard extends StatefulWidget {
  final FooterItem item;
  final double width;
  final Color cardColor;
  final Color borderColor;
  final Color textColor;
  final Color secColor;

  const _ContactCard({
    required this.item,
    required this.width,
    required this.cardColor,
    required this.borderColor,
    required this.textColor,
    required this.secColor,
  });

  @override
  State<_ContactCard> createState() => _ContactCardState();
}

class _ContactCardState extends State<_ContactCard> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: widget.item.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          width: widget.width,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: _hovered
                ? kAccent.withValues(alpha: 0.06)
                : widget.cardColor,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: _hovered
                  ? kAccent.withValues(alpha: 0.5)
                  : widget.borderColor,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  color: kAccent.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(widget.item.iconData, color: kAccent, size: 20),
              ),
              const SizedBox(height: 14),
              Text(
                widget.item.title,
                style: GoogleFonts.outfit(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: widget.secColor,
                  letterSpacing: 0.5,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                widget.item.text1,
                style: GoogleFonts.outfit(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: widget.textColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FooterSocialBtn extends StatefulWidget {
  final IconData? iconData;
  final VoidCallback onTap;
  final Color cardColor;
  final Color borderColor;
  final Color secColor;

  const _FooterSocialBtn({
    required this.iconData,
    required this.onTap,
    required this.cardColor,
    required this.borderColor,
    required this.secColor,
  });

  @override
  State<_FooterSocialBtn> createState() => _FooterSocialBtnState();
}

class _FooterSocialBtnState extends State<_FooterSocialBtn> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: _hovered ? kAccent : widget.cardColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: _hovered ? kAccent : widget.borderColor,
            ),
          ),
          child: Center(
            child: Icon(
              widget.iconData,
              size: 17,
              color: _hovered ? Colors.white : widget.secColor,
            ),
          ),
        ),
      ),
    );
  }
}
