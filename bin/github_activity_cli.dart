import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> main(List<String> arguments) async {
  String? username;
  
  do {
    stdout.writeln("GitHub Activity - Enter your GitHub username:");
    username = stdin.readLineSync()?.trim();
  } while (username == null || username.isEmpty);

  stdout.writeln("Username entered: $username");
  var url = Uri.https('api.github.com', '/users/$username/events/public');
  var response = await http.get(url);
  
  if (response.statusCode != 200) {
    print("Error fetching data: ${response.statusCode}");
    return;
  }

  List<dynamic> events = jsonDecode(response.body);

  for (var event in events.take(events.length)) { // Only processing first 3 events
   String eventType = event['type'];
    String repoName = event['repo']['name'];

    switch(eventType)
    {
      case 'PushEvent':
      int commitCount = event['payload']['size'] ?? 0;
      print("- Pushed $commitCount commit(s) to $repoName");

      case "IssuesEvent":
        print("- Opened a new issue in $repoName");
        break;
      case "WatchEvent":
        print("- Starred $repoName");
        break;
      case "ForkEvent":
        print("- Forked $repoName");
        break;
      case "CreateEvent":
        print("- Created a new ${event["payload"]["ref_type"]} in $repoName");
        break;
      default:
        print("- Performed $eventType in $repoName");
    }
  }

  
}
