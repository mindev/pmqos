.class Lcom/huawei/pmqos/PmqosActivity$2;
.super Ljava/lang/Object;
.source "PmqosActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/pmqos/PmqosActivity;->initializeApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/pmqos/PmqosActivity;

.field final synthetic val$appMap:Ljava/util/HashMap;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/huawei/pmqos/PmqosActivity;Ljava/util/HashMap;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/huawei/pmqos/PmqosActivity$2;->this$0:Lcom/huawei/pmqos/PmqosActivity;

    iput-object p2, p0, Lcom/huawei/pmqos/PmqosActivity$2;->val$appMap:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/huawei/pmqos/PmqosActivity$2;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "arg1"
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
    .line 90
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/huawei/pmqos/PmqosActivity$2;->this$0:Lcom/huawei/pmqos/PmqosActivity;

    iget-object v2, p0, Lcom/huawei/pmqos/PmqosActivity$2;->val$appMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/huawei/pmqos/PmqosActivity$2;->val$list:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    #setter for: Lcom/huawei/pmqos/PmqosActivity;->mProcessName:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/huawei/pmqos/PmqosActivity;->access$102(Lcom/huawei/pmqos/PmqosActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    iget-object v2, p0, Lcom/huawei/pmqos/PmqosActivity$2;->this$0:Lcom/huawei/pmqos/PmqosActivity;

    iget-object v3, p0, Lcom/huawei/pmqos/PmqosActivity$2;->this$0:Lcom/huawei/pmqos/PmqosActivity;

    #getter for: Lcom/huawei/pmqos/PmqosActivity;->mProcessName:Ljava/lang/String;
    invoke-static {v3}, Lcom/huawei/pmqos/PmqosActivity;->access$100(Lcom/huawei/pmqos/PmqosActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/pmqos/PmqosActivity$2;->this$0:Lcom/huawei/pmqos/PmqosActivity;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/huawei/pmqos/PmqosService;->getPolicyFromName(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)Ljava/util/HashMap;

    move-result-object v3

    #setter for: Lcom/huawei/pmqos/PmqosActivity;->mPolicy:Ljava/util/HashMap;
    invoke-static {v2, v3}, Lcom/huawei/pmqos/PmqosActivity;->access$202(Lcom/huawei/pmqos/PmqosActivity;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 94
    iget-object v2, p0, Lcom/huawei/pmqos/PmqosActivity$2;->this$0:Lcom/huawei/pmqos/PmqosActivity;

    #getter for: Lcom/huawei/pmqos/PmqosActivity;->mPolicy:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/huawei/pmqos/PmqosActivity;->access$200(Lcom/huawei/pmqos/PmqosActivity;)Ljava/util/HashMap;

    move-result-object v2

    if-nez v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/huawei/pmqos/PmqosActivity$2;->this$0:Lcom/huawei/pmqos/PmqosActivity;

    #getter for: Lcom/huawei/pmqos/PmqosActivity;->mCpuMax:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/huawei/pmqos/PmqosActivity;->access$300(Lcom/huawei/pmqos/PmqosActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    .line 96
    iget-object v2, p0, Lcom/huawei/pmqos/PmqosActivity$2;->this$0:Lcom/huawei/pmqos/PmqosActivity;

    #getter for: Lcom/huawei/pmqos/PmqosActivity;->mGpuMax:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/huawei/pmqos/PmqosActivity;->access$400(Lcom/huawei/pmqos/PmqosActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    .line 97
    iget-object v2, p0, Lcom/huawei/pmqos/PmqosActivity$2;->this$0:Lcom/huawei/pmqos/PmqosActivity;

    iget-object v2, v2, Lcom/huawei/pmqos/PmqosActivity;->mCPUNumber:Landroid/widget/Spinner;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 119
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/huawei/pmqos/PmqosActivity$2;->this$0:Lcom/huawei/pmqos/PmqosActivity;

    #getter for: Lcom/huawei/pmqos/PmqosActivity;->mPolicy:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/huawei/pmqos/PmqosActivity;->access$200(Lcom/huawei/pmqos/PmqosActivity;)Ljava/util/HashMap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    iget-object v2, p0, Lcom/huawei/pmqos/PmqosActivity$2;->this$0:Lcom/huawei/pmqos/PmqosActivity;

    #getter for: Lcom/huawei/pmqos/PmqosActivity;->mPolicy:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/huawei/pmqos/PmqosActivity;->access$200(Lcom/huawei/pmqos/PmqosActivity;)Ljava/util/HashMap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, cpuMax:Ljava/lang/String;
    iget-object v2, p0, Lcom/huawei/pmqos/PmqosActivity$2;->this$0:Lcom/huawei/pmqos/PmqosActivity;

    #getter for: Lcom/huawei/pmqos/PmqosActivity;->mCpuMax:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/huawei/pmqos/PmqosActivity;->access$300(Lcom/huawei/pmqos/PmqosActivity;)Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 106
    .end local v0           #cpuMax:Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/huawei/pmqos/PmqosActivity$2;->this$0:Lcom/huawei/pmqos/PmqosActivity;

    #getter for: Lcom/huawei/pmqos/PmqosActivity;->mPolicy:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/huawei/pmqos/PmqosActivity;->access$200(Lcom/huawei/pmqos/PmqosActivity;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 107
    iget-object v2, p0, Lcom/huawei/pmqos/PmqosActivity$2;->this$0:Lcom/huawei/pmqos/PmqosActivity;

    #getter for: Lcom/huawei/pmqos/PmqosActivity;->mPolicy:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/huawei/pmqos/PmqosActivity;->access$200(Lcom/huawei/pmqos/PmqosActivity;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, gpuMax:Ljava/lang/String;
    iget-object v2, p0, Lcom/huawei/pmqos/PmqosActivity$2;->this$0:Lcom/huawei/pmqos/PmqosActivity;

    #getter for: Lcom/huawei/pmqos/PmqosActivity;->mGpuMax:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/huawei/pmqos/PmqosActivity;->access$400(Lcom/huawei/pmqos/PmqosActivity;)Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .end local v1           #gpuMax:Ljava/lang/String;
    :goto_2
    iget-object v2, p0, Lcom/huawei/pmqos/PmqosActivity$2;->this$0:Lcom/huawei/pmqos/PmqosActivity;

    #getter for: Lcom/huawei/pmqos/PmqosActivity;->mPolicy:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/huawei/pmqos/PmqosActivity;->access$200(Lcom/huawei/pmqos/PmqosActivity;)Ljava/util/HashMap;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 114
    iget-object v2, p0, Lcom/huawei/pmqos/PmqosActivity$2;->this$0:Lcom/huawei/pmqos/PmqosActivity;

    iget-object v3, v2, Lcom/huawei/pmqos/PmqosActivity;->mCPUNumber:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/huawei/pmqos/PmqosActivity$2;->this$0:Lcom/huawei/pmqos/PmqosActivity;

    #getter for: Lcom/huawei/pmqos/PmqosActivity;->mPolicy:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/huawei/pmqos/PmqosActivity;->access$200(Lcom/huawei/pmqos/PmqosActivity;)Ljava/util/HashMap;

    move-result-object v2

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0

    .line 103
    :cond_1
    iget-object v2, p0, Lcom/huawei/pmqos/PmqosActivity$2;->this$0:Lcom/huawei/pmqos/PmqosActivity;

    #getter for: Lcom/huawei/pmqos/PmqosActivity;->mCpuMax:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/huawei/pmqos/PmqosActivity;->access$300(Lcom/huawei/pmqos/PmqosActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    goto :goto_1

    .line 110
    :cond_2
    iget-object v2, p0, Lcom/huawei/pmqos/PmqosActivity$2;->this$0:Lcom/huawei/pmqos/PmqosActivity;

    #getter for: Lcom/huawei/pmqos/PmqosActivity;->mGpuMax:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/huawei/pmqos/PmqosActivity;->access$400(Lcom/huawei/pmqos/PmqosActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    goto :goto_2

    .line 116
    :cond_3
    iget-object v2, p0, Lcom/huawei/pmqos/PmqosActivity$2;->this$0:Lcom/huawei/pmqos/PmqosActivity;

    iget-object v2, v2, Lcom/huawei/pmqos/PmqosActivity;->mCPUNumber:Landroid/widget/Spinner;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v0, "PmqosActivity"

    const-string v1, "onNothingSelected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void
.end method
