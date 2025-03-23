import 'package:flutter/material.dart';

class EdukasiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ARTICLE",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.redAccent, Colors.orangeAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: articles.length,
          itemBuilder: (context, index) {
            final article = articles[index];
            return ArticleCard(
              article: article,
              onDetailPressed: () {
                _showArticleDetailDialog(context, article);
              },
            );
          },
        ),
      ),
    );
  }

  void _showArticleDetailDialog(BuildContext context, Article article) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return ArticleDetailDialog(article: article);
      },
    );
  }
}

class ArticleCard extends StatelessWidget {
  final Article article;
  final VoidCallback onDetailPressed;

  const ArticleCard({required this.article, required this.onDetailPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: onDetailPressed,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
              child: Image.asset(
                article.imageUrl,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    Image.asset('images/assets/placeholder.jpg', width: 100, height: 100),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      article.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      article.description,
                      style: const TextStyle(color: Colors.grey),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
              onPressed: onDetailPressed,
            ),
          ],
        ),
      ),
    );
  }
}

class ArticleDetailDialog extends StatelessWidget {
  final Article article;

  const ArticleDetailDialog({required this.article});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      title: Text(article.title, style: const TextStyle(fontWeight: FontWeight.bold)),
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                article.imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    Image.asset('images/assets/placeholder.jpg'),
              ),
            ),
            const SizedBox(height: 10),
            Text(article.description, style: const TextStyle(fontSize: 14, height: 1.5, color: Colors.grey)),
            const SizedBox(height: 20),
            if (article.manfaat != null && article.manfaat!.isNotEmpty) ...[
              const Text("Manfaat", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              const SizedBox(height: 5),
              Text(article.manfaat!, style: const TextStyle(fontSize: 14, height: 1.5, color: Colors.grey)),
            ],
            const SizedBox(height: 20),
            const Text("Penyebab", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 5),
            Text(article.causes, style: const TextStyle(fontSize: 14, height: 1.5, color: Colors.grey)),
            const SizedBox(height: 20),
            const Text("Pencegahan", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 5),
            Text(article.prevention, style: const TextStyle(fontSize: 14, height: 1.5, color: Colors.grey)),
          ],
        ),
      ),
      actions: [
        TextButton(
          child: const Text("Close", style: TextStyle(color: Colors.redAccent)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}


final List<Article> articles = [
  Article(
    imageUrl: 'images/assets/foto1artikel.jpg',
    title: 'Mengenal Manfaat Aktivitas Fisik',
    description:
        'Aktivitas fisik membantu mencegah berbagai penyakit dan meningkatkan kebugaran tubuh.',
    causes:
        '- Kurangnya aktivitas fisik dapat menyebabkan obesitas.\n- Pola hidup tidak aktif meningkatkan risiko penyakit kronis.',
    prevention:
        '- Lakukan olahraga minimal 30 menit setiap hari.\n- Hindari duduk terlalu lama.',
    manfaat:
        '- Meningkatkan kebugaran tubuh.\n- Mencegah obesitas.', // Manfaat diisi
  ),
  Article(
    imageUrl: 'images/assets/foto2artikel.jpg',
    title: 'Manfaat Bawang Dayak untuk Kesehatan',
    description:
        'Bawang Dayak memiliki khasiat luar biasa untuk meningkatkan daya tahan tubuh.',
    causes: '- Kurangnya konsumsi herbal alami memengaruhi daya tahan tubuh.',
    prevention: '- Konsumsi bawang Dayak dalam bentuk teh atau ekstrak.',
    // Tidak ada manfaat di artikel ini
  ),
  Article(
    imageUrl: 'images/assets/jantung.jpg',
    title: 'Makanan Sehat untuk Jantung',
    description:
        'Makanan sehat seperti buah dan sayur membantu menjaga kesehatan jantung.',
    causes:
        '- Pola makan tinggi lemak dan gula meningkatkan risiko penyakit jantung.',
    prevention:
        '- Konsumsi makanan rendah lemak dan tinggi serat seperti sayur dan buah.',
    // Tidak ada manfaat di artikel ini
  ),
  Article(
    imageUrl: 'images/assets/tidur.jpg',
    title: 'Pentingnya Tidur Berkualitas',
    description:
        'Tidur yang cukup dapat meningkatkan konsentrasi dan kesehatan mental.',
    causes:
        '- Kurang tidur dapat menyebabkan kelelahan dan masalah kesehatan mental.',
    prevention:
        '- Tetapkan waktu tidur yang teratur dan hindari kafein di malam hari.',
    manfaat:
        '- Meningkatkan konsentrasi.\n- Meningkatkan produktivitas.', // Manfaat diisi
  ),
  Article(
    imageUrl: 'images/assets/stres.jpg',
    title: 'Bahaya Stres Berlebihan',
    description:
        'Stres yang tidak terkelola dapat memengaruhi kesehatan secara menyeluruh.',
    causes:
        'Stres berlebihan sering dipicu oleh tekanan pekerjaan, masalah keuangan, konflik pribadi, atau trauma emosional. Faktor-faktor ini dapat memicu tubuh menghasilkan hormon stres secara berlebihan, yang berdampak pada kesehatan fisik dan mental.',
    prevention:
        'Untuk mencegah stres, penting menjaga keseimbangan hidup, melakukan aktivitas relaksasi seperti meditasi atau yoga, menjalani pola hidup sehat dengan makan bergizi, olahraga, dan tidur cukup. Jika diperlukan, berkonsultasilah dengan ahli untuk mengelola stres lebih baik.',
    // Tidak ada manfaat di artikel ini
  ),
  Article(
    imageUrl: 'images/assets/influenza.jpg',
    title: 'Gejala Penyakit Influenza yang Harus Diwaspadai',
    description:
        'Influenza merupakan infeksi virus yang menyerang sistem pernapasan, yaitu hidung, tenggorokan, dan paru-paru. Penyakit ini disebabkan oleh virus influenza tipe A, B, dan C.',
    causes:
        '- Influenza ditandai oleh gejala seperti demam tinggi, batuk kering, pilek, sakit tenggorokan, nyeri otot, sakit kepala, dan kelelahan. Pada beberapa kasus, penderita juga mengalami kedinginan, mual, atau muntah.',
    prevention:
        '- Untuk mencegah influenza, penting untuk menjaga kebersihan tangan, menghindari kontak langsung dengan orang yang terinfeksi, dan menggunakan masker di tempat ramai.',
    // Tidak ada manfaat di artikel ini
  ),
  Article(
    imageUrl: 'images/assets/diabetes.jpeg',
    title: 'Mengenal Lebih Dekat Gejala Diabetes',
    description:
        'Diabetes mellitus adalah kondisi kronis yang terjadi karena peningkatan kadar gula darah dalam tubuh disebabkan karena tubuh tidak dapat menghasilkan insulin. Insulin adalah hormon yang mengatur glukosa darah. Pada diabetes tubuh akan kesulitan untuk mendapatkan energi.',
    causes:
        '- Diabetes tipe 1 disebabkan oleh kerusakan autoimun pada sel pankreas yang menghasilkan insulin, dengan faktor genetik atau riwayat keluarga sebagai pemicu utama. Sementara itu, diabetes tipe 2 lebih sering dipengaruhi oleh gaya hidup tidak sehat, seperti pola makan tinggi gula dan lemak, kurang aktivitas fisik, obesitas, dan resistensi insulin.',
    prevention:
        '- Untuk mencegah diabetes, penting menjaga berat badan ideal, menjalani pola makan sehat dengan mengurangi gula dan karbohidrat sederhana, serta rutin berolahraga. Hindari gaya hidup sedentari, perbanyak konsumsi serat, dan lakukan pemeriksaan gula darah secara rutin, terutama jika memiliki riwayat keluarga dengan diabetes.',

    // Tidak ada manfaat di artikel ini
  ),
  Article(
    imageUrl: 'images/assets/jantung.jpg',
    title: 'Bahaya Penyakit Jantung',
    description:
        'Jantung adalah organ vital yang berfungsi untuk memompa darah ke seluruh tubuh. Jika jantung bermasalah, peredaran darah dalam tubuh bisa terganggu. Tanpa pertolongan medis yang sesuai, penyakit kardiovaskular salah satunya penyakit jantung bisa mengancam jiwa dan menyebabkan kematian.',
    causes:
        '-  Faktor utama yang meningkatkan risiko termasuk hipertensi (tekanan darah tinggi), yang dapat merusak pembuluh darah dan jantung; kolesterol tinggi, yang menyebabkan penumpukan plak di pembuluh darah; dan diabetes, yang merusak pembuluh darah serta meningkatkan risiko penyakit jantung. Kebiasaan merokok juga berperan penting, karena zat kimia dalam rokok merusak pembuluh darah, meningkatkan tekanan darah, dan mengurangi oksigen dalam darah. Selain itu, obesitas, yang meningkatkan risiko hipertensi, kolesterol tinggi, dan diabetes, serta kurangnya aktivitas fisik, juga berkontribusi besar.',
    prevention:
        '- Pencegahan penyakit jantung melibatkan perubahan gaya hidup sehat, seperti berhenti merokok, makan makanan bergizi dengan rendah lemak dan garam, serta rutin berolahraga. Mengelola stres, menjaga berat badan ideal, serta memantau dan mengontrol tekanan darah dan kadar kolesterol juga sangat penting. Jika memiliki riwayat keluarga dengan penyakit jantung, pemeriksaan rutin dan pengelolaan faktor risiko sejak dini sangat disarankan.',
    // Tidak ada manfaat di artikel ini
  ),
  Article(
    imageUrl: 'images/assets/tbc.jpeg',
    title: 'Bahaya Tuberkulosis (TBC)',
    description:
        'Tuberkulosis atau sering disingkat TB atau TBC adalah penyakit menular yang disebabkan oleh bakteri Mycobacterium tuberculosis. Penyakit ini dapat menyerang siapa saja dan organ tubuh yang diserang biasanya adalah paru-paru, tulang belakang, kulit, otak, kelenjar getah bening, dan jantung.',
    causes:
        '- Penyebab utama TBC adalah infeksi bakteri Mycobacterium tuberculosis, yang menyebar melalui udara ketika penderita batuk atau bersin. Faktor risiko yang dapat meningkatkan kemungkinan terinfeksi meliputi sistem kekebalan tubuh yang lemah, seperti pada penderita HIV/AIDS, kondisi hidup yang padat atau tidak higienis, serta paparan berkelanjutan dengan penderita TBC aktif. Kebiasaan merokok dan malnutrisi juga meningkatkan kerentanannya.',
    prevention:
        '- Untuk mencegah TBC, penting untuk menjaga kebersihan, seperti menutup mulut saat batuk atau bersin, serta menggunakan masker jika terinfeksi. Pengobatan TBC harus dilanjutkan hingga selesai untuk menghindari resistensi obat. Selain itu, vaksinasi dengan BCG (Bacillus Calmette-Guérin) dapat membantu melindungi dari infeksi TBC, terutama pada anak-anak. Menghindari paparan orang dengan TBC aktif dan menjaga kesehatan tubuh melalui pola makan sehat serta gaya hidup yang bersih juga penting dalam pencegahan.',
    // Tidak ada manfaat di artikel ini
  ),
  Article(
    imageUrl: 'images/assets/demam.jpeg',
    title: 'Bahaya Demam Berdarah',
    description:
        'Demam Berdarah (DBD) adalah penyakit yang disebabkan oleh infeksi virus Dengue yang ditularkan melalui gigitan nyamuk Aedes aegypti yang terinfeksi.',
    causes:
        '- Demam Berdarah disebabkan oleh virus Dengue yang disebarkan melalui gigitan nyamuk Aedes aegypti yang terinfeksi. Nyamuk ini berkembang biak di tempat-tempat yang tergenang air, seperti bak mandi, kaleng bekas, atau pot bunga, yang tidak terjaga kebersihannya. Infeksi terjadi ketika nyamuk menghisap darah dari orang yang terinfeksi dan kemudian menggigit orang lain, menyebarkan virus tersebut.',
    prevention:
        '- Pencegahan DBD dapat dilakukan dengan mengurangi tempat berkembang biaknya nyamuk, seperti dengan membersihkan tempat penampungan air yang tidak terpakai dan menutup rapat wadah penampung air. Penggunaan obat nyamuk, memakai pakaian tertutup, serta penggunaan kelambu atau alat pengusir nyamuk juga penting untuk mencegah gigitan nyamuk. Selain itu, jika terkena gejala DBD, segera periksakan diri ke dokter untuk mendapatkan pengobatan yang tepat dan mencegah komplikasi lebih lanjut.',
    // Tidak ada manfaat di artikel ini
  ),
  Article(
    imageUrl: 'images/assets/polio.jpeg',
    title: 'Bahaya Polio',
    description:
        'Poliomyelitis (polio) adalah penyakit virus yang sangat menular yang sebagian besar menyerang anak-anak di bawah usia 5 tahun. Virus polio memasuki tubuh melalui mulut, dalam air atau makanan yang telah terkontaminasi dengan bahan feses dari orang yang terinfeksi.',
    causes:
        '- Polio disebabkan oleh infeksi virus polio yang menyebar melalui saluran pencernaan, biasanya lewat makanan atau air yang terkontaminasi tinja dari orang yang terinfeksi. Virus ini juga dapat menular melalui percikan air liur atau lendir dari orang yang terinfeksi. Virus polio dapat masuk ke tubuh melalui mulut dan kemudian berkembang biak di saluran pencernaan, kemudian masuk ke dalam aliran darah dan menyerang sistem saraf.',
    prevention:
        '- Pencegahan polio dapat dilakukan dengan vaksinasi polio, yang efektif melindungi tubuh dari infeksi virus polio. Vaksin ini diberikan kepada anak-anak dalam beberapa dosis mulai dari usia bayi. Menjaga kebersihan lingkungan, seperti mencuci tangan dengan sabun dan air mengalir, serta memastikan air yang dikonsumsi bersih juga penting untuk mencegah penyebaran virus. Pemerintah banyak negara telah melaksanakan program vaksinasi massal untuk mengurangi penyebaran polio dan bahkan beberapa negara telah berhasil memberantasnya.',
    // Tidak ada manfaat di artikel ini
  ),
  // Artikel lainnya...
];

class Article {
  final String imageUrl;
  final String title;
  final String description;
  final String causes;
  final String prevention;
  final String? manfaat;

  Article({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.causes,
    required this.prevention,
    this.manfaat,
  });
}
