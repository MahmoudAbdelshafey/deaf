import 'package:first_project/components/object_detection_letter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MachineButton extends StatelessWidget {
  const MachineButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}

Widget getMachineButton(BuildContext context) {
  return SizedBox(
    height: 40,
    width: 45,
    child: FloatingActionButton(

      backgroundColor: Theme.of(context).dividerColor,
      splashColor: Color.fromARGB(255, 0, 90, 164),
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => ObjectDetection()));
      },
      child: FaIcon(FontAwesomeIcons.robot,color: Colors.white,size: 25,),
      shape: StadiumBorder(
        side: BorderSide(width: 4, color: Theme.of(context).dividerColor),
      ),
    ),
  );
}