#Author: Carlo Nicolò aka Karlitos

function press_enter
{
    echo ""
    echo -n "Press Enter to continue"
    read
    clear
}


#Start webscarab
sh -c "$HOME/SecurityTestingTools/webscarabScript.sh" &

selection=
until [ "$selection" = "0" ]; do
    echo ""
    echo "PROGRAM MENU"
    echo "1 - Start Tomcat"
    echo "2 - Shutdown Tomcat"
    echo ""
    echo "0 - exit program"
    echo ""
    echo -n "Enter selection: "
    read selection
    echo ""
    case $selection in
        1 ) sh -c "$HOME/SecurityTestingTools/apache-tomcat-7.0.59/bin/startup.sh"; press_enter ;;
        2 ) sh -c "$HOME/SecurityTestingTools/apache-tomcat-7.0.59/bin/shutdown.sh" ; press_enter ;;
        0 ) sh -c "$HOME/SecurityTestingTools/apache-tomcat-7.0.59/bin/shutdown.sh" ; exit ;;
        * ) echo "Please enter 1, 2, or 0"; press_enter
    esac
done

echo "Ciao Ciao"








