

local v0 = game:GetService("CoreGui");
local v1 = game:GetService("TweenService");
local v2 = game:GetService("UserInputService");
local v3 = game.Players.LocalPlayer:GetMouse();
local v4 = {};
local v5 = {Enum.UserInputType.MouseMovement};
if v0:FindFirstChild("Shaman") then
	local v197 = 0 - 0;
	while true do
		if (v197 == (580 - (361 + 219))) then
			v0.Shaman:Destroy();
			v0.Tooltips:Destroy();
			break;
		end
	end
end
local function v6(v14)
	local v15 = 320 - (53 + 267);
	local v16;
	while true do
		if (v15 == 1) then
			return v16;
		end
		if (v15 == (0 + 0)) then
			v16 = 413 - (15 + 398);
			for v259, v260 in pairs(v14) do
				v16 = v16 + (983 - (18 + 964));
			end
			v15 = 3 - 2;
		end
	end
end
local v7 = nil;
local v8 = false;
local v9 = {};
task.spawn(function()
	while true do
		local v198 = 0;
		while true do
			if (v198 == (0 + 0)) then
				if (v8 and (v6(v9) > 0)) then
					local v506 = 0 + 0;
					local v507;
					local v508;
					while true do
						if (v506 == 0) then
							v507 = (tick() % (857 - (20 + 830))) / (6 + 1);
							v508 = Color3.fromHSV(v507, 127 - (116 + 10), 1 + 0);
							v506 = 739 - (542 + 196);
						end
						if (v506 == (1 - 0)) then
							for v1249, v1250 in pairs(v9) do
								if v1250.Enabled then
									if (v1249.ClassName == "Frame") then
										v1249.BackgroundColor3 = v508;
									else
										v1249.ImageColor3 = v508;
									end
								end
							end
							break;
						end
					end
				end
				wait();
				break;
			end
		end
	end
end);
local v10 = {Flags={},_flagSetters={},ChangingKeybind=false};
local v11 = (syn and syn.request) or (http and http.request) or http_request or request or httprequest;
v10.GetXY = function(v17, v18)
	local v19, v20 = v18.AbsoluteSize.X, v18.AbsoluteSize.Y;
	local v21, v22 = math.clamp(v3.X - v18.AbsolutePosition.X, 0 + 0, v19), math.clamp(v3.Y - v18.AbsolutePosition.Y, 0 + 0, v20);
	return v21 / v19, v22 / v20;
