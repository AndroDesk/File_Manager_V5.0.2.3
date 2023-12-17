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
.method private constructor <init>(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$SyncListener;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-direct {p0}, Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/fragment/CloudContainerFragment;Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/CloudContainerFragment$SyncListener;-><init>(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)V

    return-void
.end method


# virtual methods
.method public onSessionStatusChanged()V
    .registers 7

    .line 1
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "0"

    .line 7
    const-string v2, "cloud_file_size"

    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-interface {v0, v1, v2, v3}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryTotalFileInfoByParentId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    .line 13
    move-result-object v0

    .line 14
    new-array v1, v3, [Ljava/lang/Object;

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    const-string v3, "onSessionStatusChanged "

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    const/4 v3, 0x0

    .line 34
    aput-object v2, v1, v3

    .line 36
    invoke-static {v1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 39
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object v0

    .line 43
    :cond_2a
    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_b5

    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 55
    iget-object v2, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 57
    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->type:Ljava/lang/String;

    .line 59
    const-string v3, "folder"

    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_2a

    .line 67
    iget-object v2, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 69
    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->type:Ljava/lang/String;

    .line 71
    const-string v3, "video"

    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_5f

    .line 79
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$SyncListener;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 81
    invoke-static {v2}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$500(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Ljava/lang/String;

    .line 84
    move-result-object v2

    .line 85
    if-nez v2, :cond_5f

    .line 87
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$SyncListener;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 89
    iget-object v3, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 91
    iget-object v3, v3, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    .line 93
    invoke-static {v2, v3}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$502(Lcom/android/fileexplorer/fragment/CloudContainerFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    :cond_5f
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$SyncListener;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 98
    invoke-static {v2}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$300(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 101
    move-result-object v2

    .line 102
    if-nez v2, :cond_6d

    .line 104
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$SyncListener;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 106
    invoke-static {v2, v1}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$302(Lcom/android/fileexplorer/fragment/CloudContainerFragment;Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 109
    goto :goto_2a

    .line 110
    :cond_6d
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$SyncListener;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 112
    invoke-static {v2}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$400(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 115
    move-result-object v2

    .line 116
    if-nez v2, :cond_7b

    .line 118
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$SyncListener;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 120
    invoke-static {v2, v1}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$402(Lcom/android/fileexplorer/fragment/CloudContainerFragment;Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 123
    goto :goto_2a

    .line 124
    :cond_7b
    iget-object v2, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 126
    iget-wide v2, v2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->size:J

    .line 128
    iget-object v4, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$SyncListener;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 130
    invoke-static {v4}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$300(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 133
    move-result-object v4

    .line 134
    iget-object v4, v4, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 136
    iget-wide v4, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->size:J

    .line 138
    cmp-long v2, v2, v4

    .line 140
    if-lez v2, :cond_9c

    .line 142
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$SyncListener;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 144
    invoke-static {v2}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$300(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 147
    move-result-object v3

    .line 148
    invoke-static {v2, v3}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$402(Lcom/android/fileexplorer/fragment/CloudContainerFragment;Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 151
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$SyncListener;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 153
    invoke-static {v2, v1}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$302(Lcom/android/fileexplorer/fragment/CloudContainerFragment;Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 156
    goto :goto_2a

    .line 157
    :cond_9c
    iget-object v2, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 159
    iget-wide v2, v2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->size:J

    .line 161
    iget-object v4, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$SyncListener;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 163
    invoke-static {v4}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$400(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 166
    move-result-object v4

    .line 167
    iget-object v4, v4, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 169
    iget-wide v4, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->size:J

    .line 171
    cmp-long v2, v2, v4

    .line 173
    if-lez v2, :cond_2a

    .line 175
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$SyncListener;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 177
    invoke-static {v2, v1}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$402(Lcom/android/fileexplorer/fragment/CloudContainerFragment;Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 180
    goto/16 :goto_2a

    .line 182
    :cond_b5
    return-void
.end method
