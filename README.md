# Ruby / Rails Vagrant Box

Pretty basic setup for running Ruby and Rails on a Vagrant box. Just put the
Vagrantfile and bootstrap.sh file in a directory and `vagrant up` and you are
all set.

## Rails Considerations

Only thing to note is that when you want to run `rails s` on a rails project,
Vagrant binds to 0.0.0.0 and not 127.0.0.1 so you need need run
`rails s -b 0.0.0.0`. I find this to be inconvenient so I have setup an alias
for this command to be `rs` (so you should use that command instead of the
longer command). Once you're up and running you may go to http://localhost:3000
in your browser to view your project
