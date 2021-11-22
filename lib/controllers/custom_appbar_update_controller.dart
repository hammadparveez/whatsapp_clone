import 'package:hooks_riverpod/hooks_riverpod.dart';

class SecondaryAppBarVisiblityController extends StateNotifier<bool> {
  SecondaryAppBarVisiblityController() : super(false);

  showOrHideSecondaryAppBar(bool isVisible) =>
    state = isVisible ? true : false;
   
  
}
