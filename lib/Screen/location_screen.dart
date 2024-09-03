import 'package:flutter/material.dart';
import 'package:travel_loc/Model/Location.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  Location? _location;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      setState(() {
        _location = ModalRoute.of(context)?.settings.arguments as Location?;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: width,
          height: height,
          padding: const EdgeInsets.all(0),
          child: _location != null
              ? Column(
                  children: [
                    Stack(
                      children: [
                        Hero(
                          tag: _location!.img,
                          child: SizedBox(
                            width: width,
                            child: Image.asset(
                              _location!.img,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Image.asset(
                              "images/arrow.png",
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                        child: Container(
                      child: SingleChildScrollView(
                        child: Container(
                          padding: const EdgeInsets.all(25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _location!.description,
                                textAlign: TextAlign.justify,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: "RedHatDisplay",
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Key features:",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: "RedHatDisplay",
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              _location!.keyFeatures.isNotEmpty
                                  ? Container(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children:
                                            _location!.keyFeatures.map((value) {
                                          return Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                "- ",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontFamily: "RedHatDisplay",
                                                ),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  textAlign: TextAlign.justify,
                                                  value,
                                                  style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16,
                                                    fontFamily: "RedHatDisplay",
                                                  ),
                                                ),
                                              )
                                            ],
                                          );
                                        }).toList(),
                                      ),
                                    )
                                  : const SizedBox(),
                              const SizedBox(
                                height: 5,
                              ),
                              _location!.questions.isNotEmpty
                                  ? Container(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Column(
                                        children: [
                                          const Text(
                                            "Could you please provide more context or information, such as:",
                                            textAlign: TextAlign.justify,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontFamily: "RedHatDisplay",
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: _location!.questions
                                                .map((value) {
                                              return Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const Text(
                                                    "- ",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      fontFamily:
                                                          "RedHatDisplay",
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      textAlign:
                                                          TextAlign.justify,
                                                      value,
                                                      style: const TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 16,
                                                        fontFamily:
                                                            "RedHatDisplay",
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              );
                                            }).toList(),
                                          )
                                        ],
                                      ),
                                    )
                                  : const SizedBox()
                            ],
                          ),
                        ),
                      ),
                    ))
                  ],
                )
              : const CircularProgressIndicator(), // Show a loading indicator while the location is null
        ),
      ),
    );
  }
}
