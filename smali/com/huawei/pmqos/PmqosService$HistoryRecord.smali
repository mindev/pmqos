.class Lcom/huawei/pmqos/PmqosService$HistoryRecord;
.super Ljava/lang/Object;
.source "PmqosService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/pmqos/PmqosService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HistoryRecord"
.end annotation


# instance fields
.field isProcess:Z

.field name:Ljava/lang/String;

.field record:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/pmqos/Pmqos;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/huawei/pmqos/PmqosService;


# direct methods
.method public constructor <init>(Lcom/huawei/pmqos/PmqosService;Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter "name"
    .parameter "isProcess"

    .prologue
    .line 804
    iput-object p1, p0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->this$0:Lcom/huawei/pmqos/PmqosService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 802
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    .line 805
    iput-object p2, p0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->name:Ljava/lang/String;

    .line 806
    iput-boolean p3, p0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->isProcess:Z

    .line 807
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    .line 808
    return-void
.end method


# virtual methods
.method public performOffPolicy()V
    .locals 5

    .prologue
    .line 974
    iget-object v3, p0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 975
    iget-object v3, p0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 976
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    :pswitch_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 977
    .local v1, k:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1069
    :pswitch_1
    const-string v3, "PmqosService"

    const-string v4, "performPolicy default!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 980
    :pswitch_2
    iget-object v3, p0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/pmqos/Cpu_maxprofile;

    invoke-virtual {v3}, Landroid/pmqos/Cpu_maxprofile;->pm_qos_close()V

    goto :goto_0

    .line 984
    :pswitch_3
    iget-object v3, p0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/pmqos/Cpu_minprofile;

    invoke-virtual {v3}, Landroid/pmqos/Cpu_minprofile;->pm_qos_close()V

    goto :goto_0

    .line 988
    :pswitch_4
    iget-object v3, p0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/pmqos/Cpu_profile_block;

    invoke-virtual {v3}, Landroid/pmqos/Cpu_profile_block;->pm_qos_close()V

    goto :goto_0

    .line 992
    :pswitch_5
    iget-object v3, p0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/pmqos/Cpu_profile_safe;

    invoke-virtual {v3}, Landroid/pmqos/Cpu_profile_safe;->pm_qos_close()V

    goto :goto_0

    .line 996
    :pswitch_6
    iget-object v3, p0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/pmqos/Cpu_number_min;

    invoke-virtual {v3}, Landroid/pmqos/Cpu_number_min;->pm_qos_close()V

    goto :goto_0

    .line 1000
    :pswitch_7
    iget-object v3, p0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/pmqos/Cpu_number_max;

    invoke-virtual {v3}, Landroid/pmqos/Cpu_number_max;->pm_qos_close()V

    goto :goto_0

    .line 1004
    :pswitch_8
    iget-object v3, p0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/pmqos/Cpu_number_lock;

    invoke-virtual {v3}, Landroid/pmqos/Cpu_number_lock;->pm_qos_close()V

    goto :goto_0

    .line 1008
    :pswitch_9
    iget-object v3, p0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/pmqos/Ddr_maxprofile;

    invoke-virtual {v3}, Landroid/pmqos/Ddr_maxprofile;->pm_qos_close()V

    goto :goto_0

    .line 1012
    :pswitch_a
    iget-object v3, p0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/pmqos/Ddr_minprofile;

    invoke-virtual {v3}, Landroid/pmqos/Ddr_minprofile;->pm_qos_close()V

    goto/16 :goto_0

    .line 1016
    :pswitch_b
    iget-object v3, p0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/pmqos/Ddr_profile_block;

    invoke-virtual {v3}, Landroid/pmqos/Ddr_profile_block;->pm_qos_close()V

    goto/16 :goto_0

    .line 1020
    :pswitch_c
    iget-object v3, p0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/pmqos/Ddr_profile_safe;

    invoke-virtual {v3}, Landroid/pmqos/Ddr_profile_safe;->pm_qos_close()V

    goto/16 :goto_0

    .line 1024
    :pswitch_d
    iget-object v3, p0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/pmqos/Gpu_maxprofile;

    invoke-virtual {v3}, Landroid/pmqos/Gpu_maxprofile;->pm_qos_close()V

    goto/16 :goto_0

    .line 1028
    :pswitch_e
    iget-object v3, p0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/pmqos/Gpu_minprofile;

    invoke-virtual {v3}, Landroid/pmqos/Gpu_minprofile;->pm_qos_close()V

    goto/16 :goto_0

    .line 1032
    :pswitch_f
    iget-object v3, p0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/pmqos/Gpu_profile_block;

    invoke-virtual {v3}, Landroid/pmqos/Gpu_profile_block;->pm_qos_close()V

    goto/16 :goto_0

    .line 1036
    :pswitch_10
    iget-object v3, p0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/pmqos/Gpu_profile_safe;

    invoke-virtual {v3}, Landroid/pmqos/Gpu_profile_safe;->pm_qos_close()V

    goto/16 :goto_0

    .line 1040
    :pswitch_11
    iget-object v3, p0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/pmqos/Cpu_frc_profile;

    invoke-virtual {v3}, Landroid/pmqos/Cpu_frc_profile;->pm_qos_close()V

    goto/16 :goto_0

    .line 1044
    :pswitch_12
    iget-object v3, p0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/pmqos/Benchmark_profile;

    invoke-virtual {v3}, Landroid/pmqos/Benchmark_profile;->pm_qos_close()V

    goto/16 :goto_0

    .line 1051
    :pswitch_13
    iget-object v3, p0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/pmqos/Browser_profile;

    invoke-virtual {v3}, Landroid/pmqos/Browser_profile;->pm_qos_close()V

    goto/16 :goto_0

    .line 1055
    :pswitch_14
    iget-object v3, p0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/pmqos/Lcd_backlight;

    invoke-virtual {v3}, Landroid/pmqos/Lcd_backlight;->pm_qos_close()V

    goto/16 :goto_0

    .line 1062
    :pswitch_15
    iget-object v3, p0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/pmqos/Ipps_policy;

    invoke-virtual {v3}, Landroid/pmqos/Ipps_policy;->pm_qos_close()V

    goto/16 :goto_0

    .line 1066
    :pswitch_16
    iget-object v3, p0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/pmqos/Ipps_policy;

    invoke-virtual {v3}, Landroid/pmqos/Ipps_policy;->pm_qos_close()V

    goto/16 :goto_0

    .line 1074
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #k:Ljava/lang/Integer;
    .end local v2           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_0
    return-void

    .line 977
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public performOnPolicy(Ljava/util/HashMap;)V
    .locals 37
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 811
    .local p1, policy:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v26

    .line 812
    .local v26, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    :pswitch_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_2

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    .line 813
    .local v25, k:Ljava/lang/Integer;
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Integer;

    .line 814
    .local v30, v:Ljava/lang/Integer;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v31

    packed-switch v31, :pswitch_data_0

    .line 967
    :pswitch_1
    const-string v31, "PmqosService"

    const-string v32, "performPolicy default!"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 817
    :pswitch_2
    new-instance v7, Landroid/pmqos/Cpu_maxprofile;

    invoke-direct {v7}, Landroid/pmqos/Cpu_maxprofile;-><init>()V

    .line 818
    .local v7, cpuMaxprof:Landroid/pmqos/Cpu_maxprofile;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move/from16 v0, v31

    invoke-virtual {v7, v0}, Landroid/pmqos/Cpu_maxprofile;->pm_qos_write(I)V

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 823
    .end local v7           #cpuMaxprof:Landroid/pmqos/Cpu_maxprofile;
    :pswitch_3
    new-instance v9, Landroid/pmqos/Cpu_minprofile;

    invoke-direct {v9}, Landroid/pmqos/Cpu_minprofile;-><init>()V

    .line 824
    .local v9, cpuMinprof:Landroid/pmqos/Cpu_minprofile;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/pmqos/Cpu_minprofile;->pm_qos_write(I)V

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 829
    .end local v9           #cpuMinprof:Landroid/pmqos/Cpu_minprofile;
    :pswitch_4
    new-instance v13, Landroid/pmqos/Cpu_profile_block;

    invoke-direct {v13}, Landroid/pmqos/Cpu_profile_block;-><init>()V

    .line 830
    .local v13, cpuProBlock:Landroid/pmqos/Cpu_profile_block;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move/from16 v0, v31

    invoke-virtual {v13, v0}, Landroid/pmqos/Cpu_profile_block;->pm_qos_write(I)V

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    move-object/from16 v31, v0

    const/16 v32, 0x3

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 835
    .end local v13           #cpuProBlock:Landroid/pmqos/Cpu_profile_block;
    :pswitch_5
    new-instance v14, Landroid/pmqos/Cpu_profile_safe;

    invoke-direct {v14}, Landroid/pmqos/Cpu_profile_safe;-><init>()V

    .line 836
    .local v14, cpuProfsafe:Landroid/pmqos/Cpu_profile_safe;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move/from16 v0, v31

    invoke-virtual {v14, v0}, Landroid/pmqos/Cpu_profile_safe;->pm_qos_write(I)V

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    move-object/from16 v31, v0

    const/16 v32, 0x4

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 841
    .end local v14           #cpuProfsafe:Landroid/pmqos/Cpu_profile_safe;
    :pswitch_6
    new-instance v12, Landroid/pmqos/Cpu_number_min;

    invoke-direct {v12}, Landroid/pmqos/Cpu_number_min;-><init>()V

    .line 842
    .local v12, cpuNumMin:Landroid/pmqos/Cpu_number_min;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move/from16 v0, v31

    invoke-virtual {v12, v0}, Landroid/pmqos/Cpu_number_min;->pm_qos_write(I)V

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    move-object/from16 v31, v0

    const/16 v32, 0x5

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 847
    .end local v12           #cpuNumMin:Landroid/pmqos/Cpu_number_min;
    :pswitch_7
    new-instance v11, Landroid/pmqos/Cpu_number_max;

    invoke-direct {v11}, Landroid/pmqos/Cpu_number_max;-><init>()V

    .line 848
    .local v11, cpuNumMax:Landroid/pmqos/Cpu_number_max;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move/from16 v0, v31

    invoke-virtual {v11, v0}, Landroid/pmqos/Cpu_number_max;->pm_qos_write(I)V

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    move-object/from16 v31, v0

    const/16 v32, 0x6

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 853
    .end local v11           #cpuNumMax:Landroid/pmqos/Cpu_number_max;
    :pswitch_8
    new-instance v10, Landroid/pmqos/Cpu_number_lock;

    invoke-direct {v10}, Landroid/pmqos/Cpu_number_lock;-><init>()V

    .line 854
    .local v10, cpuNumLock:Landroid/pmqos/Cpu_number_lock;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move/from16 v0, v31

    invoke-virtual {v10, v0}, Landroid/pmqos/Cpu_number_lock;->pm_qos_write(I)V

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    move-object/from16 v31, v0

    const/16 v32, 0x7

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 859
    .end local v10           #cpuNumLock:Landroid/pmqos/Cpu_number_lock;
    :pswitch_9
    new-instance v8, Landroid/pmqos/Ddr_maxprofile;

    invoke-direct {v8}, Landroid/pmqos/Ddr_maxprofile;-><init>()V

    .line 860
    .local v8, cpuMinPorf:Landroid/pmqos/Ddr_maxprofile;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/pmqos/Ddr_maxprofile;->pm_qos_write(I)V

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    move-object/from16 v31, v0

    const/16 v32, 0x8

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 865
    .end local v8           #cpuMinPorf:Landroid/pmqos/Ddr_maxprofile;
    :pswitch_a
    new-instance v15, Landroid/pmqos/Ddr_minprofile;

    invoke-direct {v15}, Landroid/pmqos/Ddr_minprofile;-><init>()V

    .line 866
    .local v15, ddrMinProf:Landroid/pmqos/Ddr_minprofile;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move/from16 v0, v31

    invoke-virtual {v15, v0}, Landroid/pmqos/Ddr_minprofile;->pm_qos_write(I)V

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    move-object/from16 v31, v0

    const/16 v32, 0x9

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 871
    .end local v15           #ddrMinProf:Landroid/pmqos/Ddr_minprofile;
    :pswitch_b
    new-instance v17, Landroid/pmqos/Ddr_profile_block;

    invoke-direct/range {v17 .. v17}, Landroid/pmqos/Ddr_profile_block;-><init>()V

    .line 872
    .local v17, ddrProfBlock:Landroid/pmqos/Ddr_profile_block;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move-object/from16 v0, v17

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/pmqos/Ddr_profile_block;->pm_qos_write(I)V

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    move-object/from16 v31, v0

    const/16 v32, 0xa

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 877
    .end local v17           #ddrProfBlock:Landroid/pmqos/Ddr_profile_block;
    :pswitch_c
    new-instance v16, Landroid/pmqos/Ddr_profile_safe;

    invoke-direct/range {v16 .. v16}, Landroid/pmqos/Ddr_profile_safe;-><init>()V

    .line 878
    .local v16, ddrProSafe:Landroid/pmqos/Ddr_profile_safe;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move-object/from16 v0, v16

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/pmqos/Ddr_profile_safe;->pm_qos_write(I)V

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    move-object/from16 v31, v0

    const/16 v32, 0xb

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 883
    .end local v16           #ddrProSafe:Landroid/pmqos/Ddr_profile_safe;
    :pswitch_d
    new-instance v19, Landroid/pmqos/Gpu_maxprofile;

    invoke-direct/range {v19 .. v19}, Landroid/pmqos/Gpu_maxprofile;-><init>()V

    .line 884
    .local v19, gpuMaxPro:Landroid/pmqos/Gpu_maxprofile;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move-object/from16 v0, v19

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/pmqos/Gpu_maxprofile;->pm_qos_write(I)V

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    move-object/from16 v31, v0

    const/16 v32, 0xc

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 889
    .end local v19           #gpuMaxPro:Landroid/pmqos/Gpu_maxprofile;
    :pswitch_e
    new-instance v3, Landroid/pmqos/Gpu_minprofile;

    invoke-direct {v3}, Landroid/pmqos/Gpu_minprofile;-><init>()V

    .line 890
    .local v3, GpuMinPro:Landroid/pmqos/Gpu_minprofile;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Landroid/pmqos/Gpu_minprofile;->pm_qos_write(I)V

    .line 891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    move-object/from16 v31, v0

    const/16 v32, 0xd

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 895
    .end local v3           #GpuMinPro:Landroid/pmqos/Gpu_minprofile;
    :pswitch_f
    new-instance v20, Landroid/pmqos/Gpu_profile_block;

    invoke-direct/range {v20 .. v20}, Landroid/pmqos/Gpu_profile_block;-><init>()V

    .line 896
    .local v20, gpuProfBlock:Landroid/pmqos/Gpu_profile_block;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/pmqos/Gpu_profile_block;->pm_qos_write(I)V

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    move-object/from16 v31, v0

    const/16 v32, 0xe

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 901
    .end local v20           #gpuProfBlock:Landroid/pmqos/Gpu_profile_block;
    :pswitch_10
    new-instance v21, Landroid/pmqos/Gpu_profile_safe;

    invoke-direct/range {v21 .. v21}, Landroid/pmqos/Gpu_profile_safe;-><init>()V

    .line 902
    .local v21, gpuProfSafe:Landroid/pmqos/Gpu_profile_safe;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/pmqos/Gpu_profile_safe;->pm_qos_write(I)V

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    move-object/from16 v31, v0

    const/16 v32, 0xf

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 907
    .end local v21           #gpuProfSafe:Landroid/pmqos/Gpu_profile_safe;
    :pswitch_11
    new-instance v6, Landroid/pmqos/Cpu_frc_profile;

    invoke-direct {v6}, Landroid/pmqos/Cpu_frc_profile;-><init>()V

    .line 908
    .local v6, cpuFrcProfile:Landroid/pmqos/Cpu_frc_profile;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Landroid/pmqos/Cpu_frc_profile;->pm_qos_write(I)V

    .line 909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    move-object/from16 v31, v0

    const/16 v32, 0x10

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 913
    .end local v6           #cpuFrcProfile:Landroid/pmqos/Cpu_frc_profile;
    :pswitch_12
    new-instance v4, Landroid/pmqos/Benchmark_profile;

    invoke-direct {v4}, Landroid/pmqos/Benchmark_profile;-><init>()V

    .line 914
    .local v4, benchmarkProfile:Landroid/pmqos/Benchmark_profile;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/pmqos/Benchmark_profile;->pm_qos_write(I)V

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    move-object/from16 v31, v0

    const/16 v32, 0x11

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 922
    .end local v4           #benchmarkProfile:Landroid/pmqos/Benchmark_profile;
    :pswitch_13
    new-instance v5, Landroid/pmqos/Browser_profile;

    invoke-direct {v5}, Landroid/pmqos/Browser_profile;-><init>()V

    .line 923
    .local v5, browserProfile:Landroid/pmqos/Browser_profile;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Landroid/pmqos/Browser_profile;->pm_qos_write(I)V

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    move-object/from16 v31, v0

    const/16 v32, 0x13

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 928
    .end local v5           #browserProfile:Landroid/pmqos/Browser_profile;
    :pswitch_14
    new-instance v27, Landroid/pmqos/Lcd_backlight;

    invoke-direct/range {v27 .. v27}, Landroid/pmqos/Lcd_backlight;-><init>()V

    .line 929
    .local v27, lcd_backlight:Landroid/pmqos/Lcd_backlight;
    invoke-virtual/range {v27 .. v27}, Landroid/pmqos/Lcd_backlight;->pm_qos_read()I

    move-result v29

    .line 931
    .local v29, tmp:I
    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v31, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v33

    move/from16 v0, v33

    int-to-double v0, v0

    move-wide/from16 v33, v0

    const-wide/high16 v35, 0x4059

    div-double v33, v33, v35

    mul-double v31, v31, v33

    move-wide/from16 v0, v31

    double-to-int v0, v0

    move/from16 v29, v0

    .line 933
    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/pmqos/Lcd_backlight;->pm_qos_write(I)V

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    move-object/from16 v31, v0

    const/16 v32, 0x14

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 941
    .end local v27           #lcd_backlight:Landroid/pmqos/Lcd_backlight;
    .end local v29           #tmp:I
    :pswitch_15
    new-instance v23, Landroid/pmqos/Ipps_policy;

    invoke-direct/range {v23 .. v23}, Landroid/pmqos/Ipps_policy;-><init>()V

    .line 942
    .local v23, ipps_policy:Landroid/pmqos/Ipps_policy;
    const/16 v28, -0x1

    .line 944
    .local v28, temp:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->this$0:Lcom/huawei/pmqos/PmqosService;

    move-object/from16 v31, v0

    #getter for: Lcom/huawei/pmqos/PmqosService;->mPower:Landroid/os/IPowerManager;
    invoke-static/range {v31 .. v31}, Lcom/huawei/pmqos/PmqosService;->access$1100(Lcom/huawei/pmqos/PmqosService;)Landroid/os/IPowerManager;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Landroid/os/IPowerManager;->getPowerSaveMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v28

    .line 949
    :goto_1
    const/16 v31, 0x2

    move/from16 v0, v31

    move/from16 v1, v28

    if-ne v0, v1, :cond_1

    const/16 v31, 0x1

    invoke-static {}, Lcom/huawei/pmqos/PmqosService;->access$1200()Z

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1

    .line 950
    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Lcom/huawei/pmqos/PmqosService;->access$1202(Z)Z

    .line 956
    :goto_2
    const/16 v31, 0x1

    invoke-static {}, Lcom/huawei/pmqos/PmqosService;->access$1200()Z

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    .line 957
    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Lcom/huawei/pmqos/PmqosService;->access$1202(Z)Z

    goto/16 :goto_0

    .line 945
    :catch_0
    move-exception v18

    .line 946
    .local v18, e:Landroid/os/RemoteException;
    const-string v31, "PmqosService"

    const-string v32, "MovieActivity Failed to setPowerSaveMode SPECIAL_MODE01: "

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 952
    .end local v18           #e:Landroid/os/RemoteException;
    :cond_1
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/pmqos/Ipps_policy;->pm_qos_write(I)V

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    move-object/from16 v31, v0

    const/16 v32, 0x15

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 962
    .end local v23           #ipps_policy:Landroid/pmqos/Ipps_policy;
    .end local v28           #temp:I
    :pswitch_16
    new-instance v24, Landroid/pmqos/Ipps_policy;

    invoke-direct/range {v24 .. v24}, Landroid/pmqos/Ipps_policy;-><init>()V

    .line 963
    .local v24, ipps_policy01:Landroid/pmqos/Ipps_policy;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/pmqos/Ipps_policy;->pm_qos_write(I)V

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/pmqos/PmqosService$HistoryRecord;->record:Ljava/util/HashMap;

    move-object/from16 v31, v0

    const/16 v32, 0x16

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 971
    .end local v24           #ipps_policy01:Landroid/pmqos/Ipps_policy;
    .end local v25           #k:Ljava/lang/Integer;
    .end local v30           #v:Ljava/lang/Integer;
    :cond_2
    return-void

    .line 814
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
