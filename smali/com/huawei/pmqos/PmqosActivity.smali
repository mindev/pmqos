.class public Lcom/huawei/pmqos/PmqosActivity;
.super Landroid/app/Activity;
.source "PmqosActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mApps:Landroid/widget/Spinner;

.field private mButton:Landroid/widget/Button;

.field mCPUNumber:Landroid/widget/Spinner;

.field private mCpuMax:Landroid/widget/EditText;

.field private mCpuNumber:Ljava/lang/String;

.field private mGpuMax:Landroid/widget/EditText;

.field private mPolicy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/pmqos/PmqosActivity;->mApps:Landroid/widget/Spinner;

    return-void
.end method

.method static synthetic access$002(Lcom/huawei/pmqos/PmqosActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/huawei/pmqos/PmqosActivity;->mCpuNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/huawei/pmqos/PmqosActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/huawei/pmqos/PmqosActivity;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/huawei/pmqos/PmqosActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/huawei/pmqos/PmqosActivity;->mProcessName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/huawei/pmqos/PmqosActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/huawei/pmqos/PmqosActivity;->mPolicy:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$202(Lcom/huawei/pmqos/PmqosActivity;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/huawei/pmqos/PmqosActivity;->mPolicy:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/huawei/pmqos/PmqosActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/huawei/pmqos/PmqosActivity;->mCpuMax:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/huawei/pmqos/PmqosActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/huawei/pmqos/PmqosActivity;->mGpuMax:Landroid/widget/EditText;

    return-object v0
.end method

.method private initializeApps()V
    .locals 9

    .prologue
    .line 71
    const v7, 0x7f070001

    invoke-virtual {p0, v7}, Lcom/huawei/pmqos/PmqosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    iput-object v7, p0, Lcom/huawei/pmqos/PmqosActivity;->mApps:Landroid/widget/Spinner;

    .line 72
    invoke-virtual {p0}, Lcom/huawei/pmqos/PmqosActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 73
    .local v6, packgeManager:Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 75
    .local v1, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 77
    .local v2, appMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 78
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 79
    .local v4, label:Ljava/lang/String;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    .end local v4           #label:Ljava/lang/String;
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v7, 0x1090009

    invoke-direct {v0, p0, v7, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 85
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    iget-object v7, p0, Lcom/huawei/pmqos/PmqosActivity;->mApps:Landroid/widget/Spinner;

    invoke-virtual {v7, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 86
    iget-object v7, p0, Lcom/huawei/pmqos/PmqosActivity;->mApps:Landroid/widget/Spinner;

    new-instance v8, Lcom/huawei/pmqos/PmqosActivity$2;

    invoke-direct {v8, p0, v2, v5}, Lcom/huawei/pmqos/PmqosActivity$2;-><init>(Lcom/huawei/pmqos/PmqosActivity;Ljava/util/HashMap;Ljava/util/List;)V

    invoke-virtual {v7, v8}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 127
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const v10, 0x7f040001

    const/4 v9, 0x1

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    .line 132
    .local v6, id:I
    packed-switch v6, :pswitch_data_0

    .line 216
    :goto_0
    return-void

    .line 134
    :pswitch_0
    iget-object v7, p0, Lcom/huawei/pmqos/PmqosActivity;->mCpuMax:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, cpu_maxprofile:Ljava/lang/String;
    iget-object v7, p0, Lcom/huawei/pmqos/PmqosActivity;->mGpuMax:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, gpu_maxprofile:Ljava/lang/String;
    iget-object v7, p0, Lcom/huawei/pmqos/PmqosActivity;->mProcessName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 138
    const-string v7, "Please select a app"

    invoke-static {p0, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 159
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    mul-int/lit16 v1, v7, 0x3e8

    .line 160
    .local v1, cpuMax:I
    const v7, 0x186a00

    if-le v1, v7, :cond_1

    .line 161
    iget-object v7, p0, Lcom/huawei/pmqos/PmqosActivity;->mCpuMax:Landroid/widget/EditText;

    invoke-static {p0, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    .line 163
    const-string v7, "Cpu maxprofile value invalid "

    invoke-static {p0, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 167
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .end local v1           #cpuMax:I
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 187
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    mul-int/lit16 v5, v7, 0x3e8

    .line 188
    .local v5, gupMax:I
    const v7, 0x86470

    if-le v5, v7, :cond_3

    .line 189
    iget-object v7, p0, Lcom/huawei/pmqos/PmqosActivity;->mGpuMax:Landroid/widget/EditText;

    invoke-static {p0, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    .line 191
    const-string v7, "Gpu maxprofile value invalid "

    invoke-static {p0, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 195
    :cond_3
    if-eqz v5, :cond_4

    const/16 v7, 0xc

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .end local v5           #gupMax:I
    :cond_4
    iget-object v7, p0, Lcom/huawei/pmqos/PmqosActivity;->mCpuNumber:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 200
    const/4 v7, 0x6

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/huawei/pmqos/PmqosActivity;->mCpuNumber:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :cond_5
    const-string v7, "_hisi_pmqos"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/huawei/pmqos/PmqosActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 206
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v7, p0, Lcom/huawei/pmqos/PmqosActivity;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 207
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 209
    const-string v7, "Save successful!"

    invoke-static {p0, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 211
    invoke-virtual {p0}, Lcom/huawei/pmqos/PmqosActivity;->finish()V

    goto/16 :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x7f070008
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Lcom/huawei/pmqos/PmqosActivity;->setContentView(I)V

    .line 43
    const v1, 0x7f070008

    invoke-virtual {p0, v1}, Lcom/huawei/pmqos/PmqosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/huawei/pmqos/PmqosActivity;->mButton:Landroid/widget/Button;

    .line 44
    iget-object v1, p0, Lcom/huawei/pmqos/PmqosActivity;->mButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const v1, 0x7f070003

    invoke-virtual {p0, v1}, Lcom/huawei/pmqos/PmqosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/huawei/pmqos/PmqosActivity;->mCpuMax:Landroid/widget/EditText;

    .line 46
    const v1, 0x7f070005

    invoke-virtual {p0, v1}, Lcom/huawei/pmqos/PmqosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/huawei/pmqos/PmqosActivity;->mGpuMax:Landroid/widget/EditText;

    .line 48
    const v1, 0x7f070007

    invoke-virtual {p0, v1}, Lcom/huawei/pmqos/PmqosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/huawei/pmqos/PmqosActivity;->mCPUNumber:Landroid/widget/Spinner;

    .line 49
    const/high16 v1, 0x7f05

    const v2, 0x1090008

    invoke-static {p0, v1, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 51
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 52
    iget-object v1, p0, Lcom/huawei/pmqos/PmqosActivity;->mCPUNumber:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 53
    iget-object v1, p0, Lcom/huawei/pmqos/PmqosActivity;->mCPUNumber:Landroid/widget/Spinner;

    new-instance v2, Lcom/huawei/pmqos/PmqosActivity$1;

    invoke-direct {v2, p0}, Lcom/huawei/pmqos/PmqosActivity$1;-><init>(Lcom/huawei/pmqos/PmqosActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 67
    invoke-direct {p0}, Lcom/huawei/pmqos/PmqosActivity;->initializeApps()V

    .line 68
    return-void
.end method
