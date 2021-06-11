//Maya ASCII 2020 scene
//Name: door_normal.ma
//Last modified: Mon, Jun 07, 2021 02:42:42 AM
//Codeset: 1252
requires maya "2020";
requires "stereoCamera" "10.0";
requires "mtoa" "4.0.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2020";
fileInfo "version" "2020";
fileInfo "cutIdentifier" "201911140446-42a737a01c";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19042)\n";
fileInfo "UUID" "08BABDF4-49D8-F53B-5D3A-43BA1EC570CF";
createNode transform -s -n "persp";
	rename -uid "058FDA12-4954-7F75-2748-E8AAD17D60A8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.80996534772395723 5.846450985132341 0.28943534873067467 ;
	setAttr ".r" -type "double3" 629.06164727018734 -1438.9999999999523 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "9EBE9492-4BA8-6D84-363F-2EA7377F657B";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 5.8370167460263316;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "DFB17C6C-438C-0B09-705A-50B61C0359B8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.33415971627301611 1000.1 0.39941846851710783 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "F389F9A1-4298-D9DB-D9AB-CE9835716330";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 3.2266863468536409;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "9861E913-4EEB-5C79-8E5F-BEA03270C7CF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "25130215-4E9E-2726-022D-71BB73F7B8B4";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "71CCD2B7-4733-F8E9-AEC0-6D90740E3FBE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "6266C041-449B-4483-5B73-AB825DB8042E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "back";
	rename -uid "772F199C-4F4F-A482-1FCF-5798089FCBF8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 -1000.1 ;
	setAttr ".r" -type "double3" 0 180 0 ;
createNode camera -n "backShape" -p "back";
	rename -uid "7C1427ED-4080-3CBC-6651-5888612BD4B6";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "back1";
	setAttr ".den" -type "string" "back1_depth";
	setAttr ".man" -type "string" "back1_mask";
	setAttr ".hc" -type "string" "viewSet -b %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Door_Frame";
	rename -uid "DCD68B9E-4E78-7B2B-0D43-4CAD434613B3";
	setAttr ".rp" -type "double3" 0.50000005960464478 0 0.38164487481117249 ;
	setAttr ".sp" -type "double3" 0.50000005960464478 0 0.38164487481117249 ;
