cat /home/compsan/BLUEPROD/LogFiles/PhaseOne_jobs.log | mail -s "Trail : One" dishant@omnipayments.com
mail -s "Trail : Two" dishant@omnipayments.com <<< 'Trail : Two'
echo "Trail : Two" | mail -s "Trail : Two" dishant@omnipayments.com
mail -s "Trail : Three" ankita.harad@omnipayments.com -c vishal@omnipayments.com -b dishant@omnipayments.com # Error
mail -s "Trail : Four" ankita.harad@omnipayments.com,vishal@omnipayments.com,dishant@omnipayments.com # Error
mail -a /home/compsan/BLUEPROD/LogFiles/PhaseOne_jobs.log -s "Trail : Five" dishant@omnipayments.com < /home/compsan/BLUEPROD/LogFiles/PhaseOne_jobs.log
