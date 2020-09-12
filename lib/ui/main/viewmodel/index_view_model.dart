import 'package:flutter_app_antrebate/core/viewmodel/base_view_model.dart';

//首页索引viewmodel
class IndexViewModel extends BaseViewModel {
  //当前选中索引
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void changeIndex(int index) {
    _currentIndex = index;
    //通知改变数据
    notifyListeners();
  }
}
