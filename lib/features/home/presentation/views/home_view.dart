import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_cloud/core/config/manager/app_theme_cubit/app_theme_cubit.dart';
import 'package:news_cloud/enums/theme_state.dart';
import 'package:news_cloud/features/home/presentation/views/widgets/home_listview.dart';

class HomeView extends StatelessWidget{
   const HomeView({super.key});

   static String id='HomeView';
  @override
  Widget build(BuildContext context) {
    String theme='Light';
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            iconSize: 30,
            onPressed: (){
              showModalBottomSheet(
                  context: context,
                  builder: (context){
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 20,),
                        RadioListTile(
                            title: const Text('Light',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                              ),
                            ),
                            value: 'Light',
                            groupValue: theme,
                            onChanged: (val){
                            theme = val!;
                            BlocProvider.of<AppThemeCubit>(context).changTheme(ThemeState.light);
                            }
                        ),
                        RadioListTile(
                            title: const Text('Dark',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                              ),
                            ),
                            value: 'Dark',
                            groupValue: theme,
                            onChanged: (val){
                              theme = val!;
                              BlocProvider.of<AppThemeCubit>(context).changTheme(ThemeState.dark);
                            }
                        ),
                        const SizedBox(height: 20,),
                      ],
                    );
                  }
              );
            },
          ),
          const SizedBox(width: 10,),
        ],
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("News",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                // color: Colors.black
              ),
            ),
            Text("Cloud",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.orange
              ),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      body:const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
        child: HomeListView(),
      )
    );
  }
}

