require 'csv'

module Bibliography
  module BIC
    class Subject
      Data = {}
      CSV.foreach(File.join(File.dirname(__FILE__), 'data', 'subjects.csv')) do |line|
        Data[line[0]] = {
          code: line[0],
          description: line[1]
        }
      end

      def initialize(code)
        @data = Data[code] || {}
      end

      def code
        @data[:code]
      end

      def description
        @data[:description]
      end

      def valid?
        !@data.empty?
      end
    end
  end
end
