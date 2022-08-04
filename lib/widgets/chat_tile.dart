import 'package:flutter/material.dart';
import 'package:chat_app/theme.dart';

class ChatTile extends StatelessWidget {
  //agar content tidak sama semua

  final imageUrl; //bikin variabel
  final name;
  final text;
  final time;

  final unread; //var. pesan blm dibaca

  ChatTile(
      {this.imageUrl,
      this.name,
      this.text,
      this.time,
      this.unread}); //bikin variabel agar bs digunakan di pages lain dgn this.

//Masukan yang akan ditamplkan
  @override
  Widget build(BuildContext context) {
    return //CONTACT friend1
        Padding(
      //buat padding, tiap atas tampilan chat
      padding: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          //foto friend1
          Image.asset(imageUrl,
              width: 55,
              height: 55), //imageURL: MASUKAN VARIABEL YG TELAH DIBUAT
          SizedBox(width: 12), //space..width=horizontal, height=vertical
          //nama&chat terbaru
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,
                  style:
                      titleTextStyle), //name: MASUKAN VARIABEL YG TELAH DIBUAT
              Text(text, //text: MASUKAN VARIABEL YG TELAH DIBUAT
                  style: unread
                      ? subtitleTextStyle.copyWith(
                          //pengkondisian= unread ? true : false
                          color: blackColor)
                      : subtitleTextStyle)
            ],
          ),
          Spacer(), //agar ada di bagian kanan
          //tanggal chat
          Text(
            time, //time: MASUKAN VARIABEL YG TELAH DIBUAT
            style: subtitleTextStyle.copyWith(
                color:
                    blackColor), //copyWith: agar warna diubah dari yg tlh dibuat
          )
        ],
      ),
    );
  }
}