end;
v10.Window = function(v23, v24)
	v24.Text = v24.Text or "Shaman";
	local v26 = {};
	local v27 = Instance.new("ScreenGui");
	v27.Name = "Shaman";
	v27.Parent = v0;
	v10.ScreenGui = v27;
	local v31 = Instance.new("ScreenGui");
	v31.Name = "Tooltips";
	v31.Parent = v0;
	local function v34(v199)
		local v200 = 0;
		local v201;
		local v202;
		local v203;
		local v204;
		local v205;
		while true do
			if (v200 == (1 + 0)) then
				v201.Size = UDim2.new(0 - 0, 256 - 156, 1551 - (1126 + 425), 19);
				v201.ZIndex = 5;
				v201.Parent = v31;
				v202 = Instance.new("UICorner");
				v202.Name = "UICorner";
				v202.CornerRadius = UDim.new(405 - (118 + 287), 11 - 8);
				v200 = 1123 - (118 + 1003);
			end
			if (v200 == (8 - 5)) then
				v204.Name = "TooltipText";
				v204.Font = Enum.Font.GothamBold;
				v204.Text = v199;
				v204.TextColor3 = Color3.fromRGB(594 - (142 + 235), 217, 984 - 767);
				v204.TextSize = 3 + 8;
				v204.BackgroundColor3 = Color3.fromRGB(1232 - (553 + 424), 481 - 226, 225 + 30);
				v200 = 4 + 0;
			end
			if (2 == v200) then
				v202.Parent = v201;
				v203 = Instance.new("UIStroke");
				v203.Name = "UIStroke";
				v203.Color = Color3.fromRGB(58 + 40, 42 + 56, 56 + 42);
				v203.Parent = v201;
				v204 = Instance.new("TextLabel");
				v200 = 6 - 3;
			end
			if (v200 == (0 - 0)) then
				v201 = Instance.new("Frame");
				v201.Name = "Tooltip";
				v201.AnchorPoint = Vector2.new(0.5, 0 - 0);
				v201.BackgroundColor3 = Color3.fromRGB(23 + 56, 381 - 302, 832 - (239 + 514));
				v201.Visible = false;
				v201.Position = UDim2.new(0.352, 0 + 0, 1329.0741 - (797 + 532), 0);
				v200 = 1;
			end
			if (v200 == (4 + 1)) then
				v204.Size = UDim2.new(0 + 0, v205.X + (23 - 13), 0, 19);
				return v201;
			end
			if (v200 == 4) then
				v204.BackgroundTransparency = 1203 - (373 + 829);
				v204.Size = UDim2.new(731 - (476 + 255), 1230 - (369 + 761), 0 + 0, 34 - 15);
				v204.Parent = v201;
				v204.ZIndex = 6;
				v205 = v204.TextBounds;
				v201.Size = UDim2.new(0 - 0, v205.X + (248 - (64 + 174)), 0 + 0, 27 - 8);
				v200 = 341 - (144 + 192);
			end
		end
	end
	local function v35(v206, v207)
		local v208 = 216 - (42 + 174);
		local v209;
		local v210;
		local v211;
		while true do
			if (v208 == (3 + 0)) then
				v206.MouseMoved:Connect(function()
					v211();
				end);
				break;
			end
			if (v208 == (2 + 0)) then
				v206.MouseEnter:Connect(function()
					local v405 = 0;
					while true do
						if (v405 == (1 + 0)) then
							if v210 then
								v209.Visible = true;
							end
							break;
						end
						if ((1504 - (363 + 1141)) == v405) then
							v210 = true;
							wait(1580.5 - (1183 + 397));
							v405 = 1;
						end
					end
				end);
				v206.MouseLeave:Connect(function()
					local v406 = 0 - 0;
					while true do
						if (v406 == (0 + 0)) then
							v210 = false;
							v209.Visible = false;
							break;
						end
					end
				end);
				v208 = 3 + 0;
			end
			if (v208 == (1975 - (1913 + 62))) then
				v209 = v209(v207);
				v210 = false;
				v208 = 1;
			end
			if (v208 == 1) then
				v211 = nil;
				function v211()
					local v407 = 0 + 0;
					local v408;
					local v409;
					while true do
						if (v407 == (2 - 1)) then
							v209.Position = UDim2.new(v408.X / v409.X, 1933 - (565 + 1368), v408.Y / v409.Y, 0) + UDim2.new(0 - 0, 0, 0, -43);
							break;
						end
						if (v407 == (1661 - (1477 + 184))) then
							v408 = v2:GetMouseLocation();
							v409 = workspace.CurrentCamera.ViewportSize;
							v407 = 1;
						end
					end
				end
				v208 = 2 - 0;
			end
		end
	end
	local v36 = Instance.new("Frame");
	v36.Name = "Main";
	v36.BackgroundColor3 = Color3.fromRGB(26 + 1, 27, 883 - (564 + 292));
	v36.BorderSizePixel = 0 - 0;
	v36.ClipsDescendants = true;
	v36.Position = UDim2.new(0.361 - 0, 304 - (244 + 60), 0.308 + 0, 0);
	v36.Size = UDim2.new(476 - (41 + 435), 450, 1001 - (938 + 63), 247 + 74);
	v36.Parent = v27;
	local v44 = Instance.new("UICorner");
	v44.Name = "UICorner";
	v44.CornerRadius = UDim.new(0, 1130 - (936 + 189));
	v44.Parent = v36;
	local v48 = Instance.new("Frame");
	v48.Name = "Topbar";
	v48.BackgroundColor3 = Color3.fromRGB(25, 25, 9 + 16);
	v48.Size = UDim2.new(0, 450, 0, 1644 - (1565 + 48));
	v48.Parent = v36;
	v48.ZIndex = 2 + 0;
	local v54;
	local v55;
	local v56;
	local v57;
	local function v58(v212)
		local v213 = 1138 - (782 + 356);
		local v214;
		while true do
			if ((267 - (176 + 91)) == v213) then
				v214 = v212.Position - v56;
				v36.Position = UDim2.new(v57.X.Scale, v57.X.Offset + v214.X, v57.Y.Scale, v57.Y.Offset + v214.Y);
				break;
			end
		end
	end
	v48.InputBegan:Connect(function(v215)
		if ((v215.UserInputType == Enum.UserInputType.MouseButton1) or (v215.UserInputType == Enum.UserInputType.Touch)) then
			v54 = true;
			v56 = v215.Position;
			v57 = v36.Position;
			v215.Changed:Connect(function()
				if (v215.UserInputState == Enum.UserInputState.End) then
					v54 = false;
				end
			end);
		end
	end);
	v48.InputChanged:Connect(function(v216)
		if ((v216.UserInputType == Enum.UserInputType.MouseMovement) or (v216.UserInputType == Enum.UserInputType.Touch)) then
			v55 = v216;
		end
	end);
	v2.InputChanged:Connect(function(v217)
		if ((v217 == v55) and v54) then
			v58(v217);
		end
	end);
	local v59 = Instance.new("UICorner");
	v59.Name = "UICorner";
	v59.Parent = v48;
	local v62 = Instance.new("Frame");
	v62.Name = "Frame";
	v62.BackgroundColor3 = Color3.fromRGB(62 - 38, 34 - 10, 1116 - (975 + 117));
	v62.BorderSizePixel = 0;
	v62.Position = UDim2.new(1875 - (157 + 1718), 0, 0.625 + 0, 0 - 0);
	v62.Size = UDim2.new(0 - 0, 1468 - (697 + 321), 0, 11);
	v62.Parent = v48;
	local v69 = Instance.new("Frame");
	v69.Name = "Frame";
	v69.AnchorPoint = Vector2.new(0.5, 2 - 1);
	v69.BackgroundColor3 = Color3.fromRGB(34, 71 - 37, 77 - 43);
	v69.BorderSizePixel = 0;
	v69.Position = UDim2.new(0.5, 0, 1 + 0, 0 - 0);
	v69.Size = UDim2.new(0 - 0, 1677 - (322 + 905), 611 - (602 + 9), 1190 - (449 + 740));
	v69.ZIndex = 2;
	v69.Parent = v62;
	local v78 = Instance.new("UIGradient");
	v78.Name = "UIGradient";
	v78.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(183, 1195 - (245 + 702), 219)),ColorSequenceKeypoint.new(1, Color3.fromRGB(26 + 54, 167, 2092 - (260 + 1638)))});
	v78.Enabled = false;
	v78.Parent = v69;
	local v83 = Instance.new("TextLabel");
	v83.Name = "TextLabel";
	v83.Font = Enum.Font.GothamBold;
	v83.Text = "";
	v83.TextColor3 = Color3.fromRGB(255, 695 - (382 + 58), 818 - 563);
	v83.TextSize = 10 + 2;
	v83.TextXAlignment = Enum.TextXAlignment.Left;
	v83.BackgroundColor3 = Color3.fromRGB(237, 237, 237);
	v83.BackgroundTransparency = 1;
	v83.Position = UDim2.new(0.015 - 0, 0 - 0, 1205 - (902 + 303), 0 - 0);
	v83.Size = UDim2.new(0, 120, 0 - 0, 30);
	v83.ZIndex = 2;
	v83.Parent = v48;
	task.spawn(function()
		local v218 = 0 + 0;
		local v219;
		local v220;
		local v221;
		local v222;
		local v223;
		while true do
			if (v218 == (1692 - (1121 + 569))) then
				v223 = 3;
				while true do
					local v410 = 214 - (22 + 192);
					while true do
						if (v410 == (683 - (483 + 200))) then
							for v1158 = 1, #v219 do
								v83.Text = v219:sub(1464 - (1404 + 59), v1158) .. "|";
								task.wait(v220);
							end
							for v1160 = 2 - 1, 7 - 1 do
								local v1161 = 765 - (468 + 297);
								while true do
									if (v1161 == 0) then
										v83.Text = v219 .. ((((v1160 % 2) == (563 - (334 + 228))) and "|") or " ");
										task.wait(v222 / 6);
										break;
									end
								end
							end
							v410 = 1;
						end
						if (v410 == (3 - 2)) then
							for v1162 = #v219, 0 - 0, -1 do
								v83.Text = v219:sub(1 - 0, v1162) .. "|";
								task.wait(v221);
							end
							for v1164 = 1 + 0, 6 do
								local v1165 = 0;
								while true do
									if (v1165 == (236 - (141 + 95))) then
										v83.Text = (((v1164 % (2 + 0)) == (2 - 1)) and "|") or " ";
										task.wait(v223 / (14 - 8));
										break;
									end
								end
							end
							break;
						end
					end
				end
				break;
			end
			if (v218 == 0) then
				v219 = v24.Text or "EndorisFTAP Reborn";
				v220 = 0.07 + 0;
				v218 = 1;
			end
			if (v218 == 1) then
				v221 = 0.03 - 0;
				v222 = 3 + 0;
				v218 = 2 + 0;
			end
		end
	end);
	local v98 = Instance.new("TextButton");
	v98.Name = "CloseButton";
	v98.Text = "×";
	v98.TextColor3 = Color3.fromRGB(332 - 95, 140 + 97, 237);
	v98.Font = Enum.Font.GothamBold;
	v98.TextSize = 184 - (92 + 71);
	v98.BackgroundColor3 = Color3.fromRGB(126 + 129, 428 - 173, 1020 - (574 + 191));
	v98.BackgroundTransparency = 1 + 0;
	v98.Position = UDim2.new(0.947, 0 - 0, 0.08, 0);
	v98.Size = UDim2.new(0 + 0, 871 - (254 + 595), 0, 22);
	v98.ZIndex = 128 - (55 + 71);
	v98.Parent = v48;
	v98.MouseButton1Click:Connect(function()
		v27.Enabled = false;
	end);
	v98.MouseEnter:Connect(function()
		v1:Create(v98, TweenInfo.new(0.1 - 0, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3=Color3.fromRGB(217, 97, 1889 - (573 + 1217))}):Play();
	end);
	v98.MouseLeave:Connect(function()
		v1:Create(v98, TweenInfo.new(0.1 - 0, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3=Color3.fromRGB(19 + 218, 381 - 144, 1176 - (714 + 225))}):Play();
	end);
	v98.MouseLeave:Connect(function()
		v1:Create(v98, TweenInfo.new(0.1 - 0, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3=Color3.fromRGB(302 - 85, 217, 24 + 193)}):Play();
	end);
	local v110 = Instance.new("ImageButton");
	v110.Name = "MinimizeButton";
	v110.Image = "rbxassetid://10664064072";
	v110.ImageColor3 = Color3.fromRGB(237, 343 - 106, 1043 - (118 + 688));
	v110.BackgroundColor3 = Color3.fromRGB(303 - (25 + 23), 50 + 205, 2141 - (927 + 959));
	v110.BackgroundTransparency = 3 - 2;
	v110.Position = UDim2.new(732.893 - (16 + 716), 0 - 0, 97.155 - (11 + 86), 0 - 0);
	v110.Size = UDim2.new(0, 17, 285 - (175 + 110), 42 - 25);
	v110.ZIndex = 2;
	v110.Parent = v48;
	v110.MouseEnter:Connect(function()
		v1:Create(v110, TweenInfo.new(0.1 - 0, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {ImageColor3=Color3.fromRGB(1990 - (503 + 1293), 452 - 290, 55 + 21)}):Play();
	end);
	v110.MouseLeave:Connect(function()
		v1:Create(v110, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {ImageColor3=Color3.fromRGB(1278 - (810 + 251), 217, 151 + 66)}):Play();
	end);
	local v120 = true;
	v110.MouseButton1Click:Connect(function()
		v120 = not v120;
		v48.Frame.Visible = v120;
		task.spawn(function()
			if v120 then
				wait(0.15 + 0);
			end
			for v253, v254 in pairs(v36:GetChildren()) do
				if (v254.Name == "TabContainer") then
					v254.Visible = v120;
				end
			end
			for v255, v256 in pairs(v36:GetChildren()) do
				if ((v256.Name == "LeftContainer") or ((v256.Name == "RightContainer") and v256.Visible)) then
					v256.Size = (v120 and UDim2.new(0 + 0, 701 - (43 + 490), 0, 287)) or UDim2.new(0, 901 - (711 + 22), 0 - 0, 859 - (240 + 619));
				end
			end
		end);
		v1:Create(v36, TweenInfo.new(0.2 + 0, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size=((v120 and UDim2.new(0 - 0, 30 + 420, 0, 2065 - (1344 + 400))) or UDim2.new(405 - (255 + 150), 450, 0 + 0, 17 + 13))}):Play();
	end);
	local v121 = Instance.new("TextButton");
	v121.Name = "EditButton";
	v121.Text = "";
	v121.BackgroundColor3 = Color3.fromRGB(237, 237, 1012 - 775);
	v121.BackgroundTransparency = 0;
	v121.Position = UDim2.new(0.841 - 0, 1739 - (404 + 1335), 0.226, 406 - (183 + 223));
	v121.Size = UDim2.new(0, 15, 0, 18 - 3);
	v121.ZIndex = 2 + 0;
	v121.Parent = v48;
	Instance.new("UICorner", v121).CornerRadius = UDim.new(1 + 0, 337 - (10 + 327));
	local v131 = Instance.new("UIGradient");
	v131.Name = "UIGradient";
	v131.Enabled = false;
	v131.Color = ColorSequence.new({ColorSequenceKeypoint.new(338 - (118 + 220), Color3.fromRGB(85 + 170, 0, 449 - (108 + 341))),ColorSequenceKeypoint.new(0.2 - 0, Color3.fromRGB(1748 - (711 + 782), 488 - 233, 0)),ColorSequenceKeypoint.new(0.4 + 0, Color3.fromRGB(1819 - (580 + 1239), 758 - 503, 0 + 0)),ColorSequenceKeypoint.new(0.6 + 0, Color3.fromRGB(0 - 0, 159 + 96, 255)),ColorSequenceKeypoint.new(1167.8 - (645 + 522), Color3.fromRGB(1790 - (1010 + 780), 0 + 0, 1214 - 959)),ColorSequenceKeypoint.new(1837 - (1045 + 791), Color3.fromRGB(645 - 390, 0, 389 - 134))});
	v131.Parent = v121;
	task.spawn(function()
		while wait() do
			if v131.Enabled then
				local v290 = 505 - (351 + 154);
				local v291;
				while true do
					if (v290 == 1) then
						for v1125 = 1575 - (1281 + 293), (273 - (28 + 238)) + (2 - 1), 1 do
							local v1126 = 1559 - (1381 + 178);
							local v1127;
							while true do
								if (v1126 == 0) then
									z = Color3.fromHSV(v291 - ((v1125 - (1 + 0)) / 7), 1, 1 + 0);
									if ((v291 - ((v1125 - 1) / 7)) < (0 + 0)) then
										z = Color3.fromHSV((v291 - ((v1125 - (3 - 2)) / (4 + 3))) + (471 - (381 + 89)), 1 + 0, 1);
									end
									v1126 = 1 + 0;
								end
								if ((1 - 0) == v1126) then
									v1127 = ColorSequenceKeypoint.new((v1125 - 1) / (1163 - (1074 + 82)), z);
									table.insert(colors, #colors + 1, v1127);
									break;
								end
							end
						end
						v131.Color = ColorSequence.new(colors);
						break;
					end
					if (v290 == (0 - 0)) then
						v291 = (tick() % (1786 - (214 + 1570))) / (1457 - (990 + 465));
						colors = {};
						v290 = 1 + 0;
					end
				end
			end
		end
	end);
	v121.MouseEnter:Connect(function()
		if not v8 then
			v131.Enabled = true;
		end
	end);
	v121.MouseLeave:Connect(function()
		if not v8 then
			v131.Enabled = false;
		end
	end);
	v121.MouseButton1Click:Connect(function()
		v8 = not v8;
		v131.Enabled = (v8 and true) or false;
		if not v8 then
			for v292, v293 in pairs(v9) do
				if v293.Enabled then
					if (v292.ClassName == "Frame") then
						v1:Create(v292, TweenInfo.new(0.15 + 0, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundColor3=Color3.fromRGB(47 + 1, 814 - 607, 1832 - (1668 + 58))}):Play();
					else
						v1:Create(v292, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {ImageColor3=Color3.fromRGB(674 - (512 + 114), 207, 276 - 170)}):Play();
					end
				end
			end
		else
			for v294, v295 in pairs(v9) do
				if (v295.Type ~= "Toggle") then
					v295.Enabled = true;
				end
			end
		end
	end);
	local v136 = Instance.new("Frame");
	v136.Name = "TabContainer";
	v136.BackgroundColor3 = Color3.fromRGB(62 - 32, 104 - 74, 14 + 16);
	v136.Position = UDim2.new(0 + 0, 0 + 0, 0.0935 - 0, 1994 - (109 + 1885));
	v136.Size = UDim2.new(1469 - (1269 + 200), 218 - 104, 815 - (98 + 717), 1117 - (802 + 24));
	v136.Parent = v36;
	local v142 = Instance.new("UICorner");
	v142.Name = "UICorner";
	v142.CornerRadius = UDim.new(0 - 0, 6 - 1);
	v142.Parent = v136;
	local v146 = Instance.new("Frame");
	v146.Name = "Fix";
	v146.BackgroundColor3 = Color3.fromRGB(30, 30, 5 + 25);
	v146.BorderSizePixel = 0 + 0;
	v146.Position = UDim2.new(0.895 + 0, 0 + 0, 0, 0);
	v146.Size = UDim2.new(0 - 0, 36 - 25, 0 + 0, 285);
	v146.Parent = v136;
	local v153 = Instance.new("Frame");
	v153.Name = "Fix";
	v153.BackgroundColor3 = Color3.fromRGB(13 + 17, 25 + 5, 22 + 8);
	v153.BorderSizePixel = 0 + 0;
	v153.Position = UDim2.new(1433 - (797 + 636), 0, -0.00351, 0 - 0);
	v153.Size = UDim2.new(1619 - (1427 + 192), 4 + 7, 0 - 0, 72 + 7);
	v153.Parent = v136;
	local v160 = Instance.new("ScrollingFrame");
	v160.Name = "ScrollingContainer";
	v160.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	v160.CanvasSize = UDim2.new();
	v160.ScrollBarImageColor3 = Color3.fromRGB(26 + 30, 382 - (192 + 134), 56);
	v160.ScrollBarThickness = 2;
	v160.Active = true;
	v160.BackgroundColor3 = Color3.fromRGB(1531 - (316 + 960), 255, 142 + 113);
	v160.BackgroundTransparency = 1;
	v160.BorderSizePixel = 0 + 0;
	v160.Size = UDim2.new(0, 106 + 8, 0 - 0, 836 - (83 + 468));
	v160.ZIndex = 1808 - (1202 + 604);
	v160.Parent = v136;
	v26.Tab = function(v227, v228)
		local v229 = 0 - 0;
		local v230;
		local v231;
		local v232;
		local v233;
		local v234;
		local v235;
		local v236;
		local v237;
		local v238;
		local v239;
		local v240;
		local v241;
		local v242;
		local v243;
		local v244;
		local v245;
		local v246;
		while true do
			if (v229 == 3) then
				v233.Size = UDim2.new(0 - 0, 296 - 189, 325 - (45 + 280), 23);
				v233.Parent = v232;
				v234 = Instance.new("UICorner");
				v234.Name = "UICorner";
				v234.CornerRadius = UDim.new(0 + 0, 3 + 0);
				v234.Parent = v232;
				v235 = Instance.new("TextLabel");
				v235.Name = "TextLabel";
				v235.Font = Enum.Font.GothamBold;
				v229 = 2 + 2;
			end
			if (v229 == (1 + 0)) then
				v232.Name = "TabFrame";
				v232.BackgroundColor3 = Color3.fromRGB(45 + 210, 472 - 217, 255);
				v232.BackgroundTransparency = 1911.96 - (340 + 1571);
				v232.BorderSizePixel = 0 + 0;
				v232.Position = UDim2.new(1772.067 - (1733 + 39), -(13 - 8), 1034.013 - (125 + 909), 1951 - (1096 + 852));
				v232.Size = UDim2.new(0, 48 + 59, 0, 32 - 9);
				v232.ZIndex = 2 + 0;
				v232.Parent = v231;
				v232.MouseEnter:Connect(function()
					if ((v7 ~= v232) or (v7 == nil)) then
						v1:Create(v232, TweenInfo.new(512.15 - (409 + 103), Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency=(236.93 - (46 + 190))}):Play();
					end
				end);
				v229 = 97 - (51 + 44);
			end
			if (v229 == 2) then
				v232.MouseLeave:Connect(function()
					if ((v7 ~= v232) or (v7 == nil)) then
						v1:Create(v232, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency=0.96}):Play();
					end
				end);
				v233 = Instance.new("TextButton");
				v233.Name = "TabTextButton";
				v233.Font = Enum.Font.SourceSans;
				v233.Text = "";
				v233.TextColor3 = Color3.fromRGB(0 + 0, 0, 1317 - (1114 + 203));
				v233.TextSize = 740 - (228 + 498);
				v233.BackgroundColor3 = Color3.fromRGB(56 + 199, 141 + 114, 255);
				v233.BackgroundTransparency = 1;
				v229 = 666 - (174 + 489);
			end
			if ((12 - 7) == v229) then
				v236.Name = "UIStroke";
				v236.Color = Color3.fromRGB(1973 - (830 + 1075), 592 - (303 + 221), 1337 - (231 + 1038));
				v236.Transparency = 0.45 + 0;
				v236.Parent = v232;
				v237 = Instance.new("Frame");
				v237.Name = "Selected";
				v237.BackgroundColor3 = Color3.fromRGB(1417 - (171 + 991), 255, 255);
				v237.BackgroundTransparency = 0.1 - 0;
				v237.Visible = false;
				v229 = 16 - 10;
			end
			if (v229 == (14 - 8)) then
				v237.BorderSizePixel = 0 + 0;
				v237.Position = UDim2.new(0.067, -(17 - 12), 0.013, 3);
				v237.Size = UDim2.new(0 - 0, 173 - 65, 0, 23);
				v237.Parent = v231;
				v238 = Instance.new("UICorner");
				v238.Name = "UICorner";
				v238.CornerRadius = UDim.new(0 - 0, 1251 - (111 + 1137));
				v238.Parent = v237;
				v239 = Instance.new("UIGradient");
				v229 = 165 - (91 + 67);
			end
			if (v229 == (23 - 15)) then
				v240.ScrollBarImageColor3 = Color3.fromRGB(56, 56, 56);
				v240.BackgroundColor3 = Color3.fromRGB(7 + 19, 26, 26);
				v240.BorderSizePixel = 523 - (423 + 100);
				v240.Position = UDim2.new(0.253 + 0, 0, 0.0935, 0 - 0);
				v240.Selectable = false;
				v240.Size = UDim2.new(0 + 0, 939 - (326 + 445), 0, 1252 - 965);
				v240.Parent = v36;
				v240.Visible = false;
				v241 = Instance.new("UIListLayout");
				v229 = 19 - 10;
			end
			if ((9 - 5) == v229) then
				v235.Text = v228.Text;
				v235.TextColor3 = Color3.fromRGB(237, 948 - (530 + 181), 1118 - (614 + 267));
				v235.TextSize = 43 - (19 + 13);
				v235.BackgroundColor3 = Color3.fromRGB(255, 414 - 159, 255);
				v235.BackgroundTransparency = 2 - 1;
				v235.Size = UDim2.new(0 - 0, 29 + 79, 0 - 0, 47 - 24);
				v235.ZIndex = 1814 - (1293 + 519);
				v235.Parent = v232;
				v236 = Instance.new("UIStroke");
				v229 = 10 - 5;
			end
			if ((33 - 20) == v229) then
				v246.CornerRadius = UDim.new(0 - 0, 12 - 9);
				v246.Parent = v243;
				v230.Section = function(v413, v414)
					v414.Text = v414.Text or "Section";
					v414.Side = v414.Side or "Left";
					local v417 = {};
					local v418;
					if (v414.Side == "Left") then
						v418 = v240;
					else
						v418 = v243;
					end
					local v419 = Instance.new("Frame");
					v419.Name = "Section";
					v419.BackgroundColor3 = Color3.fromRGB(98 - 56, 23 + 19, 9 + 33);
					v419.BackgroundTransparency = 2 - 1;
					v419.Size = UDim2.new(1 + 0, 0 + 0, 0 + 0, 1123 - (709 + 387));
					v419.Parent = v418;
					local v425 = Instance.new("BoolValue", v419);
					v425.Value = false;
					local v427 = Instance.new("Frame");
					v427.Name = "SectionFrame";
					v427.BackgroundColor3 = Color3.fromRGB(1900 - (673 + 1185), 121 - 79, 134 - 92);
					v427.ClipsDescendants = false;
					v427.Size = UDim2.new(1 - 0, 0, 0 + 0, 18 + 5);
					v427.Parent = v419;
					v427.ChildAdded:Connect(function(v510)
						local v511 = 0;
						local v512;
						local v513;
						local v514;
						local v515;
						local v516;
						local v517;
						while true do
							if (v511 == 3) then
								v517 = (30 - 7) + v512 + v516 + 1 + 2;
								v419.Size = UDim2.new(1 - 0, 0 - 0, 1880 - (446 + 1434), v517 + (1289 - (1040 + 243)));
								v511 = 11 - 7;
							end
							if ((1847 - (559 + 1288)) == v511) then
								v512 = 1931 - (609 + 1322);
								v513 = 0;
								v511 = 455 - (13 + 441);
							end
							if (v511 == (7 - 5)) then
								v515 = (v514 and v514.Padding.Offset) or 0;
								v516 = math.max(0 - 0, v513 - 1) * v515;
								v511 = 14 - 11;
							end
							if (v511 == (1 + 3)) then
								v427.Size = UDim2.new(3 - 2, 0, 0 + 0, v517);
								break;
							end
							if (v511 == (1 + 0)) then
								for v1252, v1253 in v427:GetChildren() do
									if v1253:IsA("Frame") then
										local v1309 = 0 - 0;
										while true do
											if (v1309 == (0 + 0)) then
												v512 = v512 + v1253.Size.Y.Offset;
												v513 = v513 + (1 - 0);
												break;
											end
										end
									end
								end
								v514 = v427:FindFirstChildOfClass("UIListLayout");
								v511 = 2;
							end
						end
					end);
					local v433 = Instance.new("UIStroke");
					v433.Name = "UIStroke";
					v433.Color = Color3.fromRGB(35 + 17, 29 + 23, 52);
					v433.Parent = v427;
					local v437 = Instance.new("UICorner");
					v437.Name = "UICorner";
					v437.CornerRadius = UDim.new(0, 3 + 0);
					v437.Parent = v427;
					local v441 = Instance.new("UIListLayout");
					v441.Name = "UIListLayout";
					v441.SortOrder = Enum.SortOrder.LayoutOrder;
					v441.Padding = UDim.new(0 + 0, 2 + 0);
					v441.Parent = v427;
					local v447 = Instance.new("UIPadding");
					v447.Name = "UIPadding";
					v447.PaddingTop = UDim.new(433 - (153 + 280), 66 - 43);
					v447.PaddingLeft = UDim.new(0 + 0, 3);
					v447.PaddingRight = UDim.new(0, 3);
					v447.PaddingBottom = UDim.new(0 + 0, 3);
					v447.Parent = v427;
					local v454 = Instance.new("TextLabel");
					v454.Name = "SectionName";
					v454.Font = Enum.Font.GothamBold;
					v454.Text = v414.Text;
					v454.TextColor3 = Color3.fromRGB(114 + 103, 197 + 20, 158 + 59);
					v454.TextSize = 16 - 5;
					v454.TextXAlignment = Enum.TextXAlignment.Left;
					v454.BackgroundColor3 = Color3.fromRGB(255, 158 + 97, 922 - (89 + 578));
					v454.BackgroundTransparency = 1 + 0;
					v454.Position = UDim2.new(0.0488 - 0, 0, 1049 - (572 + 477), 0 + 0);
					v454.Size = UDim2.new(0 + 0, 16 + 112, 0, 23);
					v454.Parent = v419;
					local v468 = Instance.new("TextButton");
					v468.Name = "SectionButton";
					v468.Font = Enum.Font.SourceSans;
					v468.Text = "";
					v468.TextColor3 = Color3.fromRGB(86 - (84 + 2), 0 - 0, 0 + 0);
					v468.TextSize = 14;
					v468.BackgroundColor3 = Color3.fromRGB(255, 1097 - (497 + 345), 7 + 248);
					v468.BackgroundTransparency = 1 + 0;
					v468.Size = UDim2.new(1334 - (605 + 728), 0 + 0, 0, 23);
					v468.ZIndex = 3 - 1;
					v468.Parent = v419;
					local v480 = Instance.new("ImageButton");
					v480.Name = "SectionButton";
					v480.Image = "rbxassetid://10664195729";
					v480.ImageColor3 = Color3.fromRGB(217, 217, 10 + 207);
					v480.AnchorPoint = Vector2.new(3 - 2, 0 + 0);
					v480.BackgroundColor3 = Color3.fromRGB(706 - 451, 255, 193 + 62);
					v480.BackgroundTransparency = 490 - (457 + 32);
					v480.Position = UDim2.new(1 + 0, -5, 0, 1407 - (832 + 570));
					v480.Size = UDim2.new(0 + 0, 4 + 9, 0 - 0, 13);
					v480.ZIndex = 1;
					v480.Parent = v419;
					v468.Active = false;
					v468.Visible = false;
					v480.Visible = false;
					v417.Label = function(v518, v519)
						local v520 = 0 + 0;
						local v521;
						local v522;
						local v523;
						while true do
							if (v520 == 0) then
								v519.Text = v519.Text or "Label";
								v519.Color = v519.Color or Color3.fromRGB(217, 217, 1013 - (588 + 208));
								v519.Tooltip = v519.Tooltip or "";
								v520 = 2 - 1;
							end
							if (v520 == (1804 - (884 + 916))) then
								v523.Name = "LabelText";
								v523.Font = Enum.Font.GothamBold;
								v523.TextColor3 = v519.Color;
								v520 = 5;
							end
							if (v520 == 6) then
								v523.BackgroundColor3 = Color3.fromRGB(255, 255, 533 - 278);
								v523.BackgroundTransparency = 1;
								v523.Position = UDim2.new(0.0488 + 0, 0, 653 - (232 + 421), 1889 - (1569 + 320));
								v520 = 2 + 5;
							end
							if (v520 == (2 + 6)) then
								return v521;
							end
							if (1 == v520) then
								v521 = {};
								v522 = Instance.new("Frame");
								v522.Name = "Label";
								v520 = 6 - 4;
							end
							if (v520 == (612 - (316 + 289))) then
								v523.Size = UDim2.new(1, 0 - 0, 0, 2 + 25);
								v523.Parent = v522;
								v521.Set = function(v1254, v1255)
									v1255.Text = v1255.Text or v523.Text;
									v1255.Color = v1255.Color or v523.TextColor3;
									v523.Text = v1255.Text;
									v523.TextColor3 = v1255.Color;
								end;
								v520 = 8;
							end
							if (v520 == (1456 - (666 + 787))) then
								v522.Parent = v427;
								if (v519.Tooltip ~= "") then
									v35(v522, v519.Tooltip);
								end
								v523 = Instance.new("TextLabel");
								v520 = 429 - (360 + 65);
							end
							if ((5 + 0) == v520) then
								v523.Text = v519.Text;
								v523.TextSize = 265 - (79 + 175);
								v523.TextXAlignment = Enum.TextXAlignment.Left;
								v520 = 6;
							end
							if ((2 - 0) == v520) then
								v522.BackgroundColor3 = Color3.fromRGB(255, 199 + 56, 255);
								v522.BackgroundTransparency = 1;
								v522.Size = UDim2.new(2 - 1, 0 - 0, 0, 926 - (503 + 396));
								v520 = 184 - (92 + 89);
							end
						end
					end;
					v417.Keybind = function(v524, v525)
						v525.Text = v525.Text or "Keybind";
						v525.Default = v525.Default or Enum.KeyCode.Unknown;
						v525.Callback = v525.Callback or function()
						end;
						v525.Tooltip = v525.Tooltip or "";
						v525.Mode = v525.Mode or "Toggle";
						local v531 = v525.Default;
						local v532 = nil;
						local v533 = v525.Mode;
						local v534 = false;
						if (v525.Flag ~= nil) then
							v10.Flags[v525.Flag] = {Key=(((v531 == Enum.KeyCode.Unknown) and "") or v531.Name),Mode=v533};
						end
						local v535 = Instance.new("Frame");
						v535.Name = "Keybind";
						v535.BackgroundColor3 = Color3.fromRGB(255, 255, 494 - 239);
						v535.BackgroundTransparency = 1 + 0;
						v535.Size = UDim2.new(1 + 0, 0 - 0, 0 + 0, 61 - 34);
						v535.Parent = v427;
						if (v525.Tooltip ~= "") then
							v35(v535, v525.Tooltip);
						end
						local v541 = Instance.new("TextLabel");
						v541.Name = "KeybindText";
						v541.Font = Enum.Font.GothamBold;
						v541.Text = v525.Text;
						v541.TextColor3 = Color3.fromRGB(217, 190 + 27, 104 + 113);
						v541.TextSize = 33 - 22;
						v541.TextXAlignment = Enum.TextXAlignment.Left;
						v541.BackgroundColor3 = Color3.fromRGB(255, 32 + 223, 255);
						v541.BackgroundTransparency = 1 - 0;
						v541.Position = UDim2.new(0.05, 0, 1244 - (485 + 759), 0 - 0);
						v541.Size = UDim2.new(1, 0, 1189 - (442 + 747), 1162 - (832 + 303));
						v541.Parent = v535;
						local v555 = Instance.new("Frame");
						v555.Name = "KeybindFrame";
						v555.BackgroundColor3 = Color3.fromRGB(1014 - (88 + 858), 21 + 47, 57 + 11);
						v555.AnchorPoint = Vector2.new(1 + 0, 789 - (766 + 23));
						v555.BorderSizePixel = 0 - 0;
						v555.Position = UDim2.new(1, -(6 - 1), 0 - 0, 20 - 14);
						v555.Size = UDim2.new(1073 - (1036 + 37), 22 + 8, 0, 29 - 14);
						v555.Parent = v535;
						local v563 = Instance.new("UICorner");
						v563.Name = "KeybindUICorner";
						v563.CornerRadius = UDim.new(0 + 0, 3);
						v563.Parent = v555;
						local v567 = Instance.new("TextLabel");
						v567.Name = "KeybindFrameText";
						v567.Font = Enum.Font.GothamBold;
						v567.Text = ((v531 == Enum.KeyCode.Unknown) and "") or v531.Name;
						v567.TextColor3 = Color3.fromRGB(1697 - (641 + 839), 1130 - (910 + 3), 553 - 336);
						v567.TextSize = 11;
						v567.BackgroundColor3 = Color3.fromRGB(1939 - (1466 + 218), 255, 255);
						v567.BackgroundTransparency = 1;
						v567.Size = UDim2.new(1 + 0, 1148 - (556 + 592), 0 + 0, 823 - (329 + 479));
						v567.Parent = v555;
						local v577 = Instance.new("TextButton");
						v577.Name = "KeybindButton";
						v577.Font = Enum.Font.SourceSans;
						v577.Text = "";
						v577.TextColor3 = Color3.fromRGB(0, 854 - (174 + 680), 0);
						v577.TextSize = 47 - 33;
						v577.BackgroundColor3 = Color3.fromRGB(528 - 273, 183 + 72, 994 - (396 + 343));
						v577.BackgroundTransparency = 1;
						v577.Size = UDim2.new(1 + 0, 1477 - (29 + 1448), 0, 1404 - (135 + 1254));
						v577.Parent = v555;
						local v588 = Instance.new("UIStroke");
						v588.Name = "KeybindUIStroke";
						v588.Color = Color3.fromRGB(316 - 232, 392 - 308, 56 + 28);
						v588.Parent = v555;
						local v592 = v567.TextBounds;
						v555.Size = UDim2.new(1527 - (389 + 1138), v592.X + (584 - (102 + 472)), 0 + 0, 9 + 6);
						v567:GetPropertyChangedSignal("Text"):Connect(function()
							local v976 = 0 + 0;
							while true do
								if (v976 == (1545 - (320 + 1225))) then
									v592 = v567.TextBounds;
									v555.Size = UDim2.new(0, v592.X + 10, 0, 15);
									break;
								end
							end
						end);
						local function v593()
							local v977 = v10.ScreenGui:FindFirstChild("ModeMenu_" .. tostring(v525.Flag or ""));
							if v977 then
								v977:Destroy();
							end
							local v978 = v555.AbsolutePosition;
							local v979 = v555.AbsoluteSize;
							local v980 = Instance.new("Frame");
							v980.Name = "ModeMenu_" .. tostring(v525.Flag or "");
							v980.BackgroundColor3 = Color3.fromRGB(53 - 23, 19 + 11, 30);
							v980.BorderSizePixel = 1464 - (157 + 1307);
							v980.Position = UDim2.new(0, (v978.X + v979.X) - (1919 - (821 + 1038)), 0 - 0, v978.Y + v979.Y + 1 + 1);
							v980.ZIndex = 17760 - 7761;
							v980.Parent = v10.ScreenGui;
							local v988 = Instance.new("UICorner");
							v988.CornerRadius = UDim.new(0 + 0, 9 - 5);
							v988.Parent = v980;
							local v991 = Instance.new("UIStroke");
							v991.Color = Color3.fromRGB(60, 1086 - (834 + 192), 4 + 56);
							v991.Parent = v980;
							local v994 = Instance.new("UIListLayout");
							v994.SortOrder = Enum.SortOrder.LayoutOrder;
							v994.Padding = UDim.new(0, 1 + 0);
							v994.Parent = v980;
							local function v999(v1129, v1130)
								local v1131 = 0;
								local v1132;
								local v1133;
								while true do
									if (v1131 == (1 + 3)) then
										v1133 = Instance.new("UICorner");
										v1133.CornerRadius = UDim.new(0 - 0, 307 - (300 + 4));
										v1133.Parent = v1132;
										v1131 = 2 + 3;
									end
									if (v1131 == 0) then
										v1132 = Instance.new("TextButton");
										v1132.Name = v1129;
										v1132.Font = Enum.Font.GothamBold;
										v1131 = 2 - 1;
									end
									if (v1131 == 2) then
										v1132.BackgroundColor3 = ((v533 == v1129) and Color3.fromRGB(40, 402 - (112 + 250), 20 + 30)) or Color3.fromRGB(87 - 52, 21 + 14, 35);
										v1132.BackgroundTransparency = 0 + 0;
										v1132.Size = UDim2.new(0 + 0, 30 + 30, 0 + 0, 20);
										v1131 = 1417 - (1001 + 413);
									end
									if (v1131 == (11 - 6)) then
										v1132.MouseButton1Click:Connect(function()
											v533 = v1129;
											if (v525.Flag ~= nil) then
												local v1339 = 882 - (244 + 638);
												local v1340;
												while true do
													if (v1339 == (693 - (627 + 66))) then
														v1340 = "";
														if v532 then
															v1340 = v532.Name;
														elseif (v531 ~= Enum.KeyCode.Unknown) then
															v1340 = v531.Name;
														end
														v1339 = 2 - 1;
													end
													if (v1339 == (603 - (512 + 90))) then
														v10.Flags[v525.Flag] = {Key=v1340,Mode=v533};
														break;
													end
												end
											end
											v980:Destroy();
										end);
										v1132.MouseEnter:Connect(function()
											if (v533 ~= v1129) then
												v1132.BackgroundColor3 = Color3.fromRGB(1956 - (1665 + 241), 767 - (373 + 344), 25 + 30);
											end
										end);
										v1132.MouseLeave:Connect(function()
											if (v533 ~= v1129) then
												v1132.BackgroundColor3 = Color3.fromRGB(10 + 25, 35, 35);
											end
										end);
										break;
									end
									if (v1131 == 3) then
										v1132.LayoutOrder = v1130;
										v1132.ZIndex = 26377 - 16377;
										v1132.Parent = v980;
										v1131 = 6 - 2;
									end
									if ((1100 - (35 + 1064)) == v1131) then
										v1132.Text = v1129;
										v1132.TextColor3 = ((v533 == v1129) and Color3.fromRGB(100, 180, 255)) or Color3.fromRGB(180, 180, 131 + 49);
										v1132.TextSize = 21 - 11;
										v1131 = 1 + 1;
									end
								end
							end
							v999("Toggle", 1237 - (298 + 938));
							v999("Hold", 2);
							local v1000 = ((1279 - (233 + 1026)) * 2) + (1667 - (636 + 1030));
							v980.Size = UDim2.new(0, 60, 0 + 0, v1000);
							task.defer(function()
								local v1134 = 0 + 0;
								local v1135;
								while true do
									if (v1134 == (0 + 0)) then
										v1135 = nil;
										v1135 = v2.InputBegan:Connect(function(v1310)
											if ((v1310.UserInputType == Enum.UserInputType.MouseButton1) or (v1310.UserInputType == Enum.UserInputType.MouseButton2)) then
												if (v980 and v980.Parent) then
													local v1354 = v980.AbsolutePosition;
													local v1355 = v980.AbsoluteSize;
													local v1356 = v1310.Position;
													local v1357 = (v1356.X >= v1354.X) and (v1356.X <= (v1354.X + v1355.X)) and (v1356.Y >= v1354.Y) and (v1356.Y <= (v1354.Y + v1355.Y));
													if not v1357 then
														v980:Destroy();
														if v1135 then
															v1135:Disconnect();
														end
													end
												elseif v1135 then
													v1135:Disconnect();
												end
											end
										end);
										break;
									end
								end
							end);
						end
						local v594;
						local v595 = false;
						local v596 = false;
						v577.MouseButton1Click:Connect(function()
							if v594 then
								v594:Disconnect();
							end
							v10.ChangingKeybind = false;
							v595 = false;
							v596 = true;
							task.delay(0 + 0, function()
								v596 = false;
							end);
							v595 = true;
							v10.ChangingKeybind = true;
							task.delay(223 - (55 + 166), function()
								if v10.ChangingKeybind then
									v10.ChangingKeybind = false;
									v595 = false;
								end
							end);
							v567.Text = "...";
							v594 = v2.InputBegan:Connect(function(v1136, v1137)
								if v596 then
									return;
								end
								if (v1136.UserInputType == Enum.UserInputType.MouseButton1) then
									return;
								end
								if (v1136.UserInputType == Enum.UserInputType.MouseMovement) then
									return;
								end
								v594:Disconnect();
								pcall(function()
									if (v1136.KeyCode == Enum.KeyCode.Escape) then
										v567.Text = "";
										v531 = Enum.KeyCode.Unknown;
										v532 = nil;
										if (v525.Flag ~= nil) then
											v10.Flags[v525.Flag] = {Key="",Mode=v533};
										end
									elseif (v1136.UserInputType ~= Enum.UserInputType.Keyboard) then
										local v1328 = 0;
										local v1329;
										while true do
											if (v1328 == (1 + 0)) then
												v531 = Enum.KeyCode.Unknown;
												v532 = v1136.UserInputType;
												v1328 = 1 + 1;
											end
											if (v1328 == 0) then
												v1329 = v1136.UserInputType.Name;
												v567.Text = v1329;
												v1328 = 3 - 2;
											end
											if (v1328 == (299 - (36 + 261))) then
												if (v525.Flag ~= nil) then
													v10.Flags[v525.Flag] = {Key=v1329,Mode=v533};
												end
												break;
											end
										end
									elseif (v1136.KeyCode ~= Enum.KeyCode.Unknown) then
										v567.Text = v1136.KeyCode.Name;
										v531 = v1136.KeyCode;
										v532 = nil;
										if (v525.Flag ~= nil) then
											v10.Flags[v525.Flag] = {Key=v1136.KeyCode.Name,Mode=v533};
										end
									end
								end);
								task.delay(0.15 - 0, function()
									local v1192 = 1368 - (34 + 1334);
									while true do
										if (v1192 == (0 + 0)) then
											v595 = false;
											v10.ChangingKeybind = false;
											break;
										end
									end
								end);
							end);
						end);
						v577.MouseButton2Click:Connect(function()
							v593();
						end);
						v2.InputBegan:Connect(function(v1004, v1005)
							local v1006 = 0;
							local v1007;
							while true do
								if (v1006 == 0) then
									if v595 then
										return;
									end
									if v10.ChangingKeybind then
										return;
									end
									v1006 = 1 + 0;
								end
								if (v1006 == 1) then
									if (v1005 and not v525.BypassGameProcessed) then
										return;
									end
									v1007 = false;
									v1006 = 1285 - (1035 + 248);
								end
								if ((23 - (20 + 1)) == v1006) then
									if (v532 and (v1004.UserInputType == v532)) then
										v1007 = true;
									elseif ((v531 ~= Enum.KeyCode.Unknown) and (v1004.KeyCode == v531)) then
										v1007 = true;
									end
									if v1007 then
										if (v533 == "Toggle") then
											local v1343 = 0 + 0;
											while true do
												if ((319 - (134 + 185)) == v1343) then
													v534 = not v534;
													task.spawn(function()
														pcall(v525.Callback, v534);
													end);
													break;
												end
											end
										elseif (v533 == "Hold") then
											local v1362 = 1133 - (549 + 584);
											while true do
												if (v1362 == (685 - (314 + 371))) then
													v534 = true;
													task.spawn(function()
														pcall(v525.Callback, true);
													end);
													break;
												end
											end
										end
									end
									break;
								end
							end
						end);
						v2.InputEnded:Connect(function(v1008, v1009)
							local v1010 = 0;
							local v1011;
							while true do
								if (v1010 == (0 - 0)) then
									v1011 = false;
									if (v532 and (v1008.UserInputType == v532)) then
										v1011 = true;
									elseif ((v531 ~= Enum.KeyCode.Unknown) and (v1008.KeyCode == v531)) then
										v1011 = true;
									end
									v1010 = 969 - (478 + 490);
								end
								if (v1010 == (1 + 0)) then
									if (v1011 and (v533 == "Hold") and v534) then
										local v1312 = 1172 - (786 + 386);
										while true do
											if (v1312 == (0 - 0)) then
												v534 = false;
												task.spawn(function()
													pcall(v525.Callback, false);
												end);
												break;
											end
										end
									end
									break;
								end
							end
						end);
						if (v525.Flag ~= nil) then
							v10._flagSetters[v525.Flag] = function(v1193)
								if (type(v1193) == "table") then
									local v1291 = 1379 - (1055 + 324);
									local v1292;
									local v1293;
									while true do
										if (v1291 == (1340 - (1093 + 247))) then
											v1292 = v1193.Key or "";
											v1293 = v1193.Mode or v533;
											v1291 = 1 + 0;
										end
										if (v1291 == (1 + 0)) then
											if (v1292 ~= "") then
												local v1363 = 0 - 0;
												local v1364;
												local v1365;
												while true do
													if (v1363 == 0) then
														v1364, v1365 = pcall(function()
															return Enum.KeyCode[v1292];
														end);
														if (v1364 and v1365 and (v1365 ~= Enum.KeyCode.Unknown)) then
															local v1374 = 0 - 0;
															while true do
																if (v1374 == (2 - 1)) then
																	v567.Text = v1365.Name;
																	break;
																end
																if (v1374 == (0 - 0)) then
																	v531 = v1365;
																	v532 = nil;
																	v1374 = 1 + 0;
																end
															end
														else
															local v1375 = 0 - 0;
															local v1376;
															local v1377;
															while true do
																if (v1375 == (0 - 0)) then
																	v1376, v1377 = pcall(function()
																		return Enum.UserInputType[v1292];
																	end);
																	if (v1376 and v1377) then
																		local v1380 = 0 + 0;
																		while true do
																			if (v1380 == (2 - 1)) then
																				v567.Text = v1377.Name;
																				break;
																			end
																			if (v1380 == 0) then
																				v531 = Enum.KeyCode.Unknown;
																				v532 = v1377;
																				v1380 = 689 - (364 + 324);
																			end
																		end
																	end
																	break;
																end
															end
														end
														break;
													end
												end
											else
												v531 = Enum.KeyCode.Unknown;
												v532 = nil;
												v567.Text = "";
											end
											v533 = v1293;
											v1291 = 5 - 3;
										end
										if (v1291 == 2) then
											v10.Flags[v525.Flag] = {Key=v1292,Mode=v533};
											break;
										end
									end
								end
							end;
						end
					end;
					v417.Button = function(v597, v598)
						local v599 = 0;
						local v600;
						local v601;
						local v602;
						local v603;
						local v604;
						while true do
							if (v599 == 5) then
								v603.TextColor3 = Color3.fromRGB(520 - 303, 72 + 145, 907 - 690);
								v603.TextSize = 11;
								v603.TextXAlignment = Enum.TextXAlignment.Left;
								v603.TextYAlignment = Enum.TextYAlignment.Center;
								v599 = 6;
							end
							if (v599 == (0 - 0)) then
								v598.Text = v598.Text or "Button";
								v598.Callback = v598.Callback or function()
								end;
								v598.Tooltip = v598.Tooltip or "";
								v600 = {};
								v599 = 2 - 1;
							end
							if (v599 == 7) then
								v603.Parent = v601;
								v604 = Instance.new("TextButton");
								v604.Name = "TextButton";
								v604.Font = Enum.Font.SourceSans;
								v599 = 1276 - (1249 + 19);
							end
							if (v599 == (6 + 0)) then
								v603.BackgroundColor3 = Color3.fromRGB(992 - 737, 255, 1341 - (686 + 400));
								v603.BackgroundTransparency = 1 + 0;
								v603.Position = UDim2.new(229.0488 - (73 + 156), 0, 0, 0 + 0);
								v603.Size = UDim2.new(812 - (721 + 90), 0 + 0, 3 - 2, 470 - (224 + 246));
								v599 = 11 - 4;
							end
							if (v599 == (6 - 2)) then
								v603 = Instance.new("TextLabel");
								v603.Name = "ButtonText";
								v603.Font = Enum.Font.GothamBold;
								v603.Text = v598.Text;
								v599 = 5;
							end
							if ((2 + 7) == v599) then
								v604.BackgroundTransparency = 1;
								v604.Size = UDim2.new(1, 0 + 0, 0, 20 + 7);
								v604.Parent = v601;
								v604.MouseButton1Click:Connect(function()
									task.spawn(function()
										pcall(v598.Callback);
									end);
								end);
								break;
							end
							if (v599 == (15 - 7)) then
								v604.Text = "";
								v604.TextColor3 = Color3.fromRGB(0 - 0, 0, 0);
								v604.TextSize = 14;
								v604.BackgroundColor3 = Color3.fromRGB(768 - (203 + 310), 255, 2248 - (1238 + 755));
								v599 = 1 + 8;
							end
							if (v599 == (1536 - (709 + 825))) then
								v601.Size = UDim2.new(1, 0, 0, 49 - 22);
								v601.Parent = v427;
								Instance.new("UICorner", v601).CornerRadius = UDim.new(0, 3);
								v602 = Instance.new("UIStroke");
								v599 = 3 - 0;
							end
							if (v599 == (865 - (196 + 668))) then
								v601 = Instance.new("Frame");
								v601.Name = "Button";
								v601.BackgroundColor3 = Color3.fromRGB(157 - 117, 82 - 42, 873 - (171 + 662));
								v601.BackgroundTransparency = 0;
								v599 = 2;
							end
							if (v599 == (96 - (4 + 89))) then
								v602.Color = Color3.fromRGB(192 - 137, 55, 55);
								v602.Thickness = 1 + 0;
								v602.Parent = v601;
								if (v598.Tooltip ~= "") then
									v35(v601, v598.Tooltip);
								end
								v599 = 4;
							end
						end
					end;
					v417.Input = function(v605, v606)
						v606.Placeholder = v606.Placeholder or "Input";
						v606.Flag = v606.Flag or nil;
						v606.Callback = v606.Callback or function()
						end;
						v606.Tooltip = v606.Tooltip or "";
						local v611 = Instance.new("Frame");
						v611.Name = "Input";
						v611.BackgroundColor3 = Color3.fromRGB(1119 - 864, 100 + 155, 255);
						v611.BackgroundTransparency = 1;
						v611.Size = UDim2.new(1, 1486 - (35 + 1451), 1453 - (28 + 1425), 2020 - (941 + 1052));
						v611.Parent = v427;
						if (v606.Tooltip ~= "") then
							v35(v611, v606.Tooltip);
						end
						local v617 = Instance.new("Frame");
						v617.Name = "InputFrame";
						v617.BackgroundColor3 = Color3.fromRGB(245 + 10, 255, 255);
						v617.BackgroundTransparency = 1515 - (822 + 692);
						v617.Size = UDim2.new(1, 0 - 0, 0 + 0, 324 - (45 + 252));
						v617.Parent = v611;
						local v623 = Instance.new("Frame");
						v623.Name = "InputOuter";
						v623.AnchorPoint = Vector2.new(0.5 + 0, 0.5);
						v623.BackgroundColor3 = Color3.fromRGB(68, 68, 24 + 44);
						v623.BorderSizePixel = 0 - 0;
						v623.ClipsDescendants = true;
						v623.Position = UDim2.new(433.5 - (114 + 319), 0, 0.5, 0);
						v623.Size = UDim2.new(0.95 - 0, 0 - 0, 0 + 0, 30 - 9);
						v623.Parent = v617;
						local v632 = Instance.new("UICorner");
						v632.Name = "InputUICorner";
						v632.CornerRadius = UDim.new(0 - 0, 3);
						v632.Parent = v623;
						local v636 = Instance.new("UIStroke");
						v636.Name = "InputUIStroke";
						v636.Color = Color3.fromRGB(2047 - (556 + 1407), 1290 - (741 + 465), 549 - (170 + 295));
						v636.Parent = v623;
						local v640 = Instance.new("TextBox");
						v640.Name = "InputTextBox";
						v640.CursorPosition = -1;
						v640.Font = Enum.Font.GothamBold;
						v640.PlaceholderColor3 = Color3.fromRGB(115 + 102, 217, 200 + 17);
						v640.PlaceholderText = v606.Placeholder;
						v640.Text = "";
						v640.TextColor3 = Color3.fromRGB(583 - 346, 237, 197 + 40);
						v640.TextSize = 8 + 3;
						v640.TextXAlignment = Enum.TextXAlignment.Left;
						v640.BackgroundColor3 = Color3.fromRGB(145 + 110, 1485 - (957 + 273), 69 + 186);
						v640.BackgroundTransparency = 1 + 0;
						v640.Position = UDim2.new(0.0253, 0, 0, 0 - 0);
						v640.Size = UDim2.new(1, 0, 0 - 0, 21);
						v640.Parent = v623;
						v640.FocusLost:Connect(function()
							task.spawn(function()
								pcall(v606.Callback, v640.Text);
								if (v606.Flag ~= nil) then
									v10.Flags[v606.Flag] = v640.Text;
								end
							end);
						end);
					end;
					v417.Toggle = function(v657, v658)
						v658.Text = v658.Text or "Toggle";
						v658.Flag = v658.Flag or nil;
						v658.Default = v658.Default or false;
						v658.Callback = v658.Callback or function()
						end;
						v658.Tooltip = v658.Tooltip or "";
						if (v658.Flag ~= nil) then
							v10.Flags[v658.Flag] = false;
						end
						local v664 = {};
						local v665 = false;
						local v666 = Instance.new("Frame");
						v666.Name = "Toggle";
						v666.BackgroundColor3 = Color3.fromRGB(778 - 523, 255, 255);
						v666.BackgroundTransparency = 4 - 3;
						v666.Size = UDim2.new(1781 - (389 + 1391), 0 + 0, 0 + 0, 61 - 34);
						v666.Parent = v427;
						if (v658.Tooltip ~= "") then
							v35(v666, v658.Tooltip);
						end
						local v672 = Instance.new("TextLabel");
						v672.Name = "ToggleText";
						v672.Font = Enum.Font.GothamBold;
						v672.Text = v658.Text;
						v672.TextColor3 = Color3.fromRGB(1168 - (783 + 168), 217, 728 - 511);
						v672.TextSize = 11 + 0;
						v672.TextXAlignment = Enum.TextXAlignment.Left;
						v672.BackgroundColor3 = Color3.fromRGB(255, 255, 566 - (309 + 2));
						v672.BackgroundTransparency = 2 - 1;
						v672.Position = UDim2.new(0.0488, 0, 1212 - (1090 + 122), 0 + 0);
						v672.Size = UDim2.new(3 - 2, 0 + 0, 1118 - (628 + 490), 5 + 22);
						v672.Parent = v666;
						local v686 = Instance.new("TextButton");
						v686.Name = "ToggleButton";
						v686.Font = Enum.Font.SourceSans;
						v686.Text = "";
						v686.TextColor3 = Color3.fromRGB(0 - 0, 0 - 0, 774 - (431 + 343));
						v686.TextSize = 27 - 13;
						v686.BackgroundColor3 = Color3.fromRGB(255, 737 - 482, 202 + 53);
						v686.BackgroundTransparency = 1 + 0;
						v686.Size = UDim2.new(1696 - (556 + 1139), 0, 15 - (6 + 9), 5 + 22);
						v686.Parent = v666;
						local v697 = Instance.new("Frame");
						v697.Name = "ToggleFrame";
						v697.BackgroundColor3 = Color3.fromRGB(35 + 33, 237 - (28 + 141), 68);
						v697.BorderSizePixel = 0 + 0;
						v697.Position = UDim2.new(0.783 - 0, 0 + 0, 1317.222 - (486 + 831), 0);
						v697.Size = UDim2.new(0 - 0, 105 - 75, 0 + 0, 47 - 32);
						v697.Parent = v666;
						Instance.new("UICorner", v697).CornerRadius = UDim.new(1, 1263 - (668 + 595));
						v9[v697] = {Type="Toggle",Enabled=false};
						local v706 = Instance.new("Frame");
						v706.Name = "CheckIcon";
						v706.BackgroundColor3 = Color3.fromRGB(196 + 21, 217, 44 + 173);
						v706.BorderSizePixel = 0 - 0;
						v706.Position = UDim2.new(0, 1, 0.067, 290 - (23 + 267));
						v706.Size = UDim2.new(1944 - (1129 + 815), 13, 387 - (371 + 16), 1763 - (1326 + 424));
						v706.Parent = v697;
						Instance.new("UICorner", v706).CornerRadius = UDim.new(1 - 0, 0);
						v664.Set = function(v1012, v1013)
							local v1014 = 0 - 0;
							while true do
								if ((119 - (88 + 30)) == v1014) then
									v9[v697].Enabled = v665;
									v1:Create(v706, TweenInfo.new(771.15 - (720 + 51), Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Position=((v665 and UDim2.new(0 - 0, 1792 - (421 + 1355), 0.067 - 0, 0)) or UDim2.new(0 + 0, 1084 - (286 + 797), 0.067, 0 - 0))}):Play();
									v1014 = 2 - 0;
								end
								if (v1014 == (439 - (397 + 42))) then
									v665 = v1013;
									if (v658.Flag ~= nil) then
										v10.Flags[v658.Flag] = v665;
									end
									v1014 = 1;
								end
								if (v1014 == (1 + 1)) then
									if not v665 then
										v1:Create(v697, TweenInfo.new(800.15 - (24 + 776), Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundColor3=Color3.fromRGB(68, 104 - 36, 853 - (222 + 563))}):Play();
									elseif (v665 and not v8) then
										v1:Create(v697, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundColor3=Color3.fromRGB(105 - 57, 150 + 57, 296 - (23 + 167))}):Play();
									end
									pcall(v658.Callback, v665);
									break;
								end
							end
						end;
						if v658.Default then
							task.spawn(function()
								v664:Set(true);
							end);
						end
						v686.MouseButton1Click:Connect(function()
							v665 = not v665;
							v664:Set(v665);
						end);
						if (v658.Flag ~= nil) then
							v10._flagSetters[v658.Flag] = function(v1232)
								v664:Set(v1232);
							end;
						end
						return v664;
					end;
					v417.Slider = function(v715, v716)
						v716.Text = v716.Text or "Slider";
						v716.Default = v716.Default or 50;
						v716.Minimum = v716.Minimum or 1;
						v716.Flag = v716.Flag or nil;
						v716.Maximum = v716.Maximum or (1898 - (690 + 1108));
						v716.Postfix = v716.Postfix or "";
						v716.Callback = v716.Callback or function()
						end;
						v716.Tooltip = v716.Tooltip or "";
						if (v716.Minimum > v716.Maximum) then
							local v1141 = v716.Minimum;
							v716.Minimum, v716.Maximum = v716.Maximum, v1141;
						end
						v716.Default = math.clamp(v716.Default, v716.Minimum, v716.Maximum);
						local v725 = (v716.Default - v716.Minimum) / (v716.Maximum - v716.Minimum);
						local v726 = Instance.new("Frame");
						v726.Name = "Slider";
						v726.BackgroundColor3 = Color3.fromRGB(255, 93 + 162, 211 + 44);
						v726.BackgroundTransparency = 849 - (40 + 808);
						v726.Position = UDim2.new(0 + 0, 0 - 0, 0.825 + 0, 0 + 0);
						v726.Size = UDim2.new(1 + 0, 571 - (47 + 524), 0 + 0, 92 - 58);
						v726.Parent = v427;
						if (v716.Tooltip ~= "") then
							v35(v726, v716.Tooltip);
						end
						local v733 = Instance.new("TextLabel");
						v733.Name = "SliderText";
						v733.Font = Enum.Font.GothamBold;
						v733.Text = v716.Text;
						v733.TextColor3 = Color3.fromRGB(323 - 106, 494 - 277, 217);
						v733.TextSize = 1737 - (1165 + 561);
						v733.TextXAlignment = Enum.TextXAlignment.Left;
						v733.BackgroundColor3 = Color3.fromRGB(8 + 247, 255, 789 - 534);
						v733.BackgroundTransparency = 1;
						v733.Position = UDim2.new(0.05 + 0, 0, 479 - (341 + 138), 0 + 0);
						v733.Size = UDim2.new(1, 0 - 0, 326 - (89 + 237), 86 - 59);
						v733.Parent = v726;
						local v747 = Instance.new("Frame");
						v747.Name = "OuterSlider";
						v747.BackgroundColor3 = Color3.fromRGB(143 - 75, 949 - (581 + 300), 68);
						v747.BorderSizePixel = 1220 - (855 + 365);
						v747.Position = UDim2.new(0.05, 0, 0.75, 0 - 0);
						v747.Size = UDim2.new(0.9, 0 + 0, 1235 - (1030 + 205), 4);
						v747.Parent = v726;
						local v754 = Instance.new("UICorner");
						v754.Name = "SliderCorner";
						v754.CornerRadius = UDim.new(0 + 0, 94 + 6);
						v754.Parent = v747;
						local v758 = Instance.new("Frame");
						v758.Name = "InnerSlider";
						v758.BackgroundColor3 = Color3.fromRGB(48, 493 - (156 + 130), 240 - 134);
						v758.BorderSizePixel = 0 - 0;
						v758.Size = UDim2.new(v725, 0, 0 - 0, 2 + 2);
						v758.ZIndex = 2 + 0;
						v758.Parent = v747;
						v9[v758] = {Type="Slider",Enabled=false};
						local v766 = Instance.new("UICorner");
						v766.Name = "InnerSliderCorner";
						v766.CornerRadius = UDim.new(0, 169 - (10 + 59));
						v766.Parent = v758;
						local v770 = Instance.new("TextBox");
						v770.Name = "SliderValueText";
						v770.Font = Enum.Font.GothamBold;
						v770.Text = tostring(v716.Default) .. v716.Postfix;
						v770.PlaceholderText = "";
						v770.TextColor3 = Color3.fromRGB(62 + 155, 1068 - 851, 1380 - (671 + 492));
						v770.PlaceholderColor3 = Color3.fromRGB(96 + 24, 1335 - (369 + 846), 120);
						v770.TextSize = 11;
						v770.TextXAlignment = Enum.TextXAlignment.Center;
						v770.BackgroundColor3 = Color3.fromRGB(15 + 40, 55, 47 + 8);
						v770.BorderSizePixel = 1945 - (1036 + 909);
						v770.Position = UDim2.new(0.75 + 0, 0 - 0, 203.15 - (11 + 192), 0 + 0);
						v770.Size = UDim2.new(0.2, 175 - (135 + 40), 0, 45 - 26);
						v770.ClearTextOnFocus = false;
						v770.Parent = v726;
						local v786 = Instance.new("UICorner");
						v786.Name = "SliderValueCorner";
						v786.CornerRadius = UDim.new(0 + 0, 4);
						v786.Parent = v770;
						local v790 = Instance.new("TextButton");
						v790.Name = "SliderButton";
						v790.Font = Enum.Font.SourceSans;
						v790.Text = "";
						v790.TextColor3 = Color3.fromRGB(0 - 0, 0 - 0, 176 - (50 + 126));
						v790.TextSize = 38 - 24;
						v790.BackgroundColor3 = Color3.fromRGB(255, 57 + 198, 1668 - (1233 + 180));
						v790.BackgroundTransparency = 970 - (522 + 447);
						v790.Position = UDim2.new(1421.05 - (107 + 1314), 0 + 0, 0.75 - 0, 0 + 0);
						v790.Size = UDim2.new(0.9 - 0, 0, 0 - 0, 1914 - (716 + 1194));
						v790.Parent = v726;
						task.spawn(function()
							local v1015 = 0 + 0;
							while true do
								if (v1015 == (0 + 0)) then
									pcall(v716.Callback, v716.Default);
									if (v716.Flag ~= nil) then
										v10.Flags[v716.Flag] = v716.Default;
									end
									break;
								end
							end
						end);
						local v802 = 503 - (74 + 429);
						local v803 = 1 - 0;
						local v804 = (v802 + (v803 - v802)) * v725;
						v804 = v804 - (v804 % (1 + 1));
						v790.MouseButton1Down:Connect(function()
							local v1016 = 0 - 0;
							local v1017;
							local v1018;
							while true do
								if (v1016 == (1 + 0)) then
									v1018 = v2.InputEnded:Connect(function(v1294)
										if (v1294.UserInputType == Enum.UserInputType.MouseButton1) then
											local v1330 = 0;
											while true do
												if (v1330 == 0) then
													v1017:Disconnect();
													v1018:Disconnect();
													break;
												end
											end
										end
									end);
									break;
								end
								if (0 == v1016) then
									v1017, v1018 = nil;
									v1017 = v3.Move:Connect(function()
										local v1295 = 0 - 0;
										local v1296;
										local v1297;
										local v1298;
										while true do
											if (1 == v1295) then
												v1298 = math.floor(v716.Minimum + ((v716.Maximum - v716.Minimum) * v1296));
												v1297 = v1297 - (v1297 % (4 - 2));
												v1295 = 435 - (279 + 154);
											end
											if (v1295 == (778 - (454 + 324))) then
												v1296 = v10:GetXY(v747);
												v1297 = (v802 + (v803 - v802)) * v1296;
												v1295 = 1 + 0;
											end
											if (v1295 == (19 - (12 + 5))) then
												v1:Create(v758, TweenInfo.new(0.1 + 0), {Size=UDim2.new(v1296, 0 - 0, 0 + 0, 1097 - (277 + 816))}):Play();
												if (v716.Flag ~= nil) then
													v10.Flags[v716.Flag] = v1298;
												end
												v1295 = 12 - 9;
											end
											if (v1295 == 3) then
												v770.Text = tostring(v1298) .. v716.Postfix;
												task.spawn(function()
													pcall(v716.Callback, v1298);
												end);
												break;
											end
										end
									end);
									v1016 = 1;
								end
							end
						end);
						v770.FocusLost:Connect(function(v1019)
							local v1020 = v770.Text:gsub("[^%d%-]", "");
							local v1021 = tonumber(v1020);
							if v1021 then
								local v1233 = 0;
								local v1234;
								while true do
									if (v1233 == 0) then
										v1021 = math.clamp(v1021, v716.Minimum, v716.Maximum);
										v1234 = (v1021 - v716.Minimum) / (v716.Maximum - v716.Minimum);
										v1233 = 1;
									end
									if (v1233 == (1184 - (1058 + 125))) then
										v1:Create(v758, TweenInfo.new(0.15 + 0), {Size=UDim2.new(v1234, 975 - (815 + 160), 0 - 0, 9 - 5)}):Play();
										if (v716.Flag ~= nil) then
											v10.Flags[v716.Flag] = v1021;
										end
										v1233 = 2;
									end
									if (v1233 == (1 + 1)) then
										v770.Text = tostring(v1021) .. v716.Postfix;
										task.spawn(function()
											pcall(v716.Callback, v1021);
										end);
										break;
									end
								end
							else
								v770.Text = tostring(math.floor(v716.Minimum + ((v716.Maximum - v716.Minimum) * v725))) .. v716.Postfix;
							end
						end);
						if (v716.Flag ~= nil) then
							v10._flagSetters[v716.Flag] = function(v1236)
								local v1237 = 0;
								local v1238;
								local v1239;
								while true do
									if (v1237 == (5 - 3)) then
										v1:Create(v758, TweenInfo.new(1898.15 - (41 + 1857)), {Size=UDim2.new(v1239, 1893 - (1222 + 671), 0 - 0, 5 - 1)}):Play();
										pcall(function()
											v716.Callback(v1238);
										end);
										break;
									end
									if (v1237 == (1183 - (229 + 953))) then
										v1239 = (v1238 - v716.Minimum) / (v716.Maximum - v716.Minimum);
										v770.Text = tostring(v1238) .. v716.Postfix;
										v1237 = 1776 - (1111 + 663);
									end
									if (v1237 == (1579 - (874 + 705))) then
										v1238 = math.clamp(v1236, v716.Minimum, v716.Maximum);
										v10.Flags[v716.Flag] = v1238;
										v1237 = 1 + 0;
									end
								end
							end;
						end
					end;
					v417.Dropdown = function(v805, v806)
						v806.Text = v806.Text or "Dropdown";
						v806.List = v806.List or {};
						v806.Flag = v806.Flag or nil;
						v806.Callback = v806.Callback or function()
						end;
						v806.Tooltip = v806.Tooltip or "";
						v806.Default = v806.Default or nil;
						local v813 = 27;
						if (v806.Default ~= nil) then
							local v1145 = 0 + 0;
							while true do
								if (v1145 == (0 - 0)) then
									task.spawn(function()
										pcall(v806.Callback, v806.Default);
									end);
									if (v806.Flag ~= nil) then
										v10.Flags[v806.Flag] = v806.Default;
									end
									break;
								end
							end
						end
						local v814 = {};
						local v815 = Instance.new("Frame");
						v815.Name = "Dropdown";
						v815.BackgroundColor3 = Color3.fromRGB(8 + 247, 934 - (642 + 37), 255);
						v815.BackgroundTransparency = 1 + 0;
						v815.Position = UDim2.new(0 + 0, 0 - 0, 454.638 - (233 + 221), 0 - 0);
						v815.Size = UDim2.new(1 + 0, 1541 - (718 + 823), 0, 27);
						v815.Parent = v427;
						if (v806.Tooltip ~= "") then
							v35(v815, v806.Tooltip);
						end
						local v822 = Instance.new("TextLabel");
						v822.Name = "DropdownText";
						v822.Font = Enum.Font.GothamBold;
						v822.Text = v806.Text;
						v822.TextColor3 = Color3.fromRGB(137 + 80, 1022 - (266 + 539), 614 - 397);
						v822.TextSize = 1236 - (636 + 589);
						v822.TextXAlignment = Enum.TextXAlignment.Left;
						v822.BackgroundColor3 = Color3.fromRGB(605 - 350, 525 - 270, 203 + 52);
						v822.BackgroundTransparency = 1 + 0;
						v822.Position = UDim2.new(1015.0488 - (657 + 358), 0 - 0, 0, 0 - 0);
						v822.Size = UDim2.new(1, 0, 0, 1214 - (1151 + 36));
						v822.Parent = v815;
						local v836 = Instance.new("TextLabel");
						v836.Name = "DropdownIcon";
						v836.Text = ">";
						v836.TextColor3 = Color3.fromRGB(185 + 6, 191, 51 + 140);
						v836.Font = Enum.Font.GothamBold;
						v836.TextSize = 41 - 27;
						v836.AnchorPoint = Vector2.new(1832.5 - (1552 + 280), 834.5 - (64 + 770));
						v836.BackgroundColor3 = Color3.fromRGB(174 + 81, 578 - 323, 255);
						v836.BackgroundTransparency = 1 + 0;
						v836.Rotation = 1423 - (157 + 1086);
						v836.Position = UDim2.new(1 - 0, -(56 - 43), 0 - 0, 16 - 3);
						v836.Size = UDim2.new(819 - (599 + 220), 25 - 12, 0, 1944 - (1813 + 118));
						v836.ZIndex = 2 + 0;
						v836.Parent = v815;
						local v850 = Instance.new("TextButton");
						v850.Name = "DropdownButton";
						v850.Font = Enum.Font.SourceSans;
						v850.Text = "";
						v850.TextColor3 = Color3.fromRGB(1217 - (841 + 376), 0, 0 - 0);
						v850.TextSize = 4 + 10;
						v850.BackgroundColor3 = Color3.fromRGB(696 - 441, 255, 255);
						v850.BackgroundTransparency = 1;
						v850.Size = UDim2.new(860 - (464 + 395), 0, 0 - 0, 13 + 14);
						v850.Parent = v815;
						local v861 = Instance.new("Frame");
						v861.Name = "DropdownContainer";
						v861.BackgroundColor3 = Color3.fromRGB(1092 - (467 + 370), 526 - 271, 255);
						v861.BackgroundTransparency = 1 + 0;
						v861.BorderSizePixel = 0 - 0;
						v861.Size = UDim2.new(1 + 0, 0 - 0, 520 - (150 + 370), 27);
						v861.ClipsDescendants = true;
						v861.Parent = v815;
						v861.Visible = true;
						local v870 = Instance.new("UICorner");
						v870.CornerRadius = UDim.new(0, 3);
						v870.Parent = v861;
						local v873 = Instance.new("UIListLayout");
						v873.Name = "UIListLayout";
						v873.SortOrder = Enum.SortOrder.LayoutOrder;
						v873.Parent = v861;
						local v878 = Instance.new("UIPadding");
						v878.Name = "UIPadding";
						v878.PaddingTop = UDim.new(1282 - (74 + 1208), 27);
						v878.Parent = v861;
						local v882 = false;
						local v883 = nil;
						local v884 = nil;
						if not v10._dropdownTracker then
							v10._dropdownTracker = {};
						end
						local v885 = #v10._dropdownTracker + 1;
						v10._dropdownTracker[v885] = {dropdown=v815,dropdownContainer=v861,dropdownIcon=v836,sectionFrame=v427,section=v419,isOpened=function()
							return v882;
						end,close=function()
							local v1022 = 0;
							local v1023;
							local v1024;
							while true do
								if (v1022 == (2 - 1)) then
									v883 = nil;
									v884 = nil;
									v1:Create(v836, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3=Color3.fromRGB(905 - 714, 136 + 55, 581 - (14 + 376)),Rotation=(312 - 132)}):Play();
									v1:Create(v815, TweenInfo.new(0.15 + 0, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size=UDim2.new(1 + 0, 0 + 0, 0 - 0, 21 + 6)}):Play();
									v1022 = 2;
								end
								if (v1022 == (80 - (23 + 55))) then
									v1:Create(v861, TweenInfo.new(0.15 - 0, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size=UDim2.new(1 + 0, 0 + 0, 0 - 0, 9 + 18)}):Play();
									v1:Create(v861, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency=1}):Play();
									v1:Create(v427, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size=UDim2.new(902 - (652 + 249), 0 - 0, 0, v1023)}):Play();
									v1:Create(v419, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size=UDim2.new(1869 - (708 + 1160), 0, 0 - 0, v1024)}):Play();
									break;
								end
								if ((0 - 0) == v1022) then
									if not v882 then
										return;
									end
									v882 = false;
									v1023 = v884 or ((v427.Size.Y.Offset - v813) + (54 - (10 + 17)));
									v1024 = v883 or ((v427.Size.Y.Offset - v813) + 8 + 25);
									v1022 = 1733 - (1400 + 332);
								end
							end
						end};
						v814.Add = function(v1025, v1026)
							v813 = v813 + (51 - 24);
							local v1027 = Instance.new("Frame");
							v1027.Name = "DropdownContainerButton";
							v1027.BackgroundColor3 = Color3.fromRGB(2163 - (242 + 1666), 110 + 145, 94 + 161);
							v1027.BackgroundTransparency = 1;
							v1027.Size = UDim2.new(1 + 0, 0, 940 - (850 + 90), 47 - 20);
							v1027.Parent = v861;
							local v1033 = Instance.new("TextLabel");
							v1033.Name = "ButtonText";
							v1033.Font = Enum.Font.GothamBold;
							v1033.Text = v1026;
							v1033.TextColor3 = Color3.fromRGB(1581 - (360 + 1030), 170 + 21, 538 - 347);
							v1033.TextSize = 11;
							v1033.TextXAlignment = Enum.TextXAlignment.Left;
							v1033.BackgroundColor3 = Color3.fromRGB(350 - 95, 1916 - (909 + 752), 1478 - (109 + 1114));
							v1033.BackgroundTransparency = 1;
							v1033.Position = UDim2.new(0.0488 - 0, 0 + 0, 242 - (6 + 236), 0 + 0);
							v1033.Size = UDim2.new(1, 0, 0 + 0, 65 - 37);
							v1033.Parent = v1027;
							local v1047 = Instance.new("TextButton");
							v1047.Name = "DropdownContainerButton";
							v1047.Font = Enum.Font.SourceSans;
							v1047.Text = "";
							v1047.TextColor3 = Color3.fromRGB(0, 0, 0);
							v1047.TextSize = 23 - 9;
							v1047.BackgroundColor3 = Color3.fromRGB(1388 - (1076 + 57), 42 + 213, 944 - (579 + 110));
							v1047.BackgroundTransparency = 1;
							v1047.Size = UDim2.new(1, 0, 0 + 0, 24 + 3);
							v1047.Parent = v1027;
							v1047.MouseEnter:Connect(function()
								v1:Create(v1033, TweenInfo.new(0.15 + 0, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3=Color3.fromRGB(662 - (174 + 233), 712 - 457, 447 - 192)}):Play();
							end);
							v1047.MouseLeave:Connect(function()
								v1:Create(v1033, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3=Color3.fromRGB(85 + 106, 191, 191)}):Play();
							end);
							v1047.MouseButton1Click:Connect(function()
								local v1147 = 1174 - (663 + 511);
								while true do
									if (2 == v1147) then
										v1:Create(v427, TweenInfo.new(0.15 + 0, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size=UDim2.new(1 + 0, 0 - 0, 0 + 0, v884 or ((v427.Size.Y.Offset - v813) + (63 - 36)))}):Play();
										v1:Create(v419, TweenInfo.new(0.15 - 0, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size=UDim2.new(1 + 0, 0, 0, v883 or ((v427.Size.Y.Offset - v813) + 33))}):Play();
										v883 = nil;
										v884 = nil;
										break;
									end
									if (0 == v1147) then
										v882 = false;
										task.spawn(function()
											pcall(v806.Callback, v1033.Text);
										end);
										if (v806.Flag ~= nil) then
											v10.Flags[v806.Flag] = v1033.Text;
										end
										v822.Text = v1033.Text;
										v1147 = 1 - 0;
									end
									if (v1147 == (1 + 0)) then
										v1:Create(v836, TweenInfo.new(0.15 + 0, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3=Color3.fromRGB(191, 913 - (478 + 244), 708 - (440 + 77)),Rotation=180}):Play();
										v1:Create(v815, TweenInfo.new(0.15 + 0, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size=UDim2.new(1, 0 - 0, 0, 1583 - (655 + 901))}):Play();
										v1:Create(v861, TweenInfo.new(0.15 + 0, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size=UDim2.new(1 + 0, 0, 0 + 0, 108 - 81)}):Play();
										v1:Create(v861, TweenInfo.new(1445.15 - (695 + 750), Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency=(3 - 2)}):Play();
										v1147 = 2 - 0;
									end
								end
							end);
						end;
						v814.Refresh = function(v1058, v1059)
							local v1060 = 0;
							while true do
								if (v1060 == (0 - 0)) then
									v1059.Text = v1059.Text or v822.Text;
									v1059.List = v1059.List or v806.List;
									v1060 = 1;
								end
								if (v1060 == 4) then
									v1:Create(v861, TweenInfo.new(351.15 - (285 + 66), Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size=UDim2.new(2 - 1, 0, 1310 - (682 + 628), 5 + 22)}):Play();
									v1:Create(v861, TweenInfo.new(299.15 - (176 + 123), Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency=(1 + 0)}):Play();
									break;
								end
								if (3 == v1060) then
									v1:Create(v836, TweenInfo.new(0.15 + 0, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3=Color3.fromRGB(460 - (239 + 30), 52 + 139, 184 + 7),Rotation=(318 - 138)}):Play();
									v1:Create(v815, TweenInfo.new(0.15 - 0, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size=UDim2.new(1, 315 - (306 + 9), 0 - 0, 5 + 22)}):Play();
									v1060 = 3 + 1;
								end
								if (2 == v1060) then
									v813 = 13 + 14;
									for v1301, v1302 in pairs(v1059.List) do
										v814:Add(v1302);
									end
									v1060 = 8 - 5;
								end
								if (v1060 == (1376 - (1140 + 235))) then
									if v882 then
										v882 = false;
									end
									for v1303, v1304 in pairs(v861:GetChildren()) do
										if (v1304.ClassName == "Frame") then
											v1304:Destroy();
										end
									end
									v1060 = 2 + 0;
								end
							end
						end;
						for v1061, v1062 in pairs(v806.List) do
							v814:Add(v1062);
						end
						v425:GetPropertyChangedSignal("Value"):Connect(function()
							if not v425.Value then
								v882 = false;
								v1:Create(v836, TweenInfo.new(0.15 + 0, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3=Color3.fromRGB(50 + 141, 243 - (33 + 19), 191),Rotation=180}):Play();
								v1:Create(v815, TweenInfo.new(0.15 + 0, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size=UDim2.new(1, 0 - 0, 0 + 0, 27)}):Play();
								v1:Create(v861, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size=UDim2.new(1, 0 - 0, 0 + 0, 27)}):Play();
								v1:Create(v861, TweenInfo.new(689.15 - (586 + 103), Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency=(1 + 0)}):Play();
								v1:Create(v427, TweenInfo.new(0.15 - 0, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size=UDim2.new(1489 - (1309 + 179), 0, 0, v884 or ((v427.Size.Y.Offset - v813) + (48 - 21)))}):Play();
								v1:Create(v419, TweenInfo.new(0.15 + 0, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size=UDim2.new(2 - 1, 0 + 0, 0 - 0, v883 or ((v427.Size.Y.Offset - v813) + (65 - 32)))}):Play();
								v883 = nil;
								v884 = nil;
							end
						end);
						v850.MouseButton1Click:Connect(function()
							local v1063 = 609 - (295 + 314);
							while true do
								if (v1063 == (4 - 2)) then
									v1:Create(v861, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size=((v882 and UDim2.new(1963 - (1300 + 662), 0, 0, v813)) or UDim2.new(3 - 2, 1755 - (1178 + 577), 0 + 0, 27))}):Play();
									v1:Create(v861, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency=((v882 and (0.96 - 0)) or 1)}):Play();
									v1063 = 1408 - (851 + 554);
								end
								if (v1063 == (0 + 0)) then
									v882 = not v882;
									if v882 then
										local v1319 = 0;
										while true do
											if (v1319 == (0 - 0)) then
												v883 = v419.Size.Y.Offset;
												v884 = v427.Size.Y.Offset;
												break;
											end
										end
									end
									v1063 = 1;
								end
								if (v1063 == 3) then
									if v882 then
										local v1320 = 0 - 0;
										while true do
											if (v1320 == (302 - (115 + 187))) then
												v1:Create(v427, TweenInfo.new(0.15 + 0, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size=UDim2.new(1, 0 + 0, 0 - 0, (v427.Size.Y.Offset + v813) - 27)}):Play();
												v1:Create(v419, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size=UDim2.new(1, 1161 - (160 + 1001), 0 + 0, ((v427.Size.Y.Offset + v813) - (19 + 8)) + (11 - 5))}):Play();
												break;
											end
										end
									else
										local v1321 = 358 - (237 + 121);
										while true do
											if (v1321 == (898 - (525 + 372))) then
												v883 = nil;
												v884 = nil;
												break;
											end
											if (v1321 == (0 - 0)) then
												v1:Create(v427, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size=UDim2.new(1, 0 - 0, 142 - (96 + 46), v884 or ((v427.Size.Y.Offset - v813) + (804 - (643 + 134))))}):Play();
												v1:Create(v419, TweenInfo.new(0.15 + 0, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size=UDim2.new(1, 0, 0, v883 or ((v427.Size.Y.Offset - v813) + 33))}):Play();
												v1321 = 1;
											end
										end
									end
									break;
								end
								if (v1063 == (2 - 1)) then
									v1:Create(v836, TweenInfo.new(0.15 - 0, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3=((v882 and Color3.fromRGB(245 + 10, 255, 255)) or Color3.fromRGB(374 - 183, 390 - 199, 910 - (316 + 403))),Rotation=((v882 and (60 + 30)) or (494 - 314))}):Play();
									v1:Create(v815, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size=((v882 and UDim2.new(1, 0 + 0, 0, v813)) or UDim2.new(2 - 1, 0 + 0, 0 + 0, 93 - 66))}):Play();
									v1063 = 2;
								end
							end
						end);
						if (v806.Flag ~= nil) then
							v10._flagSetters[v806.Flag] = function(v1240)
								local v1241 = 0 - 0;
								while true do
									if (v1241 == (0 - 0)) then
										v10.Flags[v806.Flag] = v1240;
										dropdownbuttonText.Text = tostring(v1240);
										v1241 = 1 + 0;
									end
									if (v1241 == 1) then
										v822.Text = tostring(v1240);
										pcall(function()
											v806.Callback(v1240);
										end);
										break;
									end
								end
							end;
						end
						return v814;
					end;
					v417.RadioButton = function(v889, v890)
						v890.Text = v890.Text or "Radio Button";
						v890.Options = v890.Options or {};
						v890.Flag = v890.Flag or nil;
						v890.Callback = v890.Callback or function()
						end;
						v890.Tooltip = v890.Tooltip or "";
						v890.Default = v890.Default or nil;
						local v897 = false;
						RadioYSize = 52 - 25;
						if (v890.Default ~= nil) then
							local v1149 = 0 + 0;
							while true do
								if (v1149 == (0 - 0)) then
									task.spawn(function()
										pcall(v890.Callback, v890.Default);
									end);
									if (v890.Flag ~= nil) then
										v10.Flags[v890.Flag] = v890.Default;
									end
									break;
								end
							end
						end
						local v898 = {};
						local v899 = Instance.new("Frame");
						v899.Name = "RadioButton";
						v899.BackgroundColor3 = Color3.fromRGB(272 - (12 + 5), 990 - 735, 543 - 288);
						v899.BackgroundTransparency = 1 - 0;
						v899.Size = UDim2.new(1, 0, 0, 66 - 39);
						v899.Parent = v427;
						if (v890.Tooltip ~= "") then
							v35(v899, v890.Tooltip);
						end
						local v905 = Instance.new("Frame");
						v905.Name = "Button";
						v905.BackgroundColor3 = Color3.fromRGB(52 + 203, 2228 - (1656 + 317), 228 + 27);
						v905.BackgroundTransparency = 1 + 0;
						v905.Size = UDim2.new(2 - 1, 0, 0 - 0, 381 - (5 + 349));
						v905.Parent = v899;
						local v911 = Instance.new("TextButton");
						v911.Name = "RadioButtonTextButton";
						v911.Font = Enum.Font.SourceSans;
						v911.Text = "";
						v911.TextColor3 = Color3.fromRGB(0 - 0, 1271 - (266 + 1005), 0 + 0);
						v911.TextSize = 47 - 33;
						v911.BackgroundColor3 = Color3.fromRGB(335 - 80, 1951 - (561 + 1135), 331 - 76);
						v911.BackgroundTransparency = 3 - 2;
						v911.Size = UDim2.new(1067 - (507 + 559), 0, 0 - 0, 83 - 56);
						v911.Parent = v905;
						local v922 = Instance.new("TextLabel");
						v922.Name = "RadioButtonText";
						v922.Font = Enum.Font.GothamBold;
						v922.Text = v890.Text;
						v922.TextColor3 = Color3.fromRGB(217, 217, 605 - (212 + 176));
						v922.TextSize = 11;
						v922.TextXAlignment = Enum.TextXAlignment.Left;
						v922.BackgroundColor3 = Color3.fromRGB(255, 1160 - (250 + 655), 695 - 440);
						v922.BackgroundTransparency = 1 - 0;
						v922.Position = UDim2.new(0.0488, 0 - 0, 1956 - (1869 + 87), 0 - 0);
						v922.Size = UDim2.new(1, 1901 - (484 + 1417), 0 - 0, 45 - 18);
						v922.Parent = v905;
						local v936 = Instance.new("TextLabel");
						v936.Name = "RadioButtonIcon";
						v936.Text = "∨";
						v936.TextColor3 = Color3.fromRGB(964 - (48 + 725), 311 - 120, 512 - 321);
						v936.Font = Enum.Font.GothamBold;
						v936.TextSize = 14;
						v936.AnchorPoint = Vector2.new(1 + 0, 0);
						v936.BackgroundColor3 = Color3.fromRGB(681 - 426, 72 + 183, 75 + 180);
						v936.BackgroundTransparency = 854 - (152 + 701);
						v936.BorderSizePixel = 0;
						v936.Position = UDim2.new(1311 - (430 + 881), 155, 0 + 0, 902 - (557 + 338));
						v936.Size = UDim2.new(0 + 0, 13, 0 - 0, 45 - 32);
						v936.Parent = v905;
						local v949 = Instance.new("Frame");
						v949.Name = "RadioButtonIcon2";
						v949.BackgroundColor3 = Color3.fromRGB(191, 507 - 316, 191);
						v949.BorderSizePixel = 0 - 0;
						v949.Position = UDim2.new(801 - (499 + 302), 138, 866 - (39 + 827), 19 - 12);
						v949.Size = UDim2.new(0, 28 - 15, 0 - 0, 19 - 6);
						v949.Parent = v905;
						Instance.new("UICorner", v949).CornerRadius = UDim.new(1 + 0, 0 - 0);
						v949.Position = UDim2.new(0 + 0, 218 - 80, 104 - (103 + 1), 7);
						v949.Size = UDim2.new(554 - (475 + 79), 27 - 14, 0, 41 - 28);
						v949.Parent = v905;
						local v957 = Instance.new("Frame");
						v957.Name = "RadioContainer";
						v957.BackgroundColor3 = Color3.fromRGB(33 + 222, 225 + 30, 1758 - (1395 + 108));
						v957.BackgroundTransparency = 2 - 1;
						v957.Size = UDim2.new(1205 - (7 + 1197), 0 + 0, 0 + 0, 27);
						v957.Parent = v899;
						v957.ClipsDescendants = true;
						local v964 = Instance.new("UIListLayout");
						v964.Name = "RadioUILayout";
						v964.SortOrder = Enum.SortOrder.LayoutOrder;
						v964.Parent = v957;
						local v969 = Instance.new("UIPadding");
						v969.Name = "UIPadding";
						v969.PaddingTop = UDim.new(319 - (27 + 292), 79 - 52);
						v969.Parent = v957;
						local v973 = nil;
						v898.Button = function(v1064, v1065)
							RadioYSize = RadioYSize + (34 - 7);
							local v1066 = Instance.new("Frame");
							v1066.Name = "Radio";
							v1066.BackgroundColor3 = Color3.fromRGB(1069 - 814, 502 - 247, 485 - 230);
							v1066.BackgroundTransparency = 140 - (43 + 96);
							v1066.Size = UDim2.new(1, 0, 0 - 0, 27);
							v1066.Parent = v957;
							local v1072 = Instance.new("TextButton");
							v1072.Name = "RadioTextButton";
							v1072.Font = Enum.Font.SourceSans;
							v1072.Text = "";
							v1072.TextColor3 = Color3.fromRGB(0, 0 - 0, 0 + 0);
							v1072.TextSize = 14;
							v1072.BackgroundColor3 = Color3.fromRGB(255, 255, 73 + 182);
							v1072.BackgroundTransparency = 1 - 0;
							v1072.Size = UDim2.new(1, 0 + 0, 0 - 0, 9 + 18);
							v1072.Parent = v1066;
							local v1083 = Instance.new("Frame");
							v1083.Name = "RadioOuter";
							v1083.BackgroundColor3 = Color3.fromRGB(191, 191, 15 + 176);
							v1083.BackgroundTransparency = 0;
							v1083.BorderSizePixel = 1751 - (1414 + 337);
							v1083.Position = UDim2.new(1940.865 - (1642 + 298), 0 - 0, 0.185 - 0, 0);
							v1083.Size = UDim2.new(0 - 0, 17, 0, 6 + 11);
							v1083.Parent = v1066;
							Instance.new("UICorner", v1083).CornerRadius = UDim.new(1, 0);
							local v1092 = Instance.new("Frame");
							v1092.Name = "RadioInner";
							v1092.AnchorPoint = Vector2.new(0.5 + 0, 0.5);
							v1092.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
							v1092.BackgroundTransparency = 972 - (357 + 615);
							v1092.BorderSizePixel = 0 + 0;
							v1092.Position = UDim2.new(0.5, 0 - 0, 0.5 + 0, 0 - 0);
							v1092.Size = UDim2.new(0 + 0, 7, 0 + 0, 7);
							v1092.Parent = v1083;
							Instance.new("UICorner", v1092).CornerRadius = UDim.new(1 + 0, 1301 - (384 + 917));
							v9[v1092] = {Type="Toggle",Enabled=false};
							v9[v1083] = {Type="Toggle",Enabled=false};
							local v1104 = Instance.new("TextLabel");
							v1104.Name = "RadioText";
							v1104.Font = Enum.Font.GothamBold;
							v1104.Text = v1065;
							v1104.TextColor3 = Color3.fromRGB(191, 191, 888 - (128 + 569));
							v1104.TextSize = 11;
							v1104.TextXAlignment = Enum.TextXAlignment.Left;
							v1104.BackgroundColor3 = Color3.fromRGB(255, 1798 - (1407 + 136), 255);
							v1104.BackgroundTransparency = 1;
							v1104.Position = UDim2.new(1887.0488 - (687 + 1200), 0, 1710 - (556 + 1154), 0 - 0);
							v1104.Size = UDim2.new(96 - (9 + 86), 421 - (275 + 146), 0 + 0, 91 - (29 + 35));
							v1104.Parent = v1066;
							v1066.MouseEnter:Connect(function()
								if ((v897 and (v973 ~= v1066)) or (v973 == nil)) then
									local v1268 = 0;
									while true do
										if (v1268 == (0 - 0)) then
											v1:Create(v1104, TweenInfo.new(0.15 - 0, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3=Color3.fromRGB(957 - 740, 142 + 75, 1229 - (53 + 959))}):Play();
											v1:Create(v1092, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundColor3=Color3.fromRGB(217, 625 - (312 + 96), 376 - 159)}):Play();
											v1268 = 286 - (147 + 138);
										end
										if (v1268 == (900 - (813 + 86))) then
											v1:Create(v1083, TweenInfo.new(0.15 + 0, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundColor3=Color3.fromRGB(401 - 184, 709 - (18 + 474), 74 + 143)}):Play();
											break;
										end
									end
								end
							end);
							v1066.MouseLeave:Connect(function()
								if ((v897 and (v973 ~= v1066)) or (v973 == nil)) then
									v1:Create(v1104, TweenInfo.new(0.15 - 0, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3=Color3.fromRGB(191, 1277 - (860 + 226), 494 - (121 + 182))}):Play();
									v1:Create(v1092, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundColor3=Color3.fromRGB(24 + 167, 191, 191)}):Play();
									v1:Create(v1083, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundColor3=Color3.fromRGB(1431 - (988 + 252), 22 + 169, 60 + 131)}):Play();
								end
							end);
							v1072.MouseButton1Click:Connect(function()
								task.spawn(function()
									pcall(v890.Callback, v1104.Text);
								end);
								if (v890.Flag ~= nil) then
									v10.Flags[v890.Flag] = v1104.Text;
								end
								v9[v1092].Enabled = true;
								v9[v1083].Enabled = true;
								v973 = v1066;
								for v1242, v1243 in pairs(v957:GetChildren()) do
									if ((v1243.ClassName == "Frame") and (v1243 ~= v1066)) then
										local v1305 = 1970 - (49 + 1921);
										while true do
											if (v1305 == 2) then
												v1:Create(v1243.RadioText, TweenInfo.new(890.15 - (223 + 667), Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3=Color3.fromRGB(243 - (51 + 1), 191, 328 - 137)}):Play();
												break;
											end
											if (v1305 == 0) then
												v9[v1243.RadioOuter].Enabled = false;
												v9[v1243.RadioOuter.RadioInner].Enabled = false;
												v1305 = 1;
											end
											if (v1305 == (1 - 0)) then
												v1:Create(v1243.RadioOuter, TweenInfo.new(1125.15 - (146 + 979), Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundColor3=Color3.fromRGB(191, 54 + 137, 191)}):Play();
												v1:Create(v1243.RadioOuter.RadioInner, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundColor3=Color3.fromRGB(796 - (311 + 294), 532 - 341, 81 + 110)}):Play();
												v1305 = 1445 - (496 + 947);
											end
										end
									end
								end
								v1:Create(v1104, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3=Color3.fromRGB(1613 - (1233 + 125), 104 + 151, 255)}):Play();
								if not v8 then
									v1:Create(v1092, TweenInfo.new(0.15 + 0, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundColor3=((v897 and Color3.fromRGB(10 + 38, 1852 - (963 + 682), 106)) or Color3.fromRGB(191, 160 + 31, 191))}):Play();
									v1:Create(v1083, TweenInfo.new(1504.15 - (504 + 1000), Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundColor3=((v897 and Color3.fromRGB(48, 140 + 67, 97 + 9)) or Color3.fromRGB(191, 19 + 172, 281 - 90))}):Play();
								end
							end);
						end;
						v911.MouseButton1Click:Connect(function()
							v897 = not v897;
							v1:Create(v936, TweenInfo.new(0.15 + 0, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3=((v897 and Color3.fromRGB(149 + 106, 437 - (156 + 26), 255)) or Color3.fromRGB(111 + 80, 191, 298 - 107))}):Play();
							v1:Create(v936, TweenInfo.new(164.15 - (149 + 15), Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Rotation=((v897 and -180) or -(1050 - (890 + 70)))}):Play();
							v1:Create(v949, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundColor3=((v897 and Color3.fromRGB(255, 255, 372 - (39 + 78))) or Color3.fromRGB(673 - (14 + 468), 419 - 228, 533 - 342))}):Play();
							v1:Create(v899, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size=((v897 and UDim2.new(1 + 0, 0 + 0, 0 + 0, RadioYSize)) or UDim2.new(1 + 0, 0, 0 + 0, 51 - 24))}):Play();
							v1:Create(v957, TweenInfo.new(0.15 + 0, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size=((v897 and UDim2.new(3 - 2, 0, 0 + 0, RadioYSize)) or UDim2.new(1, 51 - (12 + 39), 0 + 0, 27))}):Play();
							v1:Create(v957, TweenInfo.new(0.15 - 0, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency=((v897 and (0.96 - 0)) or (1 + 0))}):Play();
							v1:Create(v427, TweenInfo.new(0.15 + 0, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size=((v897 and UDim2.new(2 - 1, 0 + 0, 0 - 0, (v427.Size.Y.Offset + RadioYSize) - (1737 - (1596 + 114)))) or UDim2.new(2 - 1, 0, 0, (v427.Size.Y.Offset - RadioYSize) + (740 - (164 + 549))))}):Play();
							v1:Create(v419, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size=((v897 and UDim2.new(1439 - (1059 + 379), 0 - 0, 0 + 0, ((v427.Size.Y.Offset + RadioYSize) - 27) + 2 + 4)) or UDim2.new(393 - (145 + 247), 0 + 0, 0 + 0, (v427.Size.Y.Offset - RadioYSize) + (97 - 64)))}):Play();
						end);
						for v1118, v1119 in pairs(v890.Options) do
							v898:Button(v1119);
						end
						v425:GetPropertyChangedSignal("Value"):Connect(function()
							if not v425.Value then
								local v1244 = 0 + 0;
								while true do
									if (v1244 == (3 + 0)) then
										v1:Create(v957, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency=((v897 and (0.96 - 0)) or 1)}):Play();
										v1:Create(v427, TweenInfo.new(720.15 - (254 + 466), Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size=((v897 and UDim2.new(1, 0, 0, (v427.Size.Y.Offset + RadioYSize) - (587 - (544 + 16)))) or UDim2.new(1, 0 - 0, 628 - (294 + 334), (v427.Size.Y.Offset - RadioYSize) + (280 - (236 + 17))))}):Play();
										v1244 = 2 + 2;
									end
									if (v1244 == 1) then
										v1:Create(v936, TweenInfo.new(0.15 + 0, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Rotation=((v897 and -(677 - 497)) or -90)}):Play();
										v1:Create(v949, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundColor3=((v897 and Color3.fromRGB(1207 - 952, 132 + 123, 211 + 44)) or Color3.fromRGB(985 - (413 + 381), 9 + 182, 406 - 215))}):Play();
										v1244 = 4 - 2;
									end
									if (v1244 == (1972 - (582 + 1388))) then
										v1:Create(v899, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size=((v897 and UDim2.new(1, 0 - 0, 0 + 0, RadioYSize)) or UDim2.new(365 - (326 + 38), 0, 0 - 0, 38 - 11))}):Play();
										v1:Create(v957, TweenInfo.new(620.15 - (47 + 573), Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size=((v897 and UDim2.new(1, 0, 0, RadioYSize)) or UDim2.new(1 + 0, 0 - 0, 0, 43 - 16))}):Play();
										v1244 = 1667 - (1269 + 395);
									end
									if (v1244 == (492 - (76 + 416))) then
										v897 = false;
										v1:Create(v936, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3=((v897 and Color3.fromRGB(255, 698 - (319 + 124), 582 - 327)) or Color3.fromRGB(1198 - (564 + 443), 528 - 337, 649 - (337 + 121)))}):Play();
										v1244 = 1;
									end
									if ((11 - 7) == v1244) then
										v1:Create(v419, TweenInfo.new(0.15 - 0, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size=((v897 and UDim2.new(1912 - (1261 + 650), 0 + 0, 0, ((v427.Size.Y.Offset + RadioYSize) - (42 - 15)) + (1823 - (772 + 1045)))) or UDim2.new(1 + 0, 144 - (102 + 42), 1844 - (1524 + 320), (v427.Size.Y.Offset - RadioYSize) + (1303 - (1049 + 221))))}):Play();
										break;
									end
								end
							end
						end);
						return v898;
					end;
					return v417;
				end;
				v233.MouseButton1Click:Connect(function()
					local v502 = 0;
					while true do
						if (v502 == 1) then
							for v1245, v1246 in pairs(v160:GetChildren()) do
								if ((v1246 ~= v231) and (v1246.Name == "TabButton")) then
									v1:Create(v1246.TabFrame, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency=0.96}):Play();
								end
							end
							v1:Create(v232, TweenInfo.new(156.15 - (18 + 138), Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency=0.85}):Play();
							v502 = 4 - 2;
						end
						if (v502 == (1104 - (67 + 1035))) then
							v240.Visible = true;
							v243.Visible = true;
							break;
						end
						if (v502 == (348 - (136 + 212))) then
							v7 = v232;
							task.spawn(function()
								for v1271, v1272 in pairs(v36:GetChildren()) do
									if ((v1272.Name == "LeftContainer") or (v1272.Name == "RightContainer")) then
										v1272.Visible = false;
									end
								end
							end);
							v502 = 1;
						end
					end
				end);
				v230.Select = function(v503)
					local v504 = 0 - 0;
					while true do
						if (v504 == (0 + 0)) then
							v7 = v232;
							task.spawn(function()
								for v1273, v1274 in pairs(v36:GetChildren()) do
									if ((v1274.Name == "LeftContainer") or (v1274.Name == "RightContainer")) then
										v1274.Visible = false;
									end
								end
							end);
							v504 = 1 + 0;
						end
						if (v504 == 1) then
							for v1247, v1248 in pairs(v160:GetChildren()) do
								if ((v1248 ~= v231) and (v1248.Name == "TabButton")) then
									v1:Create(v1248.TabFrame, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency=(1604.96 - (240 + 1364))}):Play();
								end
							end
							v1:Create(v232, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency=(1082.85 - (1050 + 32))}):Play();
							v504 = 7 - 5;
						end
						if (v504 == 2) then
							v240.Visible = true;
							v243.Visible = true;
							break;
						end
					end
				end;
				return v230;
			end
			if (9 == v229) then
				v241.Name = "UIListLayout";
				v241.SortOrder = Enum.SortOrder.LayoutOrder;
				v241.Parent = v240;
				v242 = Instance.new("UIPadding");
				v242.Name = "UIPadding";
				v242.PaddingLeft = UDim.new(0 + 0, 4);
				v242.PaddingRight = UDim.new(1055 - (331 + 724), 4);
				v242.PaddingTop = UDim.new(0, 3);
				v242.PaddingBottom = UDim.new(0 + 0, 647 - (269 + 375));
				v229 = 735 - (267 + 458);
			end
			if (v229 == (4 + 6)) then
				v242.Parent = v240;
				v243 = Instance.new("ScrollingFrame");
				v243.Name = "RightContainer";
				v243.AutomaticCanvasSize = Enum.AutomaticSize.Y;
				v243.CanvasSize = UDim2.new();
				v243.ScrollBarThickness = 2;
				v243.ScrollBarImageColor3 = Color3.fromRGB(107 - 51, 56, 874 - (667 + 151));
				v243.BackgroundColor3 = Color3.fromRGB(26, 1523 - (1410 + 87), 1923 - (1504 + 393));
				v243.BorderSizePixel = 0 - 0;
				v229 = 28 - 17;
			end
			if (v229 == (796 - (461 + 335))) then
				v228.Text = v228.Text or "Tab";
				v230 = {};
				v231 = Instance.new("Frame");
				v231.Name = "TabButton";
				v231.BackgroundColor3 = Color3.fromRGB(33 + 222, 2016 - (1730 + 31), 1922 - (728 + 939));
				v231.BackgroundTransparency = 1;
				v231.Size = UDim2.new(0 - 0, 228 - 115, 0 - 0, 1095 - (138 + 930));
				v231.Parent = v160;
				v232 = Instance.new("Frame");
				v229 = 1 + 0;
			end
			if (v229 == 11) then
				v243.Position = UDim2.new(0.627, 0 + 0, 0.0935, 0 + 0);
				v243.Selectable = false;
				v243.Size = UDim2.new(0, 685 - 517, 0, 2053 - (459 + 1307));
				v243.Parent = v36;
				v243.Visible = false;
				v244 = Instance.new("UIListLayout");
				v244.Name = "UIListLayout";
				v244.SortOrder = Enum.SortOrder.LayoutOrder;
				v244.Parent = v243;
				v229 = 12;
			end
			if (v229 == 7) then
				v239.Name = "UIGradient";
				v239.Parent = v237;
				v239.Color = ColorSequence.new({ColorSequenceKeypoint.new(1870 - (474 + 1396), Color3.fromRGB(319 - 136, 233 + 15, 1 + 218)),ColorSequenceKeypoint.new(2 - 1, Color3.fromRGB(4 + 21, 25, 83 - 58))});
				v239.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(591 - (562 + 29), 0.5 + 0),NumberSequenceKeypoint.new(0.688, 1419.725 - (374 + 1045)),NumberSequenceKeypoint.new(2 - 1, 638.506 - (448 + 190))});
				v240 = Instance.new("ScrollingFrame");
				v240.Name = "LeftContainer";
				v240.AutomaticCanvasSize = Enum.AutomaticSize.Y;
				v240.CanvasSize = UDim2.new();
				v240.ScrollBarThickness = 1 + 1;
				v229 = 4 + 4;
			end
			if (v229 == (8 + 4)) then
				v245 = Instance.new("UIPadding");
				v245.Name = "UIPadding";
				v245.PaddingLeft = UDim.new(0 - 0, 12 - 8);
				v245.PaddingRight = UDim.new(1494 - (1307 + 187), 15 - 11);
				v245.PaddingTop = UDim.new(0 - 0, 8 - 5);
				v245.PaddingBottom = UDim.new(683 - (232 + 451), 3 + 0);
				v245.Parent = v243;
				v246 = Instance.new("UICorner");
				v246.Name = "UICorner";
				v229 = 13;
			end
		end
	end;
	local v175 = Instance.new("UIListLayout");
	v175.Name = "UIListLayout";
	v175.SortOrder = Enum.SortOrder.LayoutOrder;
	v175.Parent = v160;
	local v180 = Instance.new("UIPadding");
	v180.Name = "UIPadding";
	v180.Parent = v160;
	local v183 = Instance.new("Frame");
	v183.Name = "Frame";
	v183.AnchorPoint = Vector2.new(1, 0.5);
	v183.BackgroundColor3 = Color3.fromRGB(34, 31 + 3, 598 - (510 + 54));
	v183.BorderSizePixel = 0;
	v183.Position = UDim2.new(1 - 0, 0, 36.501 - (13 + 23), 0 - 0);
	v183.Size = UDim2.new(0 - 0, 1 - 0, 1088 - (830 + 258), 284);
	v183.Parent = v136;
	local v191 = Instance.new("UIStroke");
	v191.Name = "UIStroke";
	v191.Color = Color3.fromRGB(215 - 154, 39 + 22, 52 + 9);
	v191.Parent = v36;
	return v26;
end;
game:GetService("UserInputService").InputBegan:Connect(function(v195, v196)
	if (not v196 and (v195.UserInputType == Enum.UserInputType.MouseButton1)) then
		local v247 = 1441 - (860 + 581);
		local v248;
		local v249;
		local v250;
		while true do
			if (v247 == (0 - 0)) then
				v248 = game.Players.LocalPlayer:GetMouse();
				v249 = v248.Target;
				v247 = 1 + 0;
			end
			if (v247 == (243 - (237 + 4))) then
				if (not v250 and v10._dropdownTracker) then
					for v1156, v1157 in pairs(v10._dropdownTracker) do
						if v1157.isOpened() then
							v1157.close();
						end
					end
				end
				break;
			end
			if (v247 == 1) then
				v250 = false;
				if v249 then
					local v1120 = 0 - 0;
					local v1121;
					while true do
						if (v1120 == 0) then
							v1121 = v249;
							while v1121 and (v1121 ~= game.CoreGui) do
								if (v1121:IsA("Frame") and (v1121.Name == "Dropdown")) then
									v250 = true;
									break;
								end
								v1121 = v1121.Parent;
							end
							break;
						end
					end
				end
				v247 = 4 - 2;
			end
		end
	end
end);
return v10;