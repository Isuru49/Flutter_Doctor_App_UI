import 'package:flutter/material.dart';

class ItemDoctor extends StatelessWidget {
  const ItemDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 5),
                color: Theme.of(context).colorScheme.primary.withOpacity(.1),
                spreadRadius: 5,
                blurRadius: 4)
          ]),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/doctor.png'),
          ),
          const SizedBox(height: 10),
          Text('Sample Doctor', style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                5,
                (index) =>
                    const Icon(Icons.star, color: Colors.amber, size: 10)),
          )
        ],
      ),
    );
  }
}
