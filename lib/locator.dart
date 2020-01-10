import 'package:eprodapp/core/service/api.dart';
import 'package:eprodapp/core/viewmodels/crudmodel.dart';
import 'package:get_it/get_it.dart';


GetIt locator =GetIt.instance;


void setupLocator()
{
  locator.registerLazySingleton(()=>Api('products'));
  locator.registerLazySingleton(()=>CRUDModel());
}
