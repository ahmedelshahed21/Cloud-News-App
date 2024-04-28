import 'package:flutter/material.dart';
import 'package:news_cloud/features/home/presentation/views/widgets/categories_listview.dart';
import 'package:news_cloud/features/home/presentation/views/widgets/news_list_view_builder.dart';

class HomeListView extends StatelessWidget {const HomeListView({super.key,});

@override
Widget build(BuildContext context) {
  return const CustomScrollView(
    physics: BouncingScrollPhysics(),
    slivers: [
      SliverToBoxAdapter(child:CategoriesListView()),
      SliverToBoxAdapter(child: SizedBox(
        height: 32,
      )),
      NewsListViewBuilder(category: 'General')
    ],
  );
}
}