#!/bin/bash

echo 	"###################################################################################################################"
echo 	"			 ██████╗ ██████╗  ██████╗ ██████╗  ██████╗██╗         					    "
echo 	"			██╔════╝██╔═══██╗██╔════╝██╔═══██╗██╔════╝██║     					    "
echo 	"			██║     ██║   ██║██║     ██║   ██║██║     ██║     					    "
echo 	"			██║     ██║   ██║██║     ██║   ██║██║     ██║     					    "
echo 	"			╚██████╗╚██████╔╝╚██████╗╚██████╔╝╚██████╗███████╗					    "
echo 	"			 ╚═════╝ ╚═════╝  ╚═════╝ ╚═════╝  ╚═════╝╚══════╝ 					    "
echo 	"                                                                                                                   "
echo 	"###################################################################################################################"
echo 	"                                            AUTO-OSINT V 0.1 Beta                                                            "
echo 	"                       This application was created to automate OSINT                           		    "
echo 	"             It allows you to perform an OSINT at the domain level with different tools of kali options.           "                                                                     
echo 	"                   #Note: The main options in this version are not the last ones.        			    "                                                                                      
echo 	"                                                                                                                   "
echo 	"###################################################################################################################"
#!/bin/bash
echo '*********************************************'
echo 'enter target domain: '
echo 'ex:example.com '
read domain

if [ $domain != '' ]
 then
mkdir resultado
    	echo 'Target domain set to $domain'
    	echo '*********************************************'
    	echo 'The Harvester'
    	echo 'The Harvester Ver HTML' > Resume_$domain.txt
    	theharvester -d $domain -l 50 -b all -f Resume_$domain.html
    	echo 'done!'
    	echo '*********************************************'
    	echo '*********************************************' >> Resume_$domain.txt
	echo '*********************************************' >> Resume_$domain.txt
    	echo 'DMITRY'
    	echo 'DMITRY' >> Resume_$domain.txt
    	dmitry -wise $domain >> Resume_$domain.txt
    	echo 'done!'
    	echo '*********************************************'
    	echo '*********************************************' >> Resume_$domain.txt
	echo '*********************************************' >> Resume_$domain.txt
	echo 'NSLOOKUP'    
	echo 'NSLOOKUP' >> Resume_$domain.txt
    	nslookup www.$domain >> Resume_$domain.txt
    	echo 'done!'
    	echo '*********************************************'
    	echo '*********************************************' >> Resume_$domain.txt
	echo '*********************************************' >> Resume_$domain.txt
	echo 'DNSENUM'
    	echo 'DNSENUM' >> Resume_$domain.txt
    	dnsenum $domain >> Resume_$domain.txt
    	echo 'done!'
    	echo '*********************************************'
    	echo '*********************************************' >> Resume_$domain.txt
	echo '*********************************************' >> Resume_$domain.txt
	echo 'DIG AUTHORITY'
    	echo 'DIG AUTHORITY' >> Resume_$domain.txt
    	dig authority $domain >> Resume_$domain.txt
    	echo 'done!'
    	echo '*********************************************'
    	echo '*********************************************' >> Resume_$domain.txt
	echo '*********************************************' >> Resume_$domain.txt
	echo 'DIG NSSEARCH'
    	echo 'DIG NSSEARCH' >> Resume_$domain.txt
    	dig nssearch $domain >> Resume_$domain.txt
    	echo 'done!'
    	echo '*********************************************'
    	echo '*********************************************' >> Resume_$domain.txt
	echo '*********************************************' >> Resume_$domain.txt
	echo 'DIG ADDITIONAL'
    	echo 'DIG ADDITIONAL' >> Resume_$domain.txt
    	dig additional $domain >> Resume_$domain.txt
    	echo 'done!'
    	echo '*********************************************'
    	echo '*********************************************' >> Resume_$domain.txt
	echo '*********************************************' >> Resume_$domain.txt
	echo 'DIG NSID'
    	echo 'DIG NSID' >> Resume_$domain.txt
    	dig nsid $domain >> Resume_$domain.txt
    	echo 'done!'
    	echo '*********************************************'
    	echo '*********************************************' >> Resume_$domain.txt
	echo '*********************************************' >> Resume_$domain.txt
	echo 'DNSWALK'
    	echo 'DNSWALK' >> Resume_$domain.txt
    	dnswalk -r -d $domain >> Resume_$domain.txt
    	echo 'done!'
    	echo '*********************************************'
   	echo '*********************************************' >> Resume_$domain.txt
	echo '*********************************************' >> Resume_$domain.txt
	echo 'MASSCAN'
    	echo 'MASSCAN' >> Resume_$domain.txt
    	masscan  $domain >> Resume_$domain.txt
    	echo 'done!'
    	echo '*********************************************'
    	echo '*********************************************' >> Resume_$domain.txt
	echo '*********************************************' >> Resume_$domain.txt
	echo 'WHOIS DETAILS'
    	echo 'WHOIS DETAILS' >> Resume_$domain.txt
    	whois $domain >> Resume_$domain.txt
    	echo 'done!'
    	echo '*********************************************'
    	echo '*********************************************' >> Resume_$domain.txt
	echo '*********************************************' >> Resume_$domain.txt
    	echo 'Searching for txt and pdf files on $domain using Goofile'
	echo 'Searching for txt and pdf files on $domain using Goofile' >> Resume_$domain.txt
    	goofile -d $domain -f txt >> Resume_$domain.txt
    	goofile -d $domain -f pdf >> Resume_$domain.txt
	mv *.txt resultado
	mv *.html resultado
	mv *.xml resultado
else 
  echo 'Error! Please enter a domain.'
fi