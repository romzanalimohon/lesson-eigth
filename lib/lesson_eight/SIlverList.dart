import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

class SilverListApp extends StatelessWidget {
  const SilverListApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiSliver(
        pushPinnedChildren: true,
        children: [
          SliverPinnedHeader(
            child: Container(
              color: Colors.yellow,
              height: 100,
              child: Text('i am a pinned header', style: TextStyle(fontSize: 30),),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index){
                  return Padding(
                      padding: EdgeInsets.all(8),
                      child: Container(
                        color: index % 2 == 0? Colors.green : Colors.greenAccent,
                        height: 80,
                        alignment: Alignment.center,
                        child: Text('Item $index', style: TextStyle(fontSize: 30),),
                      ),
                  );
                },
              //40 list item
              childCount: 40
            ),

          ),
        ],
      ),
    );
  }
}
