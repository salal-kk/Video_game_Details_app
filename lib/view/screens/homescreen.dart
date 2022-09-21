import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:videogame_api/controller/providercall.dart';
import 'package:videogame_api/model/modelclass.dart';
import 'package:videogame_api/view/widgets/buttons.dart';
import 'package:videogame_api/view/widgets/container.dart';


class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    future: context.read<DataFetchProvider>().data,
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
                SingleChildScrollView(
                  child: SizedBox(
                    child: FutureBuilder<List<Game>>(
                      future: context.read<DataFetchProvider>().data,
                      builder: ((context, snapshot) {
                        if (snapshot.hasData) {
                          return ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: snapshot.data?.length,
                              itemBuilder: ((context, index) {
                                return commonContainer(
                                    url: snapshot.data?[index].cover?.url ?? "",
                                    Gamename: snapshot.data?[index].name);
                              }));
                        } else {
                          return const Center(
                              child: CircularProgressIndicator());
                        }
                      }),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
