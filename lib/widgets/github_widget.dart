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
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Padding (
                padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 20.0, right: 20.0),
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
                              snap.data[i].language != null &&
                              snap.data[i].html_url != null &&
                              snap.data[i].updated_at != null) {
                            cards.add(new GitHubCard(
                                title: snap.data[i].name,
                                description: snap.data[i].description,
                                language: "Language: " + snap.data[i].language,
                                link: snap.data[i].html_url,
                                update: snap.data[i].updated_at));
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
          ),
        ));
  }
}
