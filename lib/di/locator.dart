import 'package:flutter_app_antrebate/ui/main/viewmodel/index_view_model.dart';
import 'package:get_it/get_it.dart';

//初始化一个 getit 对象
GetIt locator = GetIt.instance;

//开始注入
void setupLocator() {
  //注册viewmodel
  _registerViewModel();

  print("GetIt registed");

}

//注册viewmodel
void _registerViewModel() {
  //首页索引viewmodel
  locator.registerLazySingleton<IndexViewModel>(() => IndexViewModel());
}
