import "package:flutter/material.dart";
// bottom textbar
// Scaffold > bottomsheet > Row > children > Container > Height > width > child > TextFormField

// This is the type used by the popup menu below.

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
      MaterialApp(debugShowCheckedModeBanner: false, home: WhatsAppHomePage()));
}

class WhatsAppHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.grey[850],
              title: Text("WhatsApp"),
              actions: [
                IconButton(icon: Icon(Icons.photo_camera), onPressed: () {}),
                IconButton(icon: Icon(Icons.search), onPressed: () {}),
                PopupMenu(),
              ],
              bottom: TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.groups),
                ),
                Tab(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Text("Chats"),
                      SizedBox(
                        width: MediaQueryData.fromWindow(
                                    WidgetsBinding.instance.window)
                                .size
                                .width /
                            200,
                      ),
                      Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child:
                                  Text('18', style: TextStyle(fontSize: 10)))),
                    ])),
                Tab(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Text("Status"),
                      SizedBox(
                        width: MediaQueryData.fromWindow(
                                    WidgetsBinding.instance.window)
                                .size
                                .width /
                            200,
                      ),
                      Icon(Icons.circle, size: 8),
                    ])),
                Tab(
                  text: "Calls",
                ),
              ])),
          body: WhatsAppBody(),
          // bottomSheet: WhatsappAppBottomSheet(),
        ));
  }
}

class WhatsAppBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBarView(children: [
      Center(
        child: WhatsappCommunityPage(),
      ),
      Center(
        child: WhatsappChatsPage(),
      ),
      Center(
        child: WhatsappStatusPage(),
      ),
      Center(
        child: WhatsappCallsPage(),
      ),
    ]);
  }
}

enum menuItems { group, broadcast, devices, starMessages, payments, settings }

class PopupMenu extends StatefulWidget {
  @override
  State<PopupMenu> createState() => _PopupMenuState();
}

class _PopupMenuState extends State<PopupMenu> {
  menuItems? selectedMenu;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<menuItems>(
      initialValue: selectedMenu,
      // Callback that sets the selected popup menu item.
      onSelected: (menuItems item) {
        setState(() {
          selectedMenu = item;
        });
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<menuItems>>[
        PopupMenuItem<menuItems>(
          value: menuItems.group,
          child: Text('New group'),
        ),
        PopupMenuItem<menuItems>(
          value: menuItems.broadcast,
          child: Text('New broadcast'),
        ),
        PopupMenuItem<menuItems>(
          value: menuItems.devices,
          child: Text('Linked devices'),
        ),
        PopupMenuItem<menuItems>(
          value: menuItems.starMessages,
          child: Text('Starred messages'),
        ),
        PopupMenuItem<menuItems>(
          value: menuItems.payments,
          child: Text('Payments'),
        ),
        PopupMenuItem<menuItems>(
          value: menuItems.settings,
          child: Text('Settings'),
        ),
      ],
    );
  }
}
// onTap property of Popupmenu
// Navigator.push
// push
// pushreplacement
// pushnamed

