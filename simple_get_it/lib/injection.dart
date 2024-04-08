import 'package:get_it/get_it.dart';
import 'package:simple_get_it/home/home_notifier.dart';

final sl = GetIt.instance;

void initDependency(){
  sl.registerFactory<HomeNotifier>(() => HomeNotifier());
}