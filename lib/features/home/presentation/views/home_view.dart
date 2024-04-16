import 'package:flutter/material.dart';
import 'package:news_cloud/features/home/presentation/views/widgets/categories_listview.dart';
import 'package:news_cloud/features/home/presentation/views/widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget{
   const HomeView({super.key});
   static String id='HomeView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child:CategoriesListView()),
            SliverToBoxAdapter(child: SizedBox(
              height: 32,
            )),
            NewsListViewBuilder(category: 'General')
          ],
        ),
      )
    );

  }

}