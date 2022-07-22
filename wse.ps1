<#
.DESCRIPTION
Shorthand to search packages with WINGET ~1.7 seconds quicker (but this time just one at a time)

.PARAMETER SearchString
A search string
Like: "gsudo" , "Powershell Preview" , or "clsid2.mpc-hc"

.PARAMETER WinGetParams
Parameters to be passed onto WINGET itself. Doesn't need to be explicitly passed, as it just takes all remaining arguments after $PackageList

.EXAMPLE
PS> wup Jaquadro.NBTExplorer

Searching a package

.EXAMPLE
PS> wup "Powershell Preview"

Searching another package

.EXAMPLE
PS> wup WizTree -s winget

Searching a package with "-s winget" being passed to WINGET itself

(side note, I have no idea how Powershell knows that the "-s" begins the $WinGetParams. This will probably break with a weirdly named package in the future.)

.SYNOPSIS
see: description
#>

Param(
    [Parameter(Mandatory, Position=0, ParameterSetName='Normal')]
    [String]
    $SearchString,
    [Parameter(ValueFromRemainingArguments=1, ParameterSetName='Normal')]
    [String[]]
    $WinGetParams
)

WINGET search "$SearchString" $WinGetParams