module RedmineRtIntegration
  class RtMacro
    def get_tag(args)
      return "<a href=\"#{rt_link(args.first)}\">rt:#{args.first}</a>"
    end

    protected
    def rt_link(ticket_id)
      "https://management.froscon.de/rt/Ticket/Display.html?id=#{ticket_id}"
    end
  end
end
