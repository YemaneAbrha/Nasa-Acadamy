import 'package:flutter/widgets.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

// From nasa package
import 'package:nasa/model/json/data.dart';

Future getMessage(BuildContext context) async {
  try {
    final url = 'http://192.168.137.42:8000/messages';
    http.Response response = await http.get(
      url,
      headers: {
        "Accept": "application/json",
      },
    );

    final event = jsonDecode(response.body);
    print(event);
    return event;
  } catch (e) {
    print(e);
  }
}

Future<List<Event>> getEvent(BuildContext context) async {
  final url = 'http://10.0.2.2:8000/events';
  try {
    http.Response response = await http.get(
      url,
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/json"
      },
    );
    final datas = jsonDecode(response.body);
    List<Event> events = [];
    for (var data in datas) {
      print(data);
      Event event = Event(
        data["_id"],
        data["title"],
        data["body"],
        data["image"],
      );
      events.add(event);
    }
    print(events);
    return events;
  } catch (err) {
    print(err);
  }
}