class WhatsappChatsPage extends StatelessWidget {
  List<String> friendList = [
    'Sirshak',
    'Rajib Das',
    'Chotuda',
    'Badri Jio',
    'Rahul Kumar',
    'Suvankar',
    'Souvik TCS',
    'Sirshak',
    'Rajib Das',
    'Chotuda',
    'Badri Jio',
    'Rahul Kumar',
    'Suvankar',
    'Souvik TCS',
    'Sirshak',
    'Rajib Das',
    'Chotuda',
    'Badri Jio',
    'Rahul Kumar',
    'Suvankar',
    'Souvik TCS',
  ];
  List<String> messages = [
    'South Howrah - 11',
    'Happy new year vai',
    'any time',
    'good',
    'aaj aay',
    'haa eta dilei hobe',
    'ok',
    'South Howrah - 11',
    'Happy new year vai',
    'any time',
    'good',
    'aaj aay',
    'haa eta dilei hobe',
    'ok',
    'South Howrah - 11',
    'Happy new year vai',
    'any time',
    'good',
    'aaj aay',
    'haa eta dilei hobe',
    'ok',
  ];
  List<String> dates = [
    '16/06/21',
    '16/06/21',
    '05/08/21',
    '18/08/21',
    '18/08/21',
    '16/06/21',
    '16/06/21',
    '05/08/21',
    '18/08/21',
    '18/08/21',
    '16/06/21',
    '16/06/21',
    '05/08/21',
    '18/08/21',
    '18/08/21',
    '16/06/21',
    '16/06/21',
    '05/08/21',
    '18/08/21',
    '18/08/21',
    '29/12/22',
  ];
  List<String> counter = [
    '2',
    '3',
    '',
    '9',
    '1',
    '1',
    '1',
    '2',
    '3',
    '',
    '9',
    '1',
    '1',
    '1',
    '2',
    '3',
    '',
    '9',
    '1',
    '1',
    '1',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[850],
        child: ListView.builder(
            itemCount: friendList.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.grey[850]),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.grey[850]),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WhatsAppChatPage()),
                    );
                  },
                  child: Padding(
                    padding:
                        EdgeInsets.all(MediaQuery.of(context).size.height / 85),
                    child: Row(children: [
                      CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://picsum.photos/seed/${index + 1}/100")),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 100,
                      ),
                      Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            Text(friendList[index],
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                            Row(children: [
                              counter[index] == ''
                                  ? Icon(Icons.done_all,
                                      color: Colors.blue, size: 17)
                                  : SizedBox(),
                              counter[index] == ''
                                  ? SizedBox(
                                      width: MediaQuery.of(context).size.width /
                                          200,
                                    )
                                  : SizedBox(),
                              Text(messages[index],
                                  style: TextStyle(color: Colors.white38))
                            ])
                          ])),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(dates[index],
                                style: TextStyle(
                                    color: Colors.white38, fontSize: 10)),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 200,
                            ),
                            Row(children: [
                              index == 0
                                  ? Icon(
                                      Icons.push_pin,
                                      color: Colors.white38,
                                      size: 16,
                                    )
                                  : SizedBox(),
                              index == 0
                                  ? SizedBox(
                                      width: MediaQuery.of(context).size.width /
                                          300,
                                    )
                                  : SizedBox(),
                              Container(
                                  decoration: counter[index] != ''
                                      ? BoxDecoration(
                                          color: Colors.green,
                                          shape: BoxShape.circle,
                                        )
                                      : null,
                                  child: Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Text(counter[index],
                                          style: TextStyle(fontSize: 10))))
                            ])
                          ])
                    ]),
                  ),
                ),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        tooltip: 'Chat',
        child: Icon(Icons.chat),
      ),
    );
  }
}

class WhatsAppChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WhatsappChatAppBar(),
      body: WhatsAppChatBody(),
      bottomSheet: WhatsappAppChatBottomSheet(),
    );
  }
}

class WhatsappChatAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.grey[850],
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
        titleSpacing: 0.0,
        title: Row(children: [
          CircleAvatar(
              backgroundImage: NetworkImage("https://picsum.photos/id/64/100")),
          SizedBox(
            width: MediaQuery.of(context).size.width / 100,
          ),
          // Expanded(
          //     child: new Gesturedetector(
          //   onTap: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //           builder: (context) => WhatsAppUserDetailsPage()),
          //     );
          //   },
          //   child: Text("Subhranshu"),
          // )),
          Expanded(
              child: TextButton(
                  style: TextButton.styleFrom(primary: Colors.grey[850]),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WhatsAppUserDetailsPage()),
                    );
                  },
                  child: Align(
                    alignment: Alignment(-1, 0),
                    child: Text("Subhranshu",
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                  ))),
        ]),
        actions: [
          IconButton(icon: Icon(Icons.videocam), onPressed: () {}),
          IconButton(icon: Icon(Icons.call), onPressed: () {}),
          WhatsappChatPopupMenu(),
        ]);
  }
}

