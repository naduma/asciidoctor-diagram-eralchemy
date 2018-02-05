require 'asciidoctor/extensions'
require 'asciidoctor-diagram-eralchemy/version'

Asciidoctor::Extensions.register do
  require_relative 'asciidoctor-diagram-eralchemy/extension'
  block Asciidoctor::Diagram::EralchemyBlockProcessor, :eralchemy
  block_macro Asciidoctor::Diagram::EralchemyBlockMacroProcessor, :eralchemy
end
