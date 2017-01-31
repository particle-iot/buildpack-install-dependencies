#!/usr/bin/env bats

teardown() {
  rm -rf ~/.particle
}

@test "Use default API endpoint" {
  # Run buildpack
  /bin/run
  # Look for default API endpoint
  cat ~/.particle/particle.config.json | grep '"apiUrl": "https://api.particle.io"'
  [ "$?" -eq 0 ]
}

@test "Override default API endpoint" {
  export API_URL="http://foo.bar"
  # Run buildpack
  /bin/run
  # Look for default API endpoint
  cat ~/.particle/particle.config.json | grep '"apiUrl": "http://foo.bar"'
  [ "$?" -eq 0 ]
}
