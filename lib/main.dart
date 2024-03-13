import 'package:flutter/material.dart';

void main(){
  runApp(AppSaya());
}

class AppSaya extends StatelessWidget {
  AppSaya({super.key});
  final formKey = GlobalKey<FormState>();
  var inputControllerNama = TextEditingController();
  var inputControllerNIM = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
        appBar: AppBar(
          title: const Text('SIPLO', style: TextStyle(fontSize: 30)),
          backgroundColor: const Color.fromARGB(255, 6, 30, 75),
          iconTheme: const IconThemeData(color: Colors.white)
        ),
        drawer: const Drawer(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('Ini menu aja', style: TextStyle(fontSize: 24),),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: formKey,
            child: Column(
                children: [
                  const Card(
                    color: Color.fromARGB(255, 184, 115, 12),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('PENGUMPULAN', style: TextStyle(color: Colors.white)),
                          SizedBox(height: 10,),
                          Text('Pengumpulan proposal PKM terakhir tanggal 29 Februari 2023 yok semangat yok', style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const Row(
                    children: [
                      Card(
                        color: Color.fromARGB(255, 6, 30, 75),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Icon(Icons.dashboard),
                              SizedBox(width: 10,),
                              Text('SIPLO (Sist. Info Terpadu Layanan Prodi)')
                            ],
                          ),
                        ),
                      ),
                      Card(
                        color: Color.fromARGB(255, 6, 30, 75),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Icon(Icons.dashboard),
                              SizedBox(width: 10,),
                              Text('SIPLO (Sist. Info Terpadu Layanan Prodi)')
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  TextFormField(
                    controller: inputControllerNama,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Nama Lengkap"
                    ),
                    validator: (value) {
                      if(value == null || value.isEmpty){
                        return('Mohon isi nama lengkap anda');
                      }
                      return null;
                    },),
                  const SizedBox(height: 10,),
                  TextFormField(
                    controller: inputControllerNIM,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "NIM"
                    ),
                    validator: (value) {
                      if(value == null || value.isEmpty){
                        return('Mohon isi nama lengkap anda');
                      }
                      return null;
                    },
                    ),
                  const SizedBox(height: 20,),
                  ElevatedButton(onPressed: () {
                    if(formKey.currentState!.validate()){
                      debugPrint('Nama = ${inputControllerNama.text}');
                      debugPrint('NIM = ${inputControllerNIM.text}');
                    }
                  }, child: const Text('Sign In')),
                ],
              ),
          ),
        ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.verified_user),
            label: 'Beranda'
          )
          ],
      )
      ),
      ) 
    );
  }
}