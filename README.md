# TerraformCompletion

- [TerraformCompletion](#terraformcompletion)
  - [About](#about)
  - [Features](#features)
  - [Requirements](#requirements)
  - [Installation](#installation)
  - [Using](#using)
  - [Contributing](#contributing)
  - [Links](#links)

## About
PowerShell module provides Terraform command completion for PowerShell.

## Features
- Completion based on [Terraform native shell tab-completion support](https://www.terraform.io/cli/commands#shell-tab-completion)
- Suports PowerShell alias, i.e.:
    ```powershell
    New-Alias -Name tf -Value terraform.exe
    ```

## Requirements
* Powershell >= 5.1
* Terraform CLI in the PATH environment variable ($env:PATH)

## Installation
```powershell
Install-Module -Name TerraformCompletion -Scope CurrentUser
```
## Using
After started a new PowerShell session you can import the module:
```powershell
Import-Module TerraformCompletion
```

But i recommend to use a [PowerShell profile](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_profiles?view=powershell-7.2):
```powershell
if (!(Test-Path -Path $PROFILE)) {
    New-Item -ItemType File -Path $PROFILE -Force
}
Add-Content $PROFILE 'Import-Module TerraformCompletion'
```

This loads the module everytime a new PowerShell session is started.

## Contributing
Just open a PR. :-)

## Links
[TerraformCompletion @ PowerShell Gallery](https://www.powershellgallery.com/packages/TerraformCompletion)
