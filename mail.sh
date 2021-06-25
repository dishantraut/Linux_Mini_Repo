# * ? Sending mails from shell scripts
recipient="dishant_raut@yahoo.com"
subject="Greetings"
message="Welcome to UbuntuPit"
$(mail -s $subject $recipient <<<$message)
echo "hello world" | mail -s "DEMO" dishant_raut@yahoo.com

