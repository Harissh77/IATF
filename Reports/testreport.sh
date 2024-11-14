#!/bin/bash

export TESTMO_TOKEN="testmo_api_eyJpdiI6IjJJbTVBL0lhSnpTN3ozWkpaWG4rdkE9PSIsInZhbHVlIjoiSEN1VGVlc2dsaTVkWlJZd1NrOGhRNkZON2RhMlREZWVyNlQ4WUpBNjRmZz0iLCJtYWMiOiI3ZWU4NDgxOTRhNTEzNGE4MjNjOTRkZTdmNTcyNDIzNmY4MWZjMDQ2NDAxNTM4YjJiYTg0YTdmYTU2YzRlMjNmIiwidGFnIjoiIn0="
echo "--------"
echo $TESTMO_TOKEN

testmo automation:run:submit --instance https://harishgautham.testmo.net --project-id 1 --name "Test Report" --source "IntegrationTest" --results **/target/surefire-reports/TEST-*.xml'