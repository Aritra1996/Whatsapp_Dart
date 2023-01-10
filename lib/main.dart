import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Row(children: [
                Icon(Icons.arrow_back, color: Colors.black),
                SizedBox(width: 20),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Iqra", style: TextStyle(color: Colors.black)),
                        Text("sIqra19",
                            style: TextStyle(color: Colors.grey, fontSize: 13))
                      ]),
                ),
                Spacer(),
                Icon(Icons.phone, color: Colors.black),
                SizedBox(width: 20),
                Icon(Icons.video_call_outlined, color: Colors.black),
              ]),
            ),
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://picsum.photos/200/300"),
                  fit: BoxFit.cover,
                ),
              ),
              child: ListView(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("hello how are you"
                                // (data[index].message).validate(),
                                // style: secondaryTextStyle(color: white),
                                ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 70.0),
                        child: Text(
                          "05:00 PM", style: TextStyle(fontSize: 13),
                          // (data[index].message).validate(),
                          // style: secondaryTextStyle(color: white),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      // 8.height,

                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // 8.width,
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.grey.shade400,
                            ),
                            padding: EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Hy Im gud what about you"
                                    // (data[index].message)
                                    //     .validate(),
                                    // style: secondaryTextStyle(color: appStore.isDarkModeOn ? white : black),
                                    ),
                              ],
                            ),
                          ),
                          // .paddingOnly(right: 42.0).expand(),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 100.0),
                        child: Text(
                          "05:00 PM", style: TextStyle(fontSize: 13),
                          // (data[index].message)
                          //     .validate(),
                          // style: secondaryTextStyle(color: appStore.isDarkModeOn ? white : black),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("hello how are you"
                                // (data[index].message).validate(),
                                // style: secondaryTextStyle(color: white),
                                ),
                          ],
                        ),
                      ),
                      SizedBox(
                              height: 5,
                            ),
                      Padding(
                        padding: EdgeInsets.only(left: 70.0),
                        child: Text(
                          "05:00 PM", style: TextStyle(fontSize: 13),
                          // (data[index].message).validate(),
                          // style: secondaryTextStyle(color: white),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      // 8.height,

                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // 8.width,
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.grey.shade400,
                            ),
                            padding: EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Hy Im gud what about you"
                                    // (data[index].message)
                                    //     .validate(),
                                    // style: secondaryTextStyle(color: appStore.isDarkModeOn ? white : black),
                                    ),
                              ],
                            ),
                          ),
                          // .paddingOnly(right: 42.0).expand(),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 100.0),
                        child: Text(
                          "05:00 PM", style: TextStyle(fontSize: 13),
                          // (data[index].message)
                          //     .validate(),
                          // style: secondaryTextStyle(color: appStore.isDarkModeOn ? white : black),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("hello how are you"
                                // (data[index].message).validate(),
                                // style: secondaryTextStyle(color: white),
                                ),
                          ],
                        ),
                      ),
                      SizedBox(
                              height: 5,
                            ),
                      Padding(
                        padding: EdgeInsets.only(left: 70.0),
                        child: Text(
                          "05:00 PM", style: TextStyle(fontSize: 13),
                          // (data[index].message).validate(),
                          // style: secondaryTextStyle(color: white),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      // 8.height,

                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // 8.width,
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.grey.shade400,
                            ),
                            padding: EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Hy Im gud what about you"
                                    // (data[index].message)
                                    //     .validate(),
                                    // style: secondaryTextStyle(color: appStore.isDarkModeOn ? white : black),
                                    ),
                              ],
                            ),
                          ),
                          // .paddingOnly(right: 42.0).expand(),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 100.0),
                        child: Text(
                          "05:00 PM", style: TextStyle(fontSize: 13),
                          // (data[index].message)
                          //     .validate(),
                          // style: secondaryTextStyle(color: appStore.isDarkModeOn ? white : black),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("hello how are you"
                                // (data[index].message).validate(),
                                // style: secondaryTextStyle(color: white),
                                ),
                          ],
                        ),
                      ),
                      SizedBox(
                              height: 5,
                            ),
                      Padding(
                        padding: EdgeInsets.only(left: 70.0),
                        child: Text(
                          "05:00 PM", style: TextStyle(fontSize: 13),
                          // (data[index].message).validate(),
                          // style: secondaryTextStyle(color: white),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      // 8.height,

                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // 8.width,
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.grey.shade400,
                            ),
                            padding: EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Hy Im gud what about you"
                                    // (data[index].message)
                                    //     .validate(),
                                    // style: secondaryTextStyle(color: appStore.isDarkModeOn ? white : black),
                                    ),
                              ],
                            ),
                          ),
                          // .paddingOnly(right: 42.0).expand(),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 100.0),
                        child: Text(
                          "05:00 PM", style: TextStyle(fontSize: 13),
                          // (data[index].message)
                          //     .validate(),
                          // style: secondaryTextStyle(color: appStore.isDarkModeOn ? white : black),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("hello how are you"
                                // (data[index].message).validate(),
                                // style: secondaryTextStyle(color: white),
                                ),
                          ],
                        ),
                      ),
                      SizedBox(
                              height: 5,
                            ),
                      Padding(
                        padding: EdgeInsets.only(left: 70.0),
                        child: Text(
                          "05:00 PM", style: TextStyle(fontSize: 13),
                          // (data[index].message).validate(),
                          // style: secondaryTextStyle(color: white),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      // 8.height,

                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // 8.width,
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.grey.shade400,
                            ),
                            padding: EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Hy Im gud what about you"
                                    // (data[index].message)
                                    //     .validate(),
                                    // style: secondaryTextStyle(color: appStore.isDarkModeOn ? white : black),
                                    ),
                              ],
                            ),
                          ),
                          // .paddingOnly(right: 42.0).expand(),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 100.0),
                        child: Text(
                          "05:00 PM", style: TextStyle(fontSize: 13),
                          // (data[index].message)
                          //     .validate(),
                          // style: secondaryTextStyle(color: appStore.isDarkModeOn ? white : black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ))),
  );
}
