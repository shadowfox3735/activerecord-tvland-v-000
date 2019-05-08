class Show < ActiveRecord::Base
  has_many :characters
  
  def build_network(new_network)
    self.network = Network.new(new_network)
  end

end