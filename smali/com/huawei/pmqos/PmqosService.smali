.class public Lcom/huawei/pmqos/PmqosService;
.super Landroid/app/Service;
.source "PmqosService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/pmqos/PmqosService$1;,
        Lcom/huawei/pmqos/PmqosService$HistoryRecord;,
        Lcom/huawei/pmqos/PmqosService$MainHandler;,
        Lcom/huawei/pmqos/PmqosService$PolicyInformation;
    }
.end annotation


# static fields
.field private static checkLoad:Z

.field private static checkTouch:Z

.field private static is2DGame:Z

.field private static isBenchmark:Z

.field private static isBrowser:Z

.field private static isBrowserResume:Z

.field private static isDocument:Z

.field private static isGame:Z

.field private static isLauncher:Z

.field private static isOnDrage:Z

.field private static isOnPageLoadStarted:Z

.field private static isTempHigh:Z

.field static m2DGamePolicy:Ljava/util/HashMap;
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

.field static mActivityStackPolicy:Ljava/util/HashMap;
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

.field static mBenchPolicy:Ljava/util/HashMap;
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

.field static mBrowserPolicy:Ljava/util/HashMap;
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

.field static mDocumentPolicy:Ljava/util/HashMap;
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

.field static mGamePolicy:Ljava/util/HashMap;
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

.field static mLauncherPolicy:Ljava/util/HashMap;
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

.field static mNullPolicy:Ljava/util/HashMap;
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

.field private static mPattern2DGame:Ljava/util/regex/Pattern;

.field private static mPatternBenchmark:Ljava/util/regex/Pattern;

.field private static mPatternBrowser:Ljava/util/regex/Pattern;

.field private static mPatternDocuments:Ljava/util/regex/Pattern;

.field private static mPatternGame:Ljava/util/regex/Pattern;

.field private static mPatternHwLauncher:Ljava/util/regex/Pattern;

.field private static mPatternNullPolicy:Ljava/util/regex/Pattern;


# instance fields
.field private mHandler:Lcom/huawei/pmqos/PmqosService$MainHandler;

.field private mPower:Landroid/os/IPowerManager;

.field private mPrevProcessName:Ljava/lang/String;

.field private mRecord:Lcom/huawei/pmqos/PmqosService$HistoryRecord;

.field private mWaitProcess:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 129
    sput-boolean v0, Lcom/huawei/pmqos/PmqosService;->isTempHigh:Z

    .line 132
    sput-boolean v0, Lcom/huawei/pmqos/PmqosService;->checkLoad:Z

    .line 133
    sput-boolean v0, Lcom/huawei/pmqos/PmqosService;->checkTouch:Z

    .line 134
    sput-boolean v0, Lcom/huawei/pmqos/PmqosService;->isBrowserResume:Z

    .line 135
    sput-boolean v0, Lcom/huawei/pmqos/PmqosService;->isOnPageLoadStarted:Z

    .line 136
    sput-boolean v0, Lcom/huawei/pmqos/PmqosService;->isOnDrage:Z

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/pmqos/PmqosService;->mGamePolicy:Ljava/util/HashMap;

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/pmqos/PmqosService;->m2DGamePolicy:Ljava/util/HashMap;

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/pmqos/PmqosService;->mBrowserPolicy:Ljava/util/HashMap;

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/pmqos/PmqosService;->mBenchPolicy:Ljava/util/HashMap;

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/pmqos/PmqosService;->mDocumentPolicy:Ljava/util/HashMap;

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/pmqos/PmqosService;->mNullPolicy:Ljava/util/HashMap;

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/pmqos/PmqosService;->mLauncherPolicy:Ljava/util/HashMap;

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/pmqos/PmqosService;->mActivityStackPolicy:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 100
    new-instance v0, Lcom/huawei/pmqos/PmqosService$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/huawei/pmqos/PmqosService$MainHandler;-><init>(Lcom/huawei/pmqos/PmqosService;Lcom/huawei/pmqos/PmqosService$1;)V

    iput-object v0, p0, Lcom/huawei/pmqos/PmqosService;->mHandler:Lcom/huawei/pmqos/PmqosService$MainHandler;

    .line 116
    const-string v0, "NullProcess"

    iput-object v0, p0, Lcom/huawei/pmqos/PmqosService;->mPrevProcessName:Ljava/lang/String;

    .line 799
    return-void
.end method

