require 'job_fu'

module Backgrounded
  module Handler
    # invoke the operation in the background using job fu
    # see http://github.com/jnstq/job_fu/tree
    class JobFuHandler
      # ==== Parameters
      # Optional argment hash will be picked up by the request method
      #
      # * <tt>:priority</tt> - priority for the job
      # * <tt>:at</tt> - when the job should run
      #
      def request(object, method, *args)
        opt = args.extract_options!
        priority, process_at = opt[:priority], opt[:at]
        JobFu::Job.enqueue ProcessableMethod.new(object, method, *args), priority, process_at
      end
    end
  end
end