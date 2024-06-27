import 'package:_9_note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 22,
            child: CircleAvatar(
              radius: 18,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 18,
            backgroundColor: color,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;

  List<Color> colors = const [
    Color(0XFFDA2C38),
    Color(0XFF7E4E46),
    Color(0XFF1D5E47),
    Color(0XFF559972),
    Color(0XFFAED6B3),
    Color(0XFFABD08B),
    Color(0XFFF4F0BB),
    Color(0XFF9C8D6D),
    Color(0XFF57E8A4),
    Color(0XFFC18B86),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 22 * 2,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                BlocProvider.of<AddNoteCubit>(context).color = colors[index];
                setState(() {});
              },
              child: ColorItem(
                color: colors[index],
                isActive: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
