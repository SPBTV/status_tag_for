# StatusTagFor

ActiveAdmin component which shows predicate as status.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'status_tag_for'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install status_tag_for

## Usage

```ruby
status_tag_for(true)
# => <span class='status_tag_for yes ok'>Yes</span>

status_tag_for(false)
# => <span class='status_tag_for no warn'>No</span>

status_tag_for(user.active?, user.status)
# => <span class='status_tag_for active ok'>Active</span>

status_tag_for(true, 'Yep', 'Nope')
# => <span class='status_tag_for yep ok'>Yep</span>

status_tag_for(false, 'Yep', 'Nope')
# => <span class='status_tag_for nope warn'>Nope</span>
```

## Contributing

1. Fork it ( https://github.com/SPBTV/status_tag_for/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

##License

Copyright 2014 SPB TV AG

Licensed under the Apache License, Version 2.0 (the ["License"](LICENSE)); you may not use this file except in compliance with the License.

You may obtain a copy of the License at [http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. 

See the License for the specific language governing permissions and limitations under the License.

