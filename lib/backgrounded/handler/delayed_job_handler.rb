require 'delayed_job'

module Backgrounded
  module Handler
    # invoke the operation in the background using delayed job
    # see http://github.com/tobi/delayed_job/tree/master
    class DelayedJobHandler
      def request(object, method, *args)
        object.delay.send(method.to_sym, *args)
      end
    end
  end
end