.method private Pmqos_Launcher(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 6
    .parameter "CurrentProcess"
    .parameter "intent"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 422
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, action:Ljava/lang/String;
    const-string v2, "motion"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 427
    .local v1, currentMotion:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 433
    const-string v2, "android.launcher.statechange"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 434
    const-string v2, "onDragEnd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 435
    sput-boolean v3, Lcom/huawei/pmqos/PmqosService;->isOnDrage:Z

    .line 436
    sget-object v2, Lcom/huawei/pmqos/PmqosService;->mLauncherPolicy:Ljava/util/HashMap;

    invoke-direct {p0, p1, v2, v3, v5}, Lcom/huawei/pmqos/PmqosService;->Pmqos_sendMessage(Ljava/lang/String;Ljava/util/HashMap;II)V

    goto :goto_0

    .line 439
    :cond_2
    const-string v2, "onPageEndMoving"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 440
    sget-boolean v2, Lcom/huawei/pmqos/PmqosService;->isOnDrage:Z

    if-nez v2, :cond_0

    .line 441
    sget-object v2, Lcom/huawei/pmqos/PmqosService;->mLauncherPolicy:Ljava/util/HashMap;

    invoke-direct {p0, p1, v2, v3, v5}, Lcom/huawei/pmqos/PmqosService;->Pmqos_sendMessage(Ljava/lang/String;Ljava/util/HashMap;II)V

    goto :goto_0

    .line 445
    :cond_3
    const-string v2, "onDragStart"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 446
    sput-boolean v4, Lcom/huawei/pmqos/PmqosService;->isOnDrage:Z

    .line 447
    sget-object v2, Lcom/huawei/pmqos/PmqosService;->mLauncherPolicy:Ljava/util/HashMap;

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/huawei/pmqos/PmqosService;->Pmqos_sendMessage(Ljava/lang/String;Ljava/util/HashMap;II)V

    goto :goto_0

    .line 450
    :cond_4
    const-string v2, "onPageBeginMoving"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 451
    sget-boolean v2, Lcom/huawei/pmqos/PmqosService;->isOnDrage:Z

    if-nez v2, :cond_0

    .line 452
    sget-object v2, Lcom/huawei/pmqos/PmqosService;->mLauncherPolicy:Ljava/util/HashMap;

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/huawei/pmqos/PmqosService;->Pmqos_sendMessage(Ljava/lang/String;Ljava/util/HashMap;II)V

    goto :goto_0
.end method

.method private Pmqos_sendMessage(Ljava/lang/String;Ljava/util/HashMap;II)V
    .locals 6
    .parameter "currentProcess"
    .parameter
    .parameter "delay"
    .parameter "policy_switch"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p2, policy:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 277
    const/4 v2, 0x0

    .line 278
    .local v2, policy_type:I
    new-instance v0, Lcom/huawei/pmqos/PmqosService$PolicyInformation;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/pmqos/PmqosService$PolicyInformation;-><init>(Lcom/huawei/pmqos/PmqosService;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 280
    .local v0, information:Lcom/huawei/pmqos/PmqosService$PolicyInformation;
    const/4 v3, 0x1

    if-ne p4, v3, :cond_2

    .line 285
    const/16 v2, 0x64

    .line 309
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/huawei/pmqos/PmqosService;->mHandler:Lcom/huawei/pmqos/PmqosService$MainHandler;

    invoke-virtual {v3, v2}, Lcom/huawei/pmqos/PmqosService$MainHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 310
    iget-object v3, p0, Lcom/huawei/pmqos/PmqosService;->mHandler:Lcom/huawei/pmqos/PmqosService$MainHandler;

    invoke-virtual {v3, v2}, Lcom/huawei/pmqos/PmqosService$MainHandler;->removeMessages(I)V

    .line 312
    :cond_1
    iget-object v3, p0, Lcom/huawei/pmqos/PmqosService;->mHandler:Lcom/huawei/pmqos/PmqosService$MainHandler;

    invoke-virtual {v3, v2, v0}, Lcom/huawei/pmqos/PmqosService$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 313
    .local v1, message:Landroid/os/Message;
    iget-object v3, p0, Lcom/huawei/pmqos/PmqosService;->mHandler:Lcom/huawei/pmqos/PmqosService$MainHandler;

    int-to-long v4, p3

    invoke-virtual {v3, v1, v4, v5}, Lcom/huawei/pmqos/PmqosService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 314
    iput-object p1, p0, Lcom/huawei/pmqos/PmqosService;->mWaitProcess:Ljava/lang/String;

    .line 315
    return-void

    .line 288
    .end local v1           #message:Landroid/os/Message;
    :cond_2
    const/4 v3, 0x2

    if-ne p4, v3, :cond_4

    .line 293
    iget-object v3, p0, Lcom/huawei/pmqos/PmqosService;->mWaitProcess:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/huawei/pmqos/PmqosService;->mWaitProcess:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 294
    iget-object v3, p0, Lcom/huawei/pmqos/PmqosService;->mHandler:Lcom/huawei/pmqos/PmqosService$MainHandler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/huawei/pmqos/PmqosService$MainHandler;->removeMessages(I)V

    .line 296
    :cond_3
    sput-boolean v5, Lcom/huawei/pmqos/PmqosService;->isBrowserResume:Z

    .line 297
    sput-boolean v5, Lcom/huawei/pmqos/PmqosService;->checkLoad:Z

    .line 298
    const/16 v2, 0x65

    goto :goto_0

    .line 301
    :cond_4
    const/4 v3, 0x3

    if-ne p4, v3, :cond_0

    .line 305
    const/16 v2, 0x67

    goto :goto_0
.end method

.method private Pmqos_webkit(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 6
    .parameter "CurrentProcess"
    .parameter "intent"

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 319
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    const-string v2, "motion"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, currentMotion:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 332
    const-string v2, "pause"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 333
    sput-boolean v4, Lcom/huawei/pmqos/PmqosService;->isBrowserResume:Z

    .line 337
    sput-boolean v4, Lcom/huawei/pmqos/PmqosService;->checkLoad:Z

    .line 397
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/huawei/pmqos/PmqosService;->mPower:Landroid/os/IPowerManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/huawei/pmqos/PmqosService;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v2}, Landroid/os/IPowerManager;->getPowerSaveMode()I

    move-result v2

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/huawei/pmqos/PmqosService;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v2}, Landroid/os/IPowerManager;->getPowerSaveMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eq v2, v5, :cond_0

    .line 405
    :cond_2
    :goto_2
    sget-boolean v2, Lcom/huawei/pmqos/PmqosService;->checkLoad:Z

    if-eqz v2, :cond_6

    .line 409
    sget-object v2, Lcom/huawei/pmqos/PmqosService;->mBrowserPolicy:Ljava/util/HashMap;

    const/4 v3, 0x3

    invoke-direct {p0, p1, v2, v4, v3}, Lcom/huawei/pmqos/PmqosService;->Pmqos_sendMessage(Ljava/lang/String;Ljava/util/HashMap;II)V

    goto :goto_0

    .line 338
    :cond_3
    const-string v2, "resume"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 339
    sput-boolean v3, Lcom/huawei/pmqos/PmqosService;->isBrowserResume:Z

    .line 340
    sget-boolean v2, Lcom/huawei/pmqos/PmqosService;->isOnPageLoadStarted:Z

    if-eq v2, v3, :cond_0

    .line 346
    sget-boolean v2, Lcom/huawei/pmqos/PmqosService;->checkLoad:Z

    if-nez v2, :cond_0

    .line 347
    sput-boolean v3, Lcom/huawei/pmqos/PmqosService;->checkLoad:Z

    goto :goto_1

    .line 352
    :cond_4
    const-string v2, "onPageStarted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 353
    sput-boolean v3, Lcom/huawei/pmqos/PmqosService;->isOnPageLoadStarted:Z

    .line 357
    sput-boolean v4, Lcom/huawei/pmqos/PmqosService;->checkLoad:Z

    goto :goto_1

    .line 358
    :cond_5
    const-string v2, "onPageFinished"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    sput-boolean v4, Lcom/huawei/pmqos/PmqosService;->isOnPageLoadStarted:Z

    .line 360
    sget-boolean v2, Lcom/huawei/pmqos/PmqosService;->isBrowserResume:Z

    if-eqz v2, :cond_0

    .line 366
    sget-boolean v2, Lcom/huawei/pmqos/PmqosService;->checkLoad:Z

    if-nez v2, :cond_0

    .line 367
    sput-boolean v3, Lcom/huawei/pmqos/PmqosService;->checkLoad:Z

    goto :goto_1

    .line 401
    :catch_0
    move-exception v1

    .line 402
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "PmqosService"

    const-string v3, "Failed to getPowerSaveMode: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 414
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_6
    sget-object v2, Lcom/huawei/pmqos/PmqosService;->mBrowserPolicy:Ljava/util/HashMap;

    invoke-direct {p0, p1, v2, v4, v5}, Lcom/huawei/pmqos/PmqosService;->Pmqos_sendMessage(Ljava/lang/String;Ljava/util/HashMap;II)V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/huawei/pmqos/PmqosService;)Lcom/huawei/pmqos/PmqosService$HistoryRecord;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/huawei/pmqos/PmqosService;->mRecord:Lcom/huawei/pmqos/PmqosService$HistoryRecord;

    return-object v0
