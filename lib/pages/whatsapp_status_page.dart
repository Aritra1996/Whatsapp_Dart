import "package:flutter/material.dart";

class WhatsappStatusPage extends StatelessWidget {
  List<String> statusPersonList = [
    'Abhistha',
    'Shabnam',
    'Sakshi TFT',
    'Subhash Jethu',
    'Apurba Roy Club',
    'Juhi Rajya Rajneeti Youtube',
    'Pepuda',
    'Gourav Magra',
    'Abhistha',
    'Shabnam',
    'Sakshi TFT',
    'Subhash Jethu',
    'Apurba Roy Club',
    'Juhi Rajya Rajneeti Youtube',
    'Pepuda',
    'Gourav Magra',
  ];
  List<String> statusTimeList = [
    'Just now',
    '3 minuts ago',
    '56 minutes ago',
    'Today, 13:58',
    'Today, 09:57',
    'Today, 06:40',
    'Yesterday, 20:16',
    'Yesterday, 16:19',
    'Just now',
    '3 minuts ago',
    '56 minutes ago',
    'Today, 13:58',
    'Today, 09:57',
    'Today, 06:40',
    'Yesterday, 20:16',
    'Yesterday, 16:19',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.grey[850],
          child: ListView.builder(
              itemCount: statusPersonList.length,
              itemBuilder: (BuildContext context, int index) {
                return index != 0
                    ? Container(
                        width: double.infinity,
                        decoration: BoxDecoration(color: Colors.grey[850]),
                        child: Padding(
                          padding: EdgeInsets.all(
                              MediaQuery.of(context).size.height / 60),
                          child: Row(children: [
                            CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 22,
                                child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://picsum.photos/seed/${index + 1}/100"),
                                    radius: 20)),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 100,
                            ),
                            Expanded(
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                  Text(statusPersonList[index],
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20)),
                                  Row(children: [
                                    Text(statusTimeList[index],
                                        style: TextStyle(color: Colors.white38))
                                  ])
                                ])),
                          ]),
                        ),
                      )
                    : WhatsappStatusPersonalBar();
              }),
        ),
        floatingActionButton:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          FloatingActionButton(
            backgroundColor: Colors.grey[800],
            onPressed: () {},
            tooltip: 'Edit',
            child: Icon(Icons.edit),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {},
            tooltip: 'Camera',
            child: Icon(Icons.photo_camera),
          ),
        ]));
  }
}

class WhatsappStatusPersonalBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.height / 60),
          child: Row(children: [
            CircleAvatar(
              backgroundImage:
                  NetworkImage("https://picsum.photos/seed/Aritra/100"),
              radius: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 100,
            ),
            Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Text('My status',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  Text('Tap to add status update',
                      style: TextStyle(color: Colors.white38))
                ])),
          ])),
      Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.height / 60),
          child: Align(
              alignment: Alignment(-1, 0),
              child: Text('Recent updates',
                  style: TextStyle(color: Colors.white38))))
    ]);
  }
}
