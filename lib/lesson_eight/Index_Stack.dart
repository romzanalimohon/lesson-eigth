import 'package:flutter/material.dart';

class IndexStackApp extends StatefulWidget {
  const IndexStackApp({Key? key}) : super(key: key);

  @override
  State<IndexStackApp> createState() => _IndexStackAppState();
}

class _IndexStackAppState extends State<IndexStackApp> {

  List<String> names = <String>['Dash','Joe','Mary'];
  int index = 0;
  TextEditingController fieldText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 300,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'enter name'
              ),
              onSubmitted: (String value){
                setState((){
                  names.add(value);
                });
                fieldText.clear();
              },
              controller: fieldText,
            ),
          ),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  setState((){
                    if(index == 0){
                      index = names.length-1;
                    }else{
                      index -= 1;
                    }
                  });
                },
                  child: Icon(Icons.chevron_left, key: Key('gesture1'),)
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IndexedStack(
                    index: index,
                    children: [
                      for(String name in names) PersonTracker(name: name)
                    ],
                  )
                ],
              ),
              GestureDetector(
                onTap: (){
                  setState((){
                    if(index == names.length-1){
                      index = 0;
                    }else{
                      index += 1;
                    }
                  });
                },
                child: Icon(Icons.chevron_right, key: Key('gesture2'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}




class PersonTracker extends StatefulWidget {

  final String name;

  const PersonTracker({super.key, required this.name});


  @override
  State<PersonTracker> createState() => _PersonTrackerState();
}

class _PersonTrackerState extends State<PersonTracker> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      key: Key(widget.name),
      decoration: BoxDecoration(
        color: Colors.amber,
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Text('Name: ${widget.name}'),
          Text('Score: $counter'),
          TextButton.icon(
            key: Key('increment${widget.name}'),
              icon: Icon(Icons.add),
              onPressed: (){
              setState((){
                counter += 1;
              });
              },
            label: Text('Increment'),
              )
        ],
      ),
    );
  }
}
