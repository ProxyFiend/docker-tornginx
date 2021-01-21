# docker-tornginx
Something I put together so it was easier to put up a hidden service. Based on linuxserver's nginx container.

It's a Nginx server, a PHP instance, and Tor running in a container. It could also be used as a relay, but that is beyond my scope.

### Usage
```docker run -d --name tornginx -v /path/to/appdata:/config```

### FAQ

* What ports do I need to open?

   None. Don't open any ports. Ever. Unless you're running a relay. Hidden services don't need any ports to be public. Everything is meant to be restricted to this container for anonymity.
   
* What about a database?
   
   That is on you. Preferably, if the software you're using has support for sqlite, I'd recommend you to use it to keep everything contained. If you need a proper db, I'd recommend linuxserver's mariadb, or the official mongodb.

* Wait, the only thing I need is a single folder?

   Yep. One folder. And the only reason for that is persistance across sessions so your website doesn't delete itself if the power goes out.
   
