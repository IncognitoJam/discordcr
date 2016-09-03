require "json"

module Discordcr
  module REST
    # A response to the Get Gateway REST API call.
    struct GatewayResponse
      JSON.mapping(
        url: String
      )
    end
  end

  module Gateway
    struct MessageCreatePayload
      JSON.mapping(
        type: UInt8,
        content: String,
        id: String,
        author: User
      )
    end

    struct HelloPayload
      JSON.mapping(
        heartbeat_interval: UInt32,
        _trace: Array(String)
      )
    end
  end

  struct User
    JSON.mapping(
      username: String,
      id: String,
      discriminator: String,
      avatar: String
    )
  end
end
