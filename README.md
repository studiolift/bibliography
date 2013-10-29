# Bibliography

A library of useful tools for books and related standards

## Installation

Add this line to your application's Gemfile:

    gem 'bibliography'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bibliography

## Usage

Currently, the library only offers BIC Subjects in a handy interface for traversing through parent and child subjects. This is accessible through:

```ruby
Bibliography::BIC::Subjects
```

However, Bibliography also offers a convenience method for subjects, defaulting to BIC

```ruby
Bibliography.subjects
# Alternatively, pass the symbol name of the standards body
Bibliography.subjects(:bic)
```

### Subjects

To obtain a collection of all available subjects:

```ruby
Bibliography.subjects.all # => [Bibliography::BIC::Subject, ...]
```

To select a specific subject by code:

```ruby
subject = Bibliography.subjects.new('AB') # => Bibliography::BIC::Subject
```

A subject has two key properties, as declared by the BIC Subject standard:

```ruby
subject.code # => 'AB'
subject.description # => 'The arts: general issues'
```

But the real usefulness of this library comes from the traversal methods:

```ruby
subject.children? # => true
subject.children # => [Bibliography::BIC::Subject, ...]
subject.parent? # => true
subject.parent.code # => 'A'
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
