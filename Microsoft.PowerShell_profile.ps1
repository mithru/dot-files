set-alias vim "C:/Program Files (x86)/Vim/Vim74/vim.exe"
set-alias c "clear" 
set-alias v "vim" 
set-alias hi "history" 
set-alias p "pwd" 
 
# To edit the Powershell Profile
# (Not that I'll remember this)

Function Edit-Profile
{
    vim $profile
}

# To edit Vim settings
Function Edit-Vimrc
{
    vim $HOME\_vimrc
}

function prompt
{
	Write-Host ("-> ") -nonewline -foregroundcolor Green
	return " " 
}

function x
{
	exit
}

function serve 
{
	python -m SimpleHTTPServer
}

function serveo
{
	chrome http://localhost:8000/ 
	serve
}

function chrome($url)
{
	[System.Diagnostics.Process]::Start("chrome.exe",$url)
}

function ip
{
	ipconfig | Select-String IPv4
}
