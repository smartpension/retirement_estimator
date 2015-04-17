require 'active_support/core_ext/integer'
require 'active_support/core_ext/date'

require 'retirement_estimator/version'
require 'retirement_estimator/age'
require 'retirement_estimator/estimator'
require 'retirement_estimator/common'
require 'retirement_estimator/man'
require 'retirement_estimator/woman'

module RetirementEstimator
  def self.get(date_of_birth, man = true)
    Estimator.new(date_of_birth, man).get
  end
end
