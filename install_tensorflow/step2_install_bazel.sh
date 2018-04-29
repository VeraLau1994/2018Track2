#!/usr/bin/env bash

"""
1st Method
"""

# Add Bazel distribution URI as a package source
echo "deb [arch=amd64] http://storage.googleapis.com/bazel-apt stable jdk1.8" | sudo tee /etc/apt/sources.list.d/bazel.list
curl https://bazel.build/bazel-release.pub.gpg | sudo apt-key add -

# Install and update Bazel
sudo apt-get update && sudo apt-get install bazel

# To upgrade to a newer version of Bazel
sudo apt-get upgrade bazel
