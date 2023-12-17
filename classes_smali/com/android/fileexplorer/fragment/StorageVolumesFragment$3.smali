.class Lcom/android/fileexplorer/fragment/StorageVolumesFragment$3;
.super Ljava/lang/Object;
.source "StorageVolumesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->updateVolumeList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$3;->this$0:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$3;->this$0:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_f

    .line 10
    const-string v2, "show_router"

    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 15
    move-result v2

    .line 16
    :cond_f
    if-eqz v0, :cond_17

    .line 18
    const-string v2, "show_mtp"

    .line 20
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 23
    move-result v2

    .line 24
    :cond_17
    const/4 v2, 0x1

    .line 25
    if-eqz v0, :cond_24

    .line 27
    const-string v3, "show_extended"

    .line 29
    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_24

    .line 35
    move v3, v2

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    move v3, v1

    .line 38
    :goto_25
    if-eqz v0, :cond_30

    .line 40
    const-string v4, "show_midrive"

    .line 42
    invoke-virtual {v0, v4, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_30

    .line 48
    move v1, v2

    .line 49
    :cond_30
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 52
    move-result-object v0

    .line 53
    xor-int/2addr v2, v3

    .line 54
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/model/StorageHelper;->getMountVolumeList(Z)Ljava/util/ArrayList;

    .line 57
    move-result-object v0

    .line 58
    new-instance v2, Ljava/util/ArrayList;

    .line 60
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 63
    if-eqz v1, :cond_45

    .line 65
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$3;->this$0:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    .line 67
    invoke-static {v1, v2}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->access$300(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;Ljava/util/List;)V

    .line 70
    :cond_45
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 73
    move-result-object v0

    .line 74
    :goto_49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_6a

    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Lcom/android/fileexplorer/model/StorageInfo;

    .line 86
    new-instance v3, Lcom/android/fileexplorer/model/StorageVolumeInfo;

    .line 88
    invoke-direct {v3}, Lcom/android/fileexplorer/model/StorageVolumeInfo;-><init>()V

    .line 91
    iput-object v1, v3, Lcom/android/fileexplorer/model/StorageVolumeInfo;->storageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 93
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v4, v1}, Lcom/android/fileexplorer/model/StorageHelper;->getStorageInfoForVolume(Lcom/android/fileexplorer/model/StorageInfo;)Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;

    .line 100
    move-result-object v1

    .line 101
    iput-object v1, v3, Lcom/android/fileexplorer/model/StorageVolumeInfo;->sdCardInfo:Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;

    .line 103
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    goto :goto_49

    .line 107
    :cond_6a
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$3;->this$0:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    .line 109
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->access$400(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)Ljava/util/List;

    .line 112
    move-result-object v0

    .line 113
    monitor-enter v0

    .line 114
    :try_start_71
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$3;->this$0:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    .line 116
    invoke-static {v1}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->access$400(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)Ljava/util/List;

    .line 119
    move-result-object v1

    .line 120
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 123
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$3;->this$0:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    .line 125
    invoke-static {v1}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->access$400(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)Ljava/util/List;

    .line 128
    move-result-object v1

    .line 129
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 132
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$3;->this$0:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    .line 134
    invoke-static {v1}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->access$500(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)Ljava/lang/Runnable;

    .line 137
    move-result-object v1

    .line 138
    invoke-static {v1}, Lcom/android/fileexplorer/model/Util;->doAction(Ljava/lang/Runnable;)V

    .line 141
    monitor-exit v0

    .line 142
    return-void

    .line 143
    :catchall_8e
    move-exception v1

    .line 144
    monitor-exit v0
    :try_end_90
    .catchall {:try_start_71 .. :try_end_90} :catchall_8e

    .line 145
    throw v1
.end method
