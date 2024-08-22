#!/usr/bin/env sh

if [[ "$OSTYPE" == "darwin"* ]]; then

  FORMULAS=(
    amazon-ecs-cli
    aws-shell
    awscli
    # CloudWatch Logs cli tool
    awslogs
    # CloudTrail cli tool
    trailscraper
  )

  echo 'Installing aws formulae'

  brew install ${FORMULAS[@]}

  echo 'Cleaning up'

  brew cleanup

fi
