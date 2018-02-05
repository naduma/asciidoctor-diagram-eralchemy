# Asciidoctor ERAlchemy extension

Asciidoctor ERAlchemy is a set of Asciidoctor extensions. This extension generates Entity Relationship (ER) diagram.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'asciidoctor-diagram-eralchemy'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install asciidoctor-diagram-eralchemy

### Dependency

[ERAlchemy](https://github.com/Alexis-benoist/eralchemy)

## Usage

    $ asciidoctor -r asciidoctor-diagram-eralchemy sample.adoc

A diagram is written inside an open block inside any asciidoc file:

```
[eralchemy, format="png"]
----
[Person]
*name
height

[Location]
*id
city

Person *--1 Location
----
```

Output formats: png, svg, pdf

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Asciidoctor::Diagram::Eralchemy project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/asciidoctor-diagram-eralchemy/blob/master/CODE_OF_CONDUCT.md).
