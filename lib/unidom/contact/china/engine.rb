module Unidom
  module Contact
    module China

      class Engine < ::Rails::Engine

        include Unidom::Common::EngineExtension

        isolate_namespace ::Unidom::Contact::China

        enable_initializer enum_enabled: false, migration_enabled: true

      end

    end
  end
end
