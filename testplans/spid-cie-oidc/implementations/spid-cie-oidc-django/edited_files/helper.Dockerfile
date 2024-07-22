# syntax=docker/dockerfile:1
# Dockerfile for the helper service
FROM webratio/httpd-with-curl:2.4.29

# Copy necessary scripts and files into the container
RUN ls- la
COPY ./run_tests.sh /run_tests.sh
COPY ./test1.json /test1.json
RUN ls- la
RUN curl -v http://localhost:3000

# Make the script executable
RUN chmod +x /run_tests.sh

# Set the entrypoint to run the test script
ENTRYPOINT ["/run_tests.sh", "/session1.txt", "/test1.txt"]
