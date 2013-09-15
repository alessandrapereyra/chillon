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

		open_data = Chillon::Request.new("e1fcb8366d2e470c2a41711c912edbc98404c623")
		open_data.get_museo_de_lima

Chillon will interpret that call and transform the method to the -arguibly- ugly GUID code of "MUSEO-DE-LIMA"

Want more? Oh boy, you are for a treat. Let's say, you want to pull data from some museums. But also more data. Well, just ask for it:

		results = open_data.get_museo_de_lima_and_licen_de_funci_2013

Now you've got a hash filled with some neat info, ready to be perused. Just access if through their IDs:

		results["MUSEO-DE-LIMA"]
		results["LICEN-DE-FUNCI-2013"]

You can chain any number of calls to the server. Just, you know, don't abuse it.

So, chill and relax: Chillon's got your back, yo. 


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
