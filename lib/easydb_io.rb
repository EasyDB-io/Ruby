require "faraday"
require "faraday_middleware"
require "json"
require "easydb_io/version"

module EasydbIo
  class EasyDBError < StandardError; end

  class EasyDB
    def initialize(id, token)
      @id = id
      @token = token
    end

    def get(key)
      conn.get(key).body
    end

    def put(key, data)
      conn.post(key, { value: data }.to_json).body
    end

    def list
      conn.get.body
    end

    def delete(key)
      conn.delete(key).body
    end

    private

    def conn
      @conn ||= Faraday.new(
        url: "https://app.easydb.io/database/#{@id}",
        headers: {
          'Content-Type' => 'application/json',
          :token => @token
        }
      ) do |faraday|
        faraday.response :json
        faraday.adapter Faraday.default_adapter
      end
    end
  end
end
