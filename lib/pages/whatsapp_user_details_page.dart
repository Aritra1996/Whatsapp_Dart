import "package:flutter/material.dart";

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