#!/usr/bin/env bats

if [[ "$OSTYPE" == "darwin"* ]]; then

  load test_helper

  @test "installs homebrew" {
    run sh homebrew/install.sh
    assert_success
    run ls /usr/local/Cellar
    echo $output
    echo ${lines[0]}
    [ ! ${lines[0]} = "ls: /usr/local/Cellar: No such file or directory" ]
  }

  @test "installs taps, formula, and casks" {
    run sh homebrew/formula.sh
    echo $output
    refute_line(7)
    assert_success
  }

fi

