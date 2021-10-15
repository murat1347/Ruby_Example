# 1. Hafta Odevi

Merhaba,

1. haftada ogrendiklerimizi kullanmak icin sizden istedigim basit bir Ruby programini yazmaniz. Programin yapacagi sey ise gayet basit; Program calistirildigi an guncel saati alacak ve saattin kac oldugu duruma gore ekrana birsey basacak. Ornegin; saat suan 17:24 ve programi calistirdim.

```ruby
> ruby homework.rb
#=> Your current time is 17:24. Good afternoon
```

**Adim adim yapilacaklar.**

- Programi calistir
- Your current time is 15:51 Good afternoon bassin ekrana

**Basit test case'leri:**

- Programi calistir
- Your current time is 15:51 Good afternoon
----
- Programi calistir
- Your current time is 08:14 Good morning
---
- Programi calistir
- Your current time is 03:44 Zzzz

**Durumlar**
- 00:00 - 06:00 => Zzzz
- 06:00 - 12:00 => Good Morning
- 12:00 - 18:00 => Good Afternoon
- 18:00 - 00:00 => Good Evening

## Dikkat edilecek noktalar
- Oncelikle programiniz `dosya_adi.rb` seklinde olmali ve console'da `ruby dosya_adi.rb` diyince calismali. Calismayan programlarin neden calismadigina bakilmayacaktir.
- Hangi condition statement'lari kullanmak istiyorsaniz onla yapabilirsiniz.
- Kod okunabilirligi ve degisken adlari onemli. `x = 5` gibi degisken adlarinu lutfen kullanmayin.
- Ciktilar odevde yazdigi gibi olmali. Baska dilde ya da kendiniz degistirerek yazmayiniz.

## Son teslim
Cuma gunu saat 23:59'dan sonra commit'lenen odevler gecersiz sayilacaktir.
