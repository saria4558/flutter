import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff1c4ef1),
          leading: IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            onPressed: () {
              // Tambahkan fungsi untuk tindakan "Home" di sini
            },
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                // Tambahkan fungsi untuk tindakan "Burger Menu" di sini
              },
            ),
          ],
          title: Text(
            "Proyek Uji Coba", // Hapus widget Container ini
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          color: Color(0xff1c4ef1),
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              // Daftar URL gambar yang berbeda
              List<String> imageUrls = [
                "https://i.pinimg.com/564x/0e/07/6d/0e076dbbb4c0544001971e659462a6ac.jpg",
                "https://i.pinimg.com/564x/6c/af/d1/6cafd1696bd43db5348c6ddbc2e35b8a.jpg",
                "https://i.pinimg.com/736x/40/cb/53/40cb53fa111a9686378baa8c980282de.jpg",
                // Tambahkan URL gambar lain di sini
              ];

              // Gunakan index untuk memilih URL gambar
              String imageUrl = imageUrls[index % imageUrls.length];

              return Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: ListTile(
                  leading: ClipOval(
                    child: Image.network(
                      imageUrl, // Gunakan URL gambar yang berbeda
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    "Yovita nanda",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Text(
                    'Jabatan : Direktur',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
