require_relative '../prime_factors'

describe 'PrimeFactors' do [
  ['1', []],
  ['2', [2]],
  ['3', [3]],
  ['4', [2, 2]],
  ['5', [5]],
  ['6', [2, 3]],
  ['7', [7]],
  ['8', [2, 2, 2]],
  ['9', [3, 3]],
  ['12', [2, 2, 3]],
  ['2*3*5*7*11', [2, 3, 5, 7, 11]],
  ['2*4*5*7*11', [2, 2, 2, 5, 7, 11]]
  ].each do | expression, factors|
    it "should factor #{expression}" do
      number = eval expression
      expect(PrimeFactors.of(number)).to eq factors
    end
  end
end

describe 'PrimeFactors' do
  require 'prime'
  it "should return true if factors are prime" do
    puts "\n Requiring Prime Class to test against random numbers"
    random_num = rand(3..537242)
    prime_factors_arr = PrimeFactors.of(random_num)
    puts "\n Random Number: #{random_num} \n Prime Factors of #{random_num}: #{prime_factors_arr}"

    prime_factors_arr.map {|factor| puts "Is #{factor} prime? #{expect(factor.prime?). to eq true}"}
  end
end
