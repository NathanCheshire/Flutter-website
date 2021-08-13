import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_website/entities/repo.dart';
import 'package:flutter_website/widgets/github_card.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class GitHubSection extends StatelessWidget {
  const GitHubSection({
    Key? key,
    required this.tabContainerColor,
  }) : super(key: key);

  final Color tabContainerColor;

  final String reposString =
      'https://api.github.com/users/nathancheshire/repos';

  Future<List<Repo>> getRepos() async {
    http.Response response = await http.get(Uri.parse(reposString));

    if (response.statusCode == 200) {
      List<Repo> repoList;
      repoList = (json.decode(response.body) as List)
          .map((i) => Repo.fromJson(i))
          .toList();

      return repoList;
    } else {
      throw Exception('Failed to load repos');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: tabContainerColor,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: FutureBuilder(
                  future: getRepos(),
                  builder: (context, AsyncSnapshot snap) {
                    if (!snap.hasData) {
                      return Center(child: CircularProgressIndicator());
                    } else {
                      List<GitHubCard> cards = [];
                    
                      for (var i = 0; i < snap.data.length; i++) {
                        if (snap.data[i].name != null &&
                            snap.data[i].description != null &&
                            snap.data[i].language != null) {
                          cards.add(new GitHubCard(
                              title: snap.data[i].name,
                              description: snap.data[i].description,
                              language: "Language: " + snap.data[i].language));
                        }
                      }
                      return Wrap(
                          alignment: WrapAlignment.center,
                          spacing: 50,
                          runSpacing: 50.0,
                          direction: Axis.horizontal,
                          children: cards);
                    }
                  }),
            ),
          ),
        ));
  }
}
