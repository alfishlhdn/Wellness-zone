import 'package:flutter/material.dart';

class IMTPage extends StatefulWidget {
  @override
  _IMTPageState createState() => _IMTPageState();
}

class _IMTPageState extends State<IMTPage> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
   String _result = "";

   void _resetFields() {
    _heightController.clear();
    _weightController.clear();
    setState(() {
      _result = "";
    });
  }

  void _calculateBMI() {
    final String heightText = _heightController.text;
    final String weightText = _weightController.text;

    if (heightText.isEmpty || weightText.isEmpty) {
      _showErrorDialog("Height and Weight cannot be empty.");
      return;
    }

    final double? height = double.tryParse(heightText);
    final double? weight = double.tryParse(weightText);

    if (height == null || weight == null || height <= 0 || weight <= 0) {
      _showErrorDialog("Please enter valid numbers for Height and Weight.");
      return;
    }

    double bmi = weight / ((height / 100) * (height / 100));
    String status;
    String deskripsi;

    if (bmi < 18.5) {
      status = 'Underweight (Berat badan kurang)';
      deskripsi =
          'Anda berada dalam kategori berat badan kurang. Disarankan untuk meningkatkan asupan kalori dengan makanan bergizi serta berolahraga secara teratur untuk meningkatkan massa otot.';
    } else if (bmi < 24.9) {
      status = 'Normal';
      deskripsi =
          'Anda berada dalam kategori berat badan normal. Pertahankan pola makan sehat dan rutin berolahraga untuk menjaga keseimbangan tubuh.';
    } else if (bmi < 29.9) {
      status = 'Overweight (Kegemukan)';
      deskripsi =
          'Anda berada dalam kategori kegemukan. Disarankan untuk mengatur pola makan sehat dan meningkatkan aktivitas fisik untuk mencapai berat badan ideal.';
    } else if (bmi < 34.9) {
      status = 'Obesity (Obesitas)';
      deskripsi =
          'Anda berada dalam kategori obesitas. Disarankan untuk berkonsultasi dengan ahli gizi atau dokter untuk mengelola pola makan dan meningkatkan aktivitas fisik guna menurunkan berat badan.';
    } else {
      status = 'Extreme Obesity (Obesitas Ekstrem)';
      deskripsi =
          'Anda berada dalam kategori obesitas ekstrem. Sangat disarankan untuk mendapatkan bimbingan medis dalam mengatur pola makan dan menjalani program latihan yang sesuai guna meningkatkan kesehatan.';
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultPage(
          bmi: bmi,
          status: status,
          height: height,
          weight: weight,
          deskripsi: deskripsi,
        ),
      ),
    );
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Input Error"),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("OK"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI KALKULATOR", style: TextStyle(color: Colors.white)),
        iconTheme: IconThemeData(color: Colors.white),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.redAccent, Colors.orangeAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/imt/UKUR.jpg',
              height: MediaQuery.of(context).size.height * 0.3,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _heightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Tinggi (cm)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _weightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Berat (kg)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.redAccent, Colors.orangeAccent],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ElevatedButton(
                      onPressed: _calculateBMI,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'Hitung',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.grey, Colors.blueGrey],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ElevatedButton(
                      onPressed: _resetFields,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'Reset',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              _result,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class ResultPage extends StatelessWidget {
  final double bmi;
  final String status;
  final double height;
  final double weight;
  final String deskripsi;

  ResultPage({
    required this.bmi,
    required this.status,
    required this.height,
    required this.weight,
    required this.deskripsi,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI KALKULATOR", style: TextStyle(color: Colors.white)),
        iconTheme: IconThemeData(color: Colors.white),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.redAccent, Colors.orangeAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        // Add SingleChildScrollView here
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 300,
              height: 100,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.redAccent,
                    Colors.orangeAccent
                  ], // Warna gradasi
                  begin: Alignment.topLeft, // Mulai dari kiri atas
                  end: Alignment.bottomRight, // Berakhir di kanan bawah
                ),
                borderRadius:
                    BorderRadius.circular(8), // Membuat sudut melengkung
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Berat",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 8),
                        Text("${weight.toStringAsFixed(1)} kg",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Tinggi",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 8),
                        Text("${height.toStringAsFixed(1)} cm",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text("BMI ANDA",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text(bmi.toStringAsFixed(1),
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            Text(status, style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            // Dynamically adjusting image size
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height *
                    0.3, // Proportional height based on screen size
              ),
              child: Image.asset(
                'images/imt/masssa.jpg',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              deskripsi,
              textAlign: TextAlign.center, // Tambahkan ini
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
