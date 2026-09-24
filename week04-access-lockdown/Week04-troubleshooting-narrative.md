1.) How do you tell what a file's permissions mean just from ls -l output?
1.A) With the encoded bits and pieces in usually in the first column (ex. -rwxr-xr--)

2.) A shared team directory lets anyone delete anyone else's files. How do you fix that without touching group membership?
2.A) WITH THE STICKY BIT!!! It makes sure that users cannot tamper with what isnt theirs.

3.) How would you give one contractor temporary access to a directory without adding them to the team group?
3.A) ACL rules can be configured to allow a user to have access to a directory without messing with their group membership, and can be revoked easily and quickly when they are finished.

4.) How would you give one contractor temporary access to a directory without adding them to the team group?
4.A) Because then everybody has access and that really defeats the purpose.

5.) Tell me about a time a permission fix didn't behave the way you expected.
5.A) While working in a virtual environment I accidentally configured a main folder ACL and not a subfolder and nobody had access anymore. It took me forever to figure out what i did wrong. But now I'll always look twice before I mess with one.
