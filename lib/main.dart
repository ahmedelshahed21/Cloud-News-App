import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_cloud/constants.dart';
import 'package:news_cloud/core/config/manager/app_theme_cubit/app_theme_cubit.dart';
import 'package:news_cloud/core/config/manager/app_theme_cubit/app_theme_state.dart';
import 'package:news_cloud/enums/theme_state.dart';
import 'package:news_cloud/features/splash/presentation/views/splash_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
  runApp(const NewsCloud());
}

class NewsCloud extends StatelessWidget{
  const NewsCloud({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context)=>AppThemeCubit()..changTheme(ThemeState.initial),
        child: BlocBuilder<AppThemeCubit,AppThemeState>(
          builder: (context,state){
            if(state is AppLightTheme){
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: ThemeData.light(),
                home: const SplashView(),
              );
            }
            else if(state is AppDarkTheme){
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: ThemeData.dark(),
                home: const SplashView(),
              );
            }
            else{
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: ThemeData.light(),
                home: const SplashView(),
              );
            }
          },
        ),
    );
  }
}
