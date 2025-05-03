import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: const Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                RowOne(),
                SizedBox(height: 16),
                RowTwo(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//----------------------------------
// RowOne as a separate widget
class RowOne extends StatelessWidget {
  const RowOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const ColoredBox(color: Color.fromARGB(255, 163, 50, 21)),
        const SizedBox(width: 16),
        Expanded(
          child: Container(
            color: const Color.fromARGB(255, 218, 88, 7),
            height: 40.0,
          ),
        ),
        const SizedBox(width: 16),
        const ColoredBox(color: Color.fromARGB(255, 188, 76, 36)),
      ],
    );
  }
}

//----------------------------------
// RowTwo as a separate widget
class RowTwo extends StatelessWidget {
  const RowTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ColoredBox(color: Colors.amberAccent),
            const SizedBox(height: 16),
            const ColoredBox(color: Colors.amberAccent),
            const SizedBox(height: 16),
            const ColoredBox(color: Colors.amberAccent),
            const Divider(),
            const CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 100,
              child: RowStack(),
            ),
            const Divider(),
            const Text("End Of The Line"),
          ],
        )
      ],
    );
  }
}

//----------------------------------
// Reusable colored box widget
class ColoredBox extends StatelessWidget {
  final Color color;
  const ColoredBox({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(color: color, height: 40.0, width: 40.0);
  }
}

//----------------------------------
// RowStack as a separate widget
class RowStack extends StatelessWidget {
  const RowStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: Colors.red, height: 100, width: 100),
        Container(color: Colors.redAccent, height: 60, width: 60),
        Container(color: Colors.orange, height: 40.0, width: 40.0),
      ],
    );
  }
}
