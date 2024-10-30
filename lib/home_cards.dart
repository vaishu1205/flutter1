import 'package:flutter/material.dart';

// Model class for activity card data
class ActivityCardData {
  final String title;
  final String imagePath;
  final String duration;
  final Function() onTapFunction;
  final double placement_top;
  final double placement_bottom;
  final double placement_left;
  final double placement_right;

  ActivityCardData({
    required this.title,
    required this.imagePath,
    required this.duration,
    required this.onTapFunction,
    required this.placement_top,
    required this.placement_bottom,
    required this.placement_right,
    required this.placement_left,
  });
}

// Custom card widget
class ActivityCard extends StatelessWidget {
  final ActivityCardData data;

  const ActivityCard({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: data.onTapFunction, // Use the function from data directly
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFF9C27B0), Color(0xFF673AB7)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        height: 164,
        child: Stack(
          children: [
            Positioned.fill(
              top: data.placement_top,
              bottom: data.placement_bottom,
              left: data.placement_left,
              right: data.placement_right,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    Colors.black
                        .withOpacity(0.4), // Adjust opacity for darkness
                    BlendMode.darken, // Darken effect
                  ),
                  child: Image.asset(
                    data.imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    data.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.timer,
                        color: Colors.white,
                        size: 16,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        data.duration,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//CARROUSEL
// Vertical carousel widget
class CardPageView extends StatefulWidget {
  final List<ActivityCardData> cardGroups;

  CardPageView({required this.cardGroups});

  @override
  _CardPageViewState createState() => _CardPageViewState();
}

class _CardPageViewState extends State<CardPageView> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final pageCount = (widget.cardGroups.length / 3).ceil();

    return Row(
      children: [
        // Page Indicators
        Container(
          width: 30,
          margin: EdgeInsets.only(right: 5, left: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(pageCount, (index) {
              return GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 4),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      width: index == currentPage ? 24 : 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: index == currentPage
                            ? Theme.of(context).primaryColor
                            : Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(12),
                        gradient: index == currentPage
                            ? LinearGradient(
                                colors: [
                                  Theme.of(context).primaryColor,
                                  Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.7),
                                ],
                              )
                            : null,
                        boxShadow: index == currentPage
                            ? [
                                BoxShadow(
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.3),
                                  blurRadius: 4,
                                  offset: Offset(0, 2),
                                )
                              ]
                            : null,
                      ),
                    ),
                  ));
            }),
          ),
        ),

        // PageView
        Expanded(
          child: SizedBox(
            height: 520,
            child: PageView.builder(
              scrollDirection: Axis.vertical,
              itemCount: pageCount,
              onPageChanged: (page) {
                setState(() {
                  currentPage = page;
                });
              },
              itemBuilder: (context, pageIndex) {
                final startIndex = pageIndex * 3;

                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (int i = 0; i < 3; i++)
                        if (startIndex + i < widget.cardGroups.length)
                          Container(
                            height: 164,
                            child: ActivityCard(
                                data: widget.cardGroups[startIndex + i]),
                          )
                        else
                          SizedBox(height: 164),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
