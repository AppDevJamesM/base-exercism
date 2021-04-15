=begin
Write your code for the 'Sum Of Multiples' exercise in this file. Make the tests in
`sum_of_multiples_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/sum-of-multiples` directory.
=end

class SumOfMultiples
attr_reader :multiples

    def initialize(*multiples)
        @multiples = multiples
    end
    
    def to(limit)
        numbers = (0...limit).to_a
        sum = [0]
        numbers.each do |number|
            multiples.each do |multiple|
                sum << number if (number % multiple == 0) 
            end
        end
        sum.uniq.inject(:+)
    end

end