createNode mesh -n "Door_FrameShape" -p "Door_Frame";
	rename -uid "11DC0120-4758-78C0-8BE1-0881B52D39AC";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:115]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 160 ".uvst[0].uvsp[0:159]" -type "float2" 0.125 1 0.25 1 0.375
		 1 0.125 0.83333331 0.25 0.83333331 0.375 0.83333331 0.125 0.66666663 0.25 0.66666663
		 0.375 0.66666663 0.125 0.49999994 0.25 0.49999994 0.375 0.49999994 0.25 1 0.125 1
		 0.125 0.83333331 0.25 0.83333331 0.375 1 0.375 0.83333331 0.125 0.66666663 0.25 0.66666663
		 0.375 0.66666663 0.125 0.49999994 0.25 0.49999994 0.375 0.49999994 0 0 1 0 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1
		 0.125 0.83333331 0.125 0.66666663 0.125 0.66666663 0.125 0.83333331 0.125 0.83333331
		 0.125 0.66666663 0.125 0.66666663 0.125 0.83333331 0.125 0.83333331 0.125 0.66666663
		 0.125 0.66666663 0.125 0.83333331 0.125 0.83333331 0.125 0.66666663 0.125 0.66666663
		 0.125 0.83333331 0.125 0.83333331 0.125 0.66666663 0.125 0.66666663 0.125 0.83333331
		 0.125 0.83333331 0.125 0.83333337 0.125 0.66666663 0.125 0.66666663 0.125 0.72222221
		 0.125 0.77777779 0.125 0.72222221 0.125 0.77777779 0.125 0.77777773 0.125 0.72222221
		 0.125 0.77777773 0.125 0.72222221 0.25 1 0.25 0.83333331 0.125 0.83333331 0.125 1
		 0.375 1 0.375 0.83333331 0.25 0.66666663 0.125 0.66666663 0.375 0.66666663 0.25 0.49999994
		 0.125 0.49999994 0.375 0.49999994 0.25 1 0.125 1 0.125 0.83333331 0.25 0.83333331
		 0.375 1 0.375 0.83333331 0.125 0.66666663 0.25 0.66666663 0.375 0.66666663 0.125
		 0.49999994 0.25 0.49999994 0.375 0.49999994 0.125 0.83333331 0.125 0.77777773 0.125
		 0.77777779 0.125 0.83333331 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0.125 0.66666663 0.125 0.83333331 0.125
		 0.66666663 0.125 0.83333331 0.125 0.66666663 0.125 0.83333331 0.125 0.66666663 0.125
		 0.83333331 0.125 0.66666663 0.125 0.83333331 0.125 0.66666663 0.125 0.83333331 0.125
		 0.66666663 0.125 0.83333331 0.125 0.66666663 0.125 0.83333331 0.125 0.66666663 0.125
		 0.72222221 0.125 0.66666663 0.125 0.66666663 0.125 0.66666663 0.125 0.83333331 0.125
		 0.77777773 0.125 0.72222221 0.125 0.83333337 0.125 0.77777779 0.125 0.72222221 0.125
		 0.72222221;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 128 ".vt[0:127]"  1 -0.15000001 -0.39999998 1.28284264 -0.15000001 -0.2828427
		 1.39999998 -0.15000001 0 1 -0.32320511 -0.49999994 1.3535533 -0.32320511 -0.35355335
		 1.5 -0.32320511 0 1 -0.32320508 -0.69999999 1.49497473 -0.32320508 -0.49497473 1.70000005 -0.32320508 0
		 1 -0.14999998 -0.79999989 1.56568539 -0.14999998 -0.56568539 1.79999995 -0.14999998 0
		 0 -0.15000004 -0.39999977 -0.28284267 -0.15000001 -0.2828427 -0.39999995 -0.15000001 0
		 0 -0.32320511 -0.49999973 -0.35355332 -0.32320511 -0.35355335 -0.49999991 -0.32320511 0
		 0 -0.32320511 -0.69999981 -0.4949747 -0.32320508 -0.49497473 -0.69999993 -0.32320508 0
		 0 -0.15000001 -0.79999971 -0.56568539 -0.14999998 -0.56568539 -0.79999983 -0.14999998 0
		 -0.39999995 -0.15000001 1.56328964 -0.49999991 -0.32320511 1.56328964 -0.69999993 -0.32320508 1.56328964
		 -0.79999983 -0.14999998 1.56328964 1.39999998 -0.15000001 1.56328964 1.5 -0.32320511 1.56328964
		 1.70000005 -0.32320508 1.56328964 1.79999995 -0.14999998 1.56328964 1 -0.32320511 -0.53059733
		 1 -0.32320508 -0.6694026 0 -0.32320508 -0.6694026 0 -0.32320511 -0.53059733 0.86674714 -0.32320511 -0.53059733
		 0.86674714 -0.32320508 -0.6694026 0.13325287 -0.32320508 -0.6694026 0.13325287 -0.32320511 -0.53059733
		 0.86674714 -0.27998513 -0.53059733 0.86674714 -0.2799851 -0.6694026 0.13325284 -0.2799851 -0.6694026
		 0.13325284 -0.27998513 -0.53059733 0.80387485 -0.27998513 -0.56374532 0.80387485 -0.2799851 -0.63625461
		 0.19612512 -0.2799851 -0.63625461 0.19612512 -0.27998513 -0.56374532 0.80387485 -0.34193099 -0.56374532
		 0.80387485 -0.34193099 -0.63625461 0.19612512 -0.34193099 -0.63625461 0.19612512 -0.34193099 -0.56374532
		 0.60129154 -0.27998513 -0.56374532 0.39870834 -0.27998513 -0.56374532 0.60129154 -0.27998507 -0.63625461
		 0.39870834 -0.2799851 -0.63625461 0.60129154 -0.27998507 -0.61208487 0.60129154 -0.2799851 -0.58791506
		 0.39870834 -0.2799851 -0.61208487 0.39870834 -0.27998513 -0.58791506 0.19612512 -0.3691043 -0.58791506
		 0.19612512 -0.3691043 -0.61208487 0.80387479 -0.3691043 -0.58791506 0.80387485 -0.3691043 -0.61208487
		 1 0.15000001 -0.39999998 1.28284264 0.15000001 -0.2828427 1.39999998 0.15000001 0
		 1 0.32320511 -0.49999994 1.3535533 0.32320511 -0.35355335 1.5 0.32320511 0 1 0.32320508 -0.69999999
		 1.49497473 0.32320508 -0.49497473 1.70000005 0.32320508 0 1 0.14999998 -0.79999989
		 1.56568539 0.14999998 -0.56568539 1.79999995 0.14999998 0 0 0.15000004 -0.39999977
		 -0.28284267 0.15000001 -0.2828427 -0.39999995 0.15000001 0 0 0.32320511 -0.49999973
		 -0.35355332 0.32320511 -0.35355335 -0.49999991 0.32320511 0 0 0.32320511 -0.69999981
		 -0.4949747 0.32320508 -0.49497473 -0.69999993 0.32320508 0 0 0.15000001 -0.79999971
		 -0.56568539 0.14999998 -0.56568539 -0.79999983 0.14999998 0 -0.39999995 0.15000001 1.56328964
		 -0.49999991 0.32320511 1.56328964 -0.69999993 0.32320508 1.56328964 -0.79999983 0.14999998 1.56328964
		 1.39999998 0.15000001 1.56328964 1.5 0.32320511 1.56328964 1.70000005 0.32320508 1.56328964
		 1.79999995 0.14999998 1.56328964 1 0.32320511 -0.53059733 1 0.32320508 -0.6694026
		 0 0.32320508 -0.6694026 0 0.32320511 -0.53059733 0.86674714 0.32320511 -0.53059733
		 0.86674714 0.32320508 -0.6694026 0.13325287 0.32320508 -0.6694026 0.13325287 0.32320511 -0.53059733
		 0.86674714 0.27998513 -0.53059733 0.86674714 0.2799851 -0.6694026 0.13325284 0.2799851 -0.6694026
		 0.13325284 0.27998513 -0.53059733 0.80387485 0.27998513 -0.56374532 0.80387485 0.2799851 -0.63625461
		 0.19612512 0.2799851 -0.63625461 0.19612512 0.27998513 -0.56374532 0.80387485 0.34193099 -0.56374532
		 0.80387485 0.34193099 -0.63625461 0.19612512 0.34193099 -0.63625461 0.19612512 0.34193099 -0.56374532
		 0.60129154 0.27998513 -0.56374532 0.39870834 0.27998513 -0.56374532 0.60129154 0.27998507 -0.63625461
		 0.39870834 0.2799851 -0.63625461 0.60129154 0.27998507 -0.61208487 0.60129154 0.2799851 -0.58791506
		 0.39870834 0.2799851 -0.61208487 0.39870834 0.27998513 -0.58791506 0.19612512 0.3691043 -0.58791506
		 0.19612512 0.3691043 -0.61208487 0.80387479 0.3691043 -0.58791506 0.80387485 0.3691043 -0.61208487;
	setAttr -s 244 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 3 4 0 4 5 0 6 7 0 7 8 0 9 10 0 10 11 0
		 0 3 0 1 4 0 2 5 0 3 6 0 4 7 0 5 8 0 6 9 0 7 10 0 8 11 0 12 13 0 13 14 0 15 16 0 16 17 0
		 18 19 0 19 20 0 21 22 0 22 23 0 12 15 0 13 16 0 14 17 0 15 18 0 16 19 0 17 20 0 18 21 0
		 19 22 0 20 23 0 3 15 0 6 18 0 9 21 0 0 12 0 14 24 0 17 25 0 24 25 0 20 26 0 25 26 0
		 23 27 0 26 27 0 2 28 0 5 29 0 28 29 0 8 30 0 29 30 0 11 31 0 30 31 0 3 32 0 6 33 0
		 32 33 0 18 34 0 33 34 0 15 35 0 35 34 0 32 35 0 32 36 0 33 37 0 36 37 0 34 38 0 37 38 0
		 35 39 0 39 38 0 36 39 0 36 40 0 37 41 0 40 41 0 38 42 0 41 42 0 39 43 0 43 42 0 40 43 0
		 40 44 0 41 45 0 44 45 0 42 46 0 45 46 0 43 47 0 47 46 0 44 47 0 44 48 0 45 49 0 48 62 0
		 46 50 0 49 54 0 47 51 0 51 60 0 48 52 0 52 53 0 53 51 0 54 55 0 55 50 0 55 58 1 54 56 1
		 56 57 1 57 52 1 58 59 1 59 53 1 60 61 0 61 50 0 62 63 0 63 49 0 56 58 1 57 59 1 58 61 1
		 59 60 1 63 56 1 62 57 1 50 51 1 48 49 1 64 65 0 65 66 0 67 68 0 68 69 0 70 71 0 71 72 0
		 73 74 0 74 75 0 64 67 0 65 68 0 66 69 0 67 70 0 68 71 0 69 72 0 70 73 0 71 74 0 72 75 0
		 76 77 0 77 78 0 79 80 0 80 81 0 82 83 0 83 84 0 85 86 0 86 87 0 76 79 0 77 80 0 78 81 0
		 79 82 0 80 83 0 81 84 0 82 85 0 83 86 0 84 87 0 67 79 0 70 82 0 73 85 0 64 76 0 78 88 0
		 81 89 0 88 89 0 84 90 0 89 90 0 87 91 0 90 91 0 66 92 0 69 93 0 92 93 0 72 94 0 93 94 0
		 75 95 0 94 95 0;
	setAttr ".ed[166:243]" 67 96 0 70 97 0 96 97 0 82 98 0 97 98 0 79 99 0 99 98 0
		 96 99 0 96 100 0 97 101 0 100 101 0 98 102 0 101 102 0 99 103 0 103 102 0 100 103 0
		 100 104 0 101 105 0 104 105 0 102 106 0 105 106 0 103 107 0 107 106 0 104 107 0 104 108 0
		 105 109 0 108 109 0 106 110 0 109 110 0 107 111 0 111 110 0 108 111 0 108 112 0 109 113 0
		 112 126 0 110 114 0 113 118 0 111 115 0 115 124 0 112 116 0 116 117 0 117 115 0 118 119 0
		 119 114 0 119 122 1 118 120 1 120 121 1 121 116 1 122 123 1 123 117 1 124 125 0 125 114 0
		 126 127 0 127 113 0 120 122 1 121 123 1 122 125 1 123 124 1 127 120 1 126 121 1 114 115 1
		 112 113 1 28 92 0 24 88 0 14 78 0 13 77 0 12 76 0 0 64 0 1 65 0 2 66 0 27 91 0 31 95 0
		 11 75 0 10 74 0 9 73 0 21 85 0 22 86 0 23 87 0;
	setAttr -s 116 -ch 472 ".fc[0:115]" -type "polyFaces" 
		f 4 -1 8 2 -10
		mu 0 4 1 0 3 4
		f 4 -2 9 3 -11
		mu 0 4 2 1 4 5
		f 4 -3 11 4 -13
		mu 0 4 4 3 6 7
		f 4 -4 12 5 -14
		mu 0 4 5 4 7 8
		f 4 -5 14 6 -16
		mu 0 4 7 6 9 10
		f 4 -6 15 7 -17
		mu 0 4 8 7 10 11
		f 4 26 -20 -26 17
		mu 0 4 12 15 14 13
		f 4 27 -21 -27 18
		mu 0 4 16 17 15 12
		f 4 29 -22 -29 19
		mu 0 4 15 19 18 14
		f 4 30 -23 -30 20
		mu 0 4 17 20 19 15
		f 4 32 -24 -32 21
		mu 0 4 19 22 21 18
		f 4 33 -25 -33 22
		mu 0 4 20 23 22 19
		f 4 91 -100 -112 -87
		mu 0 4 64 68 73 78
		f 4 35 31 -37 -15
		mu 0 4 6 18 21 9
		f 4 37 25 -35 -9
		mu 0 4 0 13 14 3
		f 4 38 40 -40 -28
		mu 0 4 24 27 26 25
		f 4 39 42 -42 -31
		mu 0 4 28 31 30 29
		f 4 41 44 -44 -34
		mu 0 4 32 35 34 33
		f 4 46 -48 -46 10
		mu 0 4 36 39 38 37
		f 4 48 -50 -47 13
		mu 0 4 40 43 42 41
		f 4 50 -52 -49 16
		mu 0 4 44 47 46 45
		f 4 52 54 -54 -12
		mu 0 4 3 48 49 6
		f 4 53 56 -56 -36
		mu 0 4 6 49 50 18
		f 4 55 -59 -58 28
		mu 0 4 18 50 51 14
		f 4 57 -60 -53 34
		mu 0 4 14 51 48 3
		f 4 60 62 -62 -55
		mu 0 4 48 52 53 49
		f 4 61 64 -64 -57
		mu 0 4 49 53 54 50
		f 4 63 -67 -66 58
		mu 0 4 50 54 55 51
		f 4 65 -68 -61 59
		mu 0 4 51 55 52 48
		f 4 68 70 -70 -63
		mu 0 4 52 56 57 53
		f 4 69 72 -72 -65
		mu 0 4 53 57 58 54
		f 4 71 -75 -74 66
		mu 0 4 54 58 59 55
		f 4 73 -76 -69 67
		mu 0 4 55 59 56 52
		f 4 76 78 -78 -71
		mu 0 4 56 60 61 57
		f 4 77 80 -80 -73
		mu 0 4 57 61 62 58
		f 4 79 -83 -82 74
		mu 0 4 58 62 63 59
		f 4 81 -84 -77 75
		mu 0 4 59 63 60 56
		f 4 86 104 105 -114
		mu 0 4 64 78 79 65
		f 6 85 88 94 95 -88 -81
		mu 0 6 61 65 70 71 66 62
		f 4 -104 -103 -91 -113
		mu 0 4 66 77 76 67
		f 6 89 -94 -93 -92 -85 83
		mu 0 6 63 67 69 68 64 60
		f 4 93 90 -110 101
		mu 0 4 69 67 76 75
		f 4 92 -102 -108 99
		mu 0 4 68 69 75 73
		f 4 -97 -95 97 106
		mu 0 4 74 71 70 72
		f 4 -101 -107 98 107
		mu 0 4 75 74 72 73
		f 4 103 -96 96 108
		mu 0 4 77 66 71 74
		f 4 102 -109 100 109
		mu 0 4 76 77 74 75
		f 4 -98 -89 -106 110
		mu 0 4 72 70 65 79
		f 4 -99 -111 -105 111
		mu 0 4 73 72 79 78
		f 4 87 112 -90 82
		mu 0 4 62 66 67 63
		f 4 84 113 -86 -79
		mu 0 4 60 64 65 61
		f 4 123 -117 -123 114
		mu 0 4 80 81 82 83
		f 4 124 -118 -124 115
		mu 0 4 84 85 81 80
		f 4 126 -119 -126 116
		mu 0 4 81 86 87 82
		f 4 127 -120 -127 117
		mu 0 4 85 88 86 81
		f 4 129 -121 -129 118
		mu 0 4 86 89 90 87
		f 4 130 -122 -130 119
		mu 0 4 88 91 89 86
		f 4 -132 139 133 -141
		mu 0 4 92 93 94 95
		f 4 -133 140 134 -142
		mu 0 4 96 92 95 97
		f 4 -134 142 135 -144
		mu 0 4 95 94 98 99
		f 4 -135 143 136 -145
		mu 0 4 97 95 99 100
		f 4 -136 145 137 -147
		mu 0 4 99 98 101 102
		f 4 -137 146 138 -148
		mu 0 4 100 99 102 103
		f 4 200 225 213 -206
		mu 0 4 104 105 106 107
		f 4 128 150 -146 -150
		mu 0 4 87 90 101 98
		f 4 122 148 -140 -152
		mu 0 4 83 82 94 93
		f 4 141 153 -155 -153
		mu 0 4 108 109 110 111
		f 4 144 155 -157 -154
		mu 0 4 112 113 114 115
		f 4 147 157 -159 -156
		mu 0 4 116 117 118 119
		f 4 -125 159 161 -161
		mu 0 4 120 121 122 123
		f 4 -128 160 163 -163
		mu 0 4 124 125 126 127
		f 4 -131 162 165 -165
		mu 0 4 128 129 130 131
		f 4 125 167 -169 -167
		mu 0 4 82 87 132 133
		f 4 149 169 -171 -168
		mu 0 4 87 98 134 132
		f 4 -143 171 172 -170
		mu 0 4 98 94 135 134
		f 4 -149 166 173 -172
		mu 0 4 94 82 133 135
		f 4 168 175 -177 -175
		mu 0 4 133 132 136 137
		f 4 170 177 -179 -176
		mu 0 4 132 134 138 136
		f 4 -173 179 180 -178
		mu 0 4 134 135 139 138
		f 4 -174 174 181 -180
		mu 0 4 135 133 137 139
		f 4 176 183 -185 -183
		mu 0 4 137 136 140 141
		f 4 178 185 -187 -184
		mu 0 4 136 138 142 140
		f 4 -181 187 188 -186
		mu 0 4 138 139 143 142
		f 4 -182 182 189 -188
		mu 0 4 139 137 141 143
		f 4 184 191 -193 -191
		mu 0 4 141 140 144 145
		f 4 186 193 -195 -192
		mu 0 4 140 142 146 144
		f 4 -189 195 196 -194
		mu 0 4 142 143 147 146
		f 4 -190 190 197 -196
		mu 0 4 143 141 145 147
		f 4 227 -220 -219 -201
		mu 0 4 104 148 149 105
		f 6 194 201 -210 -209 -203 -200
		mu 0 6 144 146 150 151 152 148
		f 4 226 204 216 217
		mu 0 4 150 153 154 155
		f 6 -198 198 205 206 207 -204
		mu 0 6 147 145 104 107 156 153
		f 4 -216 223 -205 -208
		mu 0 4 156 157 154 153
		f 4 -214 221 215 -207
		mu 0 4 107 106 157 156
		f 4 -221 -212 208 210
		mu 0 4 158 159 152 151
		f 4 -222 -213 220 214
		mu 0 4 157 106 159 158
		f 4 -223 -211 209 -218
		mu 0 4 155 158 151 150
		f 4 -224 -215 222 -217
		mu 0 4 154 157 158 155
		f 4 -225 219 202 211
		mu 0 4 159 149 148 152
		f 4 -226 218 224 212
		mu 0 4 106 105 149 159
		f 4 -197 203 -227 -202
		mu 0 4 146 147 153 150
		f 4 192 199 -228 -199
		mu 0 4 145 144 148 104
		f 4 -39 230 152 -230
		mu 0 4 27 24 108 111
		f 4 -19 231 132 -231
		mu 0 4 16 12 92 96
		f 4 -18 232 131 -232
		mu 0 4 12 13 93 92
		f 4 -38 233 151 -233
		mu 0 4 13 0 83 93
		f 4 0 234 -115 -234
		mu 0 4 0 1 80 83
		f 4 1 235 -116 -235
		mu 0 4 1 2 84 80
		f 4 45 228 -160 -236
		mu 0 4 37 38 122 121
		f 4 -51 238 164 -238
		mu 0 4 47 44 128 131
		f 4 -8 239 121 -239
		mu 0 4 11 10 89 91
		f 4 -7 240 120 -240
		mu 0 4 10 9 90 89
		f 4 36 241 -151 -241
		mu 0 4 9 21 101 90
		f 4 23 242 -138 -242
		mu 0 4 21 22 102 101
		f 4 24 243 -139 -243
		mu 0 4 22 23 103 102
		f 4 43 236 -158 -244
		mu 0 4 33 34 118 117;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Door_Front";
	rename -uid "B7C8456B-443A-9346-3BBD-23964E01DAC7";
	setAttr ".t" -type "double3" 0.5 0.1 0.5 ;
