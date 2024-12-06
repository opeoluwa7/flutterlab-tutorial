import 'package:flutter/material.dart';
import 'package:myapp/components/my_modal_list_tile.dart';
import 'package:myapp/model/modal_sheet_model.dart';
import 'package:myapp/provider/base_functions.dart';
import 'package:myapp/screens/news_screen.dart';
import 'package:myapp/screens/project_screen.dart';
import 'package:myapp/screens/tutorial_screen.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  final List<Widget> _screens = [
    TutorialScreen(),
    ProjectScreen(),
    NewsScreen(),
  ];

  final List _items = ModalSheetModel().items;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: CustomScrollView(
          slivers: [
            _customAppBar(context),
            const SliverToBoxAdapter(
              child: Divider(
                height: 1,
                color: Colors.white12,
              ),
            ),
            SliverFillRemaining(
              child: IndexedStack(
                index: selectedIndex,
                children: _screens,
              ),
            )
          ],
        ),
        bottomNavigationBar: _bottomBar(),
      ),
    );
  }

  //-----------------------------------------------------------
  //APP BAR
  SliverAppBar _customAppBar(context) {
    return SliverAppBar(
      centerTitle: true,
      backgroundColor: Theme.of(context).colorScheme.primary,
      title: Text(
        'FlutterLab',
        style: Theme.of(context).textTheme.headlineLarge,
      ),
      floating: false,
      pinned: true,
      leading: IconButton(
        icon: const Icon(Icons.tips_and_updates),
        onPressed: _tipsNavigation,
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.more_vert_rounded),
          onPressed: _showBottomSheet,
        ),
      ],
      elevation: 0,
    );
  }

  _tipsNavigation() {
    Navigator.pushNamed(context, '/tips');
  }

  //-----------------------------------------------------------
  //MODAL BOTTOM SHEET
  _showBottomSheet() {
    showModalBottomSheet(
        context: context,
        enableDrag: false,
        builder: (context) {
          return Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            height: 700,
            child: _modalBody(),
          );
        });
  }

  //modal body
  Widget _modalBody() {
    return ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          final item = _items[index];
          return Column(
            children: [
              GestureDetector(
                onTap: () => _mbOnTapFunction(index),
                child: MyModalListTile(
                  icon: item.icon,
                  iconColor: Theme.of(context).colorScheme.onPrimary,
                  title: item.title,
                  titleTextStyle: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              const Divider(
                color: Colors.white12,
                height: 1,
              ),
            ],
          );
        });
  }

  _mbOnTapFunction(index) {
    context.read<BaseFunctions>().handleModalNavigation(context, index);
  }

  //-----------------------------------------------------------
  //BOTTOM NAVIGATION BAR
  _bottomBar() {
    return AnimatedContainer(
      curve: Curves.easeInOut,
      duration: const Duration(
        milliseconds: 300,
      ),
      child: BottomNavigationBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        selectedItemColor: Theme.of(context).colorScheme.onPrimary,
        unselectedItemColor: Theme.of(context).colorScheme.onSecondary,
        onTap: _onTapChange,
        items: _bottomNavItems(),
        elevation: 0,
        iconSize: 22,
      ),
    );
  }

  List<BottomNavigationBarItem> _bottomNavItems() {
    return const [
      BottomNavigationBarItem(
        icon: Icon(Icons.menu_book),
        label: 'Tutorials',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.dashboard),
        label: 'Projects',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.message_rounded),
        label: 'News',
      ),
    ];
  }

  void _onTapChange(index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
