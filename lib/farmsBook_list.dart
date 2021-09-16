import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui/farmsBook_stories.dart';

class InstaList extends StatefulWidget {
  @override
  _InstaListState createState() => _InstaListState();
}

class _InstaListState extends State<InstaList> {
  bool isPressed = false;
  String dropdownValue1 = 'Select Crop';
  String dropdownValue2 = '      Location';

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index) => index == 0
          ? new SizedBox(
              child: new InstaStories(),
              height: deviceSize.height * 0.15,
            )
          : Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(18.0, 16.0, 8.0, 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DropdownButton<String>(
                        value: dropdownValue1,
                        icon: const Icon(Icons.arrow_drop_down),
                        iconSize: 28,
                        elevation: 16,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        // underline: Container(
                        //   height: 2,
                        //   color: Colors.deepPurpleAccent,
                        // ),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue1 = newValue;
                          });
                        },
                        items: <String>[
                          'Select Crop',
                          'Maize',
                          'Wheat',
                          'Gram',
                          'Pulses'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                      DropdownButton<String>(
                        value: dropdownValue2,
                        icon: const Icon(Icons.arrow_drop_down),
                        iconSize: 28,
                        elevation: 16,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        // underline:0.0,
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue2 = newValue;
                          });
                        },
                        items: <String>[
                          '      Location',
                          "Assam",
                          "Bihar",
                          "Chhattisgarh",
                          "Goa",
                          "Gujarat",
                          "Haryana",
                          "Jharkhand",
                          "Karnataka",
                          "Kerala",
                          "Maharashtra",
                          "Manipur",
                          "Meghalaya",
                          "Mizoram",
                          "Nagaland",
                          "Odisha",
                          "Punjab",
                          "Rajasthan",
                          "Sikkim",
                          "Tamil Nadu",
                          "Telangana",
                          "Tripura",
                          "Uttarakhand",
                          "Uttar Pradesh",
                          "West Bengal",
                          "Chandigarh",
                          "Daman and Diu",
                          "Delhi",
                          "Lakshadweep",
                          "Puducherry"
                        ]
                            .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            })
                            .toSet()
                            .toList(),
                      ),
                    ],
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Image.network(
                            'https://media.istockphoto.com/photos/corn-cob-with-green-leaves-growth-in-agriculture-field-outdoor-picture-id1098113322?k=20&m=1098113322&s=612x612&w=0&h=d6HJ5oe2w-_ob7TexNlcvJwG28MQdPeQIkXKhPmjBJg=',
                            height: 370,
                            width: 370,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 17),
                                  child: Text(
                                    "Corn",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 27,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Orgainc',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                ),
                                Text(
                                  '3.5 (20 review)',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(height: 1, color: Colors.black),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(17.0),
                              child: Column(
                                children: [
                                  Text(
                                    "50 Tons Available",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20.0),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Rs 40000/Ton',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20.0),
                                  )
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text("Know More"),
                                  style: ButtonStyle(
                                    fixedSize: MaterialStateProperty.all(
                                        Size(150, 40)),
                                    foregroundColor: MaterialStateProperty.all(
                                        Colors.amber[300]),
                                    textStyle: MaterialStateProperty.all(
                                        TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold)),
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.lightGreen[900]),
                                    shape: MaterialStateProperty.all<
                                        OutlinedBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Image.network(
                            'https://image.shutterstock.com/image-photo/close-thai-rice-seeds-ear-260nw-548490154.jpg',
                            height: 370,
                            width: 370,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 17),
                                  child: Text(
                                    "Rice",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 27,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Orgainc',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                ),
                                Text(
                                  '3 (29 review)',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(height: 1, color: Colors.black),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(17.0),
                              child: Column(
                                children: [
                                  Text(
                                    "90 Tons Available",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20.0),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Rs 60000/Ton',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20.0),
                                  )
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text("Know More"),
                                  style: ButtonStyle(
                                    fixedSize: MaterialStateProperty.all(
                                        Size(150, 40)),
                                    foregroundColor: MaterialStateProperty.all(
                                        Colors.amber[300]),
                                    textStyle: MaterialStateProperty.all(
                                        TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold)),
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.lightGreen[900]),
                                    shape: MaterialStateProperty.all<
                                        OutlinedBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
