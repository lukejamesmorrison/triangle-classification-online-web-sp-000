class Triangle

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  class TriangleError < StandardError

  end

  def kind

    if !valid?
      begin
        raise TriangleError
      rescue TriangleError => error
      end
    else
      # equilateral
      if @side_a == @side_b && @side_a == @side_c
        :equilateral
      # isosceles
      elsif @side_a == @side_b || @side_a == @side_c || @side_b == @side_c
        :isosceles
      #scalene
      else
        :scalene
      end
    end


  end

  def valid?
    @side_a + @side_b > @side_c && @side_a + @side_c > @side_b && @side_b + @side_c > @side_a
  end

end
