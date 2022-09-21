import 'package:flutter/cupertino.dart';
import 'package:videogame_api/controller/apicall.dart';
import 'package:videogame_api/model/modelclass.dart';

class DataFetchProvider extends ChangeNotifier
 {
    late Future<List<Game>> data = createAlbum();

 }
