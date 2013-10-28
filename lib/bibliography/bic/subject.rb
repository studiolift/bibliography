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

      def children?
        !children.empty?
      end

      def children
        return [] unless valid?
        len = code.length
        @children ||= Data.keys.select{ |key|
          key.length > len && key[0..len-1] == code
        }.map {|s| Subject.new(s) }
      end

      def parent?
        !parent.nil? && parent.valid?
      end

      def parent
        @parent ||= Subject.new(code[0]) if valid? && code.length > 1
      end
    end
  end
end
