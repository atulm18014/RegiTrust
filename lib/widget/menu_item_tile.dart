import 'package:flutter/material.dart';

class MenuItemTile extends StatefulWidget {
  final String title;
  final IconData icon;
  final bool isSelected;
  final onTap;

  const MenuItemTile({
    Key? key,
    required this.title,
    required this.icon,
    this.isSelected = false,
    required this.onTap,
  }) : super(key: key);

  @override
  _MenuItemTileState createState() => _MenuItemTileState();
}

class _MenuItemTileState extends State<MenuItemTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: widget.isSelected
              ?  const Color.fromARGB(214, 110, 8, 42).withOpacity(0.3)
              : const Color.fromARGB(214, 110, 8, 42),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        width: 70, //_animation.value,
        margin: const EdgeInsets.symmetric(
          horizontal: 8,
        ),
        child: Row(
          children: <Widget>[
            Icon(
              widget.icon,
              color: widget.isSelected ? const Color(0xFF4AC8EA) : Colors.white30,
              size: 38,
            ),
            const SizedBox(width: 0),
            Text(widget.title,
                style: widget.isSelected
                    ? const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 18,
                        fontWeight: FontWeight.bold)
                    : const TextStyle(
                        color: Color.fromARGB(179, 85, 21, 10),
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
