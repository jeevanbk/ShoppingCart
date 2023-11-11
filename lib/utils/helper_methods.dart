import 'package:url_launcher/url_launcher.dart';

Future<void> urlLaunch({required String webUrl}) async {
  final Uri url = Uri.parse(webUrl);
  final canLaunch = await canLaunchUrl(url);

  if (canLaunch) {
    await launchUrl(url);
  }
}
launchDefaultEmailClient(String emailAddress) async {
  try {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: emailAddress,
    );
    if (await canLaunch(emailLaunchUri.toString())) {
      await launch(emailLaunchUri.toString());
    } else {
      throw 'Could not launch $emailAddress';
    }
  } catch (e) {
    print('Error launching email: $e');
  }
}

