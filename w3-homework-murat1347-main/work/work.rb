# frozen_string_literal: true
require 'homework'

module MainApplication

  class Application

    def initialize()
      @work = Homework::Plate.new
    end

    def main()
      if ARGV[0] == 's'
        puts @work.find_record(ARGV[1])
      else
        puts "Plaka :"
        plate = gets.chomp

        check_plate_result = check_plate(plate)

        if check_plate_result == "Valid"
          take_model
        elsif
          puts check_plate_result
        end
      end
    end

    def take_name
      puts "Ad/soyad :"
      full_name = gets.chomp
      result = @work.add_item(plate, model, full_name)
      puts "#{result} vehicle was added."
    end

    def take_model
      puts "Model :"
      model = gets.chomp
      unless @work.car_name_validation(model)
        puts "Bulunmayan arac modeli."
        return
      end
      take_name
    end

    def check_plate(plate)
      unless @work.plate_validation(plate)
        return "Plaka formati uygun degil. (01-81 arasinda giriniz)"
      end

      if @work.plate_has_many_validation(plate)
        return "Bu plakali arac var."
      end
      return "Valid"
    end
  end
end

app = MainApplication::Application.new
app.main