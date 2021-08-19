import 'package:flutter/material.dart';

class MovieDropDownField extends StatelessWidget {
  const MovieDropDownField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String?>(
      onChanged: (value) {},
      items: <DropdownMenuItem<String?>>[
        DropdownMenuItem(
          child: Text('Action'),
          value: 'Action',
        ),
        DropdownMenuItem(
          child: Text('Comedy'),
          value: 'Comedy',
        ),
        DropdownMenuItem(
          child: Text('Fantasy'),
          value: 'Fantasy',
        ),
        DropdownMenuItem(
          child: Text('Horror'),
          value: 'Horror',
        ),
        DropdownMenuItem(
          child: Text('Sci-Fi'),
          value: 'Sci-Fi',
        ),
      ],
      decoration: InputDecoration(
        labelText: 'Tags',
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blueAccent,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 1.0,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.0,
          ),
        ),
      ),
    );
  }
}
