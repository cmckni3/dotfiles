#!/usr/bin/env bats

if [[ "$OSTYPE" == "darwin"* ]]; then

  load test_helper

  @test "installs homebrew" {
    run sh homebrew/install.sh
    assert_success
    run ls /usr/local/Cellar
    echo "$output"
    echo "${lines[0]}"
    [ "${lines[0]}" != "ls: /usr/local/Cellar: No such file or directory" ]
  }

  @test "installs taps and common formulae and casks" {
    run sh homebrew/common.sh
    echo "$output"
    echo "${#lines[@]}"
    assert_success
  }

  @test "installs optional formulae" {
    run sh homebrew/optional-formulae.sh
    echo "$output"
    echo "${#lines[@]}"
    assert_success
  }

  @test "installs optional casks" {
    run sh homebrew/optional-casks.sh
    echo "$output"
    echo "${#lines[@]}"
    assert_success
  }

fi
