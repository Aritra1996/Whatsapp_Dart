import "package:flutter/material.dart";

class WhatsappCommunityPage extends StatelessWidget {
  List<List<String>> communityDetailsList = [
    [],
    [
      'Friends',
      'Para',
      '02/01/23',
      'You added Akshay',
      'Office',
      '01/01/23',
      'Hello All'
    ],
    [
      'Study',
      'Physics',
      '03/01/23',
      'You added Rumpa',
      'Chess',
      'Yesterday',
      'Hello All'
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: ListView.builder(
            itemCount: communityDetailsList.length,
            itemBuilder: (BuildContext context, int index) {
              return index != 0
                  ? Container(
                      width: double.infinity,
                      decoration: BoxDecoration(color: Colors.grey[850]),
                      child: Column(children: [
                        Padding(
                            padding: EdgeInsets.all(
                                MediaQuery.of(context).size.height / 50),
                            child: Container(
                                height: MediaQuery.of(context).size.height / 10,
                                color: Colors.grey[850],
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      MediaQuery.of(context).size.height / 100),
                                  child: Row(children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image(
                                            image: NetworkImage(
                                                "https://picsum.photos/seed/${index + 1}/100"))),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width /
                                          100,
                                    ),
                                    Text(communityDetailsList[index][0],
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20)),
                                  ]),
                                ))),
                        Padding(
                          padding: EdgeInsets.all(
                              MediaQuery.of(context).size.height / 50),
                          child: Container(
                              height: MediaQuery.of(context).size.height / 10,
                              color: Colors.grey[850],
                              child: Padding(
                                padding: EdgeInsets.all(
                                    MediaQuery.of(context).size.height / 100),
                                child: Row(children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.teal[900],
                                    radius: 15,
                                    child: Icon(Icons.campaign,
                                        color: Colors.green),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 100,
                                  ),
                                  Expanded(
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                        Text(communityDetailsList[index][0],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20)),
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              100,
                                        ),
                                        Text(communityDetailsList[index][3],
                                            style: TextStyle(
                                                color: Colors.white38,
                                                fontSize: 10))
                                      ])),
                                  Text(communityDetailsList[index][2],
                                      style: TextStyle(
                                          color: Colors.white38, fontSize: 10)),
                                ]),
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.all(
                              MediaQuery.of(context).size.height / 50),
                          child: Container(
                              height: MediaQuery.of(context).size.height / 10,
                              color: Colors.grey[850],
                              child: Padding(
                                padding: EdgeInsets.all(
                                    MediaQuery.of(context).size.height / 100),
                                child: Row(children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.teal[900],
                                    radius: 15,
                                    backgroundImage: NetworkImage(
                                        "https://picsum.photos/seed/${index}1/100"),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 100,
                                  ),
                                  Expanded(
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                        Text(communityDetailsList[index][1],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20)),
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              100,
                                        ),
                                        Text(communityDetailsList[index][3],
                                            style: TextStyle(
                                                color: Colors.white38,
                                                fontSize: 10))
                                      ])),
                                  Text(communityDetailsList[index][2],
                                      style: TextStyle(
                                          color: Colors.white38, fontSize: 10)),
                                ]),
                              )),
                        ),
                        Padding(
                            padding: EdgeInsets.all(
                                MediaQuery.of(context).size.height / 50),
                            child: Container(
                                height: MediaQuery.of(context).size.height / 10,
                                color: Colors.grey[850],
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      MediaQuery.of(context).size.height / 100),
                                  child: Row(children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.teal[900],
                                      radius: 15,
                                      backgroundImage: NetworkImage(
                                          "https://picsum.photos/seed/${index}2/100"),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width /
                                          100,
                                    ),
                                    Expanded(
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                          Text(communityDetailsList[index][4],
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20)),
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                100,
                                          ),
                                          Text(communityDetailsList[index][6],
                                              style: TextStyle(
                                                  color: Colors.white38,
                                                  fontSize: 10))
                                        ])),
                                    Text(communityDetailsList[index][5],
                                        style: TextStyle(
                                            color: Colors.white38,
                                            fontSize: 10)),
                                  ]),
                                ))),
                        Padding(
                            padding: EdgeInsets.all(
                                MediaQuery.of(context).size.height / 50),
                            child: Row(children: [
                              Icon(Icons.chevron_right, color: Colors.white38),
                              Text('View all',
                                  style: TextStyle(color: Colors.white38)),
                            ])),
                        Container(
                          color: Colors.black,
                          height: MediaQuery.of(context).size.height / 30,
                        ),
                      ]))
                  : WhatsappCommunityPersonalBar();
            }),
      ),
    );
  }
}

class WhatsappCommunityPersonalBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(
        'WhatsappCommunityPersonalBar height :- ${MediaQuery.of(context).size.height}');
    return Column(children: [
      Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).size.height / 200),
          child: Container(
              height: MediaQuery.of(context).size.height / 10,
              color: Colors.grey[850],
              child: Padding(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.height / 100),
                child: Row(children: [
                  Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.height / 100),
                        child: Icon(Icons.groups, color: Colors.white),
                      )),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 50,
                  ),
                  Text('New community',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ]),
              ))),
      SizedBox(
        height: MediaQuery.of(context).size.height / 100,
      )
    ]);
  }
}