class WhatsAppChatBody extends StatelessWidget {
  List<String> senders = [
    'Aritra Rakshit',
    'Aritra Rakshit',
    'Subhransu',
    'Subhransu',
    'Aritra Rakshit',
    'Aritra Rakshit',
    'Aritra Rakshit',
    'Subhransu',
    'Subhransu',
    'Aritra Rakshit',
    'Aritra Rakshit',
    'Aritra Rakshit',
    'Subhransu',
    'Subhransu',
    'Aritra Rakshit',
    'Aritra Rakshit',
    'Aritra Rakshit',
    'Subhransu',
    'Subhransu',
    'Aritra Rakshit',
  ];
  List<String> messages = [
    'cho vaiii',
    'Kobe jabi bol ami chole asbo.....',
    'okk bole deboo 👍👍',
    'Hmmmm',
    'aaj aay',
    'cho vaiii',
    'Kobe jabi bol ami chole asbo.....',
    'okk bole deboo 👍👍',
    'Hmmmm',
    'aaj aay',
    'cho vaiii',
    'Kobe jabi bol ami chole asbo.....',
    'okk bole deboo 👍👍',
    'Hmmmm',
    'aaj aay',
    'cho vaiii',
    'Kobe jabi bol ami chole asbo.....',
    'okk bole deboo 👍👍',
    'Hmmmm',
    'aaj aay',
  ];
  List<String> dates = [
    '16/06/21',
    '16/06/21',
    '05/08/21',
    '18/08/21',
    '18/08/21',
    '16/06/21',
    '16/06/21',
    '05/08/21',
    '18/08/21',
    '18/08/21',
    '16/06/21',
    '16/06/21',
    '05/08/21',
    '18/08/21',
    '18/08/21',
    '16/06/21',
    '16/06/21',
    '05/08/21',
    '18/08/21',
    '18/08/21',
  ];
  List<String> times = [
    '21:14',
    '22:09',
    '22:39',
    '22:59',
    '10:08',
    '21:14',
    '22:09',
    '22:39',
    '22:59',
    '10:08',
    '21:14',
    '22:09',
    '22:39',
    '22:59',
    '10:08',
    '21:14',
    '22:09',
    '22:39',
    '22:59',
    '10:08',
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://i.postimg.cc/7ZYcR35t/Whats-App-Image-2022-12-19-at-23-38-47.jpg'),
                fit: BoxFit.cover)),
      ),
      Container(
          child: ListView.builder(
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                    crossAxisAlignment: senders[index] == 'Aritra Rakshit'
                        ? CrossAxisAlignment.end
                        : CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: BoxDecoration(
                              color: senders[index] == 'Aritra Rakshit'
                                  ? Colors.green
                                  : Colors.grey[850],
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(children: [
                            Padding(
                              padding: EdgeInsets.all(
                                  MediaQuery.of(context).size.width / 200),
                              child: Text(messages[index],
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20)),
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 100),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(dates[index],
                                      style: TextStyle(color: Colors.white)),
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width /
                                          100),
                                  Icon(Icons.done_all, color: Colors.blue),
                                ]),
                          ])),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 100,
                      )
                    ]);
              })),
    ]);
  }
}

class WhatsappAppChatBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('Whatsappbottomsheet width :- ${MediaQuery.of(context).size.width}');
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://i.postimg.cc/7ZYcR35t/Whats-App-Image-2022-12-19-at-23-38-47.jpg'),
                fit: BoxFit.cover)),
        child: Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width / 200),
            child: Row(children: [
              Expanded(
                  child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[850],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    hintText: "Message",
                    prefixIcon: IconButton(
                        icon: Icon(Icons.mood),
                        onPressed: () {},
                        color: Colors.grey[200]),
                    suffixIcon: Container(
                      width: MediaQuery.of(context).size.width / 10,
                      // width: 130,
                      child: Row(children: [
                        IconButton(
                            icon: Icon(Icons.attach_file),
                            onPressed: () {},
                            color: Colors.grey[200]),
                        IconButton(
                            icon: Icon(Icons.currency_rupee),
                            onPressed: () {},
                            color: Colors.grey[200]),
                        IconButton(
                            icon: Icon(Icons.photo_camera),
                            onPressed: () {},
                            color: Colors.grey[200]),
                      ]),
                    )),
              )),
              SizedBox(width: MediaQuery.of(context).size.width / 100),
              CircleAvatar(
                  backgroundColor: Colors.green,
                  child: IconButton(
                    icon: Icon(Icons.mic),
                    onPressed: () {},
                    color: Colors.white,
                  )),
            ])));
  }
}

