class BoundingArea
  def initialize(box)
    @box = box
  end
  def contains_point?(x,y)
    if @box == []
      return false
    else
      @box.each do |omg|
        result = omg.contains_point?(x,y)
        if result == true
          return true
        else
          return false
        end
      end
    end
  end
end
