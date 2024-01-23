import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:milestone_app/model%20classes/userContent.dart';
import 'package:milestone_app/providers/content_list_provider.dart';
import 'package:milestone_app/providers/filterd_list_provider.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final milestonesList = ref.read(filteredListProvider.notifier).getMilestones();
    final List<UserContent> contentList = ref.watch(filteredListProvider);

    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              ref.invalidate(filteredListProvider);
            },
            child: const Text('All Milestones'),
          ),
        ],
        title: const Text('Milestones'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Expanded(
          //   child: SizedBox(
          //     child: ListView.builder(
          //       scrollDirection: Axis.horizontal,
          //       itemCount: milestonesList.length,
          //       itemBuilder: (context, index) => ElevatedButton(
          //         onPressed: () {
          //           ref
          //               .read(filteredListProvider.notifier)
          //               .changeMilestone(milestonesList[index]);
          //           print('M$index called ${milestonesList[index]}');
          //         },
          //         child: Text('M${index + 1}'),
          //       ),
          //     ),
          //   ),
          // ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 0; i < 200; i++)
                  ElevatedButton(
                    onPressed: () {
                      ref
                          .read(filteredListProvider.notifier)
                          .changeMilestone(milestonesList[i]);
                      print('M$i called ${milestonesList[i]}');
                    },
                    child: Text('M${i + 1}'),
                  ),
                const SizedBox(width: 30,)
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: contentList.length,
                itemBuilder: (context, index) => ListTile(
                      title: Text(contentList[index].contentDocument.title!),
                    )),
          )
        ],
      ),
    );
  }
}
