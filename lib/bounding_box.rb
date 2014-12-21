class BoundingBox
  attr_reader :left, :bottom, :width, :height, :top, :right
  def initialize(left, bottom, width, height)
    @width = width
    @height = height
    @left = left
    @bottom = bottom
    @right = left + width
    @top = bottom + height
  end
  def contains_point?(x,y)
    if (x.to_f >= @left) && (x.to_f <= @right) && (y.to_f >= @bottom) && (y.to_f <= @top)
      true
    else
      false
    end
  end
end
