import 'dart:io';
import 'package:carbon_flutter/app/clients/http_client.dart';
import 'package:carbon_flutter/domain/github/commits.dart';

class GithubRepositoryNotFoundException implements Exception {}

class GithubApiClient {
  final HttpClient httpClient;
  final String githubApiHost;

  GithubApiClient(
    this.httpClient, {
    this.githubApiHost = 'api.github.com',
  });

  Future<List<Commit>> loadCommits(String user, String repository) async {
    final url = Uri.https(githubApiHost, '/repos/$user/$repository/commits');
    final response = await httpClient.get(url);
    if (response.statusCode == HttpStatus.ok) {
      return response.asList(Commit.fromJsonArray);
    } else {
      throw GithubRepositoryNotFoundException();
    }
  }
}
