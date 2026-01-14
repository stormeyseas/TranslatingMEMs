# Adding R to System PATH

## Problem
R is installed but not in the system PATH, preventing direct execution of R commands from the terminal.

## R Installation Location
- **R Version**: 4.4.2
- **R Location**: `C:\Program Files\R\R-4.4.2\bin\x64`
- **R Executable**: `C:\Program Files\R\R-4.4.2\bin\x64\R.exe`
- **Rscript Executable**: `C:\Program Files\R\R-4.4.2\bin\x64\Rscript.exe`

---

## Solutions (Ranked by Recommendation)

### Option 1: Permanently Add R to System PATH (RECOMMENDED)

This is the best long-term solution. It allows you to run R from any terminal session.

#### Steps:
1. Press `Win + X` and select **System** (or right-click **This PC** → **Properties**)
2. Click **Advanced system settings** on the left
3. Click **Environment Variables** button
4. Under **System variables** (or **User variables** if not administrator), find **Path** and click **Edit**
5. Click **New** and add: `C:\Program Files\R\R-4.4.2\bin\x64`
6. Click **OK** on all dialogs
7. **Restart VSCode** (or any open terminal) for changes to take effect

#### Verification:
After restarting VSCode, open a new terminal and run:
```cmd
R --version
```

---

### Option 2: Use Full Path in Commands (IMMEDIATE WORKAROUND)

Instead of running:
```cmd
R -e "source('script.R')"
```

Run with full path:
```cmd
"C:\Program Files\R\R-4.4.2\bin\x64\R.exe" -e "source('script.R')"
```

Or for Rscript:
```cmd
"C:\Program Files\R\R-4.4.2\bin\x64\Rscript.exe" script.R
```

**Advantage**: Works immediately without any PATH changes.  
**Disadvantage**: Commands are longer and less convenient.

---

### Option 3: Create a Batch Script Helper

Create a batch file that adds R to PATH temporarily and executes R commands.

#### Create file `run_r.bat` in project root:
```batch
@echo off
set PATH=C:\Program Files\R\R-4.4.2\bin\x64;%PATH%
R %*
```

#### Usage:
```cmd
run_r.bat -e "source('Models/AI-assisted/Attempt 1/01_derive_species_parameters.R')"
```

---

### Option 4: Set PATH Temporarily in Current Terminal Session

Add R to PATH for the current terminal session only:

```cmd
set PATH=C:\Program Files\R\R-4.4.2\bin\x64;%PATH%
```

Then run R commands normally:
```cmd
R -e "source('Models/AI-assisted/Attempt 1/01_derive_species_parameters.R')"
```

**Advantage**: Quick test without permanent changes.  
**Disadvantage**: Must be repeated for each new terminal session.

---

### Option 5: Use PowerShell Instead of CMD

If using PowerShell, temporarily add to PATH:
```powershell
$env:Path = "C:\Program Files\R\R-4.4.2\bin\x64;" + $env:Path
```

Then run R commands normally.

---

## Recommendation for AI-Assisted Workflows

For the best experience when working with Roo (AI assistant):

1. **Add R to PATH permanently** (Option 1) - This allows Roo to execute R commands directly without modification
2. As a temporary workaround, Roo can use **full paths** (Option 2) until you add R to PATH

---

## Testing the Fix

After implementing your chosen solution, test it with:

```cmd
R --version
```

Should output something like:
```
R version 4.4.2 (2024-10-31 ucrt) -- "Pile of Leaves"
...
```

Then test running an R script:
```cmd
R -e "print('Hello from R!')"
```

Or with Rscript:
```cmd
Rscript -e "print('Hello from R!')"
```

---

## Notes for Future R Installations

If you install a newer version of R in the future, you'll need to update the PATH to point to the new version's bin\x64 directory (e.g., `C:\Program Files\R\R-4.5.0\bin\x64`).
