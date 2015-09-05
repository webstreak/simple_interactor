require 'spec_helper'

RSpec.describe SimpleInteractor do
  it 'has a version number' do
    expect(SimpleInteractor::VERSION).not_to be nil
  end

  class Sub < SimpleInteractor
    expected_params :data1, :data2
    def perform
      return @data1, @data2
    end
  end

  it 'initializes params' do
    result = Sub.perform(1, 2)
    expect(result).to eq [1,2]
  end
end
