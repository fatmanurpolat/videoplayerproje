// screens/home_page.dart

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/screens/vide_player_screen/video_player_page.dart';
import 'package:flutter_application_1/services/firestore_service.dart';
// ignore: depend_on_referenced_packages
import 'package:connectivity/connectivity.dart';

class HomePage extends StatelessWidget {
  FirestoreService viewModel = FirestoreService();
  List<double> cardHeights = List.generate(
      100, (index) => 80.0); // Initialize the card heights with a default value
  String routeName = "";

  Future<void> checkInternetConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      print("Bağlantı yok");
    } else if (connectivityResult == ConnectivityResult.mobile) {
      print("mobil Bağlantı var");
    } else if (connectivityResult == ConnectivityResult.wifi) {
      print("Wifi Bağlantı var");
    }
  }

  @override
  void initState() {
    checkInternetConnection();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kategoriler"),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream:
            FirebaseFirestore.instance.collection("kategoriler").snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text("Veriler alınırken hata oluştu."),
            );
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return Center(
              child: Text('Kategori bulunamadı.'),
            );
          }

          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              var kategoriData =
                  snapshot.data!.docs[index].data() as Map<String, dynamic>;
              var kategoriName = kategoriData['kategori adi']; // Rota adı
              var youtubeLink = kategoriData['link'];
              return ListTile(
                title: Text(kategoriName.toString()),
                onTap: () {
                  print("link " + youtubeLink);

                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => YoutubeVideo(youtubeLink),
                  ));
                },
              );
            },
          );
        },
      ),
    );
  }
}
