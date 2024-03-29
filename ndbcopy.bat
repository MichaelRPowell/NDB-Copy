::Backup NDB Files
robocopy \\remote\NDB D:\NDB.Backups /MIR /W:30 /R:5000

::Copy NDB Files to Remote
robocopy D:\NDB \\remote\NDB /MIR /W:30 /R:5000

::Copy NDB Files to Local
robocopy D:\NDB C:\Program\NDB /MIR /W:30 /R:5000
