module RetirementEstimator
  class Estimator < Struct.new(:date_of_birth, :male?)

    def get
      strategy.get
    end

    private

    def strategy
      male? ? Man.new(date_of_birth) : Woman.new(date_of_birth)
    end

  end
end
