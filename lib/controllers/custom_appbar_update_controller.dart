import 'package:hooks_riverpod/hooks_riverpod.dart';

class SecondaryAppBarVisiblityController extends StateNotifier<bool> {
  SecondaryAppBarVisiblityController() : super(false);

  showOrHideSecondaryAppBar(int length) {
    if (length == 0) {
      state = false;
    } else if (length == 1) {
      state = true;
    }
  }
}
