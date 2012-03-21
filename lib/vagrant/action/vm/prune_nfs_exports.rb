module Vagrant
  module Action
    module VM
      class PruneNFSExports
        def initialize(app, env)
          @app = app
        end

        def call(env)
          if env[:host]
            env[:host].nfs_prune(env[:vm].uuid)
          end

          @app.call(env)
        end
      end
    end
  end
end
