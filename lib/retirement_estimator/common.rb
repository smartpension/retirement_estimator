module RetirementEstimator
  class Common < Struct.new(:date_of_birth)
    HIGHER_THRESHOLD = { starts_on: Date.new(1978, 4, 6), age: Age.new(68.years, 0.months, 0.days) }

    COMMON_EXCEPTION =[
      { range: (Date.new(1953, 12, 6)..Date.new(1954, 1, 5)), date: Date.new(2019, 3, 6) },
      { range: (Date.new(1954, 1, 6)..Date.new(1954, 2, 5)), date: Date.new(2019, 5, 6) },
      { range: (Date.new(1954, 2, 6)..Date.new(1954, 3, 5)), date: Date.new(2019, 7, 6) },
      { range: (Date.new(1954, 3, 6)..Date.new(1954, 4, 5)), date: Date.new(2019, 9, 6) },
      { range: (Date.new(1954, 4, 6)..Date.new(1954, 5, 5)), date: Date.new(2019, 11, 6) },
      { range: (Date.new(1954, 5, 6)..Date.new(1954, 6, 5)), date: Date.new(2020, 1, 6) },
      { range: (Date.new(1954, 6, 6)..Date.new(1954, 7, 5)), date: Date.new(2020, 3, 6) },
      { range: (Date.new(1954, 7, 6)..Date.new(1954, 8, 5)), date: Date.new(2020, 5, 6) },
      { range: (Date.new(1954, 8, 6)..Date.new(1954, 9, 5)), date: Date.new(2020, 7, 6) },
      { range: (Date.new(1954, 9, 6)..Date.new(1954, 10, 5)), date: Date.new(2020, 9, 6) },
      { range: (Date.new(1954, 10, 6)..Date.new(1960, 4, 5)), age: Age.new(66.years, 0.months, 0.days) },
      { range: (Date.new(1960, 4, 6)..Date.new(1960, 5, 5)), age: Age.new(66.years, 1.months, 0.days) },
      { range: (Date.new(1960, 5, 6)..Date.new(1960, 6, 5)), age: Age.new(66.years, 2.months, 0.days) },
      { range: (Date.new(1960, 6, 6)..Date.new(1960, 7, 5)), age: Age.new(66.years, 3.months, 0.days) },
      { range: (Date.new(1960, 7, 6)..Date.new(1960, 8, 5)), age: Age.new(66.years, 4.months, 0.days) },
      { range: (Date.new(1960, 9, 6)..Date.new(1960, 9, 5)), age: Age.new(66.years, 5.months, 0.days) },
      { range: (Date.new(1960, 9, 6)..Date.new(1960, 10, 5)), age: Age.new(66.years, 6.months, 0.days) },
      { range: (Date.new(1960, 10, 6)..Date.new(1960, 11, 5)), age: Age.new(66.years, 7.months, 0.days) },
      { range: (Date.new(1960, 11, 6)..Date.new(1960, 12, 5)), age: Age.new(66.years, 8.months, 0.days) },
      { range: (Date.new(1960, 12, 6)..Date.new(1961, 1, 5)), age: Age.new(66.years, 9.months, 0.days) },
      { range: (Date.new(1961, 1, 6)..Date.new(1961, 2, 5)), age: Age.new(66.years, 10.months, 0.days) },
      { range: (Date.new(1961, 2, 6)..Date.new(1961, 3, 5)), age: Age.new(66.years, 11.months, 0.days) },
      { range: (Date.new(1961, 3, 6)..Date.new(1977, 4, 5)), age: Age.new(67.years, 0.months, 0.days) },
      { range: (Date.new(1977, 4, 6)..Date.new(1977, 5, 5)), date: Date.new(2044, 5, 6) },
      { range: (Date.new(1977, 5, 6)..Date.new(1977, 6, 5)), date: Date.new(2044, 7, 6) },
      { range: (Date.new(1977, 6, 6)..Date.new(1977, 7, 5)), date: Date.new(2044, 9, 6) },
      { range: (Date.new(1977, 7, 6)..Date.new(1977, 8, 5)), date: Date.new(2044, 11, 6) },
      { range: (Date.new(1977, 8, 6)..Date.new(1977, 9, 5)), date: Date.new(2045, 1, 6) },
      { range: (Date.new(1977, 9, 6)..Date.new(1977, 10, 5)), date: Date.new(2045, 3, 6) },
      { range: (Date.new(1977, 10, 6)..Date.new(1977, 11, 5)), date: Date.new(2045, 5, 6) },
      { range: (Date.new(1977, 11, 6)..Date.new(1977, 12, 5)), date: Date.new(2045, 7, 6) },
      { range: (Date.new(1977, 12, 6)..Date.new(1978, 1, 5)), date: Date.new(2045, 9, 6) },
      { range: (Date.new(1978, 1, 6)..Date.new(1978, 2, 5)), date: Date.new(2045, 11, 6) },
      { range: (Date.new(1978, 2, 6)..Date.new(1978, 3, 5)), date: Date.new(2046, 1, 6) },
      { range: (Date.new(1978, 3, 6)..Date.new(1978, 4, 5)), date: Date.new(2046, 3, 6) },
    ]

    def get
      if date_of_birth <= lower_threshold[:ends_on]
        to_date lower_threshold[:age]
      elsif date_of_birth >= HIGHER_THRESHOLD[:starts_on]
        to_date HIGHER_THRESHOLD[:age]
      else
        exception = find_exception
        to_date(exception[:age]) or exception[:date]
      end
    end

    private

    def to_date(age)
      return unless age

      date_of_birth + age.years + age.months + age.days
    end
  end
end
