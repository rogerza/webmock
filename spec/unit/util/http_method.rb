require 'spec_helper'

describe WebMock::Util::HttpMethod do

  method_actions = [ :get, :post, :put, :delete, :head, :copy, :any ]

  method_actions.each do |method|

    it 'returns lowercase symbols as lowercase symbols' do
      WebMock::Util::HttpMethod.normalize_method(method).should == method.downcase.to_sym
    end

  end

  method_actions.map(&:upcase).each do |method|

    it 'returns uppercase symbols as lowercase symbols' do
      WebMock::Util::HttpMethod.normalize_method(method).should == method.downcase.to_sym
    end

  end

  method_actions.map(&:upcase).each do |method|

    it 'returns lowercase strings as lowercase symbols' do
      WebMock::Util::HttpMethod.normalize_method(method).should == method.downcase.to_sym
    end

  end

  method_actions.map(&:upcase).each do |method|

    it 'returns uppercase strings as lowercase symbols' do
      WebMock::Util::HttpMethod.normalize_method(method).should == method.downcase.to_sym
    end

  end

end
