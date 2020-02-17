require 'time'

class Application
    
    def call(env)
        resp = Rack::Response.new
        t = Time.now
        check_t = Time.parse "12:00 PM"

        if t < check_t
            resp.write "Good morning"
        else
            resp.write "Good Afternoon"
        end
        resp.finish
    end

end

