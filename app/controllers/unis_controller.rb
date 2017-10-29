require 'json'

class UnisController < ApplicationController
  def index
    File.open("school.json") do |file|
      hash = JSON.load(file)
      n = 0
      loop do
        uni = hash[n]
        university = Uni.create( name: uni["大学"] )
        if university.nil?
          break
        else
          fac = hash[n + 1]
          fac["学部"].each do |a|
            if Fac.find_by(name: a )
              dep = Fac.find_by( name: a )
              university.faclities << dep
            else
              facility = Fac.create( name: a )
              university.faclities << facility
            end
          end
          n += 2
        end
      end
    end
  end
end


if university.nil?
  break
else

      # university = []
      # list_new = hash.select { |x|
      #   x.include?("大学")
      # }
      # list_new.each do |list|
      #   university << Uni.create( name: list["大学"] )
      # end
      #
      # facility = []
      # list_fac = hash.select { |x|
      #   x.include?("学部")
      # }
      # list_fac.each do |list|
      #   list[:"学部"].each do |a|
      #     facility << Fac.create( name: a )
      #   end
      # end
      # facility.uniq
      #
      #
      # n = 0
      # while
      #   university[n].faclities << facility[n]
      #   n += 1
      # end

  # facility << Fac.create( name: list["学部"] )
  #
  # array_uni << @s.links["大学"]
  # array_fac << @d.links["学部"]

#
# hash.each do |list|
#   list_new = list.select { |x|
#     x.include?("大学")
#   }
#   list_fac = list.select { |x|
#     x.include?("学部")
#   }
#   @s = Uni.create( links: list_new )
#   @s.links["大学"]
#   @d = Fac.create( links: list_fac )
#   @d.links["学部"]
# end
