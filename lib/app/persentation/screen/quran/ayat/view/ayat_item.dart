import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AyatItem extends StatelessWidget {
  final data;
  final onTap;
  const AyatItem({super.key, this.data,this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      child: GestureDetector(
        onTap: () async {
          onTap();
        },
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      minRadius: 16,
                      maxRadius: 18,
                      backgroundColor: Colors.blueGrey,
                      foregroundColor: Colors.white,
                      child: Text(data.ayatId.toString()),
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.play_arrow,
                            size: 28,
                            color: Colors.blueGrey,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.share,
                            color: Colors.blueGrey,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.copy,
                            color: Colors.blueGrey,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_border,
                            color: Colors.blueGrey,
                          ),
                        ),
                        IconButton(
                          onPressed: () async {},
                          icon: const Icon(
                            Icons.help_outline,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text("${data.teksArab}",
                      textDirection: TextDirection.rtl,
                      style: GoogleFonts.amiri(
                        fontSize: 32,
                        height: 2,
                      )),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "${data.teksLatin}",
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "${data.teksIndonesia}",
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}