.end method

.method static synthetic access$1002(Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    sput-object p0, Lcom/huawei/pmqos/PmqosService;->mPatternHwLauncher:Ljava/util/regex/Pattern;

    return-object p0
.end method

.method static synthetic access$102(Lcom/huawei/pmqos/PmqosService;Lcom/huawei/pmqos/PmqosService$HistoryRecord;)Lcom/huawei/pmqos/PmqosService$HistoryRecord;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/huawei/pmqos/PmqosService;->mRecord:Lcom/huawei/pmqos/PmqosService$HistoryRecord;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/huawei/pmqos/PmqosService;)Landroid/os/IPowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/huawei/pmqos/PmqosService;->mPower:Landroid/os/IPowerManager;

    return-object v0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/huawei/pmqos/PmqosService;->isGame:Z

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    sput-boolean p0, Lcom/huawei/pmqos/PmqosService;->isGame:Z

    return p0
.end method

.method static synthetic access$202(Lcom/huawei/pmqos/PmqosService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/huawei/pmqos/PmqosService;->mWaitProcess:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/huawei/pmqos/PmqosService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/huawei/pmqos/PmqosService;->mPrevProcessName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    sput-object p0, Lcom/huawei/pmqos/PmqosService;->mPatternNullPolicy:Ljava/util/regex/Pattern;

    return-object p0
.end method

.method static synthetic access$502(Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    sput-object p0, Lcom/huawei/pmqos/PmqosService;->mPatternBenchmark:Ljava/util/regex/Pattern;

    return-object p0
.end method

.method static synthetic access$602(Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    sput-object p0, Lcom/huawei/pmqos/PmqosService;->mPatternBrowser:Ljava/util/regex/Pattern;

    return-object p0
.end method

.method static synthetic access$702(Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    sput-object p0, Lcom/huawei/pmqos/PmqosService;->mPatternGame:Ljava/util/regex/Pattern;

    return-object p0
.end method

.method static synthetic access$802(Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    sput-object p0, Lcom/huawei/pmqos/PmqosService;->mPattern2DGame:Ljava/util/regex/Pattern;

    return-object p0
.end method

.method static synthetic access$902(Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    sput-object p0, Lcom/huawei/pmqos/PmqosService;->mPatternDocuments:Ljava/util/regex/Pattern;

    return-object p0
.end method

.method public static getPolicyFromName(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)Ljava/util/HashMap;
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 711
    sget-object v1, Lcom/huawei/pmqos/PmqosService;->mPatternBrowser:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/huawei/pmqos/PmqosService;->mPatternNullPolicy:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/huawei/pmqos/PmqosService;->mPatternGame:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/huawei/pmqos/PmqosService;->mPattern2DGame:Ljava/util/regex/Pattern;

    if-nez v1, :cond_2

    .line 713
    :cond_0
    const-string v1, "PmqosService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pattern ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/huawei/pmqos/PmqosService;->mPatternBrowser:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] name["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    if-eqz p2, :cond_1

    .line 715
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 716
    const-class v2, Lcom/huawei/pmqos/PmqosService;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 717
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 796
    :cond_1
    :goto_0
    return-object v0

    .line 722
    :cond_2
    sget-object v1, Lcom/huawei/pmqos/PmqosService;->mPatternBrowser:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 726
    sput-boolean v6, Lcom/huawei/pmqos/PmqosService;->isBrowser:Z

    .line 727
    sget-object v0, Lcom/huawei/pmqos/PmqosService;->mBrowserPolicy:Ljava/util/HashMap;

    goto :goto_0

    .line 730
    :cond_3
    sget-object v1, Lcom/huawei/pmqos/PmqosService;->mPatternNullPolicy:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 734
    sget-object v0, Lcom/huawei/pmqos/PmqosService;->mNullPolicy:Ljava/util/HashMap;

    goto :goto_0

    .line 737
    :cond_4
    sget-object v1, Lcom/huawei/pmqos/PmqosService;->mPattern2DGame:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 741
    sput-boolean v6, Lcom/huawei/pmqos/PmqosService;->is2DGame:Z

    .line 743
    sget-object v0, Lcom/huawei/pmqos/PmqosService;->m2DGamePolicy:Ljava/util/HashMap;

    goto :goto_0

    .line 746
    :cond_5
    sget-object v1, Lcom/huawei/pmqos/PmqosService;->mPatternGame:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 750
    sput-boolean v6, Lcom/huawei/pmqos/PmqosService;->isGame:Z

    .line 752
    const-string v0, "PmqosService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isGame = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/huawei/pmqos/PmqosService;->isGame:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    sget-object v0, Lcom/huawei/pmqos/PmqosService;->mGamePolicy:Ljava/util/HashMap;

    goto :goto_0

    .line 756
    :cond_6
    sget-object v1, Lcom/huawei/pmqos/PmqosService;->mPatternDocuments:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 760
    sput-boolean v6, Lcom/huawei/pmqos/PmqosService;->isDocument:Z

    .line 761
    sget-object v0, Lcom/huawei/pmqos/PmqosService;->mDocumentPolicy:Ljava/util/HashMap;

    goto :goto_0

    .line 763
    :cond_7
    sget-object v1, Lcom/huawei/pmqos/PmqosService;->mPatternHwLauncher:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 767
    sput-boolean v6, Lcom/huawei/pmqos/PmqosService;->isLauncher:Z

    .line 768
    sget-object v0, Lcom/huawei/pmqos/PmqosService;->mLauncherPolicy:Ljava/util/HashMap;

    goto :goto_0

    .line 774
    :cond_8
    const-string v1, "_hisi_pmqos"

    invoke-virtual {p1, v1, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 775
    const-string v2, "no"

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 779
    const-string v1, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 782
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 783
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ";"

    invoke-direct {v3, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    :cond_9
    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 785
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 786
    const/16 v4, 0x3d

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 787
    const/4 v5, -0x1

    if-eq v4, v5, :cond_9

    .line 790
    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 791
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 792
    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    new-instance v2, Ljava/lang/Integer;

    const/16 v4, 0x13

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v2

    if-nez v2, :cond_9

    sput-boolean v6, Lcom/huawei/pmqos/PmqosService;->isBrowser:Z

    goto :goto_1

    .line 796
    :cond_a
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    goto/16 :goto_0
.end method

.method private isScreenOn()Z
    .locals 2

    .prologue
    .line 656
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/huawei/pmqos/PmqosService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 660
    .local v0, pm:Landroid/os/PowerManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 267
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 256
    iget-object v1, p0, Lcom/huawei/pmqos/PmqosService;->mHandler:Lcom/huawei/pmqos/PmqosService$MainHandler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2, p0}, Lcom/huawei/pmqos/PmqosService$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 257
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/huawei/pmqos/PmqosService;->mHandler:Lcom/huawei/pmqos/PmqosService$MainHandler;

    invoke-virtual {v1, v0}, Lcom/huawei/pmqos/PmqosService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 259
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/pmqos/PmqosService;->mPower:Landroid/os/IPowerManager;

    .line 260
    iget-object v1, p0, Lcom/huawei/pmqos/PmqosService;->mPower:Landroid/os/IPowerManager;

    if-nez v1, :cond_0

    .line 261
    const-string v1, "PmqosService"

    const-string v2, "Failed to get IPowerManager interface"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 264
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 12
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 464
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 465
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v6

    .line 652
    :goto_0
    return v6

    .line 470
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 472
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v6

    goto :goto_0

    .line 481
    :cond_2
    const-string v6, "android.intent.action.BATTERY_CHANGED_FOR_PMQOS"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 486
    const-string v6, "motion"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "BatteryTemperatureHigh"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 487
    sput-boolean v9, Lcom/huawei/pmqos/PmqosService;->isTempHigh:Z

    .line 498
    :cond_3
    :goto_1
    sget-boolean v6, Lcom/huawei/pmqos/PmqosService;->isBenchmark:Z

    if-eqz v6, :cond_7

    .line 499
    sget-boolean v6, Lcom/huawei/pmqos/PmqosService;->isTempHigh:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/huawei/pmqos/PmqosService;->mRecord:Lcom/huawei/pmqos/PmqosService$HistoryRecord;

    if-eqz v6, :cond_6

    .line 500
    const-string v6, "currentClass"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/huawei/pmqos/PmqosService;->mBenchPolicy:Ljava/util/HashMap;

    invoke-direct {p0, v6, v7, v8, v10}, Lcom/huawei/pmqos/PmqosService;->Pmqos_sendMessage(Ljava/lang/String;Ljava/util/HashMap;II)V

    .line 508
    :cond_4
    :goto_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v6

    goto :goto_0

    .line 491
    :cond_5
    const-string v6, "motion"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "BatteryTemperatureLow"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 492
    sput-boolean v8, Lcom/huawei/pmqos/PmqosService;->isTempHigh:Z

    goto :goto_1

    .line 501
    :cond_6
    sget-boolean v6, Lcom/huawei/pmqos/PmqosService;->isTempHigh:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/huawei/pmqos/PmqosService;->mRecord:Lcom/huawei/pmqos/PmqosService$HistoryRecord;

    if-nez v6, :cond_4

    .line 502
    const-string v6, "currentClass"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/huawei/pmqos/PmqosService;->mBenchPolicy:Ljava/util/HashMap;

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/huawei/pmqos/PmqosService;->Pmqos_sendMessage(Ljava/lang/String;Ljava/util/HashMap;II)V

    goto :goto_2

    .line 513
    :cond_7
    const-string v6, "android.ActivityState.CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "android.opengl.glsurfaceview.STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "android.launcher.statechange"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "android.server.am.ActivityStack.statechange"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "android.webkit.webview.statechange"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 519
    :cond_8
    const-string v6, "activityState"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 520
    .local v5, state:Ljava/lang/String;
    const-string v6, "currentClass"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 521
    .local v2, currentActivity:Ljava/lang/String;
    const-string v6, "currentProcess"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 524
    .local v3, currentProcess:Ljava/lang/String;
    if-eqz v5, :cond_9

    if-eqz v3, :cond_9

    if-nez v2, :cond_a

    .line 528
    :cond_9
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v6

    goto/16 :goto_0

    .line 532
    :cond_a
    sput-boolean v8, Lcom/huawei/pmqos/PmqosService;->isBenchmark:Z

    .line 533
    sput-boolean v8, Lcom/huawei/pmqos/PmqosService;->isDocument:Z

    .line 534
    sput-boolean v8, Lcom/huawei/pmqos/PmqosService;->isBrowser:Z

    .line 535
    sput-boolean v8, Lcom/huawei/pmqos/PmqosService;->isLauncher:Z

    .line 537
    invoke-static {v3, p0, p1}, Lcom/huawei/pmqos/PmqosService;->getPolicyFromName(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)Ljava/util/HashMap;

    move-result-object v4

    .line 538
    .local v4, processPolicy:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {v2, p0, p1}, Lcom/huawei/pmqos/PmqosService;->getPolicyFromName(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)Ljava/util/HashMap;

    move-result-object v1

    .line 541
    .local v1, activityPolicy:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    sget-object v6, Lcom/huawei/pmqos/PmqosService;->mPatternBenchmark:Ljava/util/regex/Pattern;

    if-eqz v6, :cond_b

    sget-object v6, Lcom/huawei/pmqos/PmqosService;->mPatternBenchmark:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 545
    sput-boolean v9, Lcom/huawei/pmqos/PmqosService;->isBenchmark:Z

    .line 549
    :cond_b
    const-string v6, "resume"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 555
    iget-object v6, p0, Lcom/huawei/pmqos/PmqosService;->mRecord:Lcom/huawei/pmqos/PmqosService$HistoryRecord;

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/huawei/pmqos/PmqosService;->mWaitProcess:Ljava/lang/String;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/huawei/pmqos/PmqosService;->mWaitProcess:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 559
    iget-object v6, p0, Lcom/huawei/pmqos/PmqosService;->mHandler:Lcom/huawei/pmqos/PmqosService$MainHandler;

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Lcom/huawei/pmqos/PmqosService$MainHandler;->removeMessages(I)V

    .line 562
    :cond_c
    iget-object v6, p0, Lcom/huawei/pmqos/PmqosService;->mRecord:Lcom/huawei/pmqos/PmqosService$HistoryRecord;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/huawei/pmqos/PmqosService;->mRecord:Lcom/huawei/pmqos/PmqosService$HistoryRecord;

    iget-object v6, v6, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, p0, Lcom/huawei/pmqos/PmqosService;->mRecord:Lcom/huawei/pmqos/PmqosService$HistoryRecord;

    iget-boolean v6, v6, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->isProcess:Z

    if-eqz v6, :cond_d

    .line 563
    sget-object v6, Lcom/huawei/pmqos/PmqosService;->mBrowserPolicy:Ljava/util/HashMap;

    invoke-direct {p0, v3, v6, v8, v10}, Lcom/huawei/pmqos/PmqosService;->Pmqos_sendMessage(Ljava/lang/String;Ljava/util/HashMap;II)V

    .line 568
    iget-object v6, p0, Lcom/huawei/pmqos/PmqosService;->mRecord:Lcom/huawei/pmqos/PmqosService$HistoryRecord;

    if-eqz v6, :cond_d

    .line 569
    iget-object v6, p0, Lcom/huawei/pmqos/PmqosService;->mRecord:Lcom/huawei/pmqos/PmqosService$HistoryRecord;

    invoke-virtual {v6}, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->performOffPolicy()V

    .line 570
    iput-object v11, p0, Lcom/huawei/pmqos/PmqosService;->mRecord:Lcom/huawei/pmqos/PmqosService$HistoryRecord;

    .line 571
    const-string v6, "NullProcess"

    iput-object v6, p0, Lcom/huawei/pmqos/PmqosService;->mPrevProcessName:Ljava/lang/String;

    .line 579
    :cond_d
    iget-object v6, p0, Lcom/huawei/pmqos/PmqosService;->mRecord:Lcom/huawei/pmqos/PmqosService$HistoryRecord;

    if-eqz v6, :cond_e

    const-string v6, "android.webkit.webview.statechange"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "android.launcher.statechange"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "android.server.am.ActivityStack.statechange"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 598
    :cond_e
    sget-boolean v6, Lcom/huawei/pmqos/PmqosService;->isLauncher:Z

    if-eqz v6, :cond_11

    .line 599
    invoke-direct {p0, v3, p1}, Lcom/huawei/pmqos/PmqosService;->Pmqos_Launcher(Ljava/lang/String;Landroid/content/Intent;)V

    .line 600
    iput-object v3, p0, Lcom/huawei/pmqos/PmqosService;->mWaitProcess:Ljava/lang/String;

    .line 640
    :cond_f
    :goto_3
    iput-object v3, p0, Lcom/huawei/pmqos/PmqosService;->mPrevProcessName:Ljava/lang/String;

    .line 652
    .end local v1           #activityPolicy:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v2           #currentActivity:Ljava/lang/String;
    .end local v3           #currentProcess:Ljava/lang/String;
    .end local v4           #processPolicy:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v5           #state:Ljava/lang/String;
    :cond_10
    :goto_4
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v6

    goto/16 :goto_0

    .line 601
    .restart local v1       #activityPolicy:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v2       #currentActivity:Ljava/lang/String;
    .restart local v3       #currentProcess:Ljava/lang/String;
    .restart local v4       #processPolicy:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v5       #state:Ljava/lang/String;
    :cond_11
    sget-boolean v6, Lcom/huawei/pmqos/PmqosService;->isDocument:Z

    if-eqz v6, :cond_12

    .line 602
    sget-object v6, Lcom/huawei/pmqos/PmqosService;->mDocumentPolicy:Ljava/util/HashMap;

    invoke-direct {p0, v3, v6, v8, v9}, Lcom/huawei/pmqos/PmqosService;->Pmqos_sendMessage(Ljava/lang/String;Ljava/util/HashMap;II)V

    .line 603
    iput-object v3, p0, Lcom/huawei/pmqos/PmqosService;->mWaitProcess:Ljava/lang/String;

    goto :goto_3

    .line 604
    :cond_12
    sget-boolean v6, Lcom/huawei/pmqos/PmqosService;->isBenchmark:Z

    if-eqz v6, :cond_13

    sget-boolean v6, Lcom/huawei/pmqos/PmqosService;->isTempHigh:Z

    if-nez v6, :cond_13

    .line 605
    sget-object v6, Lcom/huawei/pmqos/PmqosService;->mBenchPolicy:Ljava/util/HashMap;

    invoke-direct {p0, v3, v6, v8, v9}, Lcom/huawei/pmqos/PmqosService;->Pmqos_sendMessage(Ljava/lang/String;Ljava/util/HashMap;II)V

    .line 606
    iput-object v3, p0, Lcom/huawei/pmqos/PmqosService;->mWaitProcess:Ljava/lang/String;

    goto :goto_3

    .line 607
    :cond_13
    if-eqz v4, :cond_15

    .line 608
    sget-boolean v6, Lcom/huawei/pmqos/PmqosService;->isBrowser:Z

    if-eqz v6, :cond_14

    .line 609
    invoke-direct {p0, v3, p1}, Lcom/huawei/pmqos/PmqosService;->Pmqos_webkit(Ljava/lang/String;Landroid/content/Intent;)V

    .line 619
    :goto_5
    iput-object v3, p0, Lcom/huawei/pmqos/PmqosService;->mWaitProcess:Ljava/lang/String;

    goto :goto_3

    .line 614
    :cond_14
    invoke-direct {p0, v3, v4, v8, v9}, Lcom/huawei/pmqos/PmqosService;->Pmqos_sendMessage(Ljava/lang/String;Ljava/util/HashMap;II)V

    goto :goto_5

    .line 620
    :cond_15
    if-eqz v1, :cond_16

    .line 621
    new-instance v6, Lcom/huawei/pmqos/PmqosService$HistoryRecord;

    invoke-direct {v6, p0, v2, v8}, Lcom/huawei/pmqos/PmqosService$HistoryRecord;-><init>(Lcom/huawei/pmqos/PmqosService;Ljava/lang/String;Z)V

    iput-object v6, p0, Lcom/huawei/pmqos/PmqosService;->mRecord:Lcom/huawei/pmqos/PmqosService$HistoryRecord;

    .line 622
    iget-object v6, p0, Lcom/huawei/pmqos/PmqosService;->mRecord:Lcom/huawei/pmqos/PmqosService$HistoryRecord;

    invoke-virtual {v6, v1}, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->performOnPolicy(Ljava/util/HashMap;)V

    goto :goto_3

    .line 623
    :cond_16
    const-string v6, "android.opengl.glsurfaceview.STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 624
    sput-boolean v9, Lcom/huawei/pmqos/PmqosService;->isGame:Z

    .line 625
    sget-object v6, Lcom/huawei/pmqos/PmqosService;->mGamePolicy:Ljava/util/HashMap;

    invoke-direct {p0, v3, v6, v8, v9}, Lcom/huawei/pmqos/PmqosService;->Pmqos_sendMessage(Ljava/lang/String;Ljava/util/HashMap;II)V

    goto :goto_3

    .line 629
    :cond_17
    const-string v6, "android.server.am.ActivityStack.statechange"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 630
    invoke-direct {p0}, Lcom/huawei/pmqos/PmqosService;->isScreenOn()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 631
    sget-object v6, Lcom/huawei/pmqos/PmqosService;->mActivityStackPolicy:Ljava/util/HashMap;

    invoke-direct {p0, v3, v6, v8, v9}, Lcom/huawei/pmqos/PmqosService;->Pmqos_sendMessage(Ljava/lang/String;Ljava/util/HashMap;II)V

    .line 633
    :cond_18
    iput-object v3, p0, Lcom/huawei/pmqos/PmqosService;->mWaitProcess:Ljava/lang/String;

    goto :goto_3

    .line 642
    :cond_19
    const-string v6, "pause"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/huawei/pmqos/PmqosService;->mRecord:Lcom/huawei/pmqos/PmqosService$HistoryRecord;

    if-eqz v6, :cond_10

    .line 646
    invoke-direct {p0}, Lcom/huawei/pmqos/PmqosService;->isScreenOn()Z

    move-result v6

    if-nez v6, :cond_1a

    iget-object v6, p0, Lcom/huawei/pmqos/PmqosService;->mRecord:Lcom/huawei/pmqos/PmqosService$HistoryRecord;

    iget-boolean v6, v6, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->isProcess:Z

    if-nez v6, :cond_1b

    :cond_1a
    iget-object v6, p0, Lcom/huawei/pmqos/PmqosService;->mRecord:Lcom/huawei/pmqos/PmqosService$HistoryRecord;

    iget-boolean v6, v6, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->isProcess:Z

    if-nez v6, :cond_10

    .line 647
    :cond_1b
    invoke-direct {p0, v3, v11, v8, v10}, Lcom/huawei/pmqos/PmqosService;->Pmqos_sendMessage(Ljava/lang/String;Ljava/util/HashMap;II)V

    goto/16 :goto_4
.end method
