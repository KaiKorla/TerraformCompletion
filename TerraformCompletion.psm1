$terraformExecutable = "terraform"
$terraformPredictionEnvironmentVariable = "ENV:\COMP_LINE"

$argumentCompleter = {
    Param($wordToComplete, $commandAst, $cursorPosition)
    
    if($wordToComplete -eq "") { $wordToComplete = " " }
    
    $newItem = New-Item -Path $terraformPredictionEnvironmentVariable -Value $wordToComplete
    Invoke-Expression -Command $terraformExecutable | ForEach-Object { [System.Management.Automation.CompletionResult]::new($_, $_, 'Command', $_) }
    Remove-Item -Path $terraformPredictionEnvironmentVariable
}

# Register for [$terraformExecutable]
Register-ArgumentCompleter -Native -CommandName $terraformExecutable -ScriptBlock $argumentCompleter

# Register for [$terraformExecutable].exe
Register-ArgumentCompleter -Native -CommandName "${terraformExecutable}.exe" -ScriptBlock $argumentCompleter

# Register for aliases
Get-Alias -Definition "terraform*" | ForEach-Object { Register-ArgumentCompleter -Native -CommandName $_.Name -ScriptBlock $argumentCompleter }
