import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import '../bnk48.dart';
import '../bnkphotocomponent/bnk_photo_component.dart';
@Component(
  selector: 'bnk48-detail',
  templateUrl: 'bnk_detail_component.html',
  directives: const [CORE_DIRECTIVES, Bnk48PhotoComponent, formDirectives],
  styleUrls: const ['bnk_detail_compoent.css'],
)
class Bnk48DetailComponent {
  @Input()
  Bnk48 bnk48;
}