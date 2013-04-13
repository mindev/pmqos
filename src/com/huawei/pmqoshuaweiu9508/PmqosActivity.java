package com.huawei.pmqoshuaweiu9508;

import java.util.HashMap;

import android.os.Bundle;
import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;

public class PmqosActivity extends Activity implements OnClickListener{

	//# instance fields
	private Spinner mApps;

private Button mButton;

private Spinner mCPUNumber;

private EditText mCpuMax;

private String mCpuNumber;

private EditText mGpuMax;

private HashMap mPolicy;
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        Integer",
        "Integer;",
        ">;"
    }
.end annotation
.end field

private String mProcessName;

    //# direct methods
    public constructor init(){ 
    		<init>()V
        .locals 1

        .prologue
        .line 26
        invoke-direct {p0}, Landroid/app/Activity;-><init>()V

        .line 29
        		const/4 v0, 0x0

        		iput-object v0, p0, Lcom/huawei/pmqos/PmqosActivity;->mApps:Landroid/widget/Spinner;

        		return void
        		}
 

	//public interface android/view/View$OnClickListener;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		
	}

	@Override
	public void onClick(View v) {
		// TODO Auto-generated method stub
		
	}



}
