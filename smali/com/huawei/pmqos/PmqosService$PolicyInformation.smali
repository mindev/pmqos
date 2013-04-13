.class Lcom/huawei/pmqos/PmqosService$PolicyInformation;
.super Ljava/lang/Object;
.source "PmqosService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/pmqos/PmqosService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PolicyInformation"
.end annotation


# instance fields
.field curName:Ljava/lang/String;

.field policy:Ljava/util/HashMap;
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

.field final synthetic this$0:Lcom/huawei/pmqos/PmqosService;


# direct methods
.method public constructor <init>(Lcom/huawei/pmqos/PmqosService;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .parameter "curName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p3, policy:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/huawei/pmqos/PmqosService$PolicyInformation;->this$0:Lcom/huawei/pmqos/PmqosService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p2, p0, Lcom/huawei/pmqos/PmqosService$PolicyInformation;->curName:Ljava/lang/String;

    .line 161
    iput-object p3, p0, Lcom/huawei/pmqos/PmqosService$PolicyInformation;->policy:Ljava/util/HashMap;

    .line 162
    return-void
.end method
