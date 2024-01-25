{
    "id": "00181122-b536-4f57-976e-02181c3e601d",
    "modelName": "GMExtension",
    "mvc": "1.2",
    "name": "folderPick",
    "IncludedResources": [
        "Sprites\\sprite0",
        "Sprites\\sprite5",
        "Backgrounds\\background1",
        "Objects\\controller",
        "Objects\\obj_Controller",
        "Rooms\\room0",
        "Rooms\\room1",
        "Included Files\\Pngstrip Importer.gmz"
    ],
    "androidPermissions": [
        "android.permission.WRITE_EXTERNAL_STORAGE",
        "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"
    ],
    "androidProps": true,
    "androidactivityinject": "",
    "androidclassname": "PickMe",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": 2097160,
    "date": "2023-09-03 03:12:29",
    "description": "",
    "exportToGame": true,
    "extensionName": "",
    "files": [
        {
            "id": "8936a0f9-0fd7-4c38-8030-cfa62e0f6f21",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 2097160,
            "filename": "folderPick.ext",
            "final": "",
            "functions": [
                {
                    "id": "261808c6-d8b3-40d1-a4e1-316157b59ce1",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "getDire1",
                    "help": "getDire1(String \"Main_folder_name\");",
                    "hidden": false,
                    "kind": 11,
                    "name": "getDire1",
                    "returnType": 1
                },
                {
                    "id": "5d52e50f-b7db-4055-9ea9-fc43a3521d0c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "getDire2",
                    "help": "getDire2(String \"Main_folder_name\", String \"Sub_folder_1\");",
                    "hidden": false,
                    "kind": 11,
                    "name": "getDire2",
                    "returnType": 1
                },
                {
                    "id": "54d4f02f-6929-472f-95ea-5313afa83c9f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        1,
                        1
                    ],
                    "externalName": "getDire3",
                    "help": "getDire3(String \"Main_folder_name\",  String \"Sub_folder_1\",  String \"Sub_folder_2\");",
                    "hidden": false,
                    "kind": 11,
                    "name": "getDire3",
                    "returnType": 1
                },
                {
                    "id": "de66217c-d4d9-4316-9cb5-d2d4b0a0dc4c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        1,
                        1,
                        1,
                        1
                    ],
                    "externalName": "getDire4",
                    "help": "getDire4(String \"Main_folder_name\",  String \"Sub_folder_1\",  String \"Sub_folder_2\",  String \"Sub_folder_3\");",
                    "hidden": false,
                    "kind": 11,
                    "name": "getDire4",
                    "returnType": 1
                },
                {
                    "id": "9aec0fce-1691-48d9-9082-0c3f33781504",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "osNotice",
                    "help": "osNotice(\"folder\/NewMediaFileName.media_ext\");",
                    "hidden": false,
                    "kind": 11,
                    "name": "osNotice",
                    "returnType": 1
                },
                {
                    "id": "922c808e-1494-4ec4-a244-ded2c635e92e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "WriteExtStor",
                    "help": "WriteExtStor();",
                    "hidden": false,
                    "kind": 11,
                    "name": "WriteExtStor",
                    "returnType": 2
                },
                {
                    "id": "0bc4a8df-f2de-4475-94a8-c2747a71d43a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "ChkWriteExtStor",
                    "help": "ChkWriteExtStor();",
                    "hidden": false,
                    "kind": 11,
                    "name": "ChkWriteExtStor",
                    "returnType": 2
                },
                {
                    "id": "673a9668-d4c5-4754-8445-2d9e9420fdfb",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "MountFile",
                    "help": "MountFile();",
                    "hidden": false,
                    "kind": 11,
                    "name": "MountFile",
                    "returnType": 2
                },
                {
                    "id": "9ee70d9c-acf4-4b11-b8fd-84c1664413d6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "ChkMountFile",
                    "help": "ChkMountFile();",
                    "hidden": false,
                    "kind": 11,
                    "name": "ChkMountFile",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 4,
            "order": [
                
            ],
            "origname": "extensions\\folderPick.ext",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": true,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosdelegatename": "",
    "iosplistinject": "",
    "license": "Free to use, also for commercial games.",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "options": null,
    "optionsFile": "options.json",
    "packageID": "com.roadhammergaming.folderpick",
    "productID": "ACBD3CFF4E539AD869A0E8E3B4B022DD",
    "sourcedir": "",
    "supportedTargets": 2097160,
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": "",
    "tvosdelegatename": "",
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "version": "3.2.0"
}