createNode mesh -n "Door_BackShape" -p "Door_Front";
	rename -uid "30AC62C2-4A67-4D9B-4D3B-29A51CDFB837";
	setAttr -k off ".v";
	setAttr -s 2 ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.66666668653488159 0.43928050994873047 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt";
	setAttr ".pt[31]" -type "float3" 5.5879354e-09 0 0 ;
	setAttr ".pt[65]" -type "float3" 1.3969839e-09 0 0 ;
	setAttr ".pt[67]" -type "float3" 1.3969839e-09 0 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Door_Back";
	rename -uid "F66D99B8-4317-771D-8FD6-B791FCDFDCE7";
	setAttr ".t" -type "double3" 0.5 -0.1 0.5 ;
	setAttr ".s" -type "double3" 1 -1 1 ;
createNode transform -n "Temp_Unity_Level_Door";
	rename -uid "2DA9F30C-4070-5DF7-7326-1CA1FFEF9482";
	setAttr ".t" -type "double3" 0.5 0 0.25 ;
createNode mesh -n "Temp_Unity_Level_DoorShape" -p "Temp_Unity_Level_Door";
	rename -uid "9791FBEC-4D15-5196-4619-76B6F4D89381";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.58333331346511841 0.6000000536441803 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
parent -s -nc -r -add "|Door_Front|Door_BackShape" "Door_Back" ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "93FBA0BB-46A9-36E0-89BD-0AA4AC4F7EEE";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "A41639C4-40AF-6074-96B9-FDBC1B0464F5";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "961FFCB2-450F-6457-1840-BD93CB879DF4";
createNode displayLayerManager -n "layerManager";
	rename -uid "FA80CC74-415C-084E-72C5-AA83FE81ACF5";
