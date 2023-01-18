import 'package:flutter/material.dart';
import 'package:news_app/features/feed/models/news_model.dart';

import '../../../components/appbar.dart';
import '../../discover/view/discover.dart';
import '../services/feed_service.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  PageController controller = PageController(initialPage: 0);
  PageController mainController = PageController(initialPage: 1);

  FeedService newsFeed = FeedService();
  late List<Data> newsList;
  bool isLoading = false;

  @override
  void initState() {
    fetchData("national");
    super.initState();
  }

  void fetchData(String category) async {
    setState(() {
      isLoading = true;
    });
    newsList = await newsFeed.getNewsList(category);
    setState(() {
      isLoading = false;
    });
  }

  List<String> category = ['all', 'national', 'sports', 'startup'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context: context, title: "My Feed"),
      body: SafeArea(
        child: PageView(
            scrollDirection: Axis.horizontal,
            controller: mainController,
            children: [
              DiscoverScreen(category: category),
              Builder(builder: (context) {
                if (isLoading) {
                  return Center(child: CircularProgressIndicator());
                }
                return PageView(
                  controller: controller,
                  scrollDirection: Axis.vertical,
                  children: newsList!
                      .map((e) => feed(
                            imgUrl: e.imageUrl!,
                            content: e.content!,
                            title: e.title!,
                          ))
                      .toList(),
                );
              }),
            ]),
      ),
    );
  }
}

class feed extends StatelessWidget {
  String imgUrl;
  String title;
  String content;

  feed({
    required this.imgUrl,
    required this.content,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: SizedBox(
                height: 400,
                width: double.infinity,
                child: Image.network(
                  imgUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Text("cannot Load Image");
                  },
                )),
          ),
          Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      content,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
