# Replicate issue

[StackOverflow link is here](https://stackoverflow.com/questions/75481450/cant-access-to-containerlized-sveltekit-app-from-different-hosts-in-docker-swar)

How to replicate:

1. Create two instances on Vultr and put them in a VPC network
2. Create a Docker Swarm cluster using private ip addresses of the VPC
3. Run `docker stack deploy -c stack.yml demo`
4. Enter inside both curl containers and run `curl demo-app:3000`. You'll see that only curl-container on the same host of demo-app-container gets the response, while the other curl-container infinitely waits the response.
