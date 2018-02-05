require 'asciidoctor-diagram/extensions'
require 'asciidoctor-diagram/util/cli_generator'
require 'asciidoctor-diagram/util/platform'
require 'asciidoctor-diagram/util/which'

module Asciidoctor
  module Diagram
    # @private
    module Eralchemy
      include CliGenerator
      include Which

      def self.included(mod)
        [:svg, :png, :pdf].each do |f|
          mod.register_format(f, :image) do |parent, source|
            eralchemy(parent, source, f)
          end
        end
      end

      def eralchemy(parent, source, format)
        generate_file(which(parent, 'eralchemy'), 'er', format.to_s, source.to_s) do |tool_path, input_path, output_path|
          [tool_path, '-i', Platform.native_path(input_path), '-o', Platform.native_path(output_path)]
        end
      end
    end

    class EralchemyBlockProcessor < Extensions::DiagramBlockProcessor
      include Eralchemy
    end

    class EralchemyBlockMacroProcessor < Extensions::DiagramBlockMacroProcessor
      include Eralchemy
    end
  end
end
