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

def valid_triangle?(sides)
  sides.combination(2).map(&:sum).min > sides.max
end

def type_by_unique_sides(unique_sides)
  { 1 => :equilateral, 2 => :isosceles, 3 => :scalene }[unique_sides]
end

def triangle(a, b, c)
  sides = [a, b, c]

  if sides.min <= 0 || (not valid_triangle?(sides))
    raise TriangleError
  end

  type_by_unique_sides sides.uniq.size
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
