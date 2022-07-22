<#
.DESCRIPTION
Create and (over)write  a file from the terminal.

.PARAMETER File
Path to the output file; may be absolute or relative.

.PARAMETER Contents
File contents of output file; if this is not passed it will be asked interactively.

.PARAMETER FromBatch
Internal switch to enable small tweaks when using CMD as opposed to Powershell.

.EXAMPLE
PS> conn bunger.txt
Normal interactive mode.

.EXAMPLE
PS> conn -File bunger.txt
File passed explicitly.

.EXAMPLE
PS> Write-Output "aaaaaaaaaaaaa" | conn bunger.txt
File contents being piped in.

.EXAMPLE
PS> conn bunger.txt -Contents "aaaaaaaaaaaaa"
File Contents passed explicitly.

.EXAMPLE
PS> conn bunger.txt "aaaaaaaaaaaaa"
File path and contents passed implicitly.

.SYNOPSIS
see: description
#>

Param(
    [Parameter(Mandatory, Position=0, ParameterSetName='Normal')]
    [String]
    $File,
    [Parameter(ValueFromPipeline, Position=1, ParameterSetName='Normal')]
    [String]
    $Contents,
    [Switch]
    $FromBatch
)

<#
ignore
    [Parameter(Mandatory=$false,ParameterSetName='e')]
    [Switch]
    $DoNothing,
    [Parameter(Mandatory=$false,ParameterSetName='e')]
    [Switch]
    $Overwrite,
    [Parameter(Mandatory=$false,ParameterSetName='e')]
    [Switch]
    $Append,

    [Parameter(Mandatory=$false,ParameterSetName='x')]
    [ValidateSet("o","a","n")]
    [String]
    $Mode
#>

<#
ignore
If ($Mode) {
    $Response = $Mode
} ElseIf ($DoNothing) {
    $Response = "n"
} ElseIf ($Overwrite) {
    $Response = "o"
} ElseIf ($Append) {
    $Response = "a"
} Else {
    $Response = "_"
}

###

# check if $FILEPATH already exists
If (Test-Path -Path $File) {
    If ($Response -eq "_") {
        Write-Output "The file `"$File`" already exists."
        $Response = (Read-Host -Prompt "Would you like to overwrite (o), append (a), or stop (n)? (o/a/n)").ToLower()
    }

    Switch ($Response) {
        "o" { Exit 2 } 
        "a" { continue } # do nothing for append, it's the default behavior
        "n" { Remove-Item $File }
        Default {
            Throw "Invalid response: $Response"
        }
    }
}
#>

If ($Contents) {
    $Contents > $File

} Else {
    If ($FromBatch) {
        Write-Output "End with Ctrl+C twice:"
        Write-Output "----------------------"

    } Else {
        Write-Output "End with Ctrl+C:"
        Write-Output "----------------"

    }

    # Read-Host only takes 1 line when called, so it is called in a loop and the input is appended to the file
    # this loop should mimic cmd's "CON", which isn't availible in powershell
    While ($true) {
        Read-Host >> $File

    }
}