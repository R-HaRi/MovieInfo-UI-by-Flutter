import 'package:flutter/material.dart';
import 'package:movie_info/constants.dart';

// We need stateful widget because we need to change some sate on our category
class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedCategory = 0;
  List<String> categories = ["In Theatre", "Box Office", "Coming Soon"];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 60,
      child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedCategory = index;
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(categories[index],
                        style: Theme.of(context).textTheme.headline5.copyWith(
                            fontWeight: FontWeight.w600,
                            color: index == selectedCategory
                                ? kTextColor
                                : Colors.black.withOpacity(0.4))),
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                      height: 6,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: index == selectedCategory
                              ? kSecondaryColor
                              : Colors.transparent),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
