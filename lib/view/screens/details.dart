import 'package:flutter/material.dart';
import 'package:videogame_api/controller/apicall.dart';
import 'package:videogame_api/model/modelclass.dart';
import 'package:videogame_api/view/widgets/buttons.dart';
import 'package:videogame_api/view/widgets/container.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  void initState() {
    // TODO: implement initState
    createAlbum();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff050B18),
          elevation: 1,
          leadingWidth: 44,
          leading: const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: CircleAvatar(
              backgroundColor: Color(0xff7560E3),
              radius: 28,
              child: CircleAvatar(
                radius: 21,
                backgroundImage: AssetImage("assets/images/Ellipse 2 (1).png"),
              ),
            ),
          ),
          title: Transform(
            transform: Matrix4.translationValues(1.0, 0.0, 0.0),
            child: const Text(
              "John",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 23),
            ),
          ),
          actions: [searchButton(), notificationButton()],
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(color: Color(0xff050B18)),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 3, bottom: 7),
                  child: textLabel(label: "Popular"),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 1 / 3,
                  child: FutureBuilder<List<Game>>(
                    future: createAlbum(),
                    builder: ((context, snapshot) {
                      if (snapshot.hasData) {
                        return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: snapshot.data?.length,
                            itemBuilder: ((context, index) {
                              return popularContainer(
                                  url: snapshot.data?[index].cover?.url ?? "",
                                  Gamename: snapshot.data?[index].name);
                            }));
                      } else {
                        return const Center(child: CircularProgressIndicator());
                      }
                    }),
                  ),
                ),
                divider(),
                Padding(
                  padding: const EdgeInsets.only(top: 13.0),
                  child: tagssmallList(categoryname: "Xbox PS2"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 13.0),
                  child: tagsLargeList(categoryname: "Action"),
                ),
                textLabel(label: "Today"),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 1 / 3,
                  child: FutureBuilder<List<Game>>(
                    future: createAlbum(),
                    builder: ((context, snapshot) {
                      if (snapshot.hasData) {
                        return ListView.builder(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: snapshot.data?.length,
                            itemBuilder: ((context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(top:8.0),
                                child: commonContainer(
                                    url: snapshot.data?[index].cover?.url ?? "",
                                    Gamename: snapshot.data?[index].name,
                                    ),
                              );
                            }));
                      } else {
                        return const Center(child: CircularProgressIndicator());
                      }
                    }),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
