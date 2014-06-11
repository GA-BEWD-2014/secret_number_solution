class Secret

  attr_accessor :sec_num

  def initialize
    @sec_num = rand(1..10)
  end
  
end