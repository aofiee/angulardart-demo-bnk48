import 'dart:async';
import 'package:angular/angular.dart';
import 'package:web/src/bnk48.dart';

import 'package:web/src/bnkdetailcomponent/bnk_detail_component.dart';
import 'package:web/src/services/app_service.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: const [CORE_DIRECTIVES,Bnk48DetailComponent],
  styleUrls: const ['app_component.css'],
  providers: const [AppService],

)
class AppComponent implements OnInit {
  final title = 'BNK48 Universe';
  Bnk48 selectedBnk;

  final AppService _appService;
  AppComponent(this._appService);

  List<Bnk48> bnkNames;
  void ngOnInit() => getBnk48();

  Future<Null> getBnk48() async {
    bnkNames = await _appService.getBnk48();
  }


  void onSelectPerson(Bnk48 person){
    selectedBnk = person;
    print(selectedBnk);
  }

}