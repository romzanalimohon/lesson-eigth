import 'package:flutter/material.dart';

class FlowMenu extends StatefulWidget {
  const FlowMenu({Key? key}) : super(key: key);

  @override
  State<FlowMenu> createState() => _FlowMenuState();
}

class _FlowMenuState extends State<FlowMenu> with SingleTickerProviderStateMixin{



  late AnimationController menuAnimation;
  IconData lastTapped = Icons.notifications;
  final List<IconData> menuItems = <IconData>[
    Icons.home,
    Icons.new_releases,
    Icons.notifications,
    Icons.settings,
    Icons.menu
  ];

  void _updateMenu(IconData icon){
    if(icon != Icons.menu){
      setState((){
        lastTapped = icon;
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    menuAnimation = AnimationController(
        duration: Duration(milliseconds: 400),
        vsync: this,
    );
  }

  Widget flowMenuItem(IconData icon){
    final double buttonDiameter = MediaQuery.of(context).size.width / menuItems.length;
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: RawMaterialButton(
            fillColor: lastTapped == icon ? Colors.amber[700] : Colors.blue,
            splashColor: Colors.amber[100],
            shape: CircleBorder(),
            constraints: BoxConstraints.tight(Size(buttonDiameter, buttonDiameter)),
          onPressed: (){
              _updateMenu(icon);
              menuAnimation.status == AnimationStatus.completed ?
              menuAnimation.reverse() : menuAnimation.forward();
            },
          child: Icon(icon, color: Colors.white, size: 44,),
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.amber,
          child: Flow(
            delegate: FlowMenuDelegate(menuAnimation: menuAnimation),
            children:
            menuItems.map<Widget>((IconData icon) => flowMenuItem(icon)).toList(),
          ),
        ),
      ],
    );
  }
}

class FlowMenuDelegate extends FlowDelegate{
  final Animation<double> menuAnimation;

  FlowMenuDelegate({required this.menuAnimation}):super(repaint: menuAnimation);

  @override
  bool shouldRepaint(FlowMenuDelegate oldDelegate){
    return menuAnimation != oldDelegate.menuAnimation;
  }

  @override
  void paintChildren(FlowPaintingContext context){
    double dx = 0;
    for(int i=0; i<context.childCount; ++i){
      dx = context.getChildSize(i)!.width * i;
      context.paintChild(
          i,
        transform: Matrix4.translationValues(dx * menuAnimation.value, 0, 0),

      );
    }
  }
}