import 'package:flutter/material.dart';
import 'package:news_cloud/core/utils/assets_app.dart';
import 'package:news_cloud/core/utils/functions/launch_url.dart';
import 'package:news_cloud/features/home/data/models/article_model.dart';


class NewsTile extends StatelessWidget {
  const NewsTile({super.key,required this.article});
  final ArticleModel article;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:24.0),
      child: GestureDetector(
        onTap: (){
          launchCustomUrl(url: article.url!);
        },
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child:article.image!= null ?
              Image.network(article.image!,
              height: 200,
              width: double.infinity,
                fit: BoxFit.fill,
              ) : Image.asset(ImagesAPP.failure,
                height: 200,
                width: double.infinity,
                fit: BoxFit.fill,
              )),
            const SizedBox(
              height: 12,
            ),
            Text(article.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                // color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(article.subTitle ?? '',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }


}
