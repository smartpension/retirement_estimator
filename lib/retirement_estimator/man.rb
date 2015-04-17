module RetirementEstimator
  class Man < RetirementEstimator::Common

    private

    def lower_threshold
      { ends_on: Date.new(1953, 12, 5), age: Age.new(65.years, 0.months, 0.days) }
    end

    def find_exception
      COMMON_EXCEPTION.find do |exception|
        exception[:range].cover?(date_of_birth)
      end
    end

  end
end
