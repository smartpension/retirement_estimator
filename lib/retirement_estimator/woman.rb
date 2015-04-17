module RetirementEstimator
  class Woman < RetirementEstimator::Common

    EXCEPTION = [
      { range: (Date.new(1950, 4, 6)..Date.new(1950, 5, 5)), date: Date.new(2010, 5, 6) },
      { range: (Date.new(1950, 5, 6)..Date.new(1950, 6, 5)), date: Date.new(2010, 7, 6) },
      { range: (Date.new(1950, 6, 6)..Date.new(1950, 7, 5)), date: Date.new(2010, 9, 6) },
      { range: (Date.new(1950, 7, 6)..Date.new(1950, 8, 5)), date: Date.new(2010, 11, 6) },
      { range: (Date.new(1950, 8, 6)..Date.new(1950, 9, 5)), date: Date.new(2011, 1, 6) },
      { range: (Date.new(1950, 9, 6)..Date.new(1950, 10, 5)), date: Date.new(2011, 3, 6) },
      { range: (Date.new(1950, 10, 6)..Date.new(1950, 11, 5)), date: Date.new(2011, 5, 6) },
      { range: (Date.new(1950, 11, 6)..Date.new(1950, 12, 5)), date: Date.new(2011, 7, 6) },
      { range: (Date.new(1950, 12, 6)..Date.new(1951, 1, 5)), date: Date.new(2011, 9, 6) },
      { range: (Date.new(1951, 1, 6)..Date.new(1951, 2, 5)), date: Date.new(2011, 11, 6) },
      { range: (Date.new(1951, 2, 6)..Date.new(1951, 3, 5)), date: Date.new(2012, 1, 6) },
      { range: (Date.new(1951, 3, 6)..Date.new(1951, 4, 5)), date: Date.new(2012, 3, 6) },
      { range: (Date.new(1951, 4, 6)..Date.new(1951, 5, 5)), date: Date.new(2012, 5, 6) },
      { range: (Date.new(1951, 5, 6)..Date.new(1951, 6, 5)), date: Date.new(2012, 7, 6) },
      { range: (Date.new(1951, 6, 6)..Date.new(1951, 7, 5)), date: Date.new(2012, 9, 6) },
      { range: (Date.new(1951, 7, 6)..Date.new(1951, 8, 5)), date: Date.new(2012, 11, 6) },
      { range: (Date.new(1951, 8, 6)..Date.new(1951, 9, 5)), date: Date.new(2013, 1, 6) },
      { range: (Date.new(1951, 9, 6)..Date.new(1951, 10, 5)), date: Date.new(2013, 3, 6) },
      { range: (Date.new(1951, 10, 6)..Date.new(1951, 11, 5)), date: Date.new(2013, 5, 6) },
      { range: (Date.new(1951, 11, 6)..Date.new(1951, 12, 5)), date: Date.new(2013, 7, 6) },
      { range: (Date.new(1951, 12, 6)..Date.new(1952, 1, 5)), date: Date.new(2013, 9, 6) },
      { range: (Date.new(1952, 1, 6)..Date.new(1952, 2, 5)), date: Date.new(2013, 11, 6) },
      { range: (Date.new(1952, 2, 6)..Date.new(1952, 3, 5)), date: Date.new(2014, 1, 6) },
      { range: (Date.new(1952, 3, 6)..Date.new(1952, 4, 5)), date: Date.new(2014, 3, 6) },
      { range: (Date.new(1952, 4, 6)..Date.new(1952, 5, 5)), date: Date.new(2014, 5, 6) },
      { range: (Date.new(1952, 5, 6)..Date.new(1952, 6, 5)), date: Date.new(2014, 7, 6) },
      { range: (Date.new(1952, 6, 6)..Date.new(1952, 7, 5)), date: Date.new(2014, 9, 6) },
      { range: (Date.new(1952, 7, 6)..Date.new(1952, 8, 5)), date: Date.new(2014, 11, 6) },
      { range: (Date.new(1952, 8, 6)..Date.new(1952, 9, 5)), date: Date.new(2015, 1, 6) },
      { range: (Date.new(1952, 9, 6)..Date.new(1952, 10, 5)), date: Date.new(2015, 3, 6) },
      { range: (Date.new(1952, 10, 6)..Date.new(1952, 11, 5)), date: Date.new(2015, 5, 6) },
      { range: (Date.new(1952, 11, 6)..Date.new(1952, 12, 5)), date: Date.new(2015, 7, 6) },
      { range: (Date.new(1952, 12, 6)..Date.new(1953, 1, 5)), date: Date.new(2015, 9, 6) },
      { range: (Date.new(1953, 1, 6)..Date.new(1953, 2, 5)), date: Date.new(2015, 11, 6) },
      { range: (Date.new(1953, 2, 6)..Date.new(1953, 3, 5)), date: Date.new(2016, 1, 6) },
      { range: (Date.new(1953, 3, 6)..Date.new(1953, 4, 5)), date: Date.new(2016, 3, 6) },
      { range: (Date.new(1953, 4, 6)..Date.new(1953, 5, 5)), date: Date.new(2016, 7, 6) },
      { range: (Date.new(1953, 5, 6)..Date.new(1953, 6, 5)), date: Date.new(2016, 11, 6) },
      { range: (Date.new(1953, 6, 6)..Date.new(1953, 7, 5)), date: Date.new(2017, 3, 6) },
      { range: (Date.new(1953, 7, 6)..Date.new(1953, 8, 5)), date: Date.new(2017, 7, 6) },
      { range: (Date.new(1953, 8, 6)..Date.new(1953, 9, 5)), date: Date.new(2017, 11, 6) },
      { range: (Date.new(1953, 9, 6)..Date.new(1953, 10, 5)), date: Date.new(2018, 3, 6) },
      { range: (Date.new(1953, 10, 6)..Date.new(1953, 11, 5)), date: Date.new(2018, 7, 6) },
      { range: (Date.new(1953, 11, 6)..Date.new(1953, 12, 5)), date: Date.new(2018, 11, 6) },
    ]

    private

    def lower_threshold
      { ends_on: Date.new(1950, 4, 5), age: Age.new(60.years, 0.months, 0.days) }
    end

    def find_exception
      (EXCEPTION + COMMON_EXCEPTION).find do |exception|
        exception[:range].cover?(date_of_birth)
      end
    end
  end
end
