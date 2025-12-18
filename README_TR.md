# 🛒 Retail Sales SQL Veri Analizi Projesi

## Proje Genel Bakışı

Bu proje, perakende satış verileri üzerinde **SQL kullanılarak veri analizi** yapılmasını amaçlamaktadır.
Çalışma sürecinde veriler önce tanınmış, ardından temizlenmiş ve son aşamada iş problemlerine yönelik analizler gerçekleştirilmiştir.

Proje, **uçtan uca bir veri analizi sürecini** göstermektedir:

> **Veriyi Tanıma → Veri Temizliği → Veri Analizi**

---

## Veri Seti Açıklaması

Veri seti, perakende satış işlemlerini içermektedir.
Her satır, tek bir satış işlemini temsil eder.

**Kullanılan temel sütunlar:**

* `transaction_id` – İşlem kimliği
* `sale_date` – Satış tarihi
* `sale_time` – Satış saati
* `customer_id` – Müşteri kimliği
* `gender` – Müşteri cinsiyeti
* `age` – Müşteri yaşı
* `category` – Ürün kategorisi
* `quantity` – Satılan ürün adedi
* `price_per_unit` – Birim fiyat
* `cogs` – Ürün maliyeti
* `total_sale` – Toplam satış tutarı

---

## Adım 1: Veriyi Tanıma (Data Understanding)

Bu aşamada veri seti analiz öncesi incelenmiştir:

* Tablo yapısı ve sütun veri tipleri kontrol edildi
* Eksik (NULL) değerler tespit edildi
* Tarih ve saat alanlarının tutarlılığı incelendi
* Verinin genel yapısı ve olası problemler analiz edildi

Bu adımın amacı, analiz öncesinde veriyi doğru şekilde anlamaktır.

---

## Adım 2: Veri Temizliği (Data Cleaning)

Analizden önce veri temizliği yapılmıştır:

* NULL değerler kontrol edildi ve analiz dışı bırakıldı
* Sayısal sütunlardaki mantıksız değerler incelendi
* Tarih ve saat alanları analiz için uygun hale getirildi
* Hesaplamalarda kullanılan alanlar (`total_sale`, `quantity` vb.) doğrulandı

Bu adım sayesinde analiz sonuçlarının **doğru ve güvenilir** olması sağlandı.

---

## Adım 3: Veri Analizi (SQL Analysis)

Temizlenen veri üzerinde SQL kullanılarak aşağıdaki iş problemleri çözülmüştür:

1. Belirli bir tarihte yapılan satışların analizi
2. Kategori, miktar ve tarih bazlı filtreleme
3. Kategori bazında toplam satış tutarlarının hesaplanması
4. Belirli kategoriler için müşteri demografisi analizi
5. Yüksek tutarlı işlemlerin tespiti
6. Cinsiyet ve kategori bazında işlem sayılarının analizi
7. Aylık ortalama satışlar ve yıllık en çok satış yapılan aylar
8. Toplam harcamaya göre en çok alışveriş yapan müşteriler
9. Kategori bazında benzersiz müşteri sayıları
10. Gün içi zaman dilimlerine göre sipariş analizi

Tüm analizler **PostgreSQL** kullanılarak gerçekleştirilmiştir.

---

## Kullanılan Teknolojiler

* **PostgreSQL**
* **SQL**
* **DBeaver / pgAdmin**
* **Git & GitHub**

---

## Kazanımlar

Bu proje sayesinde:

* Gerçek bir veri seti üzerinde veri tanıma ve temizleme
* SQL ile iş problemlerine yönelik analitik sorgular yazma
* `GROUP BY`, `HAVING`, alt sorgular ve tarih fonksiyonlarını kullanma
* Analitik düşünme ve problem çözme

konularında pratik kazanılmıştır.

---

## Proje Dosya Yapısı

```bash
├── sql/
│   ├── table_creation.sql
│   ├── data_cleaning.sql
│   ├── analysis_queries.sql
├── README.md
├── README_TR.md
```

---

## Gelecek Geliştirmeler

* Power BI veya Tableau ile veri görselleştirme
* Daha ileri seviye zaman serisi analizleri
* View ve Stored Procedure kullanımı ile sorgu optimizasyonu

---

*Bu proje, veri analitiği öğrenme sürecimin bir parçasıdır ve portföy amaçlı hazırlanmıştır.*

---

İstersen bir sonraki adımda:

* **README.md ile birebir uyumlu İngilizce–Türkçe eşleştirme**,
* ya da **CV’ye yazılacak 1–2 satırlık proje özeti** hazırlayabiliriz.
