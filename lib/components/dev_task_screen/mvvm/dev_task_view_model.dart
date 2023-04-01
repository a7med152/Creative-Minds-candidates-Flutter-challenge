import 'package:creative_minds_flutter_challenge/components/dev_task_screen/model/repo.dart';
import 'package:flutter/material.dart';

import '../../../mvvvm/base_change_notifier.dart';
import '../../../resources/repository.dart';
import '../../../utils/custom_exception.dart';


class DevTaskViewModel extends BaseChangeNotifier {

  final searchController = TextEditingController();
  final scrollController = ScrollController();
  final _scrollThreshold = 200.0;
  int page = 1;
  bool hasNext = true;
  String repoKeyWord = "";

  DevTaskViewModel() {
    init();
  }

  void init () async {
    scrollController.addListener(_onScroll);
    Repository().getCachedRepos().then((value) {
      if(value == null){
        getRepos();
      }else{
        _list = reposFromJson(value);
        hasNext = false;
        notifyListeners();
      }
    });
  }

  List<Repo> _list = [];

  List<Repo> get list => repoKeyWord.isEmpty ? _list : _list.where((element) => element.name!.contains(repoKeyWord)).toList();

  void search(val){
    repoKeyWord = val;
    notifyListeners();
  }

  Future getRepos() async {
    if(!isLoading) {
      try {
        isLoading = true;
        var responseData = await Repository().getRepos(page);
        _list.addAll(reposFromJson(responseData));
        if((responseData as List).isEmpty){
          hasNext = false;
        }else{
          page++;
        }
        Repository().cacheRepos(_list);
      } on MyException catch  (e) {
        errorMessage = e.messages;
      } catch (e) {
        errorMessage = e.toString();
      }
      isLoading = false;
    }
  }

  void _onScroll() {
    final maxScroll = scrollController.position.maxScrollExtent;
    final currentScroll = scrollController.position.pixels;
    if (maxScroll - currentScroll <= _scrollThreshold && hasNext) {
      getRepos();
    }
  }

  void refresh() {
    _list = [];
    hasNext = true;
    page = 1;
    getRepos();
  }

}
