{pagebreak}

#### Tutorial
Please use the connection details listed in previous page, if you are wanting help or general chat reguarding this book or anything related to it.

Kvirc is a very powerful tool. It has full scripting capabilities [^KVSDocs]. Even capable of creating a window that a user could interact with.

To getting started:

1. Install, this is dependent upon your platform but should be fairly straight forward. Available from http://www.kvirc.net/?id=releases&lang=en
2. You need to add a new server to KVirc's server list.
    A simple script that can do this for you is:
    
    ```KSL
      if(!$serverdb.networkexists(OFTC)) {
          serverdb.addNetwork -q OFTC
          serverdb.addServer OFTC irc.oftc.net
          serverdb.setServerJoinChannels OFTC irc.oftc.net #twp-d:

          dialog.textinput (Your nickname?,<center>What is your nickname?</h1></center>,"Ok")
          {
              serverdb.setServerNickName OFTC irc.oftc.net #twp-d $0
          }
      }
    ```
    Remember to replace <nick> with your nickname.
    If you need to change this at any time or if this fails to work, look at settings->Configure Servers and find under the network (OFTC) the given server (irc.oftc.net) to modify.
3. Join the server, doable by this one liner command:

    ```KSL
      /server irc.oftc.net
    ```
4. Register with nickserv and auto identify with it, again a simple script can be used to automate this.

    ```KSL
          dialog.textinput (Email?,<center>What is your email address?</h1></center>,"Ok")
          {
              %email = $0
              dialog.textinput (Password?,<center>What is your password?</h1></center>,"Ok")
              {
                  %pwsd = $0
                  msg nickserv register %pwsd %email
                  serverdb.setServerConnectCommand OFTC irc.oftc.net msg identify %pwsd
                  msg nickserv identify %pwsd
              }
          }
    ```
    If this fails you will need to do so manually via ``/msg nickserv register`` as well as working out what failed.

T> **To execute the above code**
T>
T> Use this one line code snippet executed in the open irc context input box (it's at the bottom and quite long).
T>
T> ``` KSL
T>   /dialog.textinput -m (Eval?,<center>What do you want to execute?</h1></center>,"Ok") {eval($0)}
T> ```

T> **Learn about nickserv!**
T>
T> As has mentioned there are many different services available. The first one being introduced of course is Nickserv. Have an explore and learn more about it by using ``/msg nickserv help``.

T> **Basic commands**
T>
T> You will need a few commands to get started with. Where <> is required and [] is optional.
T>
T> - /join <channel/nickname>
T> - /quit
T> - /msg <channel/nickname> <msg>
T> - /part [channel]

[^KVSDocs]: http://www.kvirc.net/doc/index.html