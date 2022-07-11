# Create Nat Adapter Hyper-v 
New-VMSwitch -Name "NAT" -SwitchType Internal
Timeout 5
New-NetIPAddress -IPAddress 192.168.200.1 -PrefixLenght 24 -InterfaceAlias "vEthernet (NAT)"
New-NetNat -Name NAT -InternalIPInterfaceAddressPrefix 192.168.200.0/24
