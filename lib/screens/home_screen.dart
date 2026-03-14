import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6FA),

      appBar: AppBar(
        backgroundColor: const Color(0xFF6A5AE0),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "IRAMA",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 26,
            color: Colors.white,
            letterSpacing: 1.3,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// SEARCH BAR
            Container(
              height: 52,
              padding: const EdgeInsets.symmetric(horizontal: 18),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    offset: const Offset(0,4),
                  )
                ],
              ),
              child: const Row(
                children: [
                  Icon(Icons.search, color: Colors.grey, size: 24),
                  SizedBox(width: 12),
                  Text(
                    "Cari materi pembelajaran...",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(height: 30),

            /// HERO BANNER
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 30,
              ),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF6A5AE0),
                    Color(0xFF8E7CFF),
                  ],
                ),
                borderRadius: BorderRadius.circular(28),
              ),
              child: Row(
                children: [

                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [

                        Text(
                          "Pembelajaran Musik\nInklusif",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            height: 1.2,
                          ),
                        ),

                        SizedBox(height: 14),

                        Text(
                          "Teknologi Embedded 3D Model\n& Metode Kodály Hand Sign",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 15,
                            height: 1.4,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const Icon(
                    Icons.music_note,
                    color: Colors.white,
                    size: 95,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 35),

            const Text(
              "Fitur Pembelajaran",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 18),

            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 18,
              mainAxisSpacing: 18,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [

                _featureCard(
                  Icons.threed_rotation,
                  "Visualisasi Nada 3D",
                  "Representasi nada musik melalui model 3D interaktif.",
                  Colors.orange,
                ),

                _featureCard(
                  Icons.pan_tool_alt,
                  "Kodály Hand Sign",
                  "Pembelajaran nada dengan gerakan tangan.",
                  Colors.green,
                ),

                _featureCard(
                  Icons.graphic_eq,
                  "Latihan Ritme",
                  "Latihan pola ritme menggunakan visual.",
                  Colors.blue,
                ),

                _featureCard(
                  Icons.menu_book,
                  "Modul Musik",
                  "Materi dasar teori musik inklusif.",
                  Colors.teal,
                ),

                _featureCard(
                  Icons.quiz,
                  "Evaluasi",
                  "Quiz untuk mengukur pemahaman siswa.",
                  Colors.deepPurple,
                ),

                _featureCard(
                  Icons.info_outline,
                  "Tentang IRAMA",
                  "Informasi dan tujuan aplikasi.",
                  Colors.redAccent,
                ),
              ],
            ),

            const SizedBox(height: 40),

            /// FOOTER
            Center(
              child: Column(
                children: const [
                  Divider(indent: 40, endIndent: 40),
                  SizedBox(height: 10),
                  Text(
                    "IRAMA - Pembelajaran Musik Untuk Tunarungu",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Dibuat Oleh Kelompok 7 PBM",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _featureCard(
      IconData icon,
      String title,
      String desc,
      Color color,
      ) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 12,
            offset: const Offset(0,5),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          CircleAvatar(
            radius: 26,
            backgroundColor: color.withOpacity(0.15),
            child: Icon(icon, color: color, size: 30),
          ),

          const SizedBox(height: 12),

          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),

          const SizedBox(height: 6),

          Text(
            desc,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black54,
              height: 1.4,
            ),
          )
        ],
      ),
    );
  }
}