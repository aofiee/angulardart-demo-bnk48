import 'dart:async';
import 'package:angular/angular.dart';
import '../bnk48.dart';
import '../mockBnk.dart';

@Injectable()
class AppService {
  Future <List<Bnk48>> getBnk48() async => MockBnk48;
}