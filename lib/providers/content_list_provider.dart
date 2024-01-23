import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/json_data.dart';
import '../model classes/userContent.dart';
import '../wrapper classes/user_content_main_list.dart';

class ContentListNotifier extends StateNotifier<List<UserContent>> {
  ContentListNotifier() : super([]) {
    fetchData();
  }

  List<dynamic> jsonList = jsonDecode(jsonData);
  List<UserContent> userContentsList = [];
  Set<String> milestones = {};

  fetchData() {
    for (final item in jsonList) {
      UserContentMainList mainList = UserContentMainList.fromJson(item);
      UserContent user = UserContent.fromJson(mainList.userContent);
      milestones.add(user.userMilestoneDocument.milestoneDocument.id);
      userContentsList.add(user);
    }

    userContentsList.sort((a, b) => DateTime.parse(a.contentDocument.startDate)
        .compareTo(DateTime.parse(b.contentDocument.startDate)));

    state = List.from(userContentsList);
  }

  List<String> getMilestones() {
    List<String> milestoneList = milestones.toList();
    return milestoneList;
  }
}

final contentListProvider =
    StateNotifierProvider<ContentListNotifier, List<UserContent>>(
        (ref) => ContentListNotifier());
