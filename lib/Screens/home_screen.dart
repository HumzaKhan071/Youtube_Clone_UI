import 'package:flutter/material.dart';

import 'package:flutter_youtube_ui/Widgets/widgets.dart';
import 'package:flutter_youtube_ui/data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomSLiverAppBar(),
          SliverPadding(
            padding: const EdgeInsets.only(bottom: 260.0),
            sliver: SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
              final video = videos[index];
              return VideoCard(video: video);
            }, childCount: videos.length)),
          )
        ],
      ),
    );
  }
}
