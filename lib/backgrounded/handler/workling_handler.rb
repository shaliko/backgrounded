class Backgrounded::Handler::WorklingHandler
  class BackgroundedWorker < Workling::Base
    def perform(options = {})
      find_instance(options[:class], options[:id], options[:method]).send(options[:method], *options[:params])
    end

    private
    def find_instance(clazz, id, method)
      clazz = clazz.constantize
      clazz.respond_to?(method) ? clazz : clazz.find(id)
    end
  end

  def request(object, method, *args)
    instance, id = instance_identifiers(object)
    options = {
      :class => instance,
      :id => id,
      :method => method,
      :params => args
    }
    BackgroundedWorker.async_perform options
  end

  private
  def instance_identifiers(object)
    instance, id = if object.is_a?(Class) 
      [object.name, -1]
    else
      [object.class.name, object.id]
    end
  end
end
