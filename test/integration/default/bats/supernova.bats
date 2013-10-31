#!/usr/bin/env bats
 
@test "supernova is installed" {
which supernova
}
 
@test "supernova config exists" {
cat /home/vagrant/.supernova
}
 
@test "run supernova" {
supernova myaccount list
}
 
@test "novaclient installed" {
which nova
}
