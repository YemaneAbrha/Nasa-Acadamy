import 'package:flutter/widgets.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

// From nasa package
import 'package:nasa/model/json/data.dart';

Future getMessage(BuildContext context) async {
  try {
    final url = 'https://nasa-academy.herokuapp.com/messages';
    http.Response response = await http.get(
      url,
      headers: {
        "Accept": "application/json",
      },
    );

    final event = jsonDecode(response.body);
    return event;
  } catch (e) {}
}

Future<List<Event>> getEvent(BuildContext context) async {
  final url = 'https://nasa-academy.herokuapp.com/events';
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
      Event event = Event(
        data["_id"],
        data["title"],
        data["body"],
        data["image"],
      );
      events.add(event);
    }

    return events;
  } catch (err) {}
}
