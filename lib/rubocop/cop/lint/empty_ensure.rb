# encoding: utf-8

module Rubocop
  module Cop
    module Lint
      # This cop checks for empty `ensure` blocks
      class EmptyEnsure < Cop
        MSG = 'Empty ensure block detected.'

        def on_ensure(node)
          _body, ensure_body = *node

          add_offence(:warning, node.loc.keyword, MSG) unless ensure_body

          super
        end
      end
    end
  end
end
