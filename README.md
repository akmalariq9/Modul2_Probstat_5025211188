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
Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta $H_0$ : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas 𝐴
  
**Penyelesaian Soal 1C :**\
Berdasarkan hasil dari soal 1B, diketahui bahwa nilai probabilitas dari uji t(p-value) adalah **0.00006003**. nilai tersebut jauh lebih kecil apabila dibandingkan dengan tingkat signifikansi 𝛼 = 0.05. Oleh karena itu, dapat diambil kesimpulan bahwa **$H_0$ ditolak** dan **$H_1$ diterima**, atau dengan kata lain terdapat pengaruh secara statistika dalam kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas A. <br>

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
P-value yang diperoleh dari perhitungan memiliki nilai kurang dari tingkat signifikansi 𝛼 = 0.05. Oleh karena itu **$h_0$ ditolak** dan **$h_1$ diterima**, atau dengan kata lain **terdapat cukup bukti untuk membuktikan klaim bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun.** <br>

## **Soal Nomor 3**
 Diketahui perusahaan memiliki seorang data analyst ingin memecahkan permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya didapatkanlah data berikut dari perusahaan saham tersebut.
| Nama Kota/Atribut         | Bandung     | Bali     |
|---------------------------|-------------|----------|
| Jumlah Saham              | 19          | 27       |
| Sampel Mean               | 3.64        | 2.79     |
| Sampel Standar Deviasi    | 1.67        | 1.32     |

Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada rata-ratanya (α= 0.05)?

- **Soal 3A :** <br> 
$H_0$ dan $H_1$ 

**Penyelesaian Soal 3A :**\
H0  : μ1 = μ2 <br>
H1  : μ1 ≠ μ2

- **Soal 3B :** <br>
Hitung Sampel Statistik!

**Penyelesaian Soal 3B :**\
Dalam menghitung sampel statistik, dapat digunakan fungsi `tsum.test` dengan `jumlah, mean, dan standar deviasi` dari masing=masing variabel sebagai parameter. Alternative yang digunakan ialah `two.sided` karena μ1 ≠ μ2 atau two tail test. Berikut merupakan code yang digunakan untuk mengerjakan soal 3B.
```R
tsum.test(mean.x = 3.64, s.x = 1.67, n.x = 19, mean.y = 2.79, s.y = 1.32, 
        n.y = 27, alternative = "two.sided", var.equal = TRUE)
```
Berikut merupakan hasil pengerjaan soal 3B menggunakan RStudio.