createNode displayLayer -n "defaultLayer";
	rename -uid "1E4243D2-419E-9157-FEA7-5195340E9277";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "BA7E8CD9-4836-EE13-25E1-41AEEF08013D";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "83DC7D6A-4644-A87D-335A-A58019026FC9";
	setAttr ".g" yes;
createNode polyPlane -n "polyPlane1";
	rename -uid "057029DA-4C01-0E6D-DBA4-1A802A1B439C";
	setAttr ".w" 2;
	setAttr ".h" 2;
	setAttr ".sw" 6;
	setAttr ".sh" 8;
	setAttr ".cuv" 2;
createNode polyTweak -n "polyTweak9";
	rename -uid "E2A0EA21-428C-78AB-05A4-D4A84F9FFA74";
	setAttr ".uopa" yes;
	setAttr -s 59 ".tk";
	setAttr ".tk[1]" -type "float3" -0.13991974 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.31876481 0 0 ;
	setAttr ".tk[3]" -type "float3" 0.083155997 0 0 ;
	setAttr ".tk[4]" -type "float3" -0.15245266 0 0 ;
	setAttr ".tk[5]" -type "float3" 0.13991974 0 0 ;
	setAttr ".tk[7]" -type "float3" 0 0 0.14898783 ;
	setAttr ".tk[8]" -type "float3" -0.13991974 0 0.14898783 ;
	setAttr ".tk[9]" -type "float3" 0.31876481 0 0.14898783 ;
	setAttr ".tk[10]" -type "float3" 0.083155997 0 0.14898783 ;
	setAttr ".tk[11]" -type "float3" -0.15245266 0 0.14898783 ;
	setAttr ".tk[12]" -type "float3" 0.13991974 0 0.14898783 ;
	setAttr ".tk[13]" -type "float3" 0 0 0.14898783 ;
	setAttr ".tk[14]" -type "float3" 0 0 0.25986251 ;
	setAttr ".tk[15]" -type "float3" -0.13991974 0 0.25986251 ;
	setAttr ".tk[16]" -type "float3" 0.31876481 0 0.25986251 ;
	setAttr ".tk[17]" -type "float3" 0.083155997 0 0.25986251 ;
	setAttr ".tk[18]" -type "float3" -0.15245266 0 0.25986251 ;
	setAttr ".tk[19]" -type "float3" 0.13991974 0 0.25986251 ;
	setAttr ".tk[20]" -type "float3" 0 0 0.25986251 ;
	setAttr ".tk[21]" -type "float3" 0 0 0.29451096 ;
	setAttr ".tk[22]" -type "float3" -0.13991974 0 0.29451096 ;
	setAttr ".tk[23]" -type "float3" -0.064390682 0 0.29451096 ;
	setAttr ".tk[24]" -type "float3" -0.30000019 0 0.29451096 ;
	setAttr ".tk[25]" -type "float3" -0.53560936 0 0.29451096 ;
	setAttr ".tk[26]" -type "float3" 0.13991974 0 0.29451096 ;
	setAttr ".tk[27]" -type "float3" 0 0 0.29451096 ;
	setAttr ".tk[28]" -type "float3" 0 0 -0.097015329 ;
	setAttr ".tk[29]" -type "float3" -0.13991974 0 -0.097015329 ;
	setAttr ".tk[30]" -type "float3" -0.06439022 0 -0.097015329 ;
	setAttr ".tk[31]" -type "float3" -0.29999965 0 -0.097015329 ;
	setAttr ".tk[32]" -type "float3" -0.53560984 0 -0.097015329 ;
	setAttr ".tk[33]" -type "float3" 0.13991974 0 -0.097015329 ;
	setAttr ".tk[34]" -type "float3" 0 0 -0.097015329 ;
	setAttr ".tk[35]" -type "float3" 0 0 0.058902167 ;
	setAttr ".tk[36]" -type "float3" -0.13991974 0 0.058902167 ;
	setAttr ".tk[37]" -type "float3" 0.0034648448 0 0.058902167 ;
	setAttr ".tk[38]" -type "float3" -0.23214376 0 0.058902167 ;
	setAttr ".tk[39]" -type "float3" -0.46775305 0 0.058902167 ;
	setAttr ".tk[40]" -type "float3" 0.13991974 0 0.058902167 ;
	setAttr ".tk[41]" -type "float3" 0 0 0.058902167 ;
	setAttr ".tk[42]" -type "float3" 0 0 -0.13859333 ;
	setAttr ".tk[43]" -type "float3" -0.13991974 0 -0.13859333 ;
	setAttr ".tk[44]" -type "float3" 0.32915935 0 -0.13859333 ;
	setAttr ".tk[45]" -type "float3" 0.093550496 0 -0.13859333 ;
	setAttr ".tk[46]" -type "float3" -0.14205816 0 -0.13859333 ;
	setAttr ".tk[47]" -type "float3" 0.13991974 0 -0.13859333 ;
	setAttr ".tk[48]" -type "float3" 0 0 -0.13859333 ;
	setAttr ".tk[49]" -type "float3" 0 0 -0.056763075 ;
	setAttr ".tk[50]" -type "float3" -0.13991974 0 -0.056763075 ;
	setAttr ".tk[51]" -type "float3" 0.32915935 0 -0.056763075 ;
	setAttr ".tk[52]" -type "float3" 0.093550496 0 -0.056763075 ;
	setAttr ".tk[53]" -type "float3" -0.14205816 0 -0.056763075 ;
	setAttr ".tk[54]" -type "float3" 0.13991974 0 -0.056763075 ;
	setAttr ".tk[55]" -type "float3" 0 0 -0.056763075 ;
	setAttr ".tk[57]" -type "float3" -0.13991974 0 0 ;
	setAttr ".tk[58]" -type "float3" 0.32915935 0 0 ;
	setAttr ".tk[59]" -type "float3" 0.093550496 0 0 ;
	setAttr ".tk[60]" -type "float3" -0.14205816 0 0 ;
	setAttr ".tk[61]" -type "float3" 0.13991974 0 0 ;
