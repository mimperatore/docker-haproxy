# Auto-reconfiguring Haproxy, intended to run as a Global service in a CoreOS cluster

### Usage

To setup a new [CoreOS] cluster with this Haproxy service alrady configured, simply.use the companion project [coreos-vagrant].

    $ git clone git@github.com:mimperatore/coreos-vagrant.git
    $ cd coreos-vagrant
    $ vagrant up # this will start a 3-node cluster, with this haproxy service already running (uses cloud-init)

If you already have a [CoreOS] cluster running and want to deploy this service using [Fleet]:

    $ git clone git@github.com:mimperatore/docker-haproxy.git
    $ #(copy haproxy.service to one of the CoreOS machines)
    $ fleetctl submit haproxy.service
    $ fleetctl start haproxy

### Contributing

Feedback and contributions are welcome.

### License

This project is released under the [MIT License][mit].

[CoreOS]: https://coreos.com/
[coreos-vagrant]: https://github.com/mimperatore/coreos-vagrant
[mit]: http://www.opensource.org/licenses/MIT
