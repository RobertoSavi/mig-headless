# syntax=docker/dockerfile:1
# Dockerfile for the helper service
FROM webratio/httpd-with-curl:2.4.29

# Copy necessary scripts and files into the container
COPY ./run_tests.sh /run_tests.sh
COPY ./test1.json /test1.json