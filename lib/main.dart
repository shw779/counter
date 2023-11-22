import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:shw_test/bloc/bloc.dart';
import 'package:shw_test/bloc/index.dart';
import 'package:shw_test/getx/index.dart';
import 'package:shw_test/homescreen.dart';
import 'package:provider/provider.dart' as pr;
import 'package:shw_test/mobx/index.dart';
import 'package:shw_test/provider/controller.dart';
import 'package:shw_test/provider/index.dart';
import 'package:shw_test/riverpod/index.dart';

void main() {
  setupLocator();
  runApp(
    MultiProvider(
      providers: [
        pr.ChangeNotifierProvider(create: (_) => CountProvider()),
      ],
      child: const ProviderScope(child: MyApp()),
    ),
  );
}

void setupLocator() {
  GetIt.I.registerLazySingleton(() => CounterBloc());
}

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MyHomePage(),
    ),
    GoRoute(
      path: '/getX',
      builder: (context, state) => const GetXScreen(),
    ),
    GoRoute(
      path: '/bloc',
      builder: (context, state) => const BlocScreen(),
    ),
    GoRoute(
      path: '/provider',
      builder: (context, state) => const ProviderScreen(),
    ),
    GoRoute(
      path: '/riverpod',
      builder: (context, state) => const RiverpodScreen(),
    ),
    GoRoute(
      path: '/mobx',
      builder: (context, state) => const MobxScreen(),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Counter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}
