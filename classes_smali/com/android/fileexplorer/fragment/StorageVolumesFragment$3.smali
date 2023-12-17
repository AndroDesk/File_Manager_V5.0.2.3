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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$3;->this$0:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$3;->this$0:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    const-string v2, "show_router"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    :cond_f
    if-eqz v0, :cond_17

    const-string v2, "show_mtp"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    :cond_17
    const/4 v2, 0x1

    if-eqz v0, :cond_24

    const-string v3, "show_extended"

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_24

    move v3, v2

    goto :goto_25

    :cond_24
    move v3, v1

    :goto_25
    if-eqz v0, :cond_30

    const-string v4, "show_midrive"

    invoke-virtual {v0, v4, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_30

    move v1, v2

    :cond_30
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v0

    xor-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/model/StorageHelper;->getMountVolumeList(Z)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$3;->this$0:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    invoke-static {v1, v2}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->access$300(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;Ljava/util/List;)V

    :cond_45
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/StorageInfo;

    new-instance v3, Lcom/android/fileexplorer/model/StorageVolumeInfo;

    invoke-direct {v3}, Lcom/android/fileexplorer/model/StorageVolumeInfo;-><init>()V

    iput-object v1, v3, Lcom/android/fileexplorer/model/StorageVolumeInfo;->storageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/fileexplorer/model/StorageHelper;->getStorageInfoForVolume(Lcom/android/fileexplorer/model/StorageInfo;)Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;

    move-result-object v1

    iput-object v1, v3, Lcom/android/fileexplorer/model/StorageVolumeInfo;->sdCardInfo:Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_49

    :cond_6a
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$3;->this$0:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->access$400(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_71
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$3;->this$0:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    invoke-static {v1}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->access$400(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$3;->this$0:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    invoke-static {v1}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->access$400(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment$3;->this$0:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    invoke-static {v1}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->access$500(Lcom/android/fileexplorer/fragment/StorageVolumesFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/model/Util;->doAction(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :catchall_8e
    move-exception v1

    monitor-exit v0
    :try_end_90
    .catchall {:try_start_71 .. :try_end_90} :catchall_8e

    throw v1
.end method
