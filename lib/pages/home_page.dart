import 'package:chat_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/widgets/chat_tile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blueColor,

        //floatingActionButton: Ketika membuat button, dan ada aksi
        floatingActionButton: FloatingActionButton(
          onPressed: () {}, //diisi ketika ingin melakukan aksi
          backgroundColor: greenColor, //ubah warna background button
          child: Icon(
            Icons.add, //add btn dari icon material design
            size: 28,
            color: whiteColor,
          ),
        ),
        //location: ubah lokasi button(centerFloat: ke tengah & sprti ngambang/diatas batas bottom)
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        ////
        ///
        body: SafeArea(
          //FRAME UTAMA
          child: Center(
            //SingleChildScrollView: AGAR BS SCROLL(ceegah bottom overflow)-- click column-> ctrl + . -> new widget
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 40), //space keatas gambar
                  //foto
                  Image.asset(
                    'assets/images/profile.png',
                    height: 100,
                    width: 100,
                  ),
                  SizedBox(height: 20), //space
                  //name
                  Text(
                    'Carpenter Evlin',
                    style: TextStyle(fontSize: 20, color: whiteColor),
                  ),
                  SizedBox(height: 2), //space
                  //profesi
                  Text(
                    'Travel Freelancer',
                    style: TextStyle(fontSize: 16, color: lightBlueColor),
                  ),
                  SizedBox(height: 30),

                  //set container content(boreder radius)
                  Container(
                    width: double
                        .infinity, //pjng vertical menyesuaikan isi/content
                    padding: EdgeInsets.all(
                        30), //atur padding(jarak) container ke content--vertical&horizontal 30
                    decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.vertical(
                          //untuk radius, vertical krna hanya atas
                          top: Radius.circular(
                              40), //circular agar radiusnya lingkaran
                        )),

                    //agar tiap elemen kebawah
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment
                          .start, //agar tiap element rata kiri(main=vertical, cross=horizon)
                      children: [
                        //CONTACT FRIEND
                        Text(
                          'Friends',
                          style: titleTextStyle, //udh buat di theme.drt
                        ),
                        //IMPLEMENTASI DARI CHAT_TILE.DART
                        //kontak friend1
                        ChatTile(
                          imageUrl:
                              'assets/images/friend1.png', //masukan url gambar
                          name: 'Phillips', //masukan nama friend1
                          text: 'Sorry your not my ty...', //masukan text
                          time: 'Now', //masukan waktu
                          unread: true, //blm dibaca=true, sudah=false
                        ),

                        //kontak friend2
                        ChatTile(
                          imageUrl:
                              'assets/images/friend2.png', //masukan url gambar
                          name: 'Caroline', //masukan nama friend1
                          text: 'I saw it clearly and mig...', //masukan text
                          time: '6.19', //masukan waktu
                          unread: false, //blm dibaca=true, sudah=false
                        ),
                        SizedBox(height: 30),

                        //CONTACT GROUP
                        Text(
                          'Group',
                          style: titleTextStyle, //udh buat di theme.drt
                        ),
                        //kontak group1
                        ChatTile(
                          imageUrl:
                              'assets/images/group1.png', //masukan url gambar
                          name: 'Indonesian Club', //masukan nama friend1
                          text: 'why does everyone ca...', //masukan text
                          time: '11.11', //masukan waktu
                          unread: true, //blm dibaca=true, sudah=false
                        ),

                        //kontak group2
                        ChatTile(
                          imageUrl:
                              'assets/images/group2.png', //masukan url gambar
                          name: 'UI/UX Design', //masukan nama friend1
                          text: 'Heree we can help yo...', //masukan text
                          time: '6.19', //masukan waktu
                          unread: false, //blm dibaca=true, sudah=false
                        ),

                        //kontak group3
                        ChatTile(
                          imageUrl:
                              'assets/images/group3.png', //masukan url gambar
                          name: 'Class Flutter Dev', //masukan nama friend1
                          text: 'The program which do...', //masukan text
                          time: '2.29', //masukan waktu
                          unread: false, //blm dibaca=true, sudah=false
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
