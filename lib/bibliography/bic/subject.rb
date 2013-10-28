require 'csv'

module Bibliography
  module BIC
    class Subject
      Data = {}
      CSV.foreach(File.join(File.dirname(__FILE__), 'data', 'subjects.csv')) do |line|
        Data[line[0]] = line[1]
      end
    end
  end
end
