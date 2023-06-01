$server = "KASPERSKYSERVER"

cd "\\$server\KLSHARE\Packages\NetAgent*\exec"

		IF ($? -eq $true)
		{
			msiexec /i ".\Kaspersky Network Agent.msi" /qn DONT_USE_ANSWER_FILE=1 SERVERADDRESS=$server EULA=1
		}
		else
		{
			echo "Error Kasperksy install"
		}
