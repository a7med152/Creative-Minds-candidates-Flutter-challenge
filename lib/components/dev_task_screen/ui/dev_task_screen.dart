import 'package:creative_minds_flutter_challenge/components/dev_task_screen/ui/RepoItem.dart';
import 'package:creative_minds_flutter_challenge/components/widgets/help_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import '../../../utils/constants.dart';
import '../mvvm/dev_task_view_model.dart';

class DevTaskScreen extends StatefulWidget {
  const DevTaskScreen({Key? key}) : super(key: key);

  @override
  State<DevTaskScreen> createState() => _DevTaskScreenState();
}

class _DevTaskScreenState extends State<DevTaskScreen> {
  @override
  Widget build(BuildContext context) {
    DevTaskViewModel provider = DevTaskViewModel();
    return Scaffold(
      body: ChangeNotifierProvider<DevTaskViewModel>(
        create: (context) => provider,
        child: Consumer<DevTaskViewModel>(
          builder: (context, model, child) {
            return Column(
              children: [
                defaultSpaceV,
                Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: TextFormField(
                    controller: provider.searchController,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    maxLength: 30,
                    autofocus: false,
                    onChanged: provider.search,
                    decoration: InputDecoration(
                      prefixIcon: const Padding(
                        padding: EdgeInsets.all(soSmallSize),
                        child: Icon(Icons.search),
                      ),
                      hintText: tr('search'),
                      counterText: "",
                    ),
                  ),
                ),
                Expanded(
                    child: SmartRefresher(
                  enablePullDown: true,
                  enablePullUp: false,
                  onRefresh: () {
                    provider.refresh();
                  },
                  controller: RefreshController(initialRefresh: false),
                  child: provider.list.isNotEmpty
                      ? ListView.builder(
                          padding: const EdgeInsets.symmetric(
                            vertical: defaultPadding,
                          ),
                          controller: provider.scrollController,
                          itemBuilder: (context, index) {
                            return index >= provider.list.length
                                ? provider.hasNext
                                    ? loadingWidget
                                    : const SizedBox()
                                : RepoItem(repo: provider.list[index]);
                          },
                          itemCount: provider.hasNext
                              ? (provider.list.length + 1)
                              : provider.list.length,
                          scrollDirection: Axis.vertical,
                        )
                      : Center(child: Text(tr("loading"))),
                ))
              ],
            );
          },
        ),
      ),
    );
  }
}
