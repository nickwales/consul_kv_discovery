#### Service Discovery and Configuration using the KV Store

A basic example deployment using the KV store to register and discover services. 

## Instructions
Ensure Consul is installed locally, instructions [here|https://developer.hashicorp.com/consul/docs/install].

Start up Consul in development mode: `consul dev`

In a terminal start the client with `./client.sh`

In a second terminal start the registering service with `./register.sh`

The registering client will start up, create a key, destroy itself after 20 seconds
and clean up they key. 