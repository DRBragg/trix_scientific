# Trix Scientific

A modified version of Basecamp's [Trix editor](http://trix-editor.org) for use in scientific applications.

Modifications include:
* Superscript tags
* Subscript tags
* Text underlining
* Common notation symbols
* Registration/Copyright/Trademark symbols
* greek Alpha and Beta symbols
* Removal of quote and code blocks

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'trix-scientific'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install trix-scientific

## Usage

Import Trix styles in `app/assets/stylesheets/application.css`:

```
*= require trix
```

Require Trix Javascript magic in `app/assets/javascripts/application.js`:

```
//= require trix
```

Update your sanitizer to allow the style attribute to persist (for underlining). If you are using the default Rails sanitizer you can add the following line to `config/application.rb`:

```ruby
Rails::Html::WhiteListSanitizer.allowed_attributes.merge(["style"])
```

Finally, any place where you would like to use the Trix editor in your
forms, just use the `trix_editor` helper:

```ruby
f.trix_editor :body
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/DRBragg/trix_scientific. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Trix Scientific project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/DRBragg/trix_scientific/blob/master/CODE_OF_CONDUCT.md).

## Credits

This project is a direct modification of Basecamp's [Trix WYSIWYG editor](http://trix-editor.org).  Without their time and effort this wouldn't exist.

The idea to port the custom trix build into a gem for easier use came from Jon Moss's [trix gem](https://github.com/maclover7/trix). I pulled heavily from his repo when setting up this gem.

A huge thanks to my employer [Cello Health Communications](https://www.cellohealthcommunications.com/) for not only being super supportive of open source projects and giving me the time and support to work on this project, but also for constantly pushing me to be better and continue to learn and grow.
