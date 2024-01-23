import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:milestone_app/providers/content_list_provider.dart';

import '../model classes/userContent.dart';

class FilteredListNotifier extends StateNotifier<List<UserContent>> {
  FilteredListNotifier(this.ref) : super([]) {
    getList();
  }

  final Ref ref;
  late List<UserContent> userList;



  getMilestones() {
    List<String> milestoneList = ref.watch(contentListProvider.notifier).getMilestones();
    return milestoneList;
  }

  changeMilestone(String id) {
    state = userList.where((item) => item.userMilestoneDocument.milestoneDocument.id == id)
        .toList();
  }

  getList() {
    userList = ref.watch(contentListProvider);
    state = userList.where((item) => item.userMilestoneDocument.milestoneDocument.id == userList[0].userMilestoneDocument.milestoneDocument.id)
        .toList();
  }
}

final filteredListProvider =
    StateNotifierProvider<FilteredListNotifier, List<UserContent>>(
        (ref) => FilteredListNotifier(ref));
