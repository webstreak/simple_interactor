class SimpleInteractor

  VERSION = '1.0.0'

  def self.expected_params(*params_names)
    instance_variable_set :@params_names, params_names
  end

  def self.perform(*args)
    new(args).perform
  end

  def initialize(args)
    args.each_with_index do |value, index|
      params_names = self.class.instance_variable_get(:@params_names)
      instance_variable_set("@#{params_names[index]}", value)
    end
  end

end
