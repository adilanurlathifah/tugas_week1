import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: const EdgeInsets.fromLTRB(
              30, 
              10, 
              0, 
              0,
              ),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(1.0),
            ),
            child: const Icon(
            Icons.arrow_back_sharp,
            size: 25.0,
            color : Color(0xff1C6758),
            ),
          )
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
           Text(
            'Tanggal Jatuh Tempo',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.grey.withOpacity(0.9),
            ),
          ),
            const SizedBox(
              height: 5,
          ),
           Text(
            'Sabtu, 08 okt 2022 22:41 WIB',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.black.withOpacity(0.7),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                     const Text(
                      'BCA Virtual Account',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      'Transaksi Virtual Account',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.withOpacity(0.9),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nomor Virtual Account',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.withOpacity(0.9),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                     Text(
                      '0918320930817437482',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
            Text(
            'Total Tagihan',
                  style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
             SizedBox(
              height: 10,
            ),
            Text(
            'Rp1.772.500',
                  style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w700,
                  color: Colors.red,
                ),
              ),
            ],
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Detail Belanja',
                style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600
              ),),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                Text('Total Harga Barang', 
                  style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey
                ),
              ),
                Text('Rp.1.772.500', 
                  style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey
                ),),
              ],),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                Text('Total Ongkos Kirim', 
                  style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey
                ),
              ),
                Text('Rp.12.000', 
                  style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey
                ),),
              ],),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                Text('Asuransi', 
                  style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey
                ),
              ),
                Text('Rp.1.000', 
                  style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey
                ),),
              ],),
              const SizedBox(
                height: 20,
              ),
              Divider(
                  thickness: 5,
                  color: Colors.grey.withOpacity(0.1),
              ),
              const SizedBox(
                height: 18,
              ),
              const Text('Pesanan akan dikonfirmasi oleh penjual apabila proses\npembayaran telah berhasil.',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 13,
              ),),
              const SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () {
                },
                child: Container(
                 height: 50,
                 width: 400,
                 padding: const EdgeInsets.all(10),
                 decoration: BoxDecoration(
                   color: const Color(0xff1C6758),
                  borderRadius: BorderRadius.circular(5)
                 ),
                 child:
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Halaman Utama',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  ]),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Container(
                height: 50,
                 width: 400,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                  foregroundColor: const Color(0xff1C6758), backgroundColor: Colors.white,
                  side: const BorderSide(color: Color(0xff1C6758), width: 2), //<-- SEE HERE
                ),
                  onPressed: () {},
                  child: const Text(
                 'Cek Status Pembayaran',
                  style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}