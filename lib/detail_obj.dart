import 'package:flutter/material.dart';
import 'overview.dart';

class Detail extends StatefulWidget {
  final Overview overview;

  const Detail({
    Key? key,
    required this.overview,
  }) : super(key: key);

  @override
  _DetailState createState() {
    return _DetailState();
  }
}

class _DetailState extends State<Detail> {
  int _sliderVal = 1;


  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.overview.label),
      ),
      // 2
      body: SafeArea(
        // 3
        child: Column(
          children: <Widget>[
            // 4
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.overview.imageUrl),
              ),
            ),
            // 5
            const SizedBox(
              height: 4,
            ),
            // 6
            Text(
              widget.overview.label,
              style: const TextStyle(fontSize: 18),
            ),
            // 7
            Expanded(
            // 8
                child: ListView.builder(
                    padding: const EdgeInsets.all(7.0),
                    itemCount: widget.overview.ingredients.length,
                    itemBuilder: (BuildContext context, int index) {
                      final ingredient = widget.overview.ingredients[index];
                      // 9
                      return Text('${ingredient.quantity * _sliderVal} '
                          '${ingredient.measure} '
                          '${ingredient.name}');
                    }
                ),
            ),


            Slider(
                // 10
                min: 1,
                max: 10,
                divisions: 9,
                // 11
                label: '${_sliderVal * widget.overview.servings} servings',
                // 12
                value: _sliderVal.toDouble(),
                // 13
                onChanged: (newValue) {
                    setState(() {
                    _sliderVal = newValue.round();
                    });
                },
                // 14
                activeColor: Colors.green,
                inactiveColor: Colors.black,
                ),

          ],
        ),
      ),
    );
  }
}

