import 'package:creative_minds_flutter_challenge/components/dev_task_screen/model/repo.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../widgets/help_widget.dart';

// ignore: must_be_immutable
class RepoItem extends StatelessWidget {
  RepoItem({Key? key, required this.repo}) : super(key: key);
  Repo repo;

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: () async {
        // await _picker.pickImage(source: ImageSource.gallery);
        int? source = await showDialog(
            context: context,
            builder: (context) => selectUrlDialog(context));
        if (source != null) {
          _launchUrl(source == 1 ? repo.htmlUrl ?? "" : repo.owner!.htmlUrl ?? "");
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.circular(5),
            color: repo.fork! ? Colors.white : Colors.lightGreen
          ),
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                repo.name ?? "",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                repo.description ?? "",
                style: const TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 10),
              Text(
                'Owner: ${repo.owner?.login}',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
