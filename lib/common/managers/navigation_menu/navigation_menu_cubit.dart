import 'package:duaya_app/utils/constants/exports.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigationMenuCubit extends Cubit<int> {
  NavigationMenuCubit() : super(0);

  void setSelectedIndex(int index) {
    emit(index);
  }
}