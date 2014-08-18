class Contact < ActiveRecord::Base
  validates :name, :presence => true
  validates :phone, :presence => true

  before_save :titleize_name

private

  def titleize_name
    self.name = self.name.split(" ").map {|x| x.capitalize}.join(" ")
  end

end
