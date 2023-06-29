import 'package:flutter/material.dart';

class LinearBar extends StatelessWidget {
  final String nameStat;
  final int statValue;
  final Color color;

  const LinearBar({
    super.key,
    required this.nameStat,
    required this.statValue,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      child: Row(
        children: [
          Expanded(
            child: Text(
              nameStat,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.end,
            ),
          ),
          Expanded(
            flex: 6,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 300,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: LinearProgressIndicator(
                      backgroundColor: Colors.white,
                      color: color,
                      value: statValue / 300,
                      minHeight: 20,
                    ),
                  ),
                ),
                Text(
                  '$statValue/300',
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
