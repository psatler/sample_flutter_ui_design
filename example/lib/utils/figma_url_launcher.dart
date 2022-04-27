import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchInBrowser(String url) async {
  final Uri _url = Uri.parse(url);

  if (!await launchUrl(_url, mode: LaunchMode.externalApplication)) {
    throw '[launchInBrowser]: Could not launch $_url';
  }
}

IconButton figmaUrlLauncher(String url) {
  return IconButton(
    icon: const Icon(FontAwesomeIcons.figma),
    onPressed: () async {
      await _launchInBrowser(url);
    },
  );
}
