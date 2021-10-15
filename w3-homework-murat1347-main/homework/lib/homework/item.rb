class Item
  attr_accessor :plaka, :model, :full_name

  def initialize(plaka, model, full_name)
    @plaka = plaka
    @model = model
    @full_name = full_name
  end
end