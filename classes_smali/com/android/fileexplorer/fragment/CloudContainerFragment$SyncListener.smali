.class Lcom/android/fileexplorer/fragment/CloudContainerFragment$SyncListener;
.super Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListenerAdapter;
.source "CloudContainerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/CloudContainerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SyncListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$SyncListener;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-direct {p0}, Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/fragment/CloudContainerFragment;Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/CloudContainerFragment$SyncListener;-><init>(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)V

    return-void
.end method


# virtual methods
.method public onSessionStatusChanged()V
    .registers 7

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v0

    const-string v1, "0"

    const-string v2, "cloud_file_size"

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryTotalFileInfoByParentId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSessionStatusChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2a
    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    iget-object v2, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->type:Ljava/lang/String;

    const-string v3, "folder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    iget-object v2, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->type:Ljava/lang/String;

    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$SyncListener;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-static {v2}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$500(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5f

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$SyncListener;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    iget-object v3, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object v3, v3, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$502(Lcom/android/fileexplorer/fragment/CloudContainerFragment;Ljava/lang/String;)Ljava/lang/String;

    :cond_5f
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$SyncListener;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-static {v2}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$300(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v2

    if-nez v2, :cond_6d

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$SyncListener;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-static {v2, v1}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$302(Lcom/android/fileexplorer/fragment/CloudContainerFragment;Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    goto :goto_2a

    :cond_6d
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$SyncListener;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-static {v2}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$400(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v2

    if-nez v2, :cond_7b

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$SyncListener;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-static {v2, v1}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$402(Lcom/android/fileexplorer/fragment/CloudContainerFragment;Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    goto :goto_2a

    :cond_7b
    iget-object v2, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-wide v2, v2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->size:J

    iget-object v4, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$SyncListener;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-static {v4}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$300(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-wide v4, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->size:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_9c

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$SyncListener;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-static {v2}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$300(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$402(Lcom/android/fileexplorer/fragment/CloudContainerFragment;Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$SyncListener;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-static {v2, v1}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$302(Lcom/android/fileexplorer/fragment/CloudContainerFragment;Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    goto :goto_2a

    :cond_9c
    iget-object v2, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-wide v2, v2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->size:J

    iget-object v4, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$SyncListener;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-static {v4}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$400(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-wide v4, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->size:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2a

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$SyncListener;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-static {v2, v1}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$402(Lcom/android/fileexplorer/fragment/CloudContainerFragment;Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    goto/16 :goto_2a

    :cond_b5
    return-void
.end method
