# frozen_string_literal: true
require_relative "homework/version"
require 'homework/item'
require 'yaml'
require 'json'

module Homework

  class Plate
    attr_reader :items

    def initialize()
      load_data
    end

    def show
      @items = load_data
      puts @items
    end

    def add_item(plate, model, full_name)
      item_class = Item.new(plate, model, full_name)
      str = "#{item_class.full_name.upcase} - #{return_city(plate[0..1].to_i)} - #{item_class.model.upcase} - #{item_class.plaka} "
      @items << str
      save_data
      item_class.plaka
    end

    def plate_validation(plate)
      case plate[0..1].to_i
      when 1..81
        true
      else
        false
      end
    end

    def find_record(search_text)
      result = load_data.select { |item| item.include?(search_text) }.first
      result ? result : "#{search_text} plakali arac sistemde yok."
    end

    def plate_has_many_validation(plate)
      load_data.select { |item| item.include?(plate) }.count != 0 ? true : false
    end

    def car_name_validation(model)
      JSON.parse(File.read('models.json')).select { |item| item['name'] == model.upcase }.count != 0
    end

    private

    def return_city(plates_id)
      JSON.parse(File.read('plates.json'))[plates_id.to_s]
    end

    def load_data
      if File.exist?('homework.yml')
        @items = YAML.load(File.read('homework.yml'))
      else
        @items = Array.new
      end
    end

    def save_data
      File.open("homework.yml", "w") { |file| file.write(@items.to_yaml) }
    end
  end

end

