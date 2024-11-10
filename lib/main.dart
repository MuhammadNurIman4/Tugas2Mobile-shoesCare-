import 'package:flutter/material.dart';

void main() {
  runApp(ShoesCareApp());
}

class ShoesCareApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShoesCareHomePage(),
    );
  }
}

class ShoesCareHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40), // Top padding
            _buildHeader(),
            _buildProgressSection(),
            _buildServiceList(),
            _buildLocationSection(),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Shoes',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[800], // Warna biru untuk "Shoes"
                      ),
                    ),
                    TextSpan(
                      text: 'Care',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.red, // Warna merah untuk "Care"
                      ),
                    ),
                  ],
                ),
              ),
              CircleAvatar(
                child: Icon(Icons.person),
              ),
            ],
          ),
          SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/shoescare.jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProgressSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Progress',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue[800], // Sesuaikan warna sesuai desain
            ),
          ),
          SizedBox(height: 10),
          // Kontainer untuk efek timbul
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3), // Mengubah posisi bayangan
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Repair in ShoesCare BanjarBaru',
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14), // Warna dan ukuran teks
                ),
                SizedBox(height: 5),
                Text(
                  'Geovelli Pantofel',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold), // Nama item
                ),
                SizedBox(height: 10),
                LinearProgressIndicator(
                  value: 0.5, // Nilai progress
                  backgroundColor: Colors.grey[300], // Warna latar belakang
                  color: Colors.blueAccent, // Warna progress
                ),
                SizedBox(height: 5),
                Text(
                  '50%', // Persentase progress
                  style: TextStyle(
                      color: Colors.black, fontSize: 16), // Ukuran teks
                  textAlign: TextAlign.end, // Menyelaraskan teks ke kanan
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildServiceList() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Service List',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),
          // Baris pertama
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildServiceItem('Cleaning', 'assets/cleaning.png'),
              _buildServiceItem('Repair', 'assets/repair.png'),
              _buildServiceItem('Painting', 'assets/painting.png'),
            ],
          ),
          SizedBox(height: 10), // Jarak antar baris
          // Baris kedua
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildServiceItem('Tools', 'assets/tools.png'),
              _buildServiceItem('Sale', 'assets/sale.png'),
              _buildServiceItem('Pick-up', 'assets/pickup.png'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildServiceItem(String label, String imageAsset) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20), // Membuat sudut lebih bulat
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // Mengubah posisi bayangan
          ),
        ],
      ),
      width: 100, // Mengatur lebar kontainer
      height: 100, // Mengatur tinggi kontainer
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 50, // Ukuran gambar
            height: 50, // Ukuran gambar
            child: Image.asset(imageAsset), // Menggunakan gambar dari aset
          ),
          SizedBox(height: 5),
          Text(
            label,
            style: TextStyle(color: Colors.black, fontSize: 14), // Ukuran teks
            textAlign: TextAlign.center, // Menyelaraskan teks ke tengah
          ),
        ],
      ),
    );
  }

  Widget _buildLocationSection() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Location',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue[800], // Sesuaikan warna sesuai desain
            ),
          ),
          SizedBox(height: 10),
          // Membuat kontainer untuk efek timbul
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3), // Mengubah posisi bayangan
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Shoes',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[800], // Warna biru untuk "Shoes"
                        ),
                      ),
                      TextSpan(
                        text: 'Care',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.red, // Warna merah untuk "Care"
                        ),
                      ),
                      TextSpan(
                        text: ' BanjarBaru',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black, // Warna teks hitam
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Jalan Golf Pelita 3 No.7 Landasan Ulin Utara',
                  style: TextStyle(
                    fontSize: 14, // Ukuran font yang lebih kecil
                    color: Colors.grey, // Warna teks
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.black), // Ikon untuk Home
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.arrow_back,
              color: Colors.grey), // Ikon untuk tombol kedua
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.location_on,
              color: Colors.grey), // Ikon untuk Location
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.refresh,
              color: Colors.grey), // Ikon untuk tombol Refresh
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, color: Colors.grey), // Ikon untuk Profile
          label: '',
        ),
      ],
      currentIndex: 0, // Mengatur index saat ini (untuk tampilan)
      selectedItemColor: Colors.black, // Warna untuk item yang dipilih
      unselectedItemColor: Colors.grey, // Warna untuk item yang tidak dipilih
      showUnselectedLabels:
          false, // Menyembunyikan label item yang tidak terpilih
      showSelectedLabels: false, // Menyembunyikan label item yang terpilih
      type: BottomNavigationBarType.fixed, // Menggunakan tipe fixed
    );
  }
}
