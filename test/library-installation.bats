#!/usr/bin/env bats

@test "Install neopixel library" {
  # Copy test data to input
  cp -r /test/data/* /input
  # Run buildpack
  /bin/run
  # Check if library was downloaded and has its metadata
  [ -f "/output/lib/neopixel/library.properties" ]
}
