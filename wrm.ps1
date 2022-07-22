<#
.DESCRIPTION
Shorthand to uninstall packages with WINGET ~2.3 seconds quicker and multiple at the same time

.PARAMETER PackageList
A comma separated list of packages or search strings
Like: "vlc,Moonsworth.LunarClient" , "Plex Media Server, MCreator" , or just "Google.Chrome"

.PARAMETER WinGetParams
Parameters to be passed onto WINGET itself. Doesn't need to be explicitly passed, as it just takes all remaining arguments after $PackageList

.EXAMPLE
PS> wrm Badlion.BadlionClient

Uninstalling one package

.EXAMPLE
PS> wrm TeamViewer.TeamViewer,Peppy.Osu!

Uninstalling multiple packages

.EXAMPLE
PS> wrm Opera.OperaGX, RiotGames.LeagueOfLegends.NA -e

Uninstalling multiple packages with "-e" being passed to WINGET itself

(side note, I have no idea how Powershell knows that the "-e" begins the $WinGetParams. This will probably break with a weirdly named package in the future.)

.EXAMPLE
PS> wrm "Lunar Client", EpicGames.EpicGamesLauncher

Uninstalling multiple packages, with one package being a search term.

.SYNOPSIS
see: description
#>

Param(
    [Parameter(Mandatory, Position=0, ParameterSetName='Normal')]
    [String[]]
    $Packages,
    [Parameter(ValueFromRemainingArguments=1, ParameterSetName='Normal')]
    [String[]]
    $WinGetParams
)

ForEach ( $Package in $Packages ) {
    $PrintString = "NOW UNINSTALLING: $Package"
    Write-Output $PrintString
    Write-Output ("-"*($PrintString.Length))

    WINGET uninstall "$Package" $WinGetParams
}