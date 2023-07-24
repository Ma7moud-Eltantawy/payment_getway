import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'app.dart';
import 'modules/cubit/bloc_observer.dart';
import 'network/dio.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();

  BlocOverrides.runZoned(() {
    runApp(const MyApp());

  },
    blocObserver: MyBlocObserver(),
  );


}
