import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:tiket_app/base/res/styles/app_style.dart';
import 'package:tiket_app/base/utils/all_jason.dart';
class HotelDetailsScreen extends StatefulWidget {
  const HotelDetailsScreen({super.key});
  @override
  State<HotelDetailsScreen> createState() => _HotelDetailsScreenState();
}
class _HotelDetailsScreenState extends State<HotelDetailsScreen> {
  late int index = 0;
  @override
  void didChangeDependencies() {
    var args = ModalRoute.of(context)!.settings.arguments as Map;
    var intindexIn = args["index"];
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    index = intindexIn;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            floating: false,
            pinned: true,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppStyles.primaryColor,
                  ),
                  child: const Icon(
                    FluentSystemIcons.ic_fluent_ios_arrow_left_regular,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
                background: Stack(
              children: [
                Positioned.fill(
                  child: Image(
                    image: AssetImage(
                      "assets/images/${hotelList[index]["image"]}",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 10,
                  bottom: 10,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Text(
                      hotelList[index]["name"],
                      style: AppStyles.headLineStyle
                          .copyWith(color: Colors.white, shadows: [
                        Shadow(
                          blurRadius: 10,
                          color: AppStyles.primaryColor,
                          offset: const Offset(2.0, 2.0),
                        )
                      ]),
                    ),
                  ),
                )
              ],
            )),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: ExpandedTextWidgeet(
                    text:
                        "loareum ipsum dolor sit amet, consectetur adipiscing elit. Donec auctor nisl nec nisl tincidunt, nec tincidunt nisl ultricies. loareum ipsum dolor sit amet, consectetur adipiscing elit. Donec auctor nisl nec nisl tincidunt, nec tincidunt nisl ultricies. Donec auctor nisl nec nisl tincidunt, nec tincidunt nisl u Donec auctor nisl nec nisl tincidunt, nec tincidunt",
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "More Images",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  //margin: const EdgeInsets.only(left: 16),
                  //padding: const EdgeInsets.only(left: 8),
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16),
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/${hotelList[index]["image"]}"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ExpandedTextWidgeet extends StatefulWidget {
  final String text;
  const ExpandedTextWidgeet({super.key, required this.text});

  @override
  State<ExpandedTextWidgeet> createState() => _ExpandedTextWidgeetState();
}

class _ExpandedTextWidgeetState extends State<ExpandedTextWidgeet> {
  bool isExpanded = false;
  _toogleExpand() {
    // isExpanded = !isExpanded;
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    var textWidget = Text(
      widget.text,
      maxLines: isExpanded ? null : 3,
      overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textWidget,
        GestureDetector(
          onTap: _toogleExpand,
          child: Text(
            isExpanded ? "Read Less" : "Read More",
            style: TextStyle(
              color: AppStyles.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
