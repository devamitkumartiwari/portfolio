part of '../services.dart';

class _ServiceCard extends StatefulWidget {
  final String serviceIcon;
  final String serviceTitle;
  final String serviceDescription;

  const _ServiceCard({
    required this.serviceIcon,
    required this.serviceTitle,
    required this.serviceDescription,
  });

  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<_ServiceCard> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);

    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        cardKey.currentState!.toggleCard();
      },
      onHover: (isHovering) {
        if (isHovering) {
          setState(() {
            isHover = true;
          });
        } else {
          setState(() {
            isHover = false;
          });
        }
      },
      child: FlipCard(
        flipOnTouch: kIsWeb ? false : true,
        key: cardKey,
        back: Card(
          color: appProvider.isDark ? Colors.grey[900] : Colors.white,
          elevation: 1,
          borderOnForeground: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: Container(
            width: AppDimensions.normalize(100),
            height: AppDimensions.normalize(80),
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
            child: _ServiceCardBackWidget(
              serviceDesc: widget.serviceDescription,
              serviceTitle: widget.serviceTitle,
            ),
          ),
        ),
        front: Card(
          color: appProvider.isDark ? Colors.grey[900] : Colors.white,
          elevation: 1,
          borderOnForeground: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: Container(
            width: AppDimensions.normalize(100),
            height: AppDimensions.normalize(80),
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  widget.serviceIcon,
                  height: AppDimensions.normalize(30),
                  color: widget.serviceIcon.contains(StaticUtils.openSource) &&
                          !appProvider.isDark
                      ? Colors.black
                      : null,
                ),
                Space.y1!,
                Text(
                  widget.serviceTitle,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
