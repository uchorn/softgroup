# Class for validating strings to correct open/close key
class String
  def valid?
    left = ''
    right = ''
    mirror = { '{' => '}', '[' => ']', '(' => ')', '<' => '>' }

    each_char do |char|
      left << char if mirror.key?(char)
      right << mirror.key(char) if mirror.value?(char)
    end

    right.reverse!
    left.eql?(right)
  end
end

p '{(})'.valid? # => false
p '{{[]'.valid? # => false
p '{[()]}'.valid? # => true
p '{[<>]<>}'.valid? # => true
