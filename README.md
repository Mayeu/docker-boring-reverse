# Boring Reverse

This is a boring reverse proxy to run on your docker host.

It is based on the official NGINX image (1.15 while writting this README).

## How to use

You should be able to use any [of the official
configuration](https://hub.docker.com/_/nginx) with this image, but supporting
them all is not a goal.

To create a reverse proxy to your desired URL you have to set the
`REVERSE_TARGET` to the desired value when running the container.

Example:
```
$ docker run -it -p 8080:80 --env REVERSE_TARGET='https://mayeu.me' boring-reverse
# In another terminal
$ curl localhost:8080
<!doctype html>
<html lang="en" class="bg-vdgb lgb sans-serif">
<head>
	<meta name="generator" content="Hugo 0.54.0" />
    <title>Hi, I&#39;m Mayeu</title>
    <base href="https://mayeu.me">
    ...
```

That's all.
