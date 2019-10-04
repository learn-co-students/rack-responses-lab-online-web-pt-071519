class Application

    def call(endv)
        resp = Rack::Response.new
        time = Time.now.hour 
        time_min = Time.now.min

        if time <= 12 && time_min <=59
            resp.write  "Good Morning"
        else 
            resp.write "Good Afternoon"
        end
        resp.finish
    end
end