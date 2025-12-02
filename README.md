# logback-logging-app
logback-logging-app


curl -k http://localhost:8088/services/collector/event -H "Authorization: Splunk 08b7d608-7978-4e49-9e5c-651105a66a55" -d "{\"event\": \"test message\", \"sourcetype\": \"_json\"}"
