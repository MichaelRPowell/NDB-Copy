::Backup NDB Files
robocopy \\remote\NDB D:\NDB.Backups\Remote /MIR /W:30 /R:5000
robocopy C:\Program\NDB D:\NDB.Backups\Local /MIR /W:30 /R:5000
timeout /t 30

::Copy NDB Files to Remote
robocopy D:\NDB \\remote\NDB /MIR /W:30 /R:5000
timeout /t 30

::Copy NDB Files to Local
robocopy D:\NDB C:\Program\NDB /MIR /W:30 /R:5000
timeout /t 30
