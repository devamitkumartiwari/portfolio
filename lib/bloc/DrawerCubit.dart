import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DrawerCubit extends Cubit<GlobalKey<ScaffoldState>> {
  DrawerCubit() : super(GlobalKey<ScaffoldState>());

  // Method to get the scaffold key
  GlobalKey<ScaffoldState> get drawerKey => state;
}
