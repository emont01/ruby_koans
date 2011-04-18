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
    validate(a, b, c)
    triangle_type = :isosceles
    if a == b and a == c
        triangle_type = :equilateral
    end
    if a != b and a != c and b != c
        triangle_type = :scalene
    end
    return triangle_type
end

def validate(a, b, c)
    #triangle inequality theorem for validating sides sizes http://www.onlinemathlearning.com/triangle-inequality.html
    raise TriangleError unless ((a+b)>c and (b+c)>a and (a+c)>b)
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end

