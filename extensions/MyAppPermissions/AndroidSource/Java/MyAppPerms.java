package ${YYAndroidPackageName};

import ${YYAndroidPackageName}.R;
import com.yoyogames.runner.RunnerJNILib;
import ${YYAndroidPackageName}.RunnerActivity;

import android.util.Log;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import android.content.pm.PackageManager;
import android.Manifest;
import android.os.Build;
import java.util.ArrayList;
import java.util.List;
import android.app.Activity;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.Intent;

public class MyAppPerms extends Activity {

	public int hold=0;
    int Get_Permission = 20;
	public String msg1 = "";
	public String msg2 = "";
	public String msg3 = "";
	public String message = "";
	private static String strOk;
    private static String strCancel;
	private static String perms;
	private static String reason;
	List<String> permissionsNeeded = new ArrayList<String>();
	final List<String> permissionsList = new ArrayList<String>();
    public int permissionIndex[] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
	public String messageNum[] = {"Read calendar","Write calendar","Use Camera","Read contacts","Write contacts","Get accounts","Access fine location","Access coarse location",
	"Record Audio","Read phone state","Make phone calls","Read call log","Write call log","Add voicemail","Use SIP service","Process outgoing calls","Access body sensors",
	"Read text messages","Send text messages","Receive text messages","Receive push messages","Receive multimedia messages","Read from Storage","Write to storage","Access file system"};

	public void ShowReasoning(String needed, String reasoning)
{
	strOk = "Ok";
	strCancel = "Cancel";
    perms = needed;
    reason = reasoning;
    Intent intent = new Intent(RunnerActivity.CurrentActivity, MyAppPerms.class);
    RunnerActivity.CurrentActivity.startActivity(intent);
}

