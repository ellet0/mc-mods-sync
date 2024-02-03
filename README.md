# Minecraft's mods sync

A quick script written in both Kotlin/JVM and Dart that help you update your mods/mod-pack to all the players without restarting the game or downloading it in game which require additional mod
it compatible with already downloaded and existing mods

you can set up it and use it whatever if you have mods or planning on add mods

## Setup

1. First of all host your mods on [GitHub](https://github.com/), create a GitHub repository using command line or GitHub web interface and upload all the mods in it, update it when you need
2. Download the executable script, you can find it in the GitHub releases, ask all players to download it too
3. Prepare the command which is used before every launch (everytime):

    `java -jar .\syncMinecraftMods.jar {githubRepoOwnerName} {githubRepoName}`
   
    replace {githubRepoOwnerName} with your GitHub username
    and {githubRepoName} with the GitHub repository

    example: `java -jar .\syncMinecraftMods.jar ellet0 the-fantastic-team-mods-fabric`
    
4. Move the file to `.minecraft`
   
    Example on MultiMc launcher: `C:\Users\{username}\AppData\Roaming\MultiMc\instances\1.20.4(1)\.minecraft`
    Example on official Minecraft launcher: `C:\Users\{username}\AppData\Roaming\.minecraft`
5. [Java installation](https://www.oracle.com/java/technologies/javase/jdk17-archive-downloads.html) is required to run the Jar file if you are using the Java version, it's also required to run Minecraft in custom launchers, official minecraft launcher download already download it, but it will be installed internally


That's it, but to run the script there are two ways:

1. The **manual** setup: Create bat script with your command in step 3 and paste it, Make a shortcut to it into the Desktop, and ask the player to
run it before launching the game or ask everytime in a while when you update the mods

2. The **automatic** setup: if the players are using custom launchers like MultiMc, there is probably a place to run command
before launching the game, for MultiMc, click on edit instance, go the settings, then custom commands, enable 
it and paste your command in Pre-launch text field, but one change to it, instead of hardcode the path to the jar file,
use extra environment variables like `
   $INST_MC_DIR` (MultiMc), it will be something like this:

```console
java -jar $INST_MC_DIR\syncMinecraftMods.jar {githubRepoOwnerName} {githubRepoName}
```


## Update mods

You need to update the mods into GitHub repository either by command line or the gui on GitHub web, once the players run 
the script they will get your updates into their local machines

## Dart vs Java version

We have written the exact same script for both Java and Dart

### Java version
1. Require Java to be installed on the user system
2. The same jar file work on Windows/macOS/Linux

### Dart version
1. Doesn't require Java to be installed
2. Needs to be compiled for different operating systems which means you need to download different file depending on your operating system, for now we will only compile for Windows

If you are not sure what to choose, try out both or choose anything