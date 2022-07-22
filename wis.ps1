<#
.DESCRIPTION
Shorthand to install packages with WINGET ~1.8 seconds quicker and multiple at the same time

.PARAMETER PackageList
A comma separated list of packages or search strings
Like: "gsudo,Git.Git,Cygwin" , "Powershell Preview,Oh My Posh,Valve.Steam" , or just "clsid2.mpc-hc"

.PARAMETER WinGetParams
Parameters to be passed onto WINGET itself. Doesn't need to be explicitly passed, as it just takes all remaining arguments after $PackageList

.EXAMPLE
PS> wis Jaquadro.NBTExplorer

Installing one package

.EXAMPLE
PS> wis AnyDeskSoftwareGmbH.AnyDesk,Peppy.Osu!

Installing multiple packages

.EXAMPLE
PS> wis WizTree, DuongDieuPhap.ImageGlass -s winget

Installing multiple packages with "-s winget" being passed to WINGET itself

(side note, I have no idea how Powershell knows that the "-s" begins the $WinGetParams. This will probably break with a weirdly named package in the future.)

.EXAMPLE
PS> wis "Powershell Preview", Valve.Steam

Installing multiple packages, with one package being a search term.

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
    $PrintString = "NOW INSTALLING: $Package"
    Write-Output $PrintString
    Write-Output ("-"*($PrintString.Length))

    WINGET install "$Package" $WinGetParams
}