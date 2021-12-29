import 'package:find_me_food_bloc/app/app.dart';
import 'package:find_me_food_bloc/bootstrap.dart';

void main() {
  const prodConfig = FlavorConfig(
    name: 'FMF Dev',
  );
  bootstrap(() => const App(flavorConfig: prodConfig));
}
