
#!/bin/bash
# NA PuTTY tworzymy pary kluczy: prywatny i publiczny
# In the "Parameters" section choose SSH2 DSA and press Generate
#create the hide folder in user directory with public key
# name of file with public key you can not change
mkdir .ssh && cd .ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAhBVjWECGHGNTsrYvFrsDvwWNvLbDciePf9ghX3s8yiJhzge4js7vD1OyOL1cs7CuiLJZ/dM2cavdsvw8P90romWm1FXzKOPc0bdsm6GJeIUQemWfuSrrSilukqYWkm1J7cEI8Hw1tbnTCp2Rpk0vIY13F2Y4NIDUg8x0pieSZR2SWsDFrFcz+j02GzonCaYz6lj9jRuV00Md9YQ+NfqYYNa7F3rLEMWIj2MqCBFgRvrcgli+I++64UrHaRskAnuFoQk11Aa8zBe9INZ573Nm7g1gsX3MxgU/vdPhVM86POjdHhJdXocCYsuhFje8uwq+jdDaFqiIZCIPn7o/xOV5bw== rsa-key-20190428"> authorized_keys
chmod +x authorized_keys

#./key_log
