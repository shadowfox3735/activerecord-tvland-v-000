class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    name = self.first_name + " " + self.last_name
  end
  
  def list_roles
    character_names = []
    self.characters.each do |character|
      character_names << "#{character.name} - #{character.show.name}"
    end
    character_names
  end
  
end