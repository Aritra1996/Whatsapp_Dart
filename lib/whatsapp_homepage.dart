import "package:flutter/material.dart";
import "pages/whatsapp_community_page.dart";
import "pages/whatsapp_calls_page.dart";
import "pages/whatsapp_status_page.dart";
import "pages/whatsapp_chat_page.dart";
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
