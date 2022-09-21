import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:videogame_api/controller/providercall.dart';

final List<SingleChildWidget> providers=
[
  ChangeNotifierProvider(create: (_)=>DataFetchProvider())
];