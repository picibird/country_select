module ISO3166
  class Data
    class << self
      def register(data)
        alpha2 = data[:alpha2].upcase
        @@registered_data[alpha2] = \
         data.inject({}) { |a,(k,v)| a[k.to_s] = v;  a }
        @@cache = cache.merge(@@registered_data)
      end
    end
  end
end
