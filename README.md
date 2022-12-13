# **Modul2_Probstat_5025211188**
Repository untuk pengerjaan Praktikum Modul 2 Probabilitas dan Statistika

## **Identitas**

| Nama                     | NRP        | Kelas                         |
| -------------------------| -----------| ------------------------------|
| Akmal Ariq Romadhon      | 5025211188 | Probabilitas dan Statistika A |

## **Soal Nomor 1**
Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴

| Responden   | X        | Y        |
|-------------|----------|----------|
| 1           | 78       | 100      |
| 2           | 75       | 95       |
| 3           | 67       | 70       | 
| 4           | 77       | 90       |
| 5           | 70       | 90       |
| 6           | 72       | 90       |
| 7           | 78       | 89       |
| 8           | 74       | 90       |
| 9           | 77       | 100      |

Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen  dari responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah melakukan aktivitas 𝐴 sebanyak 70.

- **Soal 1A :** <br> 
Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas

**Penyelesaian Soal 1A :**\
Dalam menyelesaikan soal 1A, diperlukan variabel baru `diff` yang berisi data dari pengurangan masing - masing x dan y. Kemudian untuk menghitung standar deviasi, digunakan fungsi `sd` dengan parameter `diff`. Setelah dilakukan proses perhitungan, didapatkan hasil **6.359595**. Berikut merupakan code yang digunakan untuk mengerjakan soal 1A.

```R
x <- c(78, 75, 67, 77, 70, 72, 78, 74, 77) ##before
y <- c(100, 95, 70, 90, 90, 90, 89, 90, 100) ##after

diff <- y - x
sd(diff)
```

Berikut merupakan hasil pengerjaan soal 1A menggunakan RStudio.

![1a](https://user-images.githubusercontent.com/109916703/207222164-bb7d11ab-82ca-4ccd-a359-8c52904b391d.png)

- **Soal 1B :** <br>
Carilah nilai t (p-value)

**Penyelesaian Soal 1B :**\
Soal 1B dapat diselesaikan menggunakan fungsi `t.test` dengan parameter x dan y, yang merupakan kumpulan data saturasi oksigen sesudah responden dan sebelum responden melakukan aktivitas. nilai `paired` dirubah menjadi `true` dikarenakan data yang ditunjukkan merupakan pasangan antara satu sama lain. Setelah dilakukan proses perhitungan, diperoleh nilai **6.003e-05** atau **0.00006003**. Berikut merupakan code yang digunakan untuk mengerjakan soal 1B.

```R
x <- c(78, 75, 67, 77, 70, 72, 78, 74, 77) ##before
y <- c(100, 95, 70, 90, 90, 90, 89, 90, 100) ##after

t.test(x, y, paired = TRUE)
```

Berikut merupakan hasil pengerjaan soal 1B menggunakan RStudio.

![1b](https://user-images.githubusercontent.com/109916703/207222315-64996900-0d98-4765-94e2-020e2634a75b.png)

- **Soal 1C :** <br>
Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta $h_0$ : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas 𝐴
  
**Penyelesaian Soal 1C :**\
Berdasarkan hasil dari soal 1B, diketahui bahwa nilai probabilitas dari uji t(p-value) adalah **0.00006003**. nilai tersebut jauh lebih kecil apabila dibandingkan dengan tingkat signifikansi 𝛼 = 0.05. Oleh karena itu, dapat diambil kesimpulan bahwa **$h_0$ ditolak** dan **$h_1$ diterima**, atau dengan kata lain terdapat pengaruh secara statistika dalam kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas A. <br>

## **Soal Nomor 2**
Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan library seperti referensi pada modul). 

- **Soal 2A :** <br> 
Apakah Anda setuju dengan klaim tersebut?

**Penyelesaian Soal 2A :**\
Sebelum melakukan pengujian secara statistik, saya setuju dengan klaim tersebut. Hal itu disebabkan karena sampel acak menunjukkan rata-rata **23500** kilometer, dengan standar deviasi **3900** kilometer sehingga membuat klaim yang diberikan berpeluang besar bernilai benar. Kemudian, perlu dilakukan perhitungan secara statistika untuk melihat kebenaran dari klaim tersebut. Dalam melakukan perhitungan, digunakan fungsi `zsum.test` dengan `rata-rata`, `standar deviasi`, dan `jumlah sampel acak` sebagai parameternya. Berikut merupakan code yang digunakan untuk membuktikan soal nomor 2A.

```R
install.packages("BSDA")
library(BSDA)

zsum.test(mean.x = 23500, sigma.x = 3900, n.x = 100, mu = 20000, alternative = "greater")
```
Setelah dilakukan perhitungan, ternyata hasil yang didapatkan mendukung klaim dari soal nomor 2. Berikut merupakan hasil pembuktian soal 2A menggunakan RStudio.

![2a](https://user-images.githubusercontent.com/109916703/207228435-77572aeb-422d-4148-a8f6-6db225714482.png)

- **Soal 2B :** <br>
Jelaskan maksud dari output yang dihasilkan! 

**Penyelesaian Soal 2B :**\
Dari perhitungan yang dilakukan, didapatkan 2 nilai, yaitu `z-score = 8.9744` dan `p-value = 2.2e-16`. Dari hal tersebut, terlihat bahwa **nilai z lebih besar dibanding nilai kritikal**. Kemudian juga terlihat bahwa **p-value yang didapatkan kurang dari tingkat signifikansi 𝛼 = 0.05.** 

- **Soal 2C :** <br>
Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!
  
**Penyelesaian Soal 2C :**\
P-value yang diperoleh dari perhitungan memiliki nilai kurang dari tingkat signifikansi 𝛼=0.05. Oleh karena itu **$h_0$ ditolak** dan **$h_1$ diterima**, atau dengan kata lain **terdapat cukup bukti untuk membuktikan klaim bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun.** <br>

## **Soal Nomor 3**
