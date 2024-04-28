import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_cloud/constants.dart';
import 'package:news_cloud/core/config/manager/app_theme_cubit/app_theme_state.dart';
import 'package:news_cloud/enums/theme_state.dart';

class AppThemeCubit extends Cubit<AppThemeState>{
  AppThemeCubit():super(AppThemeInitial());
  changTheme(ThemeState state){
    switch(state){
      case ThemeState.initial:
        if(sharedPreferences!.getString('theme')!=null){
          if(sharedPreferences!.getString('theme')=='l'){
            emit(AppLightTheme());
          }
          else{
            emit(AppDarkTheme());
          }
        }
        break;
      case ThemeState.light:
        sharedPreferences!.setString('theme', 'l');
        emit(AppLightTheme());
        break;
      case ThemeState.dark:
        sharedPreferences!.setString('theme', 'd');
        emit(AppDarkTheme());
        break;
    }
  }
}