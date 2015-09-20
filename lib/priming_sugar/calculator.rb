module PrimingSugar
  class Calculator
    class << self
      def run(args)
          temperature      = args[:temperature]
          gallons          = args[:gallons]
          co2              = args[:co2]
          sugar_efficiency = args[:sugar_efficiency]

          pure_sugar_volume = 15.195 *
                              gallons *
                              ( co2 - 3.0378 + ( 0.050062 * temperature ) -
                              ( 0.0002655 * temperature ** 2 ) )

          pure_sugar_volume / sugar_efficiency
        end
    end
  end
end
