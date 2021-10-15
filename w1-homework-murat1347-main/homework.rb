# Zaman kütüphanesini import ediyoruz.
require 'time' 

# time_now objesi üretiyoruz.
time_now = Time.new 

# Saate göre durum mesajı oluşturuyoruz.
result_text =
  case time_now.hour
  when 0...6 then 'Zzzzz'
  when 6...12 then 'Good Morning'
  when 12...17 then 'Good Evening'
  else 'Good Night'
  end

# Sonucu yazdırıyoruz.
puts "Your current time is #{time_now.strftime('%H:%M')} #{result_text}" 

