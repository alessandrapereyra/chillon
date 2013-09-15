# Chillon

Just a fun, non-sense way to access the Datos Abiertos initiative through the Rimac gem

## Installation

Add this line to your application's Gemfile:

    gem 'chillon'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install chillon

## Usage

Just create a Request object and ask for it to get you some delicious data. Yummy!

		open_data = Chillon::Request("XXXX")
		open_date.get_museo_de_lima

Chillon will interpret that call and transform the method to the -arguibly- ugly GUID code of "MUSEO-DE-LIMA"

So, chill and relax: Chillon's got your back, yo. 

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
