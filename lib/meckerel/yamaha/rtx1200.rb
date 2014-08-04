require "meckerel/yamaha/rtx1200/version"
require 'open-uri'
require 'time'

module Meckerel
  module Yamaha
    class Rtx1200
      def initialize(host: host, user: nil, password: nil)
        @host = host
        @user = user
        @password = password
      end

      def metrics
        result = []
        open_opts = if @user or @password
                      {http_basic_authentication: [@user, @password]}
                    else
                      {}
                    end
        epoch_time = Time.now.to_i.to_s
        html = open("http://#{@host}/admin/", open_opts).map {|line| line.force_encoding("Shift_JIS").encode!("UTF-8") }

        if html.find {|line| line =~ /^(\d+)℃/ }
          result << ['router.temperature', $1, epoch_time]
        end

        result
      end
    end
  end
end
