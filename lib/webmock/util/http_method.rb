module WebMock::Util
  class HttpMethod

    def self.normalize_method(method)
      method.downcase.to_sym
    end

  end

end