enum whatsappChatMenuItems {
  contact,
  media,
  search,
  mute,
  disappearingMessages,
  wallpaper,
  more
}

class WhatsappChatPopupMenu extends StatefulWidget {
  @override
  State<WhatsappChatPopupMenu> createState() => _WhatsappChatPopupMenuState();
}

class _WhatsappChatPopupMenuState extends State<WhatsappChatPopupMenu> {
  whatsappChatMenuItems? selectedMenu;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<whatsappChatMenuItems>(
      initialValue: selectedMenu,
      // Callback that sets the selected popup menu item.
      onSelected: (whatsappChatMenuItems item) {
        setState(() {
          selectedMenu = item;
        });
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<whatsappChatMenuItems>>[
        const PopupMenuItem<whatsappChatMenuItems>(
          value: whatsappChatMenuItems.contact,
          child: Text('View contact'),
        ),
        const PopupMenuItem<whatsappChatMenuItems>(
          value: whatsappChatMenuItems.media,
          child: Text('Media,links and docs'),
        ),
        const PopupMenuItem<whatsappChatMenuItems>(
          value: whatsappChatMenuItems.search,
          child: Text('Search'),
        ),
        const PopupMenuItem<whatsappChatMenuItems>(
          value: whatsappChatMenuItems.mute,
          child: Text('Mute notifications'),
        ),
        const PopupMenuItem<whatsappChatMenuItems>(
          value: whatsappChatMenuItems.disappearingMessages,
          child: Text('Disappearing messages'),
        ),
        const PopupMenuItem<whatsappChatMenuItems>(
          value: whatsappChatMenuItems.wallpaper,
          child: Text('Wallpaper'),
        ),
        const PopupMenuItem<whatsappChatMenuItems>(
          value: whatsappChatMenuItems.more,
          child: Text('More'),
        ),
      ],
    );
  }
}

// Inkwell Gesturedetector
// width: MediaQuery.of(context).size.width / 7
// Tabbar

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
// Card widget
// Listtile

class WhatsAppUserDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(color: Colors.black),
            child: ListView(children: [
              Container(
                  decoration: BoxDecoration(color: Colors.grey[850]),
                  child: Padding(
                      padding: EdgeInsets.all(
                          MediaQuery.of(context).size.height / 100),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              icon: Icon(Icons.arrow_back, color: Colors.white),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            Expanded(
                              child: Column(children: [
                                CircleAvatar(
                                    radius: 50,
                                    backgroundImage: NetworkImage(
                                        "https://picsum.photos/50")),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 80,
                                ),
                                Text('Subhranshu',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                    )),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 80,
                                ),
                                Text('+91 12345 67890',
                                    style: TextStyle(
                                      color: Colors.white38,
                                      fontSize: 15,
                                    )),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 80,
                                ),
                                Text('Last seen today at 12:55',
                                    style: TextStyle(
                                      color: Colors.white38,
                                      fontSize: 10,
                                    )),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 30,
                                ),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(children: [
                                        Icon(Icons.call,
                                            color: Colors.green, size: 30),
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              100,
                                        ),
                                        Text('Audio',
                                            style: TextStyle(
                                              color: Colors.green,
                                            ))
                                      ]),
                                      Column(children: [
                                        Icon(Icons.videocam,
                                            color: Colors.green, size: 30),
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              100,
                                        ),
                                        Text('Audio',
                                            style: TextStyle(
                                              color: Colors.green,
                                            ))
                                      ]),
                                      Column(children: [
                                        Icon(Icons.call,
                                            color: Colors.green, size: 30),
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              100,
                                        ),
                                        Text('Audio',
                                            style: TextStyle(
                                              color: Colors.green,
                                            ))
                                      ]),
                                      Column(children: [
                                        Icon(Icons.currency_rupee,
                                            color: Colors.green, size: 30),
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              100,
                                        ),
                                        Text('Audio',
                                            style: TextStyle(
                                              color: Colors.green,
                                            ))
                                      ]),
                                      Column(children: [
                                        Icon(Icons.search,
                                            color: Colors.green, size: 30),
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              100,
                                        ),
                                        Text('Audio',
                                            style: TextStyle(
                                              color: Colors.green,
                                            ))
                                      ]),
                                    ]),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 30,
                                ),
                              ]),
                            ),
                            IconButton(
                              icon: Icon(Icons.more_vert, color: Colors.white),
                              onPressed: () {},
                            ),
                          ]))),
              SizedBox(
                height: MediaQuery.of(context).size.height / 50,
              ),
              Container(
                  decoration: BoxDecoration(color: Colors.grey[850]),
                  child: ListTile(
                    title: Text('Battery about to die',
                        style: TextStyle(color: Colors.white)),
                    subtitle: Text('20 October 2021',
                        style: TextStyle(color: Colors.white)),
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height / 50,
              ),
              Container(
                  decoration: BoxDecoration(color: Colors.grey[850]),
                  child: Column(children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 100,
                    ),
                    Row(children: [
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 100),
                        child: Text('Media, links, and docs',
                            style: TextStyle(color: Colors.white38)),
                      )),
                      Text('68', style: TextStyle(color: Colors.white38)),
                      Icon(Icons.chevron_right, color: Colors.white38),
                    ]),
                    Row(children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 100,
                      ),
                      Padding(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width / 500),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image(
                              image: NetworkImage(
                                  'https://picsum.photos/seed/1/${(MediaQuery.of(context).size.height / 5).toInt()}'),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width / 500),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image(
                              image: NetworkImage(
                                  'https://picsum.photos/seed/2/${(MediaQuery.of(context).size.height / 5).toInt()}'),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width / 500),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image(
                              image: NetworkImage(
                                  'https://picsum.photos/seed/3/${(MediaQuery.of(context).size.height / 5).toInt()}'),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width / 500),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image(
                              image: NetworkImage(
                                  'https://picsum.photos/seed/4/${(MediaQuery.of(context).size.height / 5).toInt()}'),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width / 500),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image(
                              image: NetworkImage(
                                  'https://picsum.photos/seed/5/${(MediaQuery.of(context).size.height / 5).toInt()}'),
                            )),
                      ),
                    ]),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 100,
                    ),
                  ])),
              SizedBox(
                height: MediaQuery.of(context).size.height / 50,
              ),
              Container(
                  decoration: BoxDecoration(color: Colors.grey[850]),
                  child: Column(children: [
                    Row(children: [
                      Padding(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width / 100),
                        child: Icon(Icons.notifications, color: Colors.white38),
                      ),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width / 100),
                        child: Text('Mute Notifications',
                            style: TextStyle(color: Colors.white)),
                      )),
                      Padding(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width / 100),
                        child: Icon(Icons.toggle_off, color: Colors.white38),
                      ),
                    ]),
                    Row(children: [
                      Padding(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width / 100),
                        child: Icon(Icons.music_note, color: Colors.white38),
                      ),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width / 100),
                        child: Text('Custom Notifications',
                            style: TextStyle(color: Colors.white)),
                      )),
                    ]),
                    Row(children: [
                      Padding(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width / 100),
                        child: Icon(Icons.image, color: Colors.white38),
                      ),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width / 100),
                        child: Text('Media visibility',
                            style: TextStyle(color: Colors.white)),
                      )),
                    ]),
                  ])),
              SizedBox(
                height: MediaQuery.of(context).size.height / 50,
              ),
              Container(
                  decoration: BoxDecoration(color: Colors.grey[850]),
                  child: Column(children: [
                    Row(children: [
                      Padding(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width / 100),
                        child: Icon(Icons.lock, color: Colors.white38),
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Encryption',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                            Text(
                                'Messages and calls are end-to-end encrypted. Tap to verify',
                                style: TextStyle(
                                    color: Colors.white38, fontSize: 15)),
                          ]),
                    ]),
                    Row(children: [
                      Padding(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width / 100),
                        child: Icon(Icons.av_timer, color: Colors.white38),
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Disapppearing messages',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                            Text('Off',
                                style: TextStyle(
                                    color: Colors.white38, fontSize: 15)),
                          ]),
                    ]),
                  ])),
              SizedBox(
                height: MediaQuery.of(context).size.height / 50,
              ),
              Container(
                  decoration: BoxDecoration(color: Colors.grey[850]),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(
                              MediaQuery.of(context).size.width / 100),
                          child: Text('3 Groups in common',
                              style: TextStyle(color: Colors.white38)),
                        ),
                        Padding(
                          padding: EdgeInsets.all(
                              MediaQuery.of(context).size.height / 200),
                          child: Row(children: [
                            Padding(
                              padding: EdgeInsets.all(
                                  MediaQuery.of(context).size.width / 100),
                              child: CircleAvatar(
                                backgroundColor: Colors.green,
                                child: Icon(Icons.group, size: 20),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(
                                  MediaQuery.of(context).size.width / 100),
                              child: Text(
                                'Create group with Akshay',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ]),
                        ),
                        Padding(
                          padding: EdgeInsets.all(
                              MediaQuery.of(context).size.height / 200),
                          child: Row(children: [
                            Padding(
                              padding: EdgeInsets.all(
                                  MediaQuery.of(context).size.width / 100),
                              child: CircleAvatar(
                                backgroundImage:
                                    NetworkImage('https://picsum.photos/20'),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.all(
                                    MediaQuery.of(context).size.width / 100),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Astomi Dupurbela 2022',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        'Abhistha, Abhimunya, Akshay, Aya...',
                                        style: TextStyle(
                                          color: Colors.white38,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ])),
                          ]),
                        ),
                        Padding(
                          padding: EdgeInsets.all(
                              MediaQuery.of(context).size.height / 200),
                          child: Row(children: [
                            Padding(
                              padding: EdgeInsets.all(
                                  MediaQuery.of(context).size.width / 100),
                              child: CircleAvatar(
                                backgroundColor: Colors.teal[900],
                                child: Icon(Icons.campaign,
                                    size: 20, color: Colors.green),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.all(
                                    MediaQuery.of(context).size.width / 100),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Friends',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        'Akshay, Basu, Subhranshu, Bad...',
                                        style: TextStyle(
                                          color: Colors.white38,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ])),
                          ]),
                        ),
                        Padding(
                          padding: EdgeInsets.all(
                              MediaQuery.of(context).size.height / 200),
                          child: Row(children: [
                            Padding(
                              padding: EdgeInsets.all(
                                  MediaQuery.of(context).size.width / 100),
                              child: CircleAvatar(
                                backgroundColor: Colors.white38,
                                child: Icon(Icons.group,
                                    size: 20, color: Colors.white38),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.all(
                                    MediaQuery.of(context).size.width / 100),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Digha Trip',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        'Dibya, Deepak, Badri, Aya...',
                                        style: TextStyle(
                                          color: Colors.white38,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ])),
                          ]),
                        ),
                      ])),
                      SizedBox(
                height: MediaQuery.of(context).size.height / 50,
              ),
              Container(
                decoration: BoxDecoration(color: Colors.grey[850]),
                  child: Column(children: [
                Column(children: [
                  Padding(
                      padding: EdgeInsets.all(
                          MediaQuery.of(context).size.width / 100),
                      child: Row(children: [
                        Padding(
                          padding: EdgeInsets.all(
                              MediaQuery.of(context).size.width / 100),
                          child: Icon(Icons.block, color: Colors.red),
                        ),
                        Expanded(child: Padding(
                            padding: EdgeInsets.all(
                                MediaQuery.of(context).size.width / 100),
                            child: Text('Block Akshay',
                                style: TextStyle(color: Colors.red))))
                      ])),
                      Padding(
                      padding: EdgeInsets.all(
                          MediaQuery.of(context).size.width / 100),
                      child: Row(children: [
                        Padding(
                          padding: EdgeInsets.all(
                              MediaQuery.of(context).size.width / 100),
                          child: Icon(Icons.thumb_down, color: Colors.red),
                        ),
                        Expanded(child: Padding(
                            padding: EdgeInsets.all(
                                MediaQuery.of(context).size.width / 100),
                            child: Text('Report Akshay',
                                style: TextStyle(color: Colors.red))))
                      ])),
                ])
              ])),
              SizedBox(
                height: MediaQuery.of(context).size.height / 50,
              ),
            ])));
  }
}
 
// DropdownMenu
//  TextFormField 