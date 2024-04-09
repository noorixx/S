import 'package:child_care/components/app_large_text.dart';
import 'package:child_care/components/app_text.dart';
import 'package:child_care/components/my_button.dart';
import 'package:child_care/components/responsive_button.dart';
import 'package:flutter/material.dart';

class detailsPage extends StatefulWidget {
  const detailsPage({super.key});

  @override
  State<detailsPage> createState() => _detailsPageState();
}

class _detailsPageState extends State<detailsPage> {
  int gottenStars = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: 350,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/building.jpg'),
                    fit: BoxFit.cover,
                  )),
                )),
            Positioned(
              left: 20,
              top: 70,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.menu),
                    color: Colors.white,
                    iconSize: 35,
                  )
                ],
              ),
            ),
            Positioned(
              top: 310,
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(
                            text: "AJYAAL MONTESSORI",
                            size: 20,
                            color: Colors.black.withOpacity(0.8),
                          ),
                          AppLargeText(
                            text: "2 to 5 years",
                            size: 15,
                            color: Colors.black45,
                          ),
                        ]),
                    const SizedBox(
                      height: 5,
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Madinat hamad, Hamala",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(5, (index) {
                            return Icon(
                              Icons.star,
                              color: index < gottenStars
                                  ? Color.fromARGB(255, 227, 209, 50)
                                  : const Color.fromARGB(255, 182, 179, 173),
                            );
                          }),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "(4.0)",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AppLargeText(
                      text: "Description",
                      color: Colors.black.withOpacity(0.8),
                      size: 20,
                    ),
                    AppText(
                      text:
                          "Montessori education is a highly developed and widely tested method which encourages the special abilities of each child. Celebrating its one hundred year anniversary in 2007, Montessori is one of the leading educational theories and methods around the world.",
                      size: 15,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Positioned(
                bottom: 25,
                left: 10,
                right: 30,
                child: Row(
                  children: [
                    FavButton(),
                    ResponsiveButton(
                      isResponsive: true,
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
