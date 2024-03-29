::Backup NDB Files
robocopy \\remote\NDB D:\NDB.Backup /MIR /W:30 /R:5000
timeout /t 30

::Copy NDB Files to Remote
robocopy D:\NDB \\remote\NDB /MIR /W:30 /R:5000
timeout /t 30

