import 'package:flutter/material.dart';
import 'package:travel_loc/Model/Location.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final List<Location> locations = [
    Location(
        name: "SIGIRIYA",
        location: "Dambulla",
        img: "images/sigiriya.png",
        description:
            "Sigiriya is an ancient rock fortress and palace located in Sri Lanka. It's renowned for its historical significance, stunning architecture, and breathtaking views.",
        keyFeatures: [
          "Lion's Rock: The fortress is built on a massive granite rock, often referred to as \"Lion's Rock\" due to the lion-shaped entrance that once stood at its base. ",
          "King Kashyapa: The fortress was constructed by King Kashyapa in the 5th century AD. ",
          "UNESCO World Heritage Site: Sigiriya was declared a UNESCO World Heritage Site in 1982. ",
          "Frescoes: The fortress is famous for its well-preserved frescoes, thought to depict a harem of King Kashyapa.",
          "Mirror Wall: Another notable feature is the Mirror Wall, a polished granite surface that once reflected the surrounding landscape. ",
          "Gardens: The fortress is surrounded by extensive gardens, including terraced gardens and water gardens. ",
          "Climbing the Rock: Visitors can climb a series of steps to reach the summit of the rock, where they can enjoy panoramic views of the surrounding countryside. "
        ],
        questions: []),
    Location(
        name: "NINE ARCHES BRIDGE",
        location: "Badulla",
        img: "images/nineArch.png",
        description:
            "I couldn't find any information about a \"nayanach briged.\"",
        keyFeatures: [
          "There might be a misspelling: Please double-check the spelling and try searching for it again.",
          "It's a less known or local bridge: If the bridge is relatively unknown or located in a specific region, it might not have extensive online information.",
          "There might be a translation issue: If you're using a translated name, please ensure the translation is accurate."
        ],
        questions: [
          "Location: Where is this bridge located?",
          "Purpose: What is the bridge used for (e.g., vehicles, pedestrians)?",
          "Notable features: Are there any unique characteristics or historical significance associated with the bridge?"
        ]),
    Location(
        name: "AMBULUWAWA TOWER",
        location: "Gampola",
        img: "images/abuluwawa.png",
        description:
            "Ambuluwawa Tower is a unique multi-religious site located in Gampola, Sri Lanka. It's a spiral tower standing tall on a hilltop, offering panoramic views of the surrounding landscapes.",
        keyFeatures: [
          "Multi-religious center: It's home to a Buddhist temple, a Hindu kovil, a Christian church, and a Muslim mosque, symbolizing harmony and tolerance.",
          "Panoramic views: Offers breathtaking views of the surrounding mountains, forests, and valleys.",
          "Biodiversity: The area is rich in biodiversity, with various flora and fauna.",
          "Unique architecture: The spiral design and blend of architectural styles make it a visually striking landmark."
        ],
        questions: []),
    Location(
        name: "GALLE FORT",
        location: "Gampola",
        img: "images/galleFort.png",
        description:
            "Galle Fort is a UNESCO World Heritage Site located in the southern coastal city of Galle, Sri Lanka. It's a Dutch colonial fort built in the 16th century and is one of the best-preserved colonial fortresses in Asia.",
        keyFeatures: [
          "Dutch architecture: The fort features a distinctive Dutch architectural style, with cobblestone streets, ramparts, and bastions.",
          "Historical significance: Galle Fort has a rich history, having been ruled by the Portuguese, Dutch, and British at various times.",
          "Cultural hub: Today, the fort is a vibrant cultural center, with art galleries, museums, restaurants, and shops.",
          "Tourist attraction: The fort is a popular tourist destination, offering a glimpse into Sri Lanka's colonial past."
        ],
        questions: []),
    Location(
        name: "RAVANA FALLS",
        location: "Badulla",
        img: "images/ravanaFall.png",
        description:
            "Ravana Falls is a picturesque waterfall located in the Uva province of Sri Lanka. It's known for its impressive width and the surrounding lush greenery. The falls are named after the legendary King Ravana from the Ramayana epic, who is said to have hidden Princess Sita in the nearby caves.",
        keyFeatures: [
          "Height: Approximately 25 meters (82 feet)",
          "Width: Varies depending on the season, but can be quite wide",
          "Location: Ravana Ella Wildlife Sanctuary, near Ella",
          "Legend: Connected to the Ramayana epic",
          "Activities: Swimming, hiking, nature viewing"
        ],
        questions: []),
    Location(
        name: "MIRISSA",
        location: "Matara",
        img: "images/mirissa.png",
        description:
            "Mirissa is a popular coastal town in Sri Lanka, renowned for its beautiful beaches, surfing opportunities, and whale watching. It's a vibrant and lively place with a relaxed atmosphere.",
        keyFeatures: [
          "Beaches: Mirissa boasts several stunning beaches, including Mirissa Beach, Whale Watching Bay, and Parrot Rock Beach.",
          "Surfing: The town is a popular surfing destination, with consistent waves and a variety of surf breaks to suit different skill levels.",
          "Whale watching: Mirissa is a prime location for whale watching, especially during the peak season (December to April). You can spot blue whales, sperm whales, and other marine mammals.",
          "Fishing: Mirissa has a thriving fishing community, and you can witness the daily catch being brought in.",
          "Nightlife: The town offers a range of bars, restaurants, and cafes, providing a lively atmosphere in the evenings."
        ],
        questions: []),
  ];

  @override
  Widget build(BuildContext context) {
    final double hight = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            height: hight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "Welcome",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 24,
                      color: Color.fromRGBO(14, 91, 101, 1),
                      fontFamily: "RedHatDisplay",
                      fontWeight: FontWeight.bold),
                ),
                Image.asset(
                  "images/dash.png",
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Sri Lanka, a tropical island nation, offers a blend of ancient history, natural beauty, and vibrant culture. Visitors can explore ancient ruins, relax on pristine beaches, or embark on wildlife safaris. The country’s diverse landscapes, from lush rainforests to sandy coastlines, make it a popular destination for travelers seeking adventure and relaxation.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "RedHatDisplay",
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Find your perfect destination",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(14, 91, 101, 1),
                      fontFamily: "RedHatDisplay",
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                Expanded(
                    child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                  width: width,
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 0.92,
                      crossAxisSpacing: 30,
                      mainAxisSpacing: 30,
                    ),
                    itemCount: locations.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(
                          vertical: 3,
                          horizontal: 2,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 0),
                            ),
                          ],
                        ),
                        child: InkWell(
                          splashColor: Colors.white,
                          onTap: () {
                            Navigator.pushNamed(context, "/location",
                                arguments: locations[index]);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(2),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Hero(
                                  tag: locations[index].img,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.asset(
                                      locations[index].img,
                                      fit: BoxFit.scaleDown,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                FittedBox(
                                  child: Text(
                                    textAlign: TextAlign.left,
                                    locations[index].name.toLowerCase(),
                                    style: const TextStyle(
                                        fontFamily: "RedHatDisplay",
                                        color: Colors.black,
                                        fontSize: 16),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "images/loc1.png",
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    FittedBox(
                                      child: Text(
                                        textAlign: TextAlign.left,
                                        locations[index].location.toLowerCase(),
                                        style: const TextStyle(
                                            fontFamily: "RedHatDisplay",
                                            color: Colors.black,
                                            fontSize: 12),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
