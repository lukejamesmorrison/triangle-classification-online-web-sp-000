class Triangle

  def initialize(side_a:, side_b:, side_c:)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind

    if !valid?
      begin

    else
      # equilateral
      if @side_a == @side_b && @side_a == @side_c
        :equilateral
      # isoceles
      elsif @side_a == @side_b || @side_a == @side_c
        :isoceles
      #scalene
      else
        :scalene
      end
    end


  end

  def valid?
    @side_a + @side_b < @side_c || @side_a + @side_c < @side_b || @side_b + @side_c < @side_a
  end

end
