import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InfiniteScrollScreen extends StatefulWidget {
  const InfiniteScrollScreen({super.key});

  static const String name = 'infinite_scroll_screen';

  @override
  State<InfiniteScrollScreen> createState() => _InfiniteScrollScreenState();
}

class _InfiniteScrollScreenState extends State<InfiniteScrollScreen> {
  List<int> imageIds = [1, 2, 3, 4, 5];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;
  bool isMounted = true;

  @override
  void initState() {
    scrollController.addListener(() {
      // scrollController.position.pixels; to get current position in scroll
      // scrollController.position.maxScrollExtent; to get the maximum area of scroll
      // add 500px to load in background the new images, that's because the user won't arrive until
      // final scroll to load the images
      if ((scrollController.position.pixels + 500) >=
          scrollController.position.maxScrollExtent) {
        // Load next page
        _loadNextPage();
      }
      // scrollController.position.maxScrollExtent;
    });
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose(); // Dispose controller
    isMounted = false; // Verify if the widget is marked to be deleted by garbage collector
    super.dispose();
  }

  void _addFiveImages() {
    final lastId = imageIds.last;
    imageIds.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
  }

  Future _onRefresh() async {
    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 3));
    if (!isMounted) return;

    final lastItem = imageIds.last;
    imageIds.clear();
    imageIds.add(lastItem + 1);
    _addFiveImages();
    isLoading = false;

    setState(() {});
  }

  Future _loadNextPage() async {
    if (isLoading) return;
    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 2));
    _addFiveImages();
    isLoading = false;

    //check if already mounted the widget for prevent down app
    if (!isMounted) return;
    setState(() {});

    _moveScrollToBottom();
  }

  void _moveScrollToBottom() {
    if ((scrollController.position.pixels + 300) <=
        scrollController.position.maxScrollExtent) {
      return;
    }

    scrollController.animateTo(
      scrollController.position.pixels + 150,
      duration: const Duration(milliseconds: 300),
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: RefreshIndicator(
          displacement: 60,
          strokeWidth: 2,
          onRefresh: _onRefresh,
          child: ListView.builder(
            controller: scrollController,
            itemCount: imageIds.length,
            itemBuilder: (context, index) {
              return FadeInImage(
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
                placeholder: AssetImage('assets/images/jar-loading.gif'),
                image: NetworkImage(
                  'https://picsum.photos/id/${imageIds[index]}/500/300',
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pop(),
        child: isLoading
            ? SpinPerfect(infinite: true, child: Icon(Icons.refresh_rounded))
            : FadeIn(child: Icon(Icons.arrow_back_ios_new_outlined)),
      ),
    );
  }
}
