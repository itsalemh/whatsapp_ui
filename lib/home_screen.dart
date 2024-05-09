import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              centerTitle: false,
              title: const Text('WhatsApp'),
              bottom: const TabBar(tabs: [
                Tab(
                  child: Icon(Icons.camera_alt),
                ),
                Tab(
                  child: Text('Chats'),
                ),
                Tab(
                  child: Text('Status'),
                ),
                Tab(
                  child: Text('Calls'),
                )
              ]),
              actions: [
                const SizedBox(
                  width: 15,
                ),
                const Icon(Icons.search),
                const SizedBox(
                  width: 10,
                ),
                PopupMenuButton(
                  icon: const Icon(Icons.more_vert),
                  itemBuilder: (
                    context,
                  ) =>
                      [
                    const PopupMenuItem(value: '1', child: Text('New group')),
                    const PopupMenuItem(
                        value: '2', child: Text('New broadcast')),
                    const PopupMenuItem(
                        value: '3', child: Text('Linked devices')),
                    const PopupMenuItem(
                        value: '4', child: Text('Starred messages')),
                    const PopupMenuItem(value: '5', child: Text('Payments')),
                    const PopupMenuItem(value: '6', child: Text('Settings')),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            body: TabBarView(
              children: [
                const Text('Alejandro Moraga'),
                ListView.builder(
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      return const ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://depor.com/resizer/tyXzZDfePVQPxKabmPOhcTL_kBU=/640x0/smart/filters:format(jpeg):quality(90)/arc-anglerfish-arc2-prod-elcomercio.s3.amazonaws.com/public/OS5VJQJYBZEJTNOGFUMJC5JJ3U.jpg'),
                        ),
                        title: Text('Contacto'),
                        subtitle: Text("Hey there! I'm using Whatsapp"),
                        trailing: Text('12:00 am'),
                      );
                    }),
                ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.green, width: 3)),
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://upload.wikimedia.org/wikipedia/en/c/ce/Robb_Stark-Richard_Madden.jpg'),
                          ),
                        ),
                        title: const Text('Rob Stark'),
                        subtitle: const Text("Hoy, 9:36 am"),
                      );
                    }),
                ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://i.pinimg.com/236x/a8/5b/fa/a85bfac0757351b0024fd4a4260f742b.jpg'),
                        ),
                        title: Text('mom'),
                        subtitle: Text("5 mayo, 4:02 pm"),
                        trailing: Icon(Icons.phone),
                      );
                    }),
              ],
            )));
  }
}
