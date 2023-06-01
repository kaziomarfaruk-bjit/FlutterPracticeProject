import 'package:flutter/material.dart';

class FootballScreen extends StatefulWidget {
  static const routeName = '/football-screen';
  const FootballScreen({super.key});
  @override
  State<FootballScreen> createState() => _FootballScreenState();
}

class _FootballScreenState extends State<FootballScreen> {
  // for formation 3-4-2-1,
  List<int> players = [3, 4, 2, 1];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height / (players.length + 1);
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/pitch.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: players.length + 1,
          itemBuilder: (context, index) {
            return SizedBox(height: size, child: _child(index));
          },
        ),
      ),
    );
  }

  Widget _child(int index) {
    // goalkie
    if (index == 0) {
      return Align(
          alignment: Alignment.topCenter, child: _playerImg('assets/2.jpg'));
    }
    // formated players
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        players[index - 1],
        (index) => _playerImg('assets/2.jpg'),
      ),
    );
  }

  Widget _playerImg(String img) =>
      CircleAvatar(radius: 30, backgroundImage: AssetImage(img));
}