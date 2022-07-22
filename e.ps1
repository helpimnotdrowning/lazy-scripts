<#
.DESCRIPTION
Shorthand for "explorer", can open many directories at the same time

.PARAMETER Directories
List of directories to open

.PARAMETER FromBatch
Internal switch to enable small tweaks when using CMD as opposed to Powershell

.EXAMPLE
PS> e "C:\Users\owo\Desktop"
Single directory

.EXAMPLE
PS> e "C:\Users\owo\VirtualBox VMs" "../VirtualBox VMs" bk/vms
Multiple directories

.SYNOPSIS
see: description
#>

Param(
    [Parameter(Mandatory, Position=0, ParameterSetName='Normal')]
    [String[]]
    $Directories,
    [Switch]
    $FromBatch
)

ForEach ( $Directory in $args ) {
    If (-not (Test-Path -Path $Directory)) {
        Write-Output "Warning: the directory `"$Directory`" does not exist!"

    } ElseIf (-not (Test-Path -Path $Directory -PathType Container)) {
        Write-Output "Warning: the path `"$Directory`" is not a directory!"

    } Else {
        EXPLORER $Directory

    }
}