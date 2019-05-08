class Show < ActiveRecord::Base
  has_many :characters
  
  def build_network(network)
    self.network = Network.new(network)
  end

end