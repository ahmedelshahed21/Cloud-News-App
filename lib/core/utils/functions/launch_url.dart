import 'package:url_launcher/url_launcher.dart';

Future<void> launchCustomUrl({required String url})async{
  final Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  }
}