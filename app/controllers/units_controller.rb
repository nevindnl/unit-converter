class UnitsController < ApplicationController
  def si
    expression = params[:units].split(/([\*\/\(\)])/)

    units = []
    factors = []

    expression.each_with_index do |el, i|
      next if el == ''

      if el =~ /[\*\/\(\)]/
        units.push(el)
        factors.push(el)
      else
        unit = Unit.find_by("name = ? OR symbol = ?", el, el)

        units.push(unit.si_unit)
        factors.push(unit.si_factor)
      end
    end

     render json: {
       unit_name: units.join,
       multiplication_factor: eval(factors.join).round(14)
     }
  end
end
