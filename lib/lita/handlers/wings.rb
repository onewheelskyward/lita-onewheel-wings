module Lita
  module Handlers
    class Wings < Handler
      route /wings/i, :handle_wings

      def handle_wings(response)
        response.reply('http://4gspot.files.wordpress.com/2010/10/1273212602563.gif')
      end
    end

    Lita.register_handler(Wings)
  end
end
