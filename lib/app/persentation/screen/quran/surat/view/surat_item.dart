import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SuratItem extends StatelessWidget {
  final data;
  final onTap;
  const SuratItem({super.key, this.data, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 4.0,
      ),
      child: Card(
        child: ListTile(
          onTap: () async {
            onTap();
          },
          leading: CircleAvatar(
            minRadius: 16,
            maxRadius: 18,
            backgroundColor: Colors.blueGrey,
            foregroundColor: Colors.white,
            child: Text(data.id.toString()),
          ),
          title: Text(
            data.namaLatin ?? '',
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle: Text("${data.tempatTurun} - ${data.jumlahAyat} Ayat"),
          trailing: Text(
            data.nama ?? '',
            textDirection: TextDirection.rtl,
            style: GoogleFonts.amiri(
              fontSize: 32,
              height: 2,
            ),
          ),
        ),
      ),
    );
  }
}