createNode polySplit -n "polySplit3";
	rename -uid "89EADA20-4EB0-E0EF-0478-28BB438BFEE9";
	setAttr -s 3 ".e[0:2]"  0.670955 0.144223 0.30893901;
	setAttr -s 3 ".d[0:2]"  -2147483580 -2147483568 -2147483555;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak10";
	rename -uid "5EB69637-4F24-8D59-92C5-BFA6F4560C71";
	setAttr ".uopa" yes;
	setAttr -s 40 ".tk";
	setAttr ".tk[2]" -type "float3" -0.024253834 0 0 ;
	setAttr ".tk[4]" -type "float3" 0.020789001 0 0 ;
	setAttr ".tk[8]" -type "float3" 0 3.7252903e-09 0 ;
	setAttr ".tk[9]" -type "float3" -0.024253834 3.7252903e-09 0 ;
	setAttr ".tk[11]" -type "float3" 0.020789001 3.7252903e-09 0 ;
	setAttr ".tk[12]" -type "float3" 0 3.7252903e-09 0 ;
	setAttr ".tk[13]" -type "float3" 0 3.7252903e-09 0 ;
	setAttr ".tk[15]" -type "float3" 0 3.7252903e-09 0 ;
	setAttr ".tk[16]" -type "float3" -0.024253834 3.7252903e-09 0 ;
	setAttr ".tk[18]" -type "float3" 0.020789001 3.7252903e-09 0 ;
	setAttr ".tk[19]" -type "float3" 0 3.7252903e-09 0 ;
	setAttr ".tk[20]" -type "float3" 0 3.7252903e-09 0 ;
	setAttr ".tk[22]" -type "float3" 0 3.7252903e-09 0 ;
	setAttr ".tk[23]" -type "float3" -0.020788999 3.7252903e-09 0 ;
	setAttr ".tk[25]" -type "float3" 0.027718667 3.7252903e-09 0 ;
	setAttr ".tk[26]" -type "float3" 0 3.7252903e-09 0 ;
	setAttr ".tk[27]" -type "float3" 0 3.7252903e-09 0 ;
	setAttr ".tk[29]" -type "float3" 0 3.7252903e-09 0 ;
	setAttr ".tk[30]" -type "float3" -0.020788999 3.7252903e-09 0 ;
	setAttr ".tk[32]" -type "float3" 0.027718667 3.7252903e-09 0 ;
	setAttr ".tk[33]" -type "float3" 0 3.7252903e-09 0 ;
	setAttr ".tk[34]" -type "float3" 0 3.7252903e-09 0 ;
	setAttr ".tk[36]" -type "float3" 0 3.7252903e-09 0 ;
	setAttr ".tk[37]" -type "float3" -0.024253834 3.7252903e-09 0 ;
	setAttr ".tk[39]" -type "float3" 0.027718667 3.7252903e-09 0 ;
	setAttr ".tk[40]" -type "float3" 0 3.7252903e-09 0 ;
	setAttr ".tk[41]" -type "float3" 0 3.7252903e-09 0 ;
	setAttr ".tk[44]" -type "float3" -0.034648333 3.7252903e-09 0 ;
	setAttr ".tk[46]" -type "float3" 0.027718667 3.7252903e-09 0 ;
	setAttr ".tk[47]" -type "float3" 0 3.7252903e-09 0 ;
	setAttr ".tk[48]" -type "float3" 0 3.7252903e-09 0 ;
	setAttr ".tk[51]" -type "float3" -0.034648333 3.7252903e-09 0 ;
	setAttr ".tk[53]" -type "float3" 0.027718667 3.7252903e-09 0 ;
	setAttr ".tk[54]" -type "float3" 0 3.7252903e-09 0 ;
	setAttr ".tk[55]" -type "float3" 0 3.7252903e-09 0 ;
	setAttr ".tk[58]" -type "float3" -0.034648333 0 0 ;
	setAttr ".tk[60]" -type "float3" 0.027718667 0 0 ;
	setAttr ".tk[63]" -type "float3" 0 3.7252903e-09 0 ;
	setAttr ".tk[64]" -type "float3" 0 3.7252903e-09 0 ;
	setAttr ".tk[65]" -type "float3" 0 3.7252903e-09 0 ;
createNode polySplit -n "polySplit4";
	rename -uid "92F1EB01-4563-5D09-59AE-E690EA87F086";
	setAttr -s 3 ".e[0:2]"  0.69419599 0.82015699 0.59914702;
	setAttr -s 3 ".d[0:2]"  -2147483572 -2147483562 -2147483549;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "6531703A-4456-07BE-27BD-C1934665F098";
	setAttr ".ics" -type "componentList" 10 "f[7]" "f[10]" "f[13]" "f[16]" "f[19]" "f[22]" "f[28]" "f[34]" "f[40]" "f[48:49]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.5 0 0.5 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.50000006 3.7252903e-09 0.54611242 ;
	setAttr ".rs" 54125;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.30658638477325439 3.7252902984619141e-09 -0.30676305294036865 ;
	setAttr ".cbx" -type "double3" 1.3065865039825439 3.7252902984619141e-09 1.3989878296852112 ;
	setAttr ".raf" no;
createNode polyDuplicateEdge -n "polyDuplicateEdge1";
	rename -uid "25A01E45-4B9B-33AF-130F-EDA4C6A0BA3B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[7]" "e[20]" "e[32]" "e[43]" "e[55]" "e[67]" "e[79]" "e[91]";
	setAttr ".of" 0.046107571572065353;
createNode polyTweak -n "polyTweak11";
	rename -uid "D6B67A15-459B-6A38-C579-2D8BD68665FD";
	setAttr ".uopa" yes;
	setAttr -s 34 ".tk";
	setAttr ".tk[69]" -type "float3" 0.0078461077 -0.039044462 -0.055464052 ;
	setAttr ".tk[70]" -type "float3" -0.066397458 -0.039044462 -0.055464052 ;
	setAttr ".tk[71]" -type "float3" -0.066397458 -0.039044462 -0.042010486 ;
	setAttr ".tk[72]" -type "float3" 0.0078461077 -0.039044462 -0.042010486 ;
	setAttr ".tk[73]" -type "float3" -0.029680992 -0.039044462 -0.021185797 ;
	setAttr ".tk[74]" -type "float3" 0.0078461077 -0.039044462 -0.021185797 ;
	setAttr ".tk[75]" -type "float3" -0.029681036 -0.039044462 0.040850393 ;
	setAttr ".tk[76]" -type "float3" 0.0078461077 -0.039044462 0.040850393 ;
	setAttr ".tk[77]" -type "float3" 0.006168853 -0.039044462 -0.046012327 ;
	setAttr ".tk[78]" -type "float3" -0.026466193 -0.039044462 -0.046012327 ;
	setAttr ".tk[79]" -type "float3" -0.026466193 -0.039044462 -0.038506571 ;
	setAttr ".tk[80]" -type "float3" 0.006168853 -0.039044462 -0.038506571 ;
	setAttr ".tk[81]" -type "float3" -0.026466193 -0.039044462 -0.026888425 ;
	setAttr ".tk[82]" -type "float3" 0.026466168 -0.039044462 -0.026888425 ;
	setAttr ".tk[83]" -type "float3" -0.026466193 -0.039044462 0.0077216881 ;
	setAttr ".tk[84]" -type "float3" 0.026466195 -0.039044462 0.0077216881 ;
	setAttr ".tk[85]" -type "float3" -0.026466193 -0.039044462 0.012797406 ;
	setAttr ".tk[86]" -type "float3" 0.022805341 -0.039044462 0.012797406 ;
	setAttr ".tk[87]" -type "float3" -0.026466193 -0.039044462 0.029556843 ;
	setAttr ".tk[88]" -type "float3" -0.0207651 -0.039044462 0.036939628 ;
	setAttr ".tk[89]" -type "float3" 0.0052342191 -0.039044462 0.036939628 ;
	setAttr ".tk[90]" -type "float3" -0.013758987 -0.039044462 0.046012327 ;
	setAttr ".tk[91]" -type "float3" 0.0052342191 -0.039044462 0.046012327 ;
	setAttr ".tk[92]" -type "float3" 0.037703235 -0.039044462 -0.030233989 ;
	setAttr ".tk[93]" -type "float3" -0.0067358306 -0.039044462 -0.030233989 ;
	setAttr ".tk[94]" -type "float3" -0.037703235 -0.039044462 0.013717083 ;
	setAttr ".tk[95]" -type "float3" 0.026337096 -0.039044462 0.013717083 ;
	setAttr ".tk[96]" -type "float3" 0.037703235 -0.039044462 -0.00074479327 ;
	setAttr ".tk[97]" -type "float3" 0.013355913 -0.039044462 0.030233989 ;
	setAttr ".tk[98]" -type "float3" -0.037703235 -0.039044462 0.030233989 ;
