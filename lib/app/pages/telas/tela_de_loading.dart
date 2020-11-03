import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class TelaDeLoading extends StatelessWidget {
  const TelaDeLoading({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 200,
          height: 200,
          child: FlareActor(
            'assets/anim/search_animation.flr',
            animation: 'Record2',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
