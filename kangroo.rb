

class Kangaroo
  attr_reader :name
  def initialize (name)
    @name= name
  end

  def start_hopping
    puts "Hopped into : " + " (0:0)" + "starting point."
  end

end
