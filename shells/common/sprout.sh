export SDM_EMAIL='lucas.willett@sproutsocial.com'

alias ec2list='aws ec2 describe-instances --output text --query '\''Reservations[*].Instances[*].[InstanceId, InstanceType, ImageId, State.Name, LaunchTime, Placement.AvailabilityZone, PrivateIpAddress, [Tags[?Key==`Role`].Value] [0][0], [Tags[?Key==`Environment`].Value] [0][0], [Tags[?Key==`Zone`].Value] [0][0], [Tags[?Key==`Name`].Value] [0][0] ]'\'

alias logs='sdm ssh prod-logstash7-processor-useast1a-01-sudo'

sdm-login () {
  rm -rf /Users/lucaswillett/.sdm/user.key
  while [ ! -f /Users/lucaswillett/.sdm/user.key ]
  do
    sdm login
  done
}

aws-login() {
  AWS_PROFILE=infra-eng-dir-SproutProd-412335208158 aws sso login
}
alias ecrlogin='aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 412335208158.dkr.ecr.us-east-1.amazonaws.com'
alias devme='aws-login && ecrlogin'

alias jdk17='export JAVA_HOME=/usr/local/opt/openjdk@17'

aws-mfa() {
  /usr/local/bin/aws-mfa <<< $(op item get "AWS (Sprout)" --otp)
}

