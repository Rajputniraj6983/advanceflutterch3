import 'package:flutter/cupertino.dart';

class googleprovider extends ChangeNotifier
{
  double progress = 0;
   String searchText = '';

  void onchangeProgress(int progress) {
    this.progress = progress / 100;
    notifyListeners();
  }

    void search(String searchText){
      this.searchText = searchText;
      notifyListeners();
    }


}