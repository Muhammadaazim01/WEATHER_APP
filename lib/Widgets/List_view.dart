import 'package:flutter/material.dart';

class List_Widget extends StatefulWidget {
  final double fillPercentage;
  const List_Widget({
    super.key,
    required this.fillPercentage,
  });

  @override
  State<List_Widget> createState() => _List_WidgetState();
}

class _List_WidgetState extends State<List_Widget> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> containerData = [
      {
        "Days": "Today",
        "Images": "assets/images/small sun.png",
        "Degree": "15°",
        "End Degree": "31°"
      },
      {
        "Days": 'Mon',
        "Images": "assets/images/2.png",
        "Image Bottom Text": "60%",
        "Degree": "18°",
        "End Degree": "32°",
      },
      {
        "Days": 'Tues',
        "Images": "assets/images/2.png",
        "Image Bottom Text": "60%",
        "Degree": "20°",
        "End Degree": "29°",
      },
      {
        "Days": 'Wed',
        "Images": "assets/images/2.png",
        "Image Bottom Text": "70%",
        "Degree": "17°",
        "End Degree": "27°",
      },
      {
        "Days": 'Thu',
        "Images": "assets/images/2.png",
        "Image Bottom Text": "70%",
        "Degree": "17°",
        "End Degree": "26°",
      },
      {
        "Days": 'Fri',
        "Images": "assets/images/small sun.png",
        "Degree": "20°",
        "End Degree": "25°",
      },
      {
        "Days": 'Sat',
        "Images": "assets/images/2.png",
        "Image Bottom Text": "50%",
        "Degree": "18°",
        "End Degree": "24°",
      },
      {
        "Days": 'Sun',
        "Images": "assets/images/2.png",
        "Image Bottom Text": "50%",
        "Degree": "13°",
        "End Degree": "25°",
      },
      {
        "Days": 'Mon',
        "Images": "assets/images/small sun.png",
        "Degree": "12°",
        "End Degree": "22°",
      },
    ];

    return Expanded(
      child: ListView.builder(
        itemCount: containerData.length,
        itemBuilder: (context, index) {
          var data = containerData[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 1.5),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 60,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Container(
                        height: 40,
                        width: 65,
                        child: Text(
                          data["Days"],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Image.asset(
                            data["Images"],
                          ),
                          if (data.containsKey("Image Bottom Text"))
                            Text(
                              data["Image Bottom Text"],
                              style: TextStyle(
                                color: Color(0xff81CFFA),
                                fontSize: 15,
                              ),
                            ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        data["Degree"],
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 22,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 80,
                        height: 4,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: FractionallySizedBox(
                          alignment: Alignment.centerLeft,
                          widthFactor: widget.fillPercentage,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xffEF8835),
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        data["End Degree"],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
