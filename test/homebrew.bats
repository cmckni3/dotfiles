#!/usr/bin/env bats

if [[ "$OSTYPE" == "darwin"* ]]; then

  load test_helper

  @test "installs homebrew" {
    run sh homebrew/install.sh
    assert_success
  }

  @test "installs taps, formula, and casks" {
    run sh homebrew/formula.sh
    assert_success
  }

fi

