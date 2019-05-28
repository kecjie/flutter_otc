import 'package:flutter/material.dart';

class AppBottomNavigationBar extends StatefulWidget {
  final ValueChanged<int> onTap;

  AppBottomNavigationBar(@required this.onTap);

  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationBarState();
  }
}

class _BottomNavigationBarState extends State<AppBottomNavigationBar> {
  int _currentIndex;

  _BottomNavigationBarState() : this._currentIndex = 0;

  void _onTapHandler(int index) {
    setState(() {
      _currentIndex = index;
      widget.onTap(_currentIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onTapHandler,
      type: BottomNavigationBarType.fixed,
      fixedColor: Theme.of(context).primaryColor,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          title: Text('行情'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          title: Text('交易'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          title: Text('广告'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.monetization_on),
          title: Text('钱包'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('我的'),
        ),
      ],
    );
  }
}
