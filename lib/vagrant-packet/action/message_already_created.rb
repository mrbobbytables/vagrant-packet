# frozen_string_literal: true

module VagrantPlugins
  module Packet
    module Action
      class MessageAlreadyCreated
        def initialize(app, _env)
          @app = app
        end

        def call(env)
          env[:ui].info(I18n.t('vagrant_packet.already_status', status: 'created'))
          @app.call(env)
        end
      end
    end
  end
end
