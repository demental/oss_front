module OssFront
  module Resources
    class Accounts < Webmachine::Resource

      def allowed_methods
        ["GET"]
      end

      def content_types_provided
        [['application/json', :to_json]]
      end

      def to_json
        isp.accounts.to_json
      end

      def resource_exists?
        begin
          isp
          true
        rescue OssFront::InvalidIspError
          false
        end
      end

      private

      def isp
        OssFront.config.adapters[isp_id] or raise OssFront::InvalidIspError
      end

      def isp_id
        request.path_info[:isp].to_sym
      end
    end
  end
end
