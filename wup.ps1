<#
.DESCRIPTION
Shorthand to update packages with WINGET ~1.6 seconds quicker and multiple at the same time

.PARAMETER PackageList
A comma separated list of packages or search strings
Like: "gsudo,Git.Git,Cygwin" , "Powershell Preview,Oh My Posh,Valve.Steam" , or just "clsid2.mpc-hc"

.PARAMETER WinGetParams
Parameters to be passed onto WINGET itself. Doesn't need to be explicitly passed, as it just takes all remaining arguments after $PackageList

.EXAMPLE
PS> wup Jaquadro.NBTExplorer

Updating one package

.EXAMPLE
PS> wup AnyDeskSoftwareGmbH.AnyDesk,Peppy.Osu!

Updating multiple packages

.EXAMPLE
PS> wup WizTree, DuongDieuPhap.ImageGlass -s winget

Updating multiple packages with "-s winget" being passed to WINGET itself

(side note, I have no idea how Powershell knows that the "-s" begins the $WinGetParams. This will probably break with a weirdly named package in the future.)

.EXAMPLE
PS> wup "Powershell Preview", Valve.Steam

Updating multiple packages, with one package being a search term.

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
    $PrintString = "NOW UPDATING: $Package"
    Write-Output $PrintString
    Write-Output ("-"*($PrintString.Length))

    WINGET upgrade "$Package" $WinGetParams
}