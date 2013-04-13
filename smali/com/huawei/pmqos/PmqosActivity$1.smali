.class Lcom/huawei/pmqos/PmqosActivity$1;
.super Ljava/lang/Object;
.source "PmqosActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/pmqos/PmqosActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/pmqos/PmqosActivity;


# direct methods
.method constructor <init>(Lcom/huawei/pmqos/PmqosActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/huawei/pmqos/PmqosActivity$1;->this$0:Lcom/huawei/pmqos/PmqosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/huawei/pmqos/PmqosActivity$1;->this$0:Lcom/huawei/pmqos/PmqosActivity;

    invoke-virtual {v1}, Lcom/huawei/pmqos/PmqosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f05

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 59
    .local v0, cupNum:[Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/huawei/pmqos/PmqosActivity$1;->this$0:Lcom/huawei/pmqos/PmqosActivity;

    aget-object v2, v0, p3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/huawei/pmqos/PmqosActivity;->mCpuNumber:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/huawei/pmqos/PmqosActivity;->access$002(Lcom/huawei/pmqos/PmqosActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
