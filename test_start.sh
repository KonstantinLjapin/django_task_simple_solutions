#!/bin/bash
# need chmod +
sudo docker compose up;
sudo docker stop $(sudo docker ps -a -q);
sudo docker rm $(sudo docker ps -a -q);
sudo docker rmi $(sudo docker images --format="{{.Repository}} {{.ID}}" |
                  grep "^django_task_simple_solutions-django" | cut -d' ' -f2);