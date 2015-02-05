module OssFront
  module Resources
    class Root < Webmachine::Resource

      def content_types_provided
        [['application/json', :to_json]]
      end

      def to_json
        '{OK}'
      end
    end
  end
end
