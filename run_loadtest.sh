#!/bin/bash

# This should start and run the test. The arguments are:
# 
# users: Number of concurrent users the test will simulate
# duration: For how many seconds the test will run
# baseUrl: Base path to the host providing the service we’re testing. When we move over to Docker Swarm, the baseUrl will need to be changed to the public IP of the Swarm. More on that in part 5.
# After the test has finished, it writes results to the console windows as well as a fancy HTML report into target/gatling/results/.

SUT_BASEURL="http://localhost:6767"
CONCURRENT_USERS=1000
TEST_DURATION_SECS=30

mvn gatling:execute -Dusers=${CONCURRENT_USERS} -Dduration=${TEST_DURATION_SECS} -DbaseUrl=${SUT_BASEURL}
