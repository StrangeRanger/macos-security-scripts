#!/bin/bash

read -p "We will now disable root. When prompted, you will need to input your password."
dsenableroot -d 
echo "Done!"
