import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 0.8 / 1.1, //  width/height
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image:
                    DecorationImage(image: AssetImage(AssetsPathes.testImage)),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: Text(
                    "Harry Potter and the Goblet of Fire",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    // copyWith => rewrite the values
                    style: Styles.textStyle20.copyWith(fontFamily: "GT"),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                const SizedBox(
                  child: Text(
                    "J.K. Rowling",
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle14,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Text(
                        r"19.99 $",
                        overflow: TextOverflow.ellipsis,
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          FontAwesomeIcons.solidStar,
                          color: Color(0xffffdd4f),
                        ),
                        const SizedBox(
                          width: 6.3,
                        ),
                        const Text(
                          "4.8",
                          overflow: TextOverflow.ellipsis,
                          style: Styles.textStyle16,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "(2148)",
                          overflow: TextOverflow.ellipsis,
                          style: Styles.textStyle14
                              .copyWith(color: const Color(0xff707070)),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
