import 'package:angular/angular.dart';
import '../bnk48.dart';
@Component(
  selector: 'bnk48-photo',
  templateUrl: 'bnk_photo_component.html',
  directives: const [CORE_DIRECTIVES],
  styleUrls: const ['bnk_photo_component.css'],
)
class Bnk48PhotoComponent {
  @Input()
  Bnk48 bnk48;
}