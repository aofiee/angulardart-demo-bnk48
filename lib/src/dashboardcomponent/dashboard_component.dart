import 'dart:async';
import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import '../bnk48.dart';
import '../services/app_service.dart';

@Component(
  selector: 'my-dashboard',
  templateUrl: 'dashboard_component.html',
  directives: const [CORE_DIRECTIVES, ROUTER_DIRECTIVES],
)

class DashboardComponent implements OnInit {
  List<Bnk48> members;

  final AppService _appService;

  DashboardComponent(this._appService);

  Future<Null> ngOnInit() async {
    members = (await _appService.getBnk48()).skip(0).take(4).toList();
  }
}

