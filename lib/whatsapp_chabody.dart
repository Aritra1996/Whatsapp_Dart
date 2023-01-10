import "package:flutter/material.dart";
// bottom textbar
// Scaffold > bottomsheet > Row > children > Container > Height > width > child > TextFormField

void main() {
  runApp(
      MaterialApp(debugShowCheckedModeBanner: false, home: WhatsAppChatPage()));
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
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
        titleSpacing: 0.0,
        title: Row(children: [
          CircleAvatar(
              backgroundImage: NetworkImage("https://picsum.photos/id/64/100")),
          SizedBox(
            width: MediaQuery.of(context).size.width / 100,
          ),
          Text("Subhranshu")
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