    @Override
    protected void onStart()
    {
        super.onStart();
        final List<String> permissionsList = new ArrayList<String>();
        if(perms.contains("READ_CALENDAR")){if (!addPermission(permissionsList, Manifest.permission.READ_CALENDAR)){permissionsNeeded.add("Read calendar");permissionIndex[0] = 1;}}
        if(perms.contains("WRITE_CALENDAR")){if (!addPermission(permissionsList, Manifest.permission.WRITE_CALENDAR)){permissionsNeeded.add("Write calendar");permissionIndex[1] = 1;}}
		if(perms.contains("CAMERA")){if (!addPermission(permissionsList, Manifest.permission.CAMERA)){permissionsNeeded.add("Use Camera");permissionIndex[2] = 1;}}
        if(perms.contains("READ_CONTACTS")){if (!addPermission(permissionsList, Manifest.permission.READ_CONTACTS)){permissionsNeeded.add("Read contacts");permissionIndex[3] = 1;}}
		if(perms.contains("WRITE_CONTACTS")){if (!addPermission(permissionsList, Manifest.permission.WRITE_CONTACTS)){permissionsNeeded.add("Write contacts");permissionIndex[4] = 1;}}
        if(perms.contains("GET_ACCOUNTS")){if (!addPermission(permissionsList, Manifest.permission.GET_ACCOUNTS)){permissionsNeeded.add("Get accounts");permissionIndex[5] = 1;}}
		if(perms.contains("ACCESS_FINE_LOCATION")){if (!addPermission(permissionsList, Manifest.permission.ACCESS_FINE_LOCATION)){permissionsNeeded.add("Access fine location");permissionIndex[6] = 1;}}
        if(perms.contains("ACCESS_COARSE_LOCATION")){if (!addPermission(permissionsList, Manifest.permission.ACCESS_COARSE_LOCATION)){permissionsNeeded.add("Access coarse location");permissionIndex[7] = 1;}}
        if(perms.contains("RECORD_AUDIO")){if (!addPermission(permissionsList, Manifest.permission.RECORD_AUDIO)){permissionsNeeded.add("Record Audio");permissionIndex[8] = 1;}}
		if(perms.contains("READ_PHONE_STATE")){if (!addPermission(permissionsList, Manifest.permission.READ_PHONE_STATE)){permissionsNeeded.add("Read phone state");permissionIndex[9] = 1;}}
		if(perms.contains("CALL_PHONE")){if (!addPermission(permissionsList, Manifest.permission.CALL_PHONE)){permissionsNeeded.add("Make phone calls");permissionIndex[10] = 1;}}
        if(perms.contains("READ_CALL_LOG")){if (!addPermission(permissionsList, Manifest.permission.READ_CALL_LOG)){permissionsNeeded.add("Read call log");permissionIndex[11] = 1;}}
		if(perms.contains("WRITE_CALL_LOG")){if (!addPermission(permissionsList, Manifest.permission.WRITE_CALL_LOG)){permissionsNeeded.add("Write call log");permissionIndex[12] = 1;}}
        if(perms.contains("ADD_VOICEMAIL")){if (!addPermission(permissionsList, Manifest.permission.ADD_VOICEMAIL)){permissionsNeeded.add("Add voicemail");permissionIndex[13] = 1;}}
		if(perms.contains("USE_SIP")){if (!addPermission(permissionsList, Manifest.permission.USE_SIP)){permissionsNeeded.add("Use SIP service");permissionIndex[14] = 1;}}
        if(perms.contains("PROCESS_OUTGOING_CALLS")){if (!addPermission(permissionsList, Manifest.permission.PROCESS_OUTGOING_CALLS)){permissionsNeeded.add("Process outgoing calls");permissionIndex[15] = 1;}}
		if(perms.contains("BODY_SENSORS")){if (!addPermission(permissionsList, Manifest.permission.BODY_SENSORS)){permissionsNeeded.add("Access body sensors");permissionIndex[16] = 1;}}
        if(perms.contains("READ_SMS")){if (!addPermission(permissionsList, Manifest.permission.READ_SMS)){permissionsNeeded.add("Read text messages");permissionIndex[17] = 1;}}
		if(perms.contains("SEND_SMS")){if (!addPermission(permissionsList, Manifest.permission.SEND_SMS)){permissionsNeeded.add("Send text messages");permissionIndex[18] = 1;}}
		if(perms.contains("RECEIVE_SMS")){if (!addPermission(permissionsList, Manifest.permission.RECEIVE_SMS)){permissionsNeeded.add("Receive text messages");permissionIndex[19] = 1;}}
		if(perms.contains("RECEIVE_WAP_PUSH")){if (!addPermission(permissionsList, Manifest.permission.RECEIVE_WAP_PUSH)){permissionsNeeded.add("Receive push messages");permissionIndex[20] = 1;}}
        if(perms.contains("RECEIVE_MMS")){if (!addPermission(permissionsList, Manifest.permission.RECEIVE_MMS)){permissionsNeeded.add("Receive multimedia messages");permissionIndex[21] = 1;}}
		if(perms.contains("READ_EXTERNAL_STORAGE")){if (!addPermission(permissionsList, Manifest.permission.READ_EXTERNAL_STORAGE)){permissionsNeeded.add("Read from Storage");permissionIndex[22] = 1;}}
		if(perms.contains("WRITE_EXTERNAL_STORAGE")){if (!addPermission(permissionsList, Manifest.permission.WRITE_EXTERNAL_STORAGE)){permissionsNeeded.add("Write to storage");permissionIndex[23] = 1;}}
        if(perms.contains("MOUNT_UNMOUNT_FILESYSTEMS")){if (!addPermission(permissionsList, Manifest.permission.MOUNT_UNMOUNT_FILESYSTEMS)){permissionsNeeded.add("Access file system");permissionIndex[24] = 1;}}
        if (permissionsList.size() > 0) {
            if (permissionsNeeded.size() > 0) {
				for(int i=0;i<25;i++)
                {
				if (permissionsNeeded.size() == 1 && permissionIndex[i] == 1) 
				{
					message = messageNum[i] + " " + reason;
				}
				if (permissionsNeeded.size() == 2 && permissionIndex[i] == 1) 
				{
					hold+=1;
					if(hold==1){msg1 = messageNum[i];}
					if(hold==2){msg2 = messageNum[i];}
					message = msg1 + " and " + msg2 + " " + reason;
				}					
				if (permissionsNeeded.size() >2 && permissionIndex[i] == 1) 
				{
					hold+=1;
					if(hold==1){msg1 = messageNum[i];}
					if(hold==2){msg2 = messageNum[i];}
					if(hold==3){msg3 = messageNum[i];
				    if (permissionsNeeded.size() == 3){message = msg1 + ", " + msg2 + " and " + msg3 + " " + reason;}
					if (permissionsNeeded.size() >3){message = msg1 + ", " + msg2 + ", " + msg3 + " ";}
				    }
					if(permissionsNeeded.size() >3)
					{
					if (hold>3 && hold<permissionsNeeded.size())
					{message = message + ", " + messageNum[i];}
				
					if(hold>3 && hold == permissionsNeeded.size())
					{message = message + " and " + messageNum[i] + " " + reason;}
					}
				  }
				}
				Log.i("yoyo","Message to be shown: " + message);
                AlertDialog.Builder mBox = new AlertDialog.Builder(this);
                mBox.setTitle("Need permission for: ");
				mBox.setMessage(message);
		        mBox.setPositiveButton(strOk, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface arg0, int arg1) {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                ActivityCompat.requestPermissions(RunnerActivity.CurrentActivity, permissionsList.toArray(new String[permissionsList.size()]), Get_Permission);
                }
            }
        });
        mBox.setNegativeButton(strCancel,new DialogInterface.OnClickListener() {
        @Override
        public void onClick(DialogInterface dialog, int which) {
            }
        });
		final AlertDialog dialog = mBox.create();
		dialog.setOnDismissListener(new DialogInterface.OnDismissListener() {
        @Override
        public void onDismiss(final DialogInterface dialog) {
        }
    });
        dialog.show();
			}
		}
	}

    private boolean addPermission(List<String> permissionsList, String permission) {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            if (ContextCompat.checkSelfPermission(RunnerActivity.CurrentActivity, permission) != PackageManager.PERMISSION_GRANTED) {
			    permissionsList.add(permission);
                if (! ActivityCompat.shouldShowRequestPermissionRationale(RunnerActivity.CurrentActivity, permission))
				{
					return false;
				}
            }
        }
        return true;
    }
		
	public void readCal()
	{
		if (android.os.Build.VERSION.SDK_INT >= Build.VERSION_CODES.M)
		{
            ActivityCompat.requestPermissions(RunnerActivity.CurrentActivity, new String[]{Manifest.permission.READ_CALENDAR}, Get_Permission);
		}
    }
	
	public double ChkRcal()
	{
		if(ContextCompat.checkSelfPermission(RunnerActivity.CurrentActivity,Manifest.permission.READ_CALENDAR)==0)
		return(1);
		return(0);
	}
		public void writeCal()
	{
		if (android.os.Build.VERSION.SDK_INT >= Build.VERSION_CODES.M)
		{
            ActivityCompat.requestPermissions(RunnerActivity.CurrentActivity, new String[]{Manifest.permission.WRITE_CALENDAR}, Get_Permission);
		}
    }
	
	public double ChkWcal()
	{
		if(ContextCompat.checkSelfPermission(RunnerActivity.CurrentActivity,Manifest.permission.WRITE_CALENDAR)==0)
		return(1);
		return(0);
	}
		public void Cam()
	{
		if (android.os.Build.VERSION.SDK_INT >= Build.VERSION_CODES.M)
		{
            ActivityCompat.requestPermissions(RunnerActivity.CurrentActivity, new String[]{Manifest.permission.CAMERA}, Get_Permission);
		}
    }
	
	public double ChkCam()
	{
		if(ContextCompat.checkSelfPermission(RunnerActivity.CurrentActivity,Manifest.permission.CAMERA)==0)
		return(1);
		return(0);
	}
		public void ReadCon()
	{
		if (android.os.Build.VERSION.SDK_INT >= Build.VERSION_CODES.M)
		{
            ActivityCompat.requestPermissions(RunnerActivity.CurrentActivity, new String[]{Manifest.permission.READ_CONTACTS}, Get_Permission);
		}
    }
	
	public double ChkCon()
	{
		if(ContextCompat.checkSelfPermission(RunnerActivity.CurrentActivity,Manifest.permission.READ_CONTACTS)==0)
		return(1);
		return(0);
	}
		public void WriteCon()
	{
		if (android.os.Build.VERSION.SDK_INT >= Build.VERSION_CODES.M)
		{
            ActivityCompat.requestPermissions(RunnerActivity.CurrentActivity, new String[]{Manifest.permission.WRITE_CONTACTS}, Get_Permission);
		}
    }
	
	public double ChkWCon()
	{
		if(ContextCompat.checkSelfPermission(RunnerActivity.CurrentActivity,Manifest.permission.WRITE_CONTACTS)==0)
		return(1);
		return(0);
	}
		public void ReadAcct()
	{
		if (android.os.Build.VERSION.SDK_INT >= Build.VERSION_CODES.M)
		{
            ActivityCompat.requestPermissions(RunnerActivity.CurrentActivity, new String[]{Manifest.permission.GET_ACCOUNTS}, Get_Permission);
		}
    }
	
	public double ChkAcct()
	{
		if(ContextCompat.checkSelfPermission(RunnerActivity.CurrentActivity,Manifest.permission.GET_ACCOUNTS)==0)
		return(1);
		return(0);
	}
		public void ReadFineLoc()
	{
		if (android.os.Build.VERSION.SDK_INT >= Build.VERSION_CODES.M)
		{
            ActivityCompat.requestPermissions(RunnerActivity.CurrentActivity, new String[]{Manifest.permission.ACCESS_FINE_LOCATION}, Get_Permission);
		}
    }
	
	public double ChkFineLoc()
	{
		if(ContextCompat.checkSelfPermission(RunnerActivity.CurrentActivity,Manifest.permission.ACCESS_FINE_LOCATION)==0)
		return(1);
		return(0);
	}
	public void ReadCoarseLoc()
	{
		if (android.os.Build.VERSION.SDK_INT >= Build.VERSION_CODES.M)
		{
            ActivityCompat.requestPermissions(RunnerActivity.CurrentActivity, new String[]{Manifest.permission.ACCESS_COARSE_LOCATION}, Get_Permission);
		}
    }
	
	public double ChkCoarseLoc()
	{
		if(ContextCompat.checkSelfPermission(RunnerActivity.CurrentActivity,Manifest.permission.ACCESS_COARSE_LOCATION)==0)
		return(1);
		return(0);
	}
		public void RecAudio()
	{
		if (android.os.Build.VERSION.SDK_INT >= Build.VERSION_CODES.M)
		{
            ActivityCompat.requestPermissions(RunnerActivity.CurrentActivity, new String[]{Manifest.permission.RECORD_AUDIO}, Get_Permission);
		}
    }
	
	public double ChkAudio()
	{
		if(ContextCompat.checkSelfPermission(RunnerActivity.CurrentActivity,Manifest.permission.RECORD_AUDIO)==0)
		return(1);
		return(0);
	}
		public void ReadPhState()
	{
		if (android.os.Build.VERSION.SDK_INT >= Build.VERSION_CODES.M)
		{
            ActivityCompat.requestPermissions(RunnerActivity.CurrentActivity, new String[]{Manifest.permission.READ_PHONE_STATE}, Get_Permission);
		}
    }
	
	public double ChkPhState()
	{
		if(ContextCompat.checkSelfPermission(RunnerActivity.CurrentActivity,Manifest.permission.READ_PHONE_STATE)==0)
		return(1);
		return(0);
	}
		public void CallPhone()
	{
		if (android.os.Build.VERSION.SDK_INT >= Build.VERSION_CODES.M)
		{
            ActivityCompat.requestPermissions(RunnerActivity.CurrentActivity, new String[]{Manifest.permission.CALL_PHONE}, Get_Permission);
		}
    }
	
	public double ChkCallPhone()
	{
		if(ContextCompat.checkSelfPermission(RunnerActivity.CurrentActivity,Manifest.permission.CALL_PHONE)==0)
		return(1);
		return(0);
	}
		public void ReadCallLog()
	{
		if (android.os.Build.VERSION.SDK_INT >= Build.VERSION_CODES.M)
		{
            ActivityCompat.requestPermissions(RunnerActivity.CurrentActivity, new String[]{Manifest.permission.READ_CALL_LOG}, Get_Permission);
		}
    }
	
	public double ChkCallLog()
	{
		if(ContextCompat.checkSelfPermission(RunnerActivity.CurrentActivity,Manifest.permission.READ_CALL_LOG)==0)
		return(1);
		return(0);
	}
		public void WriteCallLog()
	{
		if (android.os.Build.VERSION.SDK_INT >= Build.VERSION_CODES.M)
		{
            ActivityCompat.requestPermissions(RunnerActivity.CurrentActivity, new String[]{Manifest.permission.WRITE_CALL_LOG}, Get_Permission);
		}
    }
	
	public double ChkWriteCallLog()
	{
		if(ContextCompat.checkSelfPermission(RunnerActivity.CurrentActivity,Manifest.permission.WRITE_CALL_LOG)==0)
		return(1);
		return(0);
	}
		public void AddVmail()
	{
		if (android.os.Build.VERSION.SDK_INT >= Build.VERSION_CODES.M)
		{
            ActivityCompat.requestPermissions(RunnerActivity.CurrentActivity, new String[]{Manifest.permission.ADD_VOICEMAIL}, Get_Permission);
		}
    }
	
	public double ChkVmail()
	{
		if(ContextCompat.checkSelfPermission(RunnerActivity.CurrentActivity,Manifest.permission.ADD_VOICEMAIL)==0)
		return(1);
		return(0);
	}
		public void UseSip()
	{
		if (android.os.Build.VERSION.SDK_INT >= Build.VERSION_CODES.M)
		{
            ActivityCompat.requestPermissions(RunnerActivity.CurrentActivity, new String[]{Manifest.permission.USE_SIP}, Get_Permission);
		}
    }
	
	public double ChkSip()
	{
		if(ContextCompat.checkSelfPermission(RunnerActivity.CurrentActivity,Manifest.permission.USE_SIP)==0)
		return(1);
		return(0);
	}
		public void ProsOutCal()
	{
		if (android.os.Build.VERSION.SDK_INT >= Build.VERSION_CODES.M)
		{
            ActivityCompat.requestPermissions(RunnerActivity.CurrentActivity, new String[]{Manifest.permission.PROCESS_OUTGOING_CALLS}, Get_Permission);
		}
    }
	
	public double ChkProsOutCal()
	{
		if(ContextCompat.checkSelfPermission(RunnerActivity.CurrentActivity,Manifest.permission.PROCESS_OUTGOING_CALLS)==0)
		return(1);
		return(0);
	}	
		public void BodySens()
	{
		if (android.os.Build.VERSION.SDK_INT >= Build.VERSION_CODES.M)
		{
            ActivityCompat.requestPermissions(RunnerActivity.CurrentActivity, new String[]{Manifest.permission.BODY_SENSORS}, Get_Permission);
		}
    }
	
	public double ChkBodySens()
	{
		if(ContextCompat.checkSelfPermission(RunnerActivity.CurrentActivity,Manifest.permission.BODY_SENSORS)==0)
		return(1);
		return(0);
	}
		public void ReadSms()
	{
		if (android.os.Build.VERSION.SDK_INT >= Build.VERSION_CODES.M)
		{
            ActivityCompat.requestPermissions(RunnerActivity.CurrentActivity, new String[]{Manifest.permission.READ_SMS}, Get_Permission);
		}
    }
	
	public double ChkReadSms()
	{
		if(ContextCompat.checkSelfPermission(RunnerActivity.CurrentActivity,Manifest.permission.READ_SMS)==0)
		return(1);
		return(0);
	}
		public void SendSms()
	{
		if (android.os.Build.VERSION.SDK_INT >= Build.VERSION_CODES.M)
		{
            ActivityCompat.requestPermissions(RunnerActivity.CurrentActivity, new String[]{Manifest.permission.SEND_SMS}, Get_Permission);
		}
    }
	
	public double ChkSendSms()
	{
		if(ContextCompat.checkSelfPermission(RunnerActivity.CurrentActivity,Manifest.permission.SEND_SMS)==0)
		return(1);
		return(0);
	}
		public void RecvSms()
	{
		if (android.os.Build.VERSION.SDK_INT >= Build.VERSION_CODES.M)
		{
            ActivityCompat.requestPermissions(RunnerActivity.CurrentActivity, new String[]{Manifest.permission.RECEIVE_SMS}, Get_Permission);
		}
    }
	
	public double ChkRecvSms()
	{
		if(ContextCompat.checkSelfPermission(RunnerActivity.CurrentActivity,Manifest.permission.RECEIVE_SMS)==0)
		return(1);
		return(0);
	}	
		public void RecvPush()
	{
		if (android.os.Build.VERSION.SDK_INT >= Build.VERSION_CODES.M)
		{
            ActivityCompat.requestPermissions(RunnerActivity.CurrentActivity, new String[]{Manifest.permission.RECEIVE_WAP_PUSH}, Get_Permission);
		}
    }
	
	public double ChkRecvPush()
	{
		if(ContextCompat.checkSelfPermission(RunnerActivity.CurrentActivity,Manifest.permission.RECEIVE_WAP_PUSH)==0)
		return(1);
		return(0);
	}
		public void RecvMms()
	{
		if (android.os.Build.VERSION.SDK_INT >= Build.VERSION_CODES.M)
		{
            ActivityCompat.requestPermissions(RunnerActivity.CurrentActivity, new String[]{Manifest.permission.RECEIVE_MMS}, Get_Permission);
		}
    }
	
	public double ChkRecvMms()
	{
		if(ContextCompat.checkSelfPermission(RunnerActivity.CurrentActivity,Manifest.permission.RECEIVE_MMS)==0)
		return(1);
		return(0);
	}

	public void ReadExtStor()
	{
		if (android.os.Build.VERSION.SDK_INT >= Build.VERSION_CODES.M)
		{
            ActivityCompat.requestPermissions(RunnerActivity.CurrentActivity, new String[]{Manifest.permission.READ_EXTERNAL_STORAGE}, Get_Permission);
		}
    }
	
	public double ChkReadExtStor()
	{
		if(ContextCompat.checkSelfPermission(RunnerActivity.CurrentActivity,Manifest.permission.READ_EXTERNAL_STORAGE)==0)
		return(1);
		return(0);
	}
	
		public void WriteExtStor()
	{
		if (android.os.Build.VERSION.SDK_INT >= Build.VERSION_CODES.M)
		{
            ActivityCompat.requestPermissions(RunnerActivity.CurrentActivity, new String[]{Manifest.permission.WRITE_EXTERNAL_STORAGE}, Get_Permission);
		}
    }
	
	public double ChkWriteExtStor()
	{
		if(ContextCompat.checkSelfPermission(RunnerActivity.CurrentActivity,Manifest.permission.WRITE_EXTERNAL_STORAGE)==0)
		return(1);
		return(0);
	}
	
			public void MountFile()
	{
		if (android.os.Build.VERSION.SDK_INT >= Build.VERSION_CODES.M)
		{
            ActivityCompat.requestPermissions(RunnerActivity.CurrentActivity, new String[]{Manifest.permission.MOUNT_UNMOUNT_FILESYSTEMS}, Get_Permission);
		}
    }
	
	public double ChkMountFile()
	{
		if(ContextCompat.checkSelfPermission(RunnerActivity.CurrentActivity,Manifest.permission.MOUNT_UNMOUNT_FILESYSTEMS)==0)
		return(1);
		return(0);
	}
}