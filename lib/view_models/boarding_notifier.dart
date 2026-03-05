
import 'package:flutter/cupertino.dart';

class BoardingNotifier extends ChangeNotifier{



  bool isLastPage=false;


  void setFInalPage(int state){

    if(state==2){
      isLastPage=true;
    }
    else {
    isLastPage=false;
    }

    notifyListeners();

  }


}