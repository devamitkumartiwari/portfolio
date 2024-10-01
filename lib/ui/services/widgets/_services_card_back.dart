part of '../services.dart';

class _ServiceCardBackWidget extends StatelessWidget {
  const _ServiceCardBackWidget({
    required this.serviceDesc,
    required this.serviceTitle,
  });

  final String serviceDesc;
  final String serviceTitle;

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          serviceDesc,
          style: AppText.l1,
        ),
        Divider(
          color: appProvider.isDark ? Colors.white : Colors.black38,
        ),
        Container(
          height: AppDimensions.normalize(14),
          width: AppDimensions.normalize(60),
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 4, bottom: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: AppTheme.c!.primary,
          ),
          child: MaterialButton(
            // color: AppTheme.c!.primary,
            onPressed: () => showDialog(
              context: context,
              builder: (_) => AlertDialog(
                backgroundColor: Colors.white,
                title: Text(
                  "Hire Me!",
                  style: AppText.b2b,
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      "Back",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      height: AppDimensions.normalize(14),
                      // width: AppDimensions.normalize(60),
                      onPressed: () => openURL(
                        'https://api.whatsapp.com/send?phone=919871192371',
                      ),
                      child: Container(
                        // height: 40,
                        // height: AppDimensions.normalize(14),
                        width: AppDimensions.normalize(60),
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 4, bottom: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: AppTheme.c!.primary,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              FontAwesomeIcons.mailchimp,
                              color: Colors.white,
                            ),
                            Space.x!,
                            Text(
                              'Whatsapp',
                              style: AppText.l1!.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Space.y1!,
                    MaterialButton(
                      height: AppDimensions.normalize(14),
                      onPressed: () => openURL(
                        "mailto:${AboutUtils.email}",
                      ),
                      child: Container(
                        // height: 40,
                        width: AppDimensions.normalize(60),
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 4, bottom: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: AppTheme.c!.primary,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              FontAwesomeIcons.mailchimp,
                              color: Colors.white,
                            ),
                            Space.x!,
                            Text(
                              'Email',
                              style: AppText.l1!.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            child: Text(
              'HIRE ME!',
              style: AppText.b2!.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