createNode deleteComponent -n "deleteComponent7";
	rename -uid "05D6C636-465C-AAFC-789D-5585BC7280BF";
	setAttr ".dc" -type "componentList" 8 "e[7]" "e[20]" "e[32]" "e[43]" "e[55]" "e[67]" "e[79]" "e[91]";
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "56F31E8D-4B7E-71C2-41AC-16A382AAB6CF";
	setAttr ".ics" -type "componentList" 1 "f[82:89]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.5 0 0.5 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.39693493 8.5882079e-11 0.5 ;
	setAttr ".rs" 53633;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.19453546404838562 0 -0.5 ;
	setAttr ".cbx" -type "double3" 0.59933439642190933 1.7176415845199244e-10 1.5 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak12";
	rename -uid "D8706CE7-4FB8-9C47-4127-CA8CAFDD4B88";
	setAttr ".uopa" yes;
	setAttr -s 30 ".tk";
	setAttr ".tk[110]" -type "float3" 0 -0.026479049 0 ;
	setAttr ".tk[111]" -type "float3" 0 -0.026479049 0 ;
	setAttr ".tk[112]" -type "float3" 0 -0.026479049 0 ;
	setAttr ".tk[113]" -type "float3" 0 -0.026479049 0 ;
	setAttr ".tk[114]" -type "float3" 0 -0.026479049 0 ;
	setAttr ".tk[115]" -type "float3" 0 -0.026479049 0 ;
	setAttr ".tk[116]" -type "float3" 0 -0.026479049 0 ;
	setAttr ".tk[117]" -type "float3" 0 -0.026479049 0 ;
	setAttr ".tk[118]" -type "float3" 0 -0.026479049 0 ;
	setAttr ".tk[119]" -type "float3" 0 -0.026479049 0 ;
	setAttr ".tk[120]" -type "float3" 0 -0.026479049 0 ;
	setAttr ".tk[121]" -type "float3" 0 -0.026479049 0 ;
	setAttr ".tk[122]" -type "float3" 0 -0.026479049 0 ;
	setAttr ".tk[123]" -type "float3" 0 -0.026479049 0 ;
	setAttr ".tk[124]" -type "float3" 0 -0.026479049 0 ;
	setAttr ".tk[125]" -type "float3" 0 -0.026479049 0 ;
	setAttr ".tk[126]" -type "float3" 0 -0.026479049 0 ;
	setAttr ".tk[127]" -type "float3" 0 -0.026479049 0 ;
	setAttr ".tk[128]" -type "float3" 0 -0.026479049 0 ;
	setAttr ".tk[129]" -type "float3" 0 -0.026479049 0 ;
	setAttr ".tk[130]" -type "float3" 0 -0.026479049 0 ;
	setAttr ".tk[131]" -type "float3" 0 -0.026479049 0 ;
	setAttr ".tk[132]" -type "float3" 0 -0.026479049 0 ;
	setAttr ".tk[133]" -type "float3" 0 -0.026479049 0 ;
	setAttr ".tk[134]" -type "float3" 0 -0.026479049 0 ;
	setAttr ".tk[135]" -type "float3" 0 -0.026479049 0 ;
	setAttr ".tk[136]" -type "float3" 0 -0.026479049 0 ;
createNode polySplit -n "polySplit5";
	rename -uid "B5D9BC99-42CC-72D6-58AB-05981B13D2C8";
	setAttr -s 2 ".e[0:1]"  1 0.670955;
	setAttr -s 2 ".d[0:1]"  -2147483594 -2147483596;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit6";
	rename -uid "513F8BE7-441B-F856-5F5E-DC88F80179F9";
	setAttr -s 2 ".e[0:1]"  0 0.69419599;
	setAttr -s 2 ".d[0:1]"  -2147483556 -2147483588;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent8";
	rename -uid "7BB50A87-4170-810B-C558-509E4BF85595";
	setAttr ".dc" -type "componentList" 2 "e[88]" "e[92]";
createNode deleteComponent -n "deleteComponent9";
	rename -uid "6E6F22B5-4887-F4BB-AB5D-0997C589BD8C";
	setAttr ".dc" -type "componentList" 4 "e[64]" "e[69]" "e[74]" "e[80]";
createNode deleteComponent -n "deleteComponent10";
	rename -uid "790C10AA-4328-0A86-7625-1F867EEF1BA1";
	setAttr ".dc" -type "componentList" 6 "vtx[38]" "vtx[41]" "vtx[44]" "vtx[47]" "vtx[50]" "vtx[54]";
createNode deleteComponent -n "deleteComponent11";
	rename -uid "DDA5EAA5-4922-60DE-5B11-CA8361B4049C";
	setAttr ".dc" -type "componentList" 2 "e[70]" "e[72]";
createNode deleteComponent -n "deleteComponent12";
	rename -uid "547977CB-45AD-F499-5546-6FB400AF02E9";
	setAttr ".dc" -type "componentList" 2 "vtx[46]" "vtx[48]";
createNode polySplit -n "polySplit7";
	rename -uid "4D276BE1-4026-5C0C-CD11-B4A0E9B39745";
	setAttr -s 2 ".e[0:1]"  0.51424497 0.51424402;
	setAttr -s 2 ".d[0:1]"  -2147483535 -2147483532;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit8";
	rename -uid "E75160D6-4A50-BB99-59EF-09AF73D88344";
	setAttr -s 2 ".e[0:1]"  0.390762 0.271265;
	setAttr -s 2 ".d[0:1]"  -2147483525 -2147483520;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "125C6500-426F-252B-10CF-098AB1805F60";
	setAttr ".ics" -type "componentList" 3 "f[28]" "f[33]" "f[104]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.5 0.030435348817612829 0.5 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.86845118 -0.0086091077 0.45405906 ;
	setAttr ".rs" 58009;
	setAttr ".off" 0.11999999731779099;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.45678196847438812 -0.0086091096014717199 0.20685845613479614 ;
	setAttr ".cbx" -type "double3" 1.2801203727722168 -0.0086091058761814214 0.70125964283943176 ;
