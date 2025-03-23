import 'package:flutter/material.dart';

class OlahragaPage extends StatelessWidget {
  // List of exercises with their details categorized by level
  final Map<String, List<Map<String, dynamic>>> exercises = {
    "Pemula": [
      {
        "title": "Otot Perut Pemula",
        "time": "20 MENIT",
        "exercises": "14 LATIHAN",
        "image": 'images/olahraga/otot_perut.jpg',
        "description": "PEMULA",
        "exerciseList": [
          {
            "name": "Loncat Bintang",
            "image": 'images/olahraga/loncat-bintang.jpg',
            "count": "00.20 DETIK",
          },
          {
            "name": "Crunch Perut",
            "image": 'images/olahraga/crunch.jpeg',
            "count": "x16",
          },
          {
            "name": "Puntir Rusia",
            "image": 'images/olahraga/puntir-rusia.jpg',
            "count": "x20",
          },
          {
            "name": "Pendaki Gunung",
            "image": 'images/olahraga/pendaki-gunung.jpg',
            "count": "x16",
          },
          {
            "name": "Sentuh Tumit",
            "image": 'images/olahraga/sentuh-tumit.jpg',
            "count": "x20",
          },
          {
            "name": "Angkat Kaki",
            "image": 'images/olahraga/angkat-kaki.jpg',
            "count": "x16",
          },
          {
            "name": "Plank",
            "image": 'images/olahraga/plank.jpg',
            "count": "00.20 DETIK",
          },
          {
            "name": "Crunch Perut",
            "image": 'images/olahraga/crunch.jpeg',
            "count": "x12",
          },
          {
            "name": "Puntir Rusia",
            "image": 'images/olahraga/puntir-rusia.jpg',
            "count": "x32",
          },
          {
            "name": "Pendaki Gunung",
            "image": 'images/olahraga/pendaki-gunung.jpg',
            "count": "x12",
          },
          {
            "name": "Sentuh Tumit",
            "image": 'images/olahraga/sentuh-tumit.jpg',
            "count": "x20",
          },
          {
            "name": "Angkat Kaki",
            "image": 'images/olahraga/angkat-kaki.jpg',
            "count": "x14",
          },
          {
            "name": "Plank",
            "image": 'images/olahraga/plank.jpg',
            "count": "00.30 DETIK",
          },
          {
            "name": "Peregangan Kobra",
            "image": 'images/olahraga/peregeangan-kobra.jpg',
            "count": "00.30 DETIK",
          },
        ],
      },
      {
        "title": "Dada Pemula",
        "time": "7 MENIT",
        "exercises": "9 LATIHAN",
        "image": 'images/olahraga/dada.jpeg',
        "description": "PEMULA",
        "exerciseList": [
          {
            "name": "Loncat Bintang",
            "image": 'images/olahraga/loncat-bintang.jpg',
            "count": "00.30 DETIK",
          },
          {
            "name": "Push Up Tangan Diatas Bangku",
            "image": 'images/olahraga/pushup-bangku.png',
            "count": "x6",
          },
          {
            "name": "Push-up",
            "image": 'images/olahraga/pushup.jpg',
            "count": "x4",
          },
          {
            "name": "Push Up Tangan Melebar",
            "image": 'images/olahraga/pushup-melebar.jpg',
            "count": "x4",
          },
          {
            "name": "Tricip Dip",
            "image": 'images/olahraga/tricipdip.jpg',
            "count": "x4",
          },
          {
            "name": "Push Up Tangan Melebar",
            "image": 'images/olahraga/pushup-melebar.jpg',
            "count": "x4",
          },
          {
            "name": "Push Up Tangan Diatas Bangku",
            "image": 'images/olahraga/pushup-bangku.png',
            "count": "x4",
          },
          {
            "name": "Tricip Dip",
            "image": 'images/olahraga/tricipdip.jpg',
            "count": "x4",
          },
          {
            "name": "Peregangan Kobra",
            "image": 'images/olahraga/peregeangan-kobra.jpg',
            "count": "00.20 DETIK",
          },
        ],
      },
      {
        "title": "Lengan Pemula",
        "time": "15 MENIT",
        "exercises": "13 LATIHAN",
        "image": 'images/olahraga/lengan.jpg',
        "description": "PEMULA",
        "exerciseList": [
          {
            "name": "Angkat Lengan Ke Samping",
            "image": 'images/olahraga/angkatlengansamping.jpg',
            "count": "00.30 DETIK",
          },
          {
            "name": "Tricip Dip",
            "image": 'images/olahraga/tricipdip.jpg',
            "count": "x4",
          },
          {
            "name": "Push Up Berlian",
            "image": 'images/olahraga/pushup-berlian.jpg',
            "count": "x4",
          },
          {
            "name": "Loncat Bintang",
            "image": 'images/olahraga/loncat-bintang.jpg',
            "count": "00.30 DETIK",
          },
          {
            "name": "Diagonal Plank",
            "image": 'images/olahraga/diagonalplank.jpg',
            "count": "x10",
          },
          {
            "name": "Meninju",
            "image": 'images/olahraga/meninju.jpg',
            "count": "00.30 DETIK",
          },
          {
            "name": "Push-up",
            "image": 'images/olahraga/pushup.jpg',
            "count": "x4",
          },
          {
            "name": "Inchworms",
            "image": 'images/olahraga/inchworms.jpg',
            "count": "x8",
          },
          {
            "name": "Push Up Dinding",
            "image": 'images/olahraga/pushup-dinding.jpeg',
            "count": "x12",
          },
          {
            "name": "Peregangan Trisep Kiri",
            "image": 'images/olahraga/Peregengantrisep-kiri.jpg',
            "count": "00.30 DETIK",
          },
          {
            "name": "Peregangan Trisep Kanan",
            "image": 'images/olahraga/Peregengantrisep-kiri.jpg',
            "count": "00.30 DETIK",
          },
          {
            "name": "Peregangan Bisep Berdiri Kiri",
            "image": 'images/olahraga/bisepkiri.jpeg',
            "count": "00.30 DETIK",
          },
          {
            "name": "Peregangan Bisep Berdiri Kanan",
            "image": 'images/olahraga/bisepkanan.jpg',
            "count": "00.30 DETIK",
          },
        ],
      },
      {
        "title": "Kaki Pemula",
        "time": "13 MENIT",
        "exercises": "11 LATIHAN",
        "image": 'images/olahraga/kaki.jpeg',
        "description": "PEMULA",
        "exerciseList": [
          {
            "name": "Squat",
            "image": 'images/olahraga/squat.jpg',
            "count": "x24",
          },
          {
            "name": "Angkat Kaki Sambil Berbaring Menyamping kiri",
            "image": 'images/olahraga/angkatkaki-kiri.jpg',
            "count": "x24",
          },
          {
            "name": "Angkat Kaki Sambil Berbaring Menyamping kanan",
            "image": 'images/olahraga/angkatkaki-kanan.png',
            "count": "x24",
          },
          {
            "name": "Tendangan Keledai Kiri",
            "image": 'images/olahraga/tendangankeledaikiri.jpg',
            "count": "x32",
          },
          {
            "name": "Tendangan Keledai Kanan",
            "image": 'images/olahraga/tendangankeledaikiri.jpg',
            "count": "x32",
          },
          {
            "name": "Peregangan Kuadrisep Kiri Ditembok",
            "image": 'images/olahraga/kuadrisep-kiri.jpg',
            "count": "00.30 DETIK",
          },
          {
            "name": "Peregangan Kuadrisep Kanan Ditembok",
            "image": 'images/olahraga/kuadrisep-kanan.png',
            "count": "00.30 DETIK",
          },
          {
            "name": "Angkat Betis Menghadap Tembok",
            "image": 'images/olahraga/betistembok.jpg',
            "count": "x24",
          },
          {
            "name": "Jongkok Sumo",
            "image": 'images/olahraga/jongkoksumo.png',
            "count": "x24",
          },
          {
            "name": "Peregangan Betis Kiri",
            "image": 'images/olahraga/Betis.jpg',
            "count": "00.30 DETIK",
          },
          {
            "name": "Peregangan Betis Kanan",
            "image": 'images/olahraga/Betis.jpg',
            "count": "00.30 DETIK",
          },
        ],
      },
    ],
    "Menengah": [
      {
        "title": "Otot Perut Menangah",
        "time": "17 MENIT",
        "exercises": "12 LATIHAN",
        "image": 'images/olahraga/otot_perut_menengah.jpg',
        "description": "MENENGAH",
        "exerciseList": [
          {
            "name": "Loncat Bintang",
            "image": 'images/olahraga/loncat-bintang.jpg',
            "count": "00.30 DETIK",
          },
          {
            "name": "Sentuh Tumit",
            "image": 'images/olahraga/sentuh-tumit.jpg',
            "count": "x52",
          },
          {
            "name": "Situp Silang",
            "image": 'images/olahraga/situp_silang.jpg',
            "count": "x40",
          },
          {
            "name": "Pendaki Gunung",
            "image": 'images/olahraga/pendaki-gunung.jpg',
            "count": "x20",
          },
          {
            "name": "Jembatan Bokong",
            "image": 'images/olahraga/jembatan_bokong.jpg',
            "count": "x52",
          },
          {
            "name": "Crunch Perut",
            "image": 'images/olahraga/crunch.jpeg',
            "count": "x20",
          },
          {
            "name": "Sentuh Tumit",
            "image": 'images/olahraga/sentuh-tumit.jpg',
            "count": "x26",
          },
          {
            "name": "Plank",
            "image": 'images/olahraga/plank.jpg',
            "count": "00.30 DETIK",
          },
          {
            "name": "Angkat Kaki",
            "image": 'images/olahraga/angkat-kaki.jpg',
            "count": "x16",
          },
          {
            "name": "Kiri Plank Sisi",
            "image": 'images/olahraga/planksisi.jpg',
            "count": "00.20 DETIK",
          },
          {
            "name": "Kanan Plank Sisi",
            "image": 'images/olahraga/planksisi.jpg',
            "count": "00.20 DETIK",
          },
          {
            "name": "Peregangan Kobra",
            "image": 'images/olahraga/peregeangan-kobra.jpg',
            "count": "00.30 DETIK",
          },
        ],
      },
      {
        "title": "Dada Menengah",
        "time": "10 MENIT",
        "exercises": "8 LATIHAN",
        "image": 'images/olahraga/dada_menengah.jpg',
        "description": "MENENGAH",
        "exerciseList": [
          {
            "name": "Loncat Bintang",
            "image": 'images/olahraga/loncat-bintang.jpg',
            "count": "00.30 DETIK",
          },
          {
            "name": "Push Up Lutut",
            "image": 'images/olahraga/pushup-lutut.jpg',
            "count": "x22",
          },
          {
            "name": "Push-up",
            "image": 'images/olahraga/pushup.jpg',
            "count": "x12",
          },
          {
            "name": "Push Up Tangan Melebar",
            "image": 'images/olahraga/pushup-melebar.jpg',
            "count": "x16",
          },
          {
            "name": "Push Up Hindu",
            "image": 'images/olahraga/pushup-hindu.png',
            "count": "x20",
          },
          {
            "name": "Push Up Kaki Diatas Bangku",
            "image": 'images/olahraga/push-kakibangku.jpg',
            "count": "x12",
          },
          {
            "name": "Peregangan Bahu",
            "image": 'images/olahraga/pereangan-bahu.png',
            "count": "00.30 DETIK",
          },
          {
            "name": "Peregangan Kobra",
            "image": 'images/olahraga/peregeangan-kobra.jpg',
            "count": "00.30 DETIK",
          },
        ],
      },
      {
        "title": "Lengan Menengah",
        "time": "11 MENIT",
        "exercises": "9 LATIHAN",
        "image": 'images/olahraga/lengan_menengah.jpeg',
        "description": "MENENGAH",
        "exerciseList": [
          {
            "name": "Putar Lengan Searah Jarum Jam",
            "image": 'images/olahraga/putarsearahjarumjam.jpg',
            "count": "00.30 DETIK",
          },
          {
            "name": "Putar Lengan Berlawanan Jarum Jam",
            "image": 'images/olahraga/putarsearahjarumjam.jpg',
            "count": "00.30 DETIK",
          },
          {
            "name": "Pushup Militer",
            "image": 'images/olahraga/pushup-milter.jpeg',
            "count": "x22",
          },
          {
            "name": "Push-up",
            "image": 'images/olahraga/pushup.jpg',
            "count": "x26",
          },
          {
            "name": "Burpee",
            "image": 'images/olahraga/burpee.jpg',
            "count": "x18",
          },
          {
            "name": "Peregangan Trisep Kiri",
            "image": 'images/olahraga/Peregengantrisep-kiri.jpg',
            "count": "00.30 DETIK",
          },
          {
            "name": "Peregangan Trisep Kanan",
            "image": 'images/olahraga/Peregengantrisep-kiri.jpg',
            "count": "00.30 DETIK",
          },
          {
            "name": "Peregangan Bisep Berdiri Kiri",
            "image": 'images/olahraga/bisepkiri.jpeg',
            "count": "00.30 DETIK",
          },
          {
            "name": "Peregangan Bisep Berdiri Kanan",
            "image": 'images/olahraga/bisepkanan.jpg',
            "count": "00.30 DETIK",
          },
        ],
      },
      {
        "title": "Kaki Menengah",
        "time": "16 MENIT",
        "exercises": "12 LATIHAN",
        "image": 'images/olahraga/kaki_menengah.jpeg',
        "description": "MENENGAH",
        "exerciseList": [
          {
            "name": "Loncat Bintang",
            "image": 'images/olahraga/loncat-bintang.jpg',
            "count": "00.30 DETIK",
          },
          {
            "name": "Squat",
            "image": 'images/olahraga/squat.jpg',
            "count": "x36",
          },
          {
            "name": "Fire Hydrant Kiri",
            "image": 'images/olahraga/fire-hydrant.jpg',
            "count": "x36",
          },
          {
            "name": "Fire Hydrant Kanan",
            "image": 'images/olahraga/fire-hydrant.jpg',
            "count": "x36",
          },
          {
            "name": "Lunge",
            "image": 'images/olahraga/lunge.jpg',
            "count": "x28",
          },
          {
            "name": "Peregangan Kuadrisep Kiri Ditembok",
            "image": 'images/olahraga/kuadrisep-kiri.jpg',
            "count": "00.30 DETIK",
          },
          {
            "name": "Jongkok Sumo ",
            "image": 'images/olahraga/jongkoksumo.png',
            "count": "x24",
          },
          {
            "name": "Duduk Didinding",
            "image": 'images/olahraga/jongkoksumo.png',
            "count": "00.30 DETIK",
          },
          {
            "name": "Peregangan Kuadrisep Kanan Ditembok",
            "image": 'images/olahraga/kuadrisep-kanan.png',
            "count": "00.30 DETIK",
          },
          {
            "name": "Angkat Betis Menghadap Tembok",
            "image": 'images/olahraga/betistembok.jpg',
            "count": "x36",
          },
          {
            "name": "Peregangan Betis Kiri",
            "image": 'images/olahraga/Betis.jpg',
            "count": "00.30 DETIK",
          },
          {
            "name": "Peregangan Betis Kanan",
            "image": 'images/olahraga/Betis.jpg',
            "count": "00.30 DETIK",
          },
        ],
      },
    ],
    "Lanjutan": [
      {
        "title": "Otot Perut Lanjutan",
        "time": "20 MENIT",
        "exercises": "10 LATIHAN",
        "image": 'images/olahraga/otot_perut_lanjutan.jpeg',
        "description": "LANJUTAN",
        "exerciseList": [
          {
            "name": "Loncat Bintang",
            "image": 'images/olahraga/loncat-bintang.jpg',
            "count": "00.30 DETIK",
          },
          {
            "name": "Situp",
            "image": 'images/olahraga/situp.jpg',
            "count": "x20",
          },
          {
            "name": "Crunch Perut",
            "image": 'images/olahraga/crunch.jpeg',
            "count": "x60",
          },
          {
            "name": "Kiri Plank Sisi",
            "image": 'images/olahraga/planksisi.jpg',
            "count": "00.20 DETIK",
          },
          {
            "name": "Kiri Plank Sisi",
            "image": 'images/olahraga/planksisi.jpg',
            "count": "00.20 DETIK",
          },
          {
            "name": "Puntir Rusia",
            "image": 'images/olahraga/puntir-rusia.jpg',
            "count": "x50",
          },
          {
            "name": "Pendaki Gunung",
            "image": 'images/olahraga/pendaki-gunung.jpg',
            "count": "x30",
          },
          {
            "name": "Jembatan Bokong",
            "image": 'images/olahraga/jembatan_bokong.jpg',
            "count": "x52",
          },
          {
            "name": "Plank",
            "image": 'images/olahraga/plank.jpg',
            "count": "00.30 DETIK",
          },
          {
            "name": "Peregangan Kobra",
            "image": 'images/olahraga/peregeangan-kobra.jpg',
            "count": "00.30 DETIK",
          },
        ],
      },
      {
        "title": "Dada Lanjutan",
        "time": "12 MENIT",
        "exercises": "9 LATIHAN",
        "image": 'images/olahraga/dada_lajutan.jpg',
        "description": "LANJUTAN",
        "exerciseList": [
          {
            "name": "Loncat Bintang",
            "image": 'images/olahraga/loncat-bintang.jpg',
            "count": "00.30 DETIK",
          },
          {
            "name": "Burpee",
            "image": 'images/olahraga/burpee.jpg',
            "count": "x20",
          },
          {
            "name": "Push-up",
            "image": 'images/olahraga/pushup.jpg',
            "count": "x20",
          },
          {
            "name": "Push Up Hindu",
            "image": 'images/olahraga/pushup-hindu.png',
            "count": "x30",
          },
          {
            "name": "Push Up Berlian",
            "image": 'images/olahraga/pushup-berlian.jpg',
            "count": "x16",
          },
          {
            "name": "Push Up Spiderman",
            "image": 'images/olahraga/pushup-spiderman.jpg',
            "count": "x20",
          },
          {
            "name": "Push Up Kaki Diatas Bangku",
            "image": 'images/olahraga/push-kakibangku.jpg',
            "count": "x12",
          },
          {
            "name": "Peregangan Bahu",
            "image": 'images/olahraga/pereangan-bahu.png',
            "count": "00.60 DETIK",
          },
          {
            "name": "Peregangan Kobra",
            "image": 'images/olahraga/peregeangan-kobra.jpg',
            "count": "00.30 DETIK",
          },
        ],
      },
      {
        "title": "Lengan Lanjutan",
        "time": "15 MENIT",
        "exercises": "9 LATIHAN",
        "image": 'images/olahraga/lengan_lanjutan.jpeg',
        "description": "LANJUTAN",
        "exerciseList": [
          {
            "name": "Putar Lengan Searah Jarum Jam",
            "image": 'images/olahraga/putarsearahjarumjam.jpg',
            "count": "00.30 DETIK",
          },
          {
            "name": "Putar Lengan Berlawanan Jarum Jam",
            "image": 'images/olahraga/putarsearahjarumjam.jpg',
            "count": "00.30 DETIK",
          },
          {
            "name": "Pushup Militer",
            "image": 'images/olahraga/pushup-milter.jpeg',
            "count": "x22",
          },
          {
            "name": "Push-up",
            "image": 'images/olahraga/pushup.jpg',
            "count": "x26",
          },
          {
            "name": "Burpee",
            "image": 'images/olahraga/burpee.jpg',
            "count": "x32",
          },
          {
            "name": "Peregangan Trisep Kiri",
            "image": 'images/olahraga/Peregengantrisep-kiri.jpg',
            "count": "00.30 DETIK",
          },
          {
            "name": "Peregangan Trisep Kanan",
            "image": 'images/olahraga/Peregengantrisep-kiri.jpg',
            "count": "00.30 DETIK",
          },
          {
            "name": "Peregangan Bisep Berdiri Kiri",
            "image": 'images/olahraga/bisepkiri.jpeg',
            "count": "00.30 DETIK",
          },
          {
            "name": "Peregangan Bisep Berdiri Kanan",
            "image": 'images/olahraga/bisepkanan.jpg',
            "count": "00.30 DETIK",
          },
        ],
      },
      {
        "title": "Kaki Lanjutan",
        "time": "17 MENIT",
        "exercises": "13 LATIHAN",
        "image": 'images/olahraga/kaki_lanjutan.jpeg',
        "description": "LANJUTAN",
        "exerciseList": [
          {
            "name": "Burpee",
            "image": 'images/olahraga/burpee.jpg',
            "count": "x10",
          },
          {
            "name": "Squat",
            "image": 'images/olahraga/squat.jpg',
            "count": "x38",
          },
          {
            "name": "Angkat Kaki Sambil Berbaring Menyamping kiri",
            "image": 'images/olahraga/angkatkaki-kiri.jpg',
            "count": "x24",
          },
          {
            "name": "Angkat Kaki Sambil Berbaring Menyamping kanan",
            "image": 'images/olahraga/angkatkaki-kanan.png',
            "count": "x24",
          },
          {
            "name": "Duduk Didinding",
            "image": 'images/olahraga/jongkoksumo.png',
            "count": "00.40 DETIK",
          },
          {
            "name": "Lompat Jongkok",
            "image": 'images/olahraga/lompat-jongkok.jpg',
            "count": "x38",
          },
          {
            "name": "Tendangan Keledai Kiri",
            "image": 'images/olahraga/tendangankeledaikiri.jpg',
            "count": "x32",
          },
          {
            "name": "Tendangan Keledai Kanan",
            "image": 'images/olahraga/tendangankeledaikiri.jpg',
            "count": "x32",
          },
          {
            "name": "Peregangan Kuadrisep Kiri Ditembok",
            "image": 'images/olahraga/kuadrisep-kiri.jpg',
            "count": "00.30 DETIK",
          },
          {
            "name": "Peregangan Kuadrisep Kanan Ditembok",
            "image": 'images/olahraga/kuadrisep-kanan.png',
            "count": "00.30 DETIK",
          },
          {
            "name": "Angkat Betis Menghadap Tembok",
            "image": 'images/olahraga/betistembok.jpg',
            "count": "x24",
          },
          {
            "name": "Peregangan Betis Kiri",
            "image": 'images/olahraga/Betis.jpg',
            "count": "00.30 DETIK",
          },
          {
            "name": "Peregangan Betis Kanan",
            "image": 'images/olahraga/Betis.jpg',
            "count": "00.30 DETIK",
          },
        ],
      },
    ],
  };

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Olahraga", style: TextStyle(color: Colors.white)),
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
      body: ListView(
        padding: EdgeInsets.all(12),
        children: exercises.entries.map((entry) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                margin: EdgeInsets.only(top: 10, bottom: 5),
                decoration: BoxDecoration(
                  color: Colors.orangeAccent.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  entry.key,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.redAccent),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: entry.value.length,
                itemBuilder: (context, index) {
                  final exercise = entry.value[index];
                  return GestureDetector(
                    onTap: () => _showExerciseDialog(context, exercise),
                    child: Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.horizontal(left: Radius.circular(12)),
                            child: Image.asset(
                              exercise['image'],
                              fit: BoxFit.cover,
                              width: 100,
                              height: 100,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    exercise['title'],
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5),
                                  Text("${exercise['time']} • ${exercise['exercises']}", style: TextStyle(color: Colors.grey[700])),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          );
        }).toList(),
      ),
    );
  }

  void _showExerciseDialog(BuildContext context, Map<String, dynamic> exercise) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(exercise['title']),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(exercise['image'], fit: BoxFit.cover),
                ),
                SizedBox(height: 10),
                Text("Waktu: ${exercise['time']}", style: TextStyle(fontWeight: FontWeight.bold)),
                Text("Latihan: ${exercise['exercises']}", style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text(exercise['description']),
                SizedBox(height: 10),
                Text("Latihan Detail:", style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 5),
                Column(
                  children: exercise['exerciseList'].map<Widget>((ex) {
                    return ListTile(
                      leading: Image.asset(ex['image'], width: 50, height: 50),
                      title: Text(ex['name'], style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text(ex['count']),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Tutup", style: TextStyle(color: Colors.redAccent)),
            ),
          ],
        );
      },
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: OlahragaPage(),
  ));
}
