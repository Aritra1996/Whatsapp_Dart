import "package:flutter/material.dart";

class WhatsappCallsPage extends StatelessWidget {
  List<String> callPersonList = [
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
  List<String> callDirection = [
    'in',
    'in',
    'out',
    'in',
    'out',
    'in',
    'out',
    'out',
    'in',
    'in',
    'out',
    'in',
    'out',
    'in',
    'out',
    'out',
  ];
  List<String> callstatus = [
    'recieved',
    'missed',
    'recieved',
    'recieved',
    'recieved',
    'recieved',
    'missed',
    'recieved',
    'recieved',
    'missed',
    'recieved',
    'recieved',
    'recieved',
    'recieved',
    'missed',
    'recieved',
  ];
  List<String> callTimeList = [
    '1 January 00:34',
    '18/12/22, 14:24',
    '10/12/22, 17:18',
    '(2) 08/12/22, 16:38',
    '18/12/22, 14:24',
    '07/12/22, 18:48',
    '06/12/22, 14:40',
    '27/11/22, 19:33',
    '1 January 00:34',
    '18/12/22, 14:24',
    '10/12/22, 17:18',
    '(2) 08/12/22, 16:38',
    '18/12/22, 14:24',
    '07/12/22, 18:48',
    '06/12/22, 14:40',
    '27/11/22, 19:33',
  ];
  List<String> callType = [
    'video',
    'audio',
    'video',
    'audio',
    'audio',
    'audio',
    'audio',
    'video',
    'video',
    'audio',
    'video',
    'audio',
    'audio',
    'audio',
    'audio',
    'video',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[850],
        child: ListView.builder(
            itemCount: callPersonList.length,
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
                              backgroundImage: NetworkImage(
                                  "https://picsum.photos/seed/${index + 1}/100"),
                              radius: 20),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 100,
                          ),
                          Expanded(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                        bottom:
                                            MediaQuery.of(context).size.height /
                                                180),
                                    child: Text(callPersonList[index],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20))),
                                Row(children: [
                                  callDirection[index] == 'in'
                                      ? Icon(
                                          Icons.south_west,
                                          color: callstatus[index] == 'recieved'
                                              ? Colors.green
                                              : Colors.red,
                                          size: 17,
                                        )
                                      : Icon(
                                          Icons.north_east,
                                          color: callstatus[index] == 'recieved'
                                              ? Colors.green
                                              : Colors.red,
                                          size: 17,
                                        ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 200,
                                  ),
                                  Text(callTimeList[index],
                                      style: TextStyle(color: Colors.white38))
                                ])
                              ])),
                          Align(
                            alignment: Alignment(1, 0),
                            child: callType[index] == 'audio'
                                ? Icon(
                                    Icons.call,
                                    color: Colors.green,
                                  )
                                : Icon(
                                    Icons.video_call,
                                    color: Colors.green,
                                  ),
                          ),
                        ]),
                      ),
                    )
                  : WhatsappCallPersonalBar();
            }),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        tooltip: 'Chat',
        child: Icon(Icons.add_call),
      ),
    );
  }
}

class WhatsappCallPersonalBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.height / 60),
          child: Row(children: [
            CircleAvatar(
              backgroundColor: Colors.green,
              radius: 20,
              child: Icon(Icons.link),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 100,
            ),
            Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Text('Create call link',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  Text('Share a link for your WhatsApp call',
                      style: TextStyle(color: Colors.white38))
                ])),
          ])),
      Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.height / 60),
          child: Align(
              alignment: Alignment(-1, 0),
              child: Text('Recent', style: TextStyle(color: Colors.white38))))
    ]);
  }
}