createNode polyTweak -n "polyTweak13";
	rename -uid "2B37AC00-4450-14AB-4DFD-1CB95BE30ABA";
	setAttr ".uopa" yes;
	setAttr -s 86 ".tk";
	setAttr ".tk[2]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[3]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[4]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[9]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[10]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[15]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[16]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[21]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[22]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[27]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[28]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[33]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[34]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[38]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[39]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[42]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[43]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[46]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[54]" -type "float3" 0.029857099 0 0.0094516277 ;
	setAttr ".tk[55]" -type "float3" 0.10487359 0 0.0094515979 ;
	setAttr ".tk[56]" -type "float3" 0.10487358 0 0.035733156 ;
	setAttr ".tk[57]" -type "float3" 0.029857099 0 0.035733253 ;
	setAttr ".tk[58]" -type "float3" 0.10487357 0 0.035733156 ;
	setAttr ".tk[59]" -type "float3" 0.029857099 0 0.035733253 ;
	setAttr ".tk[60]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[61]" -type "float3" 0.029857099 0 2.9802322e-08 ;
	setAttr ".tk[62]" -type "float3" 0.1240857 0 0 ;
	setAttr ".tk[65]" -type "float3" 0.1240857 0 0 ;
	setAttr ".tk[67]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[69]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[71]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[74]" -type "float3" 0.10487358 0 -1.8626451e-09 ;
	setAttr ".tk[76]" -type "float3" 0.10487358 0 -1.8626451e-09 ;
	setAttr ".tk[78]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[79]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[83]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[84]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[85]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[86]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[87]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[88]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[89]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[90]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[91]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[92]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[93]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[94]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[95]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[96]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[97]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[98]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[99]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[100]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[101]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[102]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[103]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[104]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[105]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[106]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[107]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[108]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[109]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[110]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[111]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[112]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[113]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[114]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[115]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[116]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[117]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[118]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[119]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[120]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[121]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[122]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[123]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[124]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[125]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[126]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[127]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[128]" -type "float3" 0.10487358 0 0 ;
	setAttr ".tk[131]" -type "float3" 0 0 -0.0042598369 ;
	setAttr ".tk[132]" -type "float3" 0.10487358 0 -0.0042598369 ;
	setAttr ".tk[134]" -type "float3" 0.10487358 0 0 ;
createNode deleteComponent -n "deleteComponent13";
	rename -uid "CC1D518E-4CCC-381A-72C0-C490E9FAC2E0";
	setAttr ".dc" -type "componentList" 1 "e[244]";
createNode deleteComponent -n "deleteComponent14";
	rename -uid "E2C2FE09-4647-6F7B-CD98-6B8B6F7D7F4D";
	setAttr ".dc" -type "componentList" 1 "e[240]";
createNode polySplit -n "polySplit9";
	rename -uid "F136C499-4D64-6E51-4AFC-7BBE822FF870";
	setAttr -s 2 ".e[0:1]"  0.27181801 0.23041201;
	setAttr -s 2 ".d[0:1]"  -2147483401 -2147483397;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent15";
	rename -uid "899F03C2-4F0D-25A7-06A9-1889C4B8C606";
	setAttr ".dc" -type "componentList" 3 "e[239:241]" "e[244]" "e[252]";
createNode deleteComponent -n "deleteComponent16";
	rename -uid "5548708A-47FA-B3CB-C187-798DFC44EF1B";
	setAttr ".dc" -type "componentList" 4 "e[48]" "e[58]" "e[112]" "e[116]";
createNode deleteComponent -n "deleteComponent17";
	rename -uid "E283A290-4151-DF5A-C0F8-68BA13082AB2";
	setAttr ".dc" -type "componentList" 4 "vtx[29:30]" "vtx[35:36]" "vtx[68]" "vtx[70]";
createNode polySplit -n "polySplit10";
	rename -uid "6E952E71-44D1-5D49-B5DC-8A98AFD844B8";
	setAttr -s 2 ".e[0:1]"  0 0.75728202;
	setAttr -s 2 ".d[0:1]"  -2147483411 -2147483536;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent18";
	rename -uid "691583B0-4391-D8CC-65A3-8D860FE8B6B3";
	setAttr ".dc" -type "componentList" 2 "e[233]" "e[235]";
createNode polySplit -n "polySplit11";
	rename -uid "E905BC47-4937-FEB9-0311-5FAFE988090A";
	setAttr -s 2 ".e[0:1]"  0 0.30899599;
	setAttr -s 2 ".d[0:1]"  -2147483412 -2147483424;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit12";
	rename -uid "C0932334-4B13-2937-94B1-EB812C1949A3";
	setAttr -s 2 ".e[0:1]"  1 0.320512;
	setAttr -s 2 ".d[0:1]"  -2147483411 -2147483536;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "08699DD3-4904-1422-4726-C59B5F5451A3";
	setAttr ".ics" -type "componentList" 1 "f[104]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.5 0.030435348817612829 0.5 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.84914756 -0.0086091077 0.45405903 ;
	setAttr ".rs" 45253;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.5767819881439209 -0.0086091096014717199 0.32685850560665131 ;
	setAttr ".cbx" -type "double3" 1.1215130686759949 -0.0086091058761814214 0.58125954866409302 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak14";
	rename -uid "1EEF1202-4972-91C2-0CD2-04B536D94B45";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[133]" -type "float3" 0.095800869 0 0 ;
	setAttr ".tk[134]" -type "float3" 0.095800869 0 0 ;
	setAttr ".tk[136]" -type "float3" 0.095800869 0 0 ;
createNode polyCube -n "polyCube1";
	rename -uid "C83DB93F-438D-BB68-5CC2-B59C6D22E037";
	setAttr ".w" 3;
	setAttr ".h" 0.5;
	setAttr ".d" 2.5;
	setAttr ".sw" 6;
	setAttr ".sd" 5;
	setAttr ".cuv" 4;
createNode deleteComponent -n "deleteComponent20";
	rename -uid "FF5ACD28-49E5-DD16-C75C-C5936D2641DA";
	setAttr ".dc" -type "componentList" 9 "f[1:4]" "f[7:10]" "f[13:16]" "f[19:22]" "f[25:28]" "f[49:52]" "f[55:58]" "f[61:64]" "f[67:70]";
createNode polyBridgeEdge -n "polyBridgeEdge4";
	rename -uid "0ACA032E-4B02-758F-4B22-E5A64B6642B1";
	setAttr ".ics" -type "componentList" 8 "e[45]" "e[49]" "e[53]" "e[57]" "e[82]" "e[86]" "e[90]" "e[94]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.0401416359698841 0.61456556104902982 0.32517297264137546 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 21;
	setAttr ".sv2" 1;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge5";
	rename -uid "B6ED3ED1-4245-4D00-50E6-3F8DC7341C2D";
	setAttr ".ics" -type "componentList" 2 "e[11:14]" "e[29:32]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.0401416359698841 0.61456556104902982 0.32517297264137546 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 25;
	setAttr ".sv2" 42;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge6";
	rename -uid "0337EAFF-4752-122E-0CA4-F08AEE5BD0AB";
	setAttr ".ics" -type "componentList" 8 "e[46]" "e[50]" "e[54]" "e[58]" "e[83]" "e[87]" "e[91]" "e[95]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.0401416359698841 0.61456556104902982 0.32517297264137546 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 6;
	setAttr ".sv2" 46;
	setAttr ".d" 1;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "0254E40E-4028-88E0-B31D-07BBA43C8A9A";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 336\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 335\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 335\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 0\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1319\n            -height 715\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n"
		+ "                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n"
		+ "                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n"
		+ "                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n"
		+ "                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n"
		+ "\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 0\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 715\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 0\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 715\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 50 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "8E3B3454-4362-00F4-673F-5B9DD1E892F1";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode groupId -n "groupId1";
	rename -uid "D535822C-4730-4A38-FAAF-FBA2DF928F07";
	setAttr ".ihi" 0;
createNode polyTweak -n "polyTweak15";
	rename -uid "A946E081-4A46-F69F-7774-45A50522B6F4";
	setAttr ".uopa" yes;
	setAttr -s 15 ".tk";
	setAttr ".tk[74]" -type "float3" 0.013556072 0 0 ;
	setAttr ".tk[75]" -type "float3" 0 0 0.013474207 ;
	setAttr ".tk[76]" -type "float3" 0 0 0.015778333 ;
	setAttr ".tk[77]" -type "float3" 0 0 0.015778333 ;
	setAttr ".tk[138]" -type "float3" -0.029667161 0.039044458 0.013855207 ;
	setAttr ".tk[139]" -type "float3" -0.029667187 0.039044458 -0.013855175 ;
	setAttr ".tk[140]" -type "float3" 0.019988282 0.039044458 0.013855197 ;
	setAttr ".tk[141]" -type "float3" 0.025160886 0.039044458 0.0067482339 ;
	setAttr ".tk[142]" -type "float3" 0.029667187 0.039044458 0.00050025451 ;
	setAttr ".tk[143]" -type "float3" 0.029667174 0.039044458 -0.013855207 ;
