import 'package:flutter/widgets.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future getMessage(BuildContext context) async {
  try {
    final url = 'http://10.0.2.2:3000/message';
    http.Response response = await http.get(url, headers: {
      "Accept": "application/json",
      "Content-Type": "application/json"
    });
    final message = jsonDecode(response.body);
    return message;
  } catch (e) {
    print(e);
  }
}

Future sendMessage(BuildContext context, Map<String, dynamic> body) async {
  try {
    final url = "here";
    http.Response response = await http.post(
      url,
      body: body,
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/json",
      },
    );
    if (response.statusCode == 200) {
      print("Sent Success fully");
    } else {
      print("Message Not Sent");
    }
  } catch (e) {
    print(e);
  }
}

Future getEvent(BuildContext context) async {
  try {
    final url = 'http://10.0.2.2:3000/events';
    http.Response response = await http.get(url, headers: {
      "Accept": "application/json",
      "Content-Type": "application/json"
    });
    final event = jsonDecode(response.body);
    return event;
  } catch (e) {
    print(e);
  }
}
