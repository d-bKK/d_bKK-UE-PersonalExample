@ECHO OFF
SET DXC="E:\Epic Games\UE\UE_5.5\Engine\Binaries\ThirdParty\ShaderConductor\Win64\dxc.exe"
IF NOT EXIST %DXC% (
	ECHO Couldn't find dxc.exe under "E:\Epic Games\UE\UE_5.5\Engine\Binaries\ThirdParty\ShaderConductor\Win64"
	GOTO :END
)
%DXC% -HV 2018 -Zpr -O3 -auto-binding-space 0 -Wno-parentheses-equality -disable-lifetime-markers -T ps_6_6 -E MainPS -Fc PostProcessMaterialShaders.d3dasm -Fo PostProcessMaterialShaders.dxil PostProcessMaterialShaders.usf
:END
PAUSE
