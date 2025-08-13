def triangle(n)
  n.times do |idx|
    spaces = (' ' * ((n - 1) - idx))
    stars = ('*' * (idx + 1))
    puts spaces + stars
  end
end