createNode deleteComponent -n "deleteComponent21";
	rename -uid "2EB6722C-4EB5-1433-6D5E-47A0FA988D7D";
	setAttr ".dc" -type "componentList" 1 "e[128]";
createNode deleteComponent -n "deleteComponent22";
	rename -uid "8E37184D-4354-02E0-E9CB-FC9DA4EFD325";
	setAttr ".dc" -type "componentList" 1 "e[56]";
createNode deleteComponent -n "deleteComponent23";
	rename -uid "5887F380-490B-2972-DD02-C3B5784324C0";
	setAttr ".dc" -type "componentList" 1 "e[127]";
createNode deleteComponent -n "deleteComponent24";
	rename -uid "DCB61630-4D63-B8D3-D7EA-5596EB2B88E6";
	setAttr ".dc" -type "componentList" 2 "vtx[45]" "vtx[74]";
createNode deleteComponent -n "deleteComponent25";
	rename -uid "99907FD5-4373-195D-E66E-13A93DC4E2FB";
	setAttr ".dc" -type "componentList" 2 "e[50]" "e[148]";
createNode deleteComponent -n "deleteComponent26";
	rename -uid "7E4F71D6-4471-49B7-EA93-6B8160E8784F";
	setAttr ".dc" -type "componentList" 1 "e[187]";
createNode deleteComponent -n "deleteComponent27";
	rename -uid "1633830F-49AF-A71B-B3F1-52AC1D6CA37F";
	setAttr ".dc" -type "componentList" 1 "e[191]";
createNode deleteComponent -n "deleteComponent28";
	rename -uid "F417C33D-4A2A-9D93-6D88-4785CBBF4E7E";
	setAttr ".dc" -type "componentList" 1 "e[188]";
createNode deleteComponent -n "deleteComponent29";
	rename -uid "EB64639D-46F7-63A5-A308-FC97BF0BFE40";
	setAttr ".dc" -type "componentList" 3 "vtx[81]" "vtx[88]" "vtx[109:110]";
createNode deleteComponent -n "deleteComponent30";
	rename -uid "6161464E-4593-3F29-68F2-74A259B0A318";
	setAttr ".dc" -type "componentList" 1 "e[106]";
createNode deleteComponent -n "deleteComponent31";
	rename -uid "351A72A2-40AD-987A-6B13-7BADFC869C14";
	setAttr ".dc" -type "componentList" 1 "e[213]";
createNode deleteComponent -n "deleteComponent32";
	rename -uid "552C3BBB-4407-2932-27A4-5F8F73885EA7";
	setAttr ".dc" -type "componentList" 1 "e[232]";
createNode deleteComponent -n "deleteComponent33";
	rename -uid "D10A9826-4DC5-3D1B-305F-1D85181A35C5";
	setAttr ".dc" -type "componentList" 2 "vtx[123]" "vtx[134]";
createNode deleteComponent -n "deleteComponent34";
	rename -uid "C73A6B47-410B-5A9B-6AB3-3CA16AAB7E44";
	setAttr ".dc" -type "componentList" 2 "vtx[32]" "vtx[64]";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId1.id" "Door_FrameShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Door_FrameShape.iog.og[0].gco";
connectAttr "deleteComponent34.og" "|Door_Front|Door_BackShape.i";
connectAttr "polyBridgeEdge6.out" "Temp_Unity_Level_DoorShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyPlane1.out" "polyTweak9.ip";
connectAttr "polyTweak9.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polyTweak10.ip";
connectAttr "polyTweak10.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polyExtrudeFace6.ip";
connectAttr "|Door_Front|Door_BackShape.wm" "polyExtrudeFace6.mp";
connectAttr "polyTweak11.out" "polyDuplicateEdge1.ip";
connectAttr "polyExtrudeFace6.out" "polyTweak11.ip";
connectAttr "polyDuplicateEdge1.out" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "polyExtrudeFace7.ip";
connectAttr "|Door_Front|Door_BackShape.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak12.ip";
connectAttr "polyTweak12.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polySplit6.ip";
connectAttr "polySplit6.out" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "deleteComponent9.ig";
connectAttr "deleteComponent9.og" "deleteComponent10.ig";
connectAttr "deleteComponent10.og" "deleteComponent11.ig";
connectAttr "deleteComponent11.og" "deleteComponent12.ig";
connectAttr "deleteComponent12.og" "polySplit7.ip";
connectAttr "polySplit7.out" "polySplit8.ip";
connectAttr "polyTweak13.out" "polyExtrudeFace8.ip";
connectAttr "|Door_Front|Door_BackShape.wm" "polyExtrudeFace8.mp";
connectAttr "polySplit8.out" "polyTweak13.ip";
connectAttr "polyExtrudeFace8.out" "deleteComponent13.ig";
connectAttr "deleteComponent13.og" "deleteComponent14.ig";
connectAttr "deleteComponent14.og" "polySplit9.ip";
connectAttr "polySplit9.out" "deleteComponent15.ig";
connectAttr "deleteComponent15.og" "deleteComponent16.ig";
connectAttr "deleteComponent16.og" "deleteComponent17.ig";
connectAttr "deleteComponent17.og" "polySplit10.ip";
connectAttr "polySplit10.out" "deleteComponent18.ig";
connectAttr "deleteComponent18.og" "polySplit11.ip";
connectAttr "polySplit11.out" "polySplit12.ip";
connectAttr "polyTweak14.out" "polyExtrudeFace9.ip";
connectAttr "|Door_Front|Door_BackShape.wm" "polyExtrudeFace9.mp";
connectAttr "polySplit12.out" "polyTweak14.ip";
connectAttr "polyCube1.out" "deleteComponent20.ig";
connectAttr "deleteComponent20.og" "polyBridgeEdge4.ip";
connectAttr "Temp_Unity_Level_DoorShape.wm" "polyBridgeEdge4.mp";
connectAttr "polyBridgeEdge4.out" "polyBridgeEdge5.ip";
connectAttr "Temp_Unity_Level_DoorShape.wm" "polyBridgeEdge5.mp";
connectAttr "polyBridgeEdge5.out" "polyBridgeEdge6.ip";
connectAttr "Temp_Unity_Level_DoorShape.wm" "polyBridgeEdge6.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak15.ip";
connectAttr "polyTweak15.out" "deleteComponent21.ig";
connectAttr "deleteComponent21.og" "deleteComponent22.ig";
connectAttr "deleteComponent22.og" "deleteComponent23.ig";
connectAttr "deleteComponent23.og" "deleteComponent24.ig";
connectAttr "deleteComponent24.og" "deleteComponent25.ig";
connectAttr "deleteComponent25.og" "deleteComponent26.ig";
connectAttr "deleteComponent26.og" "deleteComponent27.ig";
connectAttr "deleteComponent27.og" "deleteComponent28.ig";
connectAttr "deleteComponent28.og" "deleteComponent29.ig";
connectAttr "deleteComponent29.og" "deleteComponent30.ig";
connectAttr "deleteComponent30.og" "deleteComponent31.ig";
connectAttr "deleteComponent31.og" "deleteComponent32.ig";
connectAttr "deleteComponent32.og" "deleteComponent33.ig";
connectAttr "deleteComponent33.og" "deleteComponent34.ig";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "|Door_Front|Door_BackShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Temp_Unity_Level_DoorShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Door_FrameShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|Door_Back|Door_BackShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
// End of door_normal.ma
