https://puppet.com/blog/docker-image-build-module-features-for-power-user


puppet module install puppetlabs-image_build --version 0.1.1

puppet docker build  Build a Docker image from Puppet code

docker run -d -p 8082:80 puppet/nginx

puppet docker dockerfile

puppet docker build --os centos
Error: puppet docker currently only supports Ubuntu, Debian, Alpine and Centos base images
Error: Try 'puppet help docker build' for usage

###

puppet docker build --from centos:6 --no-inventory

puppet docker dockerfile  --from centos:6

docker run -d -p 8084:80 puppet/ngonx
