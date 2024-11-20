class PrintCircle

  def print_circle(radius)
    diameter = radius*2 
    (diameter+1).times do |i|
      (diameter+1).times do |j|
        dist = Math.sqrt((i-radius)**2 + (j-radius)**2)

        if dist > radius - 0.5
          print '*'
        else
          print ' '
        end
      end
      p ""
    end
  end

end