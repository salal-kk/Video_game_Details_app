import 'package:http/http.dart' as http;
import 'package:videogame_api/model/modelclass.dart';
import '../utils/constants.dart';

Future<List<Game>> createAlbum() async 
{
  final response = await http.post(
    Uri.parse(API_URL),
    headers: <String, String>
    {
      'Client-ID': 'aow6scxnet9mdenqina9gr0ye3e9wf',
      'Authorization': 'Bearer sh982s0oeva1uc3pzkeyh5kwfycawq'
    },
  );
    if (response.statusCode == 200) 
      {
         return gameFromJson(response.body);
      } else {
            throw Exception('Failed to create album.');
              }
}
