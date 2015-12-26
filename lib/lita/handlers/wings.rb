module Lita
  module Handlers
    class Wings < Handler
      route /wings/i, :handle_wings
      route /^wing bomb/i, :handle_wing_bomb, command: true
      route /^wingbomb/i, :handle_wing_bomb, command: true

      def get_random
        do_do_rand_rand_rand = Random.new
        do_do_rand_rand_rand.rand(10000).to_s
      end

      def handle_wings(response)
        unless response.message.body.include? ':wings:'
          response.reply('http://4gspot.files.wordpress.com/2010/10/1273212602563.gif?' + get_random)
        end
      end

      def handle_wing_bomb(response)
        1..5.times do
          response.reply('http://4gspot.files.wordpress.com/2010/10/1273212602563.gif?' + get_random)
        end
      end
    end

    Lita.register_handler(Wings)
  end
end
