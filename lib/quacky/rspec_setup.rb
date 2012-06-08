if defined? RSpec
  RSpec::Matchers.define :quack_like do |*expected_duck_types|
    expected_duck_types.each do |expected_duck_type|
      match do |actual|
        Quacky::DuckTypeVerifier.new(expected_duck_type).verify! actual
      end
    end
  end

  RSpec.configure do |config|
    config.before(:each) do
      Quacky.clear_expectations!
    end

    config.after(:each) do
      Quacky.expectations.map &:validate_satisfaction!
    end
  end
end
