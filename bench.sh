sudo curl -X PUT -d @php_config.json --unix-socket /run/control.unit.sock  http://localhost/
sleep 10
ab -n 100000 -c 100 http://localhost:8100/ > php.result

sudo curl -X PUT -d @python_config.json --unix-socket /run/control.unit.sock  http://localhost/
sleep 10
ab -n 100000 -c 100 http://localhost:8100/ > python.result

sudo curl -X PUT -d @go_config.json --unix-socket /run/control.unit.sock  http://localhost/
sleep 10
ab -n 100000 -c 100 http://localhost:8100/ > go.result
