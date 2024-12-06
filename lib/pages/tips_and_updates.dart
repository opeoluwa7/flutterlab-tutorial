import 'package:flutter/material.dart';
import 'package:myapp/screens/tips_screen.dart';

class TipsAndUpdates extends StatelessWidget {
  const TipsAndUpdates({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: TipsBody(),
    );
  }
}

class TipsBody extends StatefulWidget {
  const TipsBody({super.key});

  @override
  State<TipsBody> createState() => _TipsBodyState();
}

class _TipsBodyState extends State<TipsBody> {
  final PageController _pageController = PageController();
  int currentIndex = 0;
  final List _pages = [const TipsScreen()];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        _customAppBar(context),
        const SliverToBoxAdapter(
          child: Divider(
            height: 1,
            color: Colors.white12,
          ),
        ),
        SliverFillRemaining(
          child: PageView.builder(
            itemCount: _pages.length,
            controller: _pageController,
            onPageChanged: (index) => _onPageChanged(index),
            itemBuilder: (context, index) {
              final page = _pages[index];
              return page;
            },
          ),
        ),
      ],
    );
  }

  void _onPageChanged(index) {
    setState(() {
      currentIndex = index;
    });
  }

  //APP BAR
  SliverAppBar _customAppBar(context) {
    return SliverAppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Tips',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            '${currentIndex + 1} / ${_pages.length}',
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ],
      ),
      floating: false,
      pinned: true,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () => _popContext(context),
      ),
      centerTitle: false,
    );
  }

  _popContext(context) {
    Navigator.pop(context);
  }
}
