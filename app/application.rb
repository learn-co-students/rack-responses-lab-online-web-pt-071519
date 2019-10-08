class Application
 
    def call(env)
      resp = Rack::Response.new
   
      case Time.now.hour
      when 4..11 
        resp.write 'Good Morning'
      when 12..17 
        resp.write 'Good Afternoon'
      when 18..23 
        resp.write 'Good Evening'
      end
      
   
      resp.finish
    end
end