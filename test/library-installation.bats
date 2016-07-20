#!/usr/bin/env bats

@test "Install neopixel library" {
  # Copy test data to input
  cp /test/data/project.properties /input
  # Run buildpack
  /bin/run
  # Check if library was downloaded and has its metadata
  [ -f "/output/lib/neopixel/library.properties" ]
}
