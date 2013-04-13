.class Lcom/huawei/pmqos/PmqosService$MainHandler;
.super Landroid/os/Handler;
.source "PmqosService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/pmqos/PmqosService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/pmqos/PmqosService;


# direct methods
.method private constructor <init>(Lcom/huawei/pmqos/PmqosService;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/huawei/pmqos/PmqosService$MainHandler;->this$0:Lcom/huawei/pmqos/PmqosService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/pmqos/PmqosService;Lcom/huawei/pmqos/PmqosService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/huawei/pmqos/PmqosService$MainHandler;-><init>(Lcom/huawei/pmqos/PmqosService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x3

    const/16 v6, 0x15

    const/4 v5, 0x2

    const/16 v4, 0x42

    .line 168
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 177
    :pswitch_0
    iget-object v1, p0, Lcom/huawei/pmqos/PmqosService$MainHandler;->this$0:Lcom/huawei/pmqos/PmqosService;

    #getter for: Lcom/huawei/pmqos/PmqosService;->mRecord:Lcom/huawei/pmqos/PmqosService$HistoryRecord;
    invoke-static {v1}, Lcom/huawei/pmqos/PmqosService;->access$100(Lcom/huawei/pmqos/PmqosService;)Lcom/huawei/pmqos/PmqosService$HistoryRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x67

    if-ne v1, v2, :cond_0

    .line 182
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/pmqos/PmqosService$PolicyInformation;

    .line 183
    .local v0, information:Lcom/huawei/pmqos/PmqosService$PolicyInformation;
    iget-object v1, p0, Lcom/huawei/pmqos/PmqosService$MainHandler;->this$0:Lcom/huawei/pmqos/PmqosService;

    new-instance v2, Lcom/huawei/pmqos/PmqosService$HistoryRecord;

    iget-object v3, p0, Lcom/huawei/pmqos/PmqosService$MainHandler;->this$0:Lcom/huawei/pmqos/PmqosService;

    iget-object v4, v0, Lcom/huawei/pmqos/PmqosService$PolicyInformation;->curName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/huawei/pmqos/PmqosService$HistoryRecord;-><init>(Lcom/huawei/pmqos/PmqosService;Ljava/lang/String;Z)V

    #setter for: Lcom/huawei/pmqos/PmqosService;->mRecord:Lcom/huawei/pmqos/PmqosService$HistoryRecord;
    invoke-static {v1, v2}, Lcom/huawei/pmqos/PmqosService;->access$102(Lcom/huawei/pmqos/PmqosService;Lcom/huawei/pmqos/PmqosService$HistoryRecord;)Lcom/huawei/pmqos/PmqosService$HistoryRecord;

    .line 184
    iget-object v1, p0, Lcom/huawei/pmqos/PmqosService$MainHandler;->this$0:Lcom/huawei/pmqos/PmqosService;

    #getter for: Lcom/huawei/pmqos/PmqosService;->mRecord:Lcom/huawei/pmqos/PmqosService$HistoryRecord;
    invoke-static {v1}, Lcom/huawei/pmqos/PmqosService;->access$100(Lcom/huawei/pmqos/PmqosService;)Lcom/huawei/pmqos/PmqosService$HistoryRecord;

    move-result-object v1

    iget-object v2, v0, Lcom/huawei/pmqos/PmqosService$PolicyInformation;->policy:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->performOnPolicy(Ljava/util/HashMap;)V

    .line 185
    iget-object v1, p0, Lcom/huawei/pmqos/PmqosService$MainHandler;->this$0:Lcom/huawei/pmqos/PmqosService;

    const/4 v2, 0x0

    #setter for: Lcom/huawei/pmqos/PmqosService;->mWaitProcess:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/huawei/pmqos/PmqosService;->access$202(Lcom/huawei/pmqos/PmqosService;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 190
    .end local v0           #information:Lcom/huawei/pmqos/PmqosService$PolicyInformation;
    :pswitch_1
    iget-object v1, p0, Lcom/huawei/pmqos/PmqosService$MainHandler;->this$0:Lcom/huawei/pmqos/PmqosService;

    #getter for: Lcom/huawei/pmqos/PmqosService;->mRecord:Lcom/huawei/pmqos/PmqosService$HistoryRecord;
    invoke-static {v1}, Lcom/huawei/pmqos/PmqosService;->access$100(Lcom/huawei/pmqos/PmqosService;)Lcom/huawei/pmqos/PmqosService$HistoryRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/huawei/pmqos/PmqosService$MainHandler;->this$0:Lcom/huawei/pmqos/PmqosService;

    #getter for: Lcom/huawei/pmqos/PmqosService;->mRecord:Lcom/huawei/pmqos/PmqosService$HistoryRecord;
    invoke-static {v1}, Lcom/huawei/pmqos/PmqosService;->access$100(Lcom/huawei/pmqos/PmqosService;)Lcom/huawei/pmqos/PmqosService$HistoryRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->performOffPolicy()V

    .line 196
    iget-object v1, p0, Lcom/huawei/pmqos/PmqosService$MainHandler;->this$0:Lcom/huawei/pmqos/PmqosService;

    const/4 v2, 0x0

    #setter for: Lcom/huawei/pmqos/PmqosService;->mRecord:Lcom/huawei/pmqos/PmqosService$HistoryRecord;
    invoke-static {v1, v2}, Lcom/huawei/pmqos/PmqosService;->access$102(Lcom/huawei/pmqos/PmqosService;Lcom/huawei/pmqos/PmqosService$HistoryRecord;)Lcom/huawei/pmqos/PmqosService$HistoryRecord;

    .line 197
    iget-object v1, p0, Lcom/huawei/pmqos/PmqosService$MainHandler;->this$0:Lcom/huawei/pmqos/PmqosService;

    const-string v2, "NullProcess"

    #setter for: Lcom/huawei/pmqos/PmqosService;->mPrevProcessName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/huawei/pmqos/PmqosService;->access$302(Lcom/huawei/pmqos/PmqosService;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 208
    :pswitch_2
    sget-object v1, Lcom/huawei/pmqos/PmqosService;->m2DGamePolicy:Ljava/util/HashMap;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v1, Lcom/huawei/pmqos/PmqosService;->mGamePolicy:Ljava/util/HashMap;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v1, Lcom/huawei/pmqos/PmqosService;->mGamePolicy:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v1, Lcom/huawei/pmqos/PmqosService;->mBenchPolicy:Ljava/util/HashMap;

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v1, Lcom/huawei/pmqos/PmqosService;->mBenchPolicy:Ljava/util/HashMap;

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v1, Lcom/huawei/pmqos/PmqosService;->mDocumentPolicy:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v1, Lcom/huawei/pmqos/PmqosService;->mDocumentPolicy:Ljava/util/HashMap;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v1, Lcom/huawei/pmqos/PmqosService;->mBrowserPolicy:Ljava/util/HashMap;

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v1, Lcom/huawei/pmqos/PmqosService;->mBrowserPolicy:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v1, Lcom/huawei/pmqos/PmqosService;->mNullPolicy:Ljava/util/HashMap;

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v1, Lcom/huawei/pmqos/PmqosService;->mLauncherPolicy:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0xe4840

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v1, Lcom/huawei/pmqos/PmqosService;->mLauncherPolicy:Ljava/util/HashMap;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x57e40

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v1, Lcom/huawei/pmqos/PmqosService;->mLauncherPolicy:Ljava/util/HashMap;

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x3a980

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v1, Lcom/huawei/pmqos/PmqosService;->mActivityStackPolicy:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0xcb200

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v1, Lcom/huawei/pmqos/PmqosService;->mActivityStackPolicy:Ljava/util/HashMap;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x57e40

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v1, "(android.opengl.cts.GLSurfaceView|com.android.cts.stub).*"

    invoke-static {v1, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/pmqos/PmqosService;->access$402(Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;

    .line 240
    const-string v1, ".*?(benchmark|nbench|gpubench|droidbench|neocore|quicinc.vellamo|TDMarkMobile|nenamark|geekbench|smartbench|tdmm2v10jni|quadrant.ui|android.cm3|greenecomputing.linpack|jpct.bench|cfbench|membench|garret.bench|performance.test|hw.performance|glbenchmark|coremark|rightware).*"

    invoke-static {v1, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/pmqos/PmqosService;->access$502(Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;

    .line 241
    const-string v1, "com.android.browser"

    invoke-static {v1, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/pmqos/PmqosService;->access$602(Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;

    .line 242
    const-string v1, "(com.rovio|com.halfbrick).*"

    invoke-static {v1, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/pmqos/PmqosService;->access$702(Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;

    .line 243
    const-string v1, "(com.rovio.angrybirdsseasons|com.imangi.templerun|com.halfbrick.fruitninjafree).*"

    invoke-static {v1, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/pmqos/PmqosService;->access$802(Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;

    .line 244
    const-string v1, "(com.dataviz.docstogo|com.dataviz.dxtg|com.anyview|com.infraware.PolarisOfficeCNForTablet).*"

    invoke-static {v1, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/pmqos/PmqosService;->access$902(Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;

    .line 245
    const-string v1, "com.huawei.android.launcher"

    invoke-static {v1, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/pmqos/PmqosService;->access$1002(Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;

    goto/16 :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
