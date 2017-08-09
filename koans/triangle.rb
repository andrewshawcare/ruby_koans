# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  sides_equal = 0

  [a, b, c]
    .combination(2)
    .each do |(first_side, second_side)|
      if first_side.eql? second_side
        sides_equal += 1
      end
    end

  case sides_equal
    when 0
      :scalene
    when 1
      :isosceles
    when 3
      :equilateral
    else
      nil
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