![3B](https://user-images.githubusercontent.com/109916703/207251620-09d17ff9-2394-4928-90cd-811ce9d2b18a.png)

- **Soal 3C :** <br>
Lakukan Uji Statistik! (_df_ = 2)

**Penyelesaian Soal 3C :**\
Menggunakan perhitungan dari soal 2B, telah didapatkan **nilai t** adalah **1.9267** dan **p-value** adalah **0.06049**.

- **Soal 3D :** <br>
Dapatkan Nilai Kritikal

**Penyelesaian Soal 3D :**\
Dalam menghitung nilai kritikal, dapat digunakan fungsi `qt` dengan `0.025, 2` sebagai parameter. Nilai tersebut diperoleh dari 𝛼 / 2 karena merupakan `two tail` dan df = 2 berasal dari perintah pada soal. Berikut merupakan code yang digunakan untuk mengerjakan soal 3B.
```R
qt(p = 0.025, df = 2, lower.tail = TRUE)
qt(p = 0.025, df = 2, lower.tail = FALSE)
```
Setelah dilakukan perhitungan, didapatkan nilai **-4.302653** dan **4.302653** sebagai nilai kritikal. Berikut merupakan hasil pengerjaan soal 3D menggunakan RStudio.

![3D](https://user-images.githubusercontent.com/109916703/207251772-8ba33c4a-94d3-4064-992b-d7365ff82291.png)

- **Soal 3E :** <br>
Keputusan yang didapat?

**Penyelesaian Soal 3E :**\
Karena p-value yang didapat, yaitu **0.06049** lebih besar dari nilai 𝛼, maka $H_0$ **diterima**.

- **Soal 3F :** <br>
Keputusan yang didapat?

**Penyelesaian Soal 3F :**\
Karena $H_0$ **diterima**, maka dapat disimpulkan bahwa tidak ada bukti yang cukup kuat bahwa terdapat perbedaan antara rata-rata saham di Bandung dengan rata-rata saham di Bali.

## **Soal Nomor 4**
Seorang Peneliti sedang meneliti spesies dari kucing di ITS . Dalam penelitiannya ia mengumpulkan data  tiga spesies kucing yaitu kucing oren, kucing hitam dan kucing putih dengan panjangnya masing-masing. 
Jika : 

diketahui dataset  https://intip.in/datasetprobstat1 <br>
$H_0$ : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya sama    

- **Soal 4A :** <br> 
Buatlah masing masing jenis spesies menjadi  3 subjek "Grup" (grup 1,grup 2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan lihat apakah ada outlier utama dalam homogenitas varians.

**Penyelesaian Soal 4A :**\
Karena _dataset_ yang digunakan berasal dari _website_, maka sebelum melakukan perhitungan harus _import dataset_ terbebih dahulu. Berikut merupakan code yang digunakan dalam proses _import dataset_

```r
KucingITS <- read.table("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt", header = TRUE)
```
Kedua, proses dilanjutkan ke _grouping_ sesuai dengan label yang telah ditentukan pada soal sekaligus melakukan pengecekan value dalam grup tersebut. Berikut merupakan code yang digunakan dalam proses _grouping_

```r
KucingITS$Group <- as.factor(KucingITS$Group)
KucingITS$Group <- factor(KucingITS$Group, labels = c("Kucing Oren", "Kucing Hitam", "Kucing Putih"))

Group1 <- subset(KucingITS, Group == "Oren")
Group2 <- subset(KucingITS, Group == "Hitam")
Group3 <- subset(KucingITS, Group == "Putih")
```

Kemudian, proses dilanjutkan dengan visuasilasi plot kuantil normal untuk setiap grup. Tujuan adanya visualisasi adalah untuk melihat distribusi data dan _outlier_ utama dalam homogenitas varians pada masing-masing grup sesuai perintah soal. Berikut adalah code yang digunakan untuk menampilkan distribusi data.
```r
qqnorm(Group1$Length, col = "orange")
qqline(Group1$Length, col = "orange")

qqnorm(Group2$Length, col = "black")
qqline(Group2$Length, col = "black")

qqnorm(Group3$Length, col = "red")
qqline(Group3$Length, col = "red")
```
Setelah code tersebut dijalankan, maka didapatkan ketiga plot sebagai berikut. <br>
![4A-1](https://user-images.githubusercontent.com/109916703/207283382-f3cbbb04-b7b8-473f-886a-5884ee267e38.png) <br>
![4A-2](https://user-images.githubusercontent.com/109916703/207283439-ea72f5d9-1bdb-4fee-bea1-f302c2e1da45.png) <br>
![4A-3](https://user-images.githubusercontent.com/109916703/207283517-b492dfd3-a1d4-4036-96d1-4868c9bd9125.png)

- **Soal 4B :** <br>
Carilah atau periksalah _Homogeneity of variances_ nya, berapa nilai p yang didapatkan? Apa hipotesis dan kesimpulan yang dapat diambil?

**Penyelesaian Soal 4B :**\
Dalam menghitung Homogeneity of variances, digunakan fungsi `bartlett.test()` dengan panjang dari datanya sebagai parameter. Setelah dilakukan perhitungan, didapatkan p-value sebesar 0.8054 dan **lebih dari** nilai 𝛼 = 0.05 sehingga asumsi kesamaan varians terpenuhi. Berikut adalah code yang digunakan dalam proses perhitungan.
```R
bartlett.test(Length ~ Group, data = KucingITS)
```
Berikut merupakan hasil pengerjaan soal 4B menggunakan RStudio.

![4B](https://user-images.githubusercontent.com/109916703/207294929-c2ab1c0b-1d1c-4055-bdf6-0da19284579f.png)

- **Soal 4C :** <br>
Untuk uji Anova, buatlah model linier dengan Panjang versus Grup dan beri nama model tersebut model 1.

**Penyelesaian Soal 4C :**\
Untuk pengujian Anova, digunakan fungsi `lm` dengan panjang dari datanya sebagai parameter. Berikut merupakan code yang digunakan dalam penyelesaian soal 4C.
```r
TestingAnova <- lm(Length~Group, data = KucingITS)
anova(TestingAnova)
```
Berikut merupakan hasil yang diperoleh setelah perhitungan dengan RStudio.

![4C](https://user-images.githubusercontent.com/109916703/207295124-f379fd31-fe0a-4173-8026-a9afb052c30c.png)

- **Soal 4D :** <br>
Dari Hasil Poin C, Berapakah nilai-p? Apa yang dapat Anda simpulkan dari $H_0$ ?

**Penyelesaian Soal 4D :**\
Setelah dilakukan perhitungan didapatkan nilai _P-value_ bernilai **0.0013**, dan nilai tersebut jauh lebih kecil daripada tingkat signifikansi 𝛼 = 0.05. $H_0$ ditolak atau dengan kata lain ada setidaknya satu pasang populasi yang memiliki rata-rata panjang berbeda.

- **Soal 4E :** <br>
Verifikasilah jawaban model 1 dengan Post-hooc test TukeyHSD ,  dari nilai p yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain? Jelaskan.

**Penyelesaian Soal 4E :**\
Dari soal sebelumnya telah disimpulkan bahwa setidaknya ada satu pasang populasi yang memiliki rata-rata panjang berbeda. Untuk membantu pengecekan, dapat digunakan fungsi `TukeyHSD()` dengan anova `Model1` sebagai parameternya. Berikut adalah code yag digunakan untuk menyelesaikan soal 4E menggunakan Rstudio.
```r
TukeyHSD(aov(Model1))
```
Setelah dilakukan perhitungan, diperoleh adjusted _p-value_ untuk kucing **Hitam-Oren = 0.0020955** dan **Putih-Hitam = 0.0098353** bernilai kurang dari tingkat signifikansi 𝛼 = 0.05. Sehingga dapat disimpulkan terdapat perbedaan rata-rata yang antara kucing hitam dengan kucing oren dan kucing putih dengan kucing hitam. Hal tersebut juga dapat dilihat pada kolom `diff` dimana terdapat **perbedaan sebesar 0.72 antara kucing Oren-Hitam** dan **0.6171429 antara kucing Putih-Hitam**. Sedangkan untuk _P-value_ **Putih-Oren** memiliki nilai **0.8726158** (lebih besar dari tingkat signifikansi) sehingga perbedaan rata-rata di antara kedua spesies tersebut tidak signifikan (0.1028571). Berikut merupakan hasil pengerjaan soal 4E menggunakan RStudio.

![4E](https://user-images.githubusercontent.com/109916703/207295421-d590e320-f546-4bf3-87a3-58f904892dc9.png)

- **Soal 4F :** <br>
Visualisasikan data dengan ggplot2

**Penyelesaian Soal 4F :**\
Sesuai dengan perintah soal, untuk soal 4F dapat diselesaikan dengan fungsi `ggplot2`. Sebelum menggunakan fungsi `ggplot2`, terdapat library yang harus diinstall mnggunakan code berikut. 
```r
install.packages("ggplot2")
library("ggplot2")
```
Setelah library terinstall, maka proses perhitungan dapat dilakukan. Berikut adalah code yang digunakan untuk menyelesaikan soal 4F
```r
ggplot(myData, aes(x = Group, y = Length)) + geom_boxplot(fill = "gray50", colour = "black") + scale_x_discrete() + xlab("Spesies") + ylab("Panjang (cm)")
```
## **Soal Nomor 5**
Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan dilakukan sebanyak 27 kali dan didapat data sebagai berikut: 
https://intip.in/Dataset2Praktikum2Probstat <br>

- **Soal 5A :** <br> 
Buatlah plot sederhana untuk visualisasi data!

**Penyelesaian Soal 5A :**\
Dalam melakukan visualisasi data, diperlukan beberapa _library_ yang harus diimport terlebih dahulu. Berikut adalah code yang digunakan dalam proses import _library_

```R
install.packages("multcompView")
install.packages("readr")
install.packages("dplyr")

library(readr)
library(ggplot2)
library(multcompView)
library(dplyr)
```
Kemudian, data yang berada pada _wesbite_ juga harus diimport agar dapat dibaca oleh RStudio. Berikut adalah code yang digunakan dalam proses import _dataset_
```r
myData <- read.csv("https://drive.google.com/u/0/uc?id=1aLUOdw_LVJq6VQrQEkuQhZ8FW43FemTJ&export=download")
myData$Glass <- as.factor(myData$Glass)
myData$Temp <- as.factor(myData$Temp)
```
Setelah data dapat dibaca oleh RStudio, maka visualisasi data dapat dilakukan. Untuk visualisasi data, digunakan fungsi `qplot` dengan beberapa parameter didalamnya. Berikut adalah code yang digunakan dalam proses visualisasi data
```r
qplot(x = Temp, y = Light, data = ExpData) + facet_grid(.~Glass) + geom_point()
```
Berikut merupakan hasil visualisasi data menggunakan RStudio.
![5a](https://user-images.githubusercontent.com/109916703/207313936-448f8d27-5168-4e34-a5ee-6bec36a23c82.png)

- **Soal 5B :** <br>
Lakukan uji Anova dua arah untuk 2 faktor!

**Penyelesaian Soal 5B :**\
Uji Anova dua arah dengan dua faktor dapat dilakukan dengan fungsi `aov` dengan parameternya berupa kolom dari data yang telah diimport. Kemudian hasil dari uji tersebut ditampilkan dengan fungsi `summary`. Berikut merupakan code untuk melakukan uji anova  
```r
twowayanova <- aov(Light ~ Glass*Temp, data = ExpData)
summary(twowayanova)
```
Berikut merupakan hasil pengerjaan soal 5B menggunakan RStudio.

![5B](https://user-images.githubusercontent.com/109916703/207314001-170e902b-4f2e-4bb0-a541-9d2b3e8af564.png)

- **Soal 5C :** <br>
Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)!
  
**Penyelesaian Soal 5C :**\
Untuk menampilkan tabel yang berisi mean serta standar deviasi keluaran cahaya untuk seluruh perlakuan, diperlukan bantuan fungsi `group by`, `summarise`, dan `arrange` untuk mengelompokkan data sesuai perintah soal. Kemudian digunakan juga fungsi `print` untuk menampilkan hasil dari perhitungan yang telah dilakukan. Berikut adalah code yang digunakan untuk soal 5C.
```r
mean_sd_table <- group_by(ExpData, Glass, Temp) %>%
  summarise(mean = mean(Light), sd = sd(Light)) %>%
  arrange(desc(mean))
print(mean_sd_table)
``` 
Berikut merupakan hasil pengerjaan soal 5C menggunakan RStudio.

![5C](https://user-images.githubusercontent.com/109916703/207314162-0aee4f69-1670-4fce-8799-8c7f921851bc.png)

- **Soal 5D :** <br>
Lakukan uji Tukey!
  
**Penyelesaian Soal 5D :**\
Untuk melakukan Uji Tukey, diperlukan fungsi `tukey` dengan parameter `twowayanova` yang telah kita buat pada soal 5B. Berikut adalah code yang digunakan untuk soal 5D.
```r
tukeytest <- TukeyHSD(twowayanova)
print(tukeytest)
```
Berikut merupakan hasil pengerjaan soal 5D menggunakan RStudio.

![5D](https://user-images.githubusercontent.com/109916703/207314341-26a49304-67c4-4046-82a3-7634ce36b09c.png)

- **Soal 5E :** <br>
Gunakan compact letter display untuk menunjukkan perbedaan signifikan antara uji Anova dan uji Tukey
  
**Penyelesaian Soal 5E :**\
Sesuai dengan perintah pada soal, _compact letter_ dapat dibuat menggunakan fungsi `multcomLetterS4()` yang berasal dari library `multcompview`. Kemudian, selanjutnya tambahkan compact letter ke tabel dengan mean dan standar deviasi. Berikut adalah code yang digunakan untuk soal 5D
```r
library(multcompView)

result <- multcompLetters4(twowayanova, tukeytest)
result

cld <- as.data.frame.list(result$`Glass:Temp`)
mean_sd_table$CLD <- cld$Letters
mean_sd_table
```
Berikut merupakan hasil pengerjaan soal 5D menggunakan RStudio.

![5D](https://user-images.githubusercontent.com/109916703/207314426-7a69a60e-0893-4e2d-a868-1b7ed5396a29.png)
<br>
# **End Of The Line**
```c
#include<stdio.h>

int main(){
        printf("Thank you!");
}
```
