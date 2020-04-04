import 'package:dart_week_mobile/app/core/store_state.dart';
import 'package:mobx/mobx.dart';

class StoreUtils {

  static statusCheck(ObservableFuture future) {
    if(future == null) {
      return StoreState.initial;
    }
    switch(future.status){
      case FutureStatus.pending:
        return StoreState.loading;
      case FutureStatus.rejected:
        return StoreState.error;
      case FutureStatus.fulfilled:
        return StoreState.loaded;
      default:
        return StoreState.initial;
    }

  }
}