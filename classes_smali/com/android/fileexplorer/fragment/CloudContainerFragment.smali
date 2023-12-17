.class public Lcom/android/fileexplorer/fragment/CloudContainerFragment;
.super Lcom/android/fileexplorer/fragment/BaseFragment;
.source "CloudContainerFragment.java"

# interfaces
.implements Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$RequestListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/fragment/CloudContainerFragment$SyncListener;,
        Lcom/android/fileexplorer/fragment/CloudContainerFragment$SessionProgressListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "----------"


# instance fields
.field private m2ndLargestFileInfo:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

.field private mCommonJobQueryRunnable:Ljava/lang/Runnable;

.field private mCommonJobQueryTask:Lcom/micloud/midrive/task/CommonJobQueryTask;

.field private mDownloadProgressListener:Lcom/android/fileexplorer/fragment/CloudContainerFragment$SessionProgressListener;

.field private mLargestFileInfo:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

.field private mMainHandler:Landroid/os/Handler;

.field private mSyncListener:Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListener;

.field private mVideoFileId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;-><init>()V

    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 6
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mMainHandler:Landroid/os/Handler;

    .line 11
    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Z
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->isLogin()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mLargestFileInfo:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 3
    return-object p0
.end method

.method public static synthetic access$302(Lcom/android/fileexplorer/fragment/CloudContainerFragment;Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mLargestFileInfo:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 3
    return-object p1
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->m2ndLargestFileInfo:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 3
    return-object p0
.end method

.method public static synthetic access$402(Lcom/android/fileexplorer/fragment/CloudContainerFragment;Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->m2ndLargestFileInfo:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 3
    return-object p1
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mVideoFileId:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic access$502(Lcom/android/fileexplorer/fragment/CloudContainerFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mVideoFileId:Ljava/lang/String;

    .line 3
    return-object p1
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->doRename()V

    .line 4
    return-void
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->doCommonQueryTask()V

    .line 4
    return-void
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/task/CommonJobQueryTask;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mCommonJobQueryTask:Lcom/micloud/midrive/task/CommonJobQueryTask;

    .line 3
    return-object p0
.end method

.method public static synthetic access$802(Lcom/android/fileexplorer/fragment/CloudContainerFragment;Lcom/micloud/midrive/task/CommonJobQueryTask;)Lcom/micloud/midrive/task/CommonJobQueryTask;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mCommonJobQueryTask:Lcom/micloud/midrive/task/CommonJobQueryTask;

    .line 3
    return-object p1
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->refreshProgress()V

    .line 4
    return-void
.end method

.method private doCommonQueryTask()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mCommonJobQueryTask:Lcom/micloud/midrive/task/CommonJobQueryTask;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->postCommonJobQueryRunnable()V

    .line 8
    return-void

    .line 9
    :cond_8
    const/4 v0, 0x1

    .line 10
    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    const-string v1, "Download do query in work task"

    .line 14
    const/4 v2, 0x0

    .line 15
    aput-object v1, v0, v2

    .line 17
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mCommonJobQueryRunnable:Ljava/lang/Runnable;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    .line 25
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mLargestFileInfo:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 30
    if-eqz v1, :cond_28

    .line 32
    iget-object v1, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 34
    iget-object v3, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    .line 36
    iget-object v1, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->sha1:Ljava/lang/String;

    .line 38
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_28
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->m2ndLargestFileInfo:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 43
    if-eqz v1, :cond_35

    .line 45
    iget-object v1, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 47
    iget-object v3, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    .line 49
    iget-object v1, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->sha1:Ljava/lang/String;

    .line 51
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_35
    new-instance v1, Lcom/micloud/midrive/task/CommonJobQueryTask;

    .line 56
    sget-object v3, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 58
    invoke-direct {v1, v3, v0}, Lcom/micloud/midrive/task/CommonJobQueryTask;-><init>(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/Map;)V

    .line 61
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mCommonJobQueryTask:Lcom/micloud/midrive/task/CommonJobQueryTask;

    .line 63
    new-instance v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$7;

    .line 65
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/CloudContainerFragment$7;-><init>(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)V

    .line 68
    invoke-virtual {v1, v0}, Lcom/micloud/midrive/task/CommonJobQueryTask;->setListener(Lcom/micloud/midrive/task/CommonJobQueryTask$CommonJobQueryListener;)V

    .line 71
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mCommonJobQueryTask:Lcom/micloud/midrive/task/CommonJobQueryTask;

    .line 73
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 75
    new-array v2, v2, [Ljava/lang/Void;

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 80
    return-void
.end method

.method private doRename()V
    .registers 6

    .line 1
    const-string v0, "30939761994366977"

    .line 3
    :try_start_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/micloud/midrive/server/transport/Network;->forAllowAnyNetwork(Landroid/content/Context;)Lcom/micloud/midrive/server/transport/Network;

    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    const-string v3, "123477711_"

    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 24
    move-result-wide v3

    .line 25
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    const-string v3, ".jpg"

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    invoke-static {v1, v0, v2}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->setRename(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v2, Ljava/util/ArrayList;

    .line 42
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-static {v1, v2}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getSyncFileInfo(Lcom/micloud/midrive/server/transport/Network;Ljava/util/List;)Ljava/util/List;

    .line 51
    move-result-object v0

    .line 52
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 55
    move-result-object v1

    .line 56
    invoke-interface {v1, v0}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->insertOrUpdateCloudFiles(Ljava/util/List;)Z
    :try_end_3a
    .catch Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException; {:try_start_2 .. :try_end_3a} :catch_48
    .catch Lcom/micloud/midrive/server/transport/exception/RequestIOException; {:try_start_2 .. :try_end_3a} :catch_46
    .catch Lcom/micloud/midrive/server/exception/ProtocolBadContentException; {:try_start_2 .. :try_end_3a} :catch_44
    .catch Lcom/micloud/midrive/server/exception/OperationFailedException; {:try_start_2 .. :try_end_3a} :catch_42
    .catch Lcom/micloud/midrive/server/transport/exception/RequestBadResponseException; {:try_start_2 .. :try_end_3a} :catch_40
    .catch Lcom/micloud/midrive/server/transport/exception/RequestServiceNotAvailableException; {:try_start_2 .. :try_end_3a} :catch_3e
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_3a} :catch_3c

    .line 59
    const/4 v0, 0x0

    .line 60
    goto :goto_49

    .line 61
    :catch_3c
    move-exception v0

    .line 62
    goto :goto_49

    .line 63
    :catch_3e
    move-exception v0

    .line 64
    goto :goto_49

    .line 65
    :catch_40
    move-exception v0

    .line 66
    goto :goto_49

    .line 67
    :catch_42
    move-exception v0

    .line 68
    goto :goto_49

    .line 69
    :catch_44
    move-exception v0

    .line 70
    goto :goto_49

    .line 71
    :catch_46
    move-exception v0

    .line 72
    goto :goto_49

    .line 73
    :catch_48
    move-exception v0

    .line 74
    :goto_49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 76
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    const-string v2, "doRename error "

    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object v0

    .line 91
    const-string v1, "----------"

    .line 93
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method private generateTestFileItem(Landroid/net/Uri;)Lcom/micloud/midrive/model/FileItem;
    .registers 23

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object v1

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    move-object/from16 v2, p1

    .line 15
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_5a

    .line 21
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_5a

    .line 27
    const-string v1, "_display_name"

    .line 29
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 32
    move-result v1

    .line 33
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 36
    move-result-object v6

    .line 37
    const-string v1, "_size"

    .line 39
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 42
    move-result v1

    .line 43
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 46
    move-result-wide v7

    .line 47
    const-string v1, "last_modified"

    .line 49
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 52
    move-result v1

    .line 53
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 56
    move-result-wide v9

    .line 57
    move-wide v11, v9

    .line 58
    move-wide v13, v9

    .line 59
    move-wide v15, v9

    .line 60
    new-instance v1, Lcom/micloud/midrive/model/FileItem;

    .line 62
    move-object v2, v1

    .line 63
    new-instance v4, Lcom/micloud/midrive/ui/bean/DriveFileType;

    .line 65
    move-object v3, v4

    .line 66
    invoke-direct {v4}, Lcom/micloud/midrive/ui/bean/DriveFileType;-><init>()V

    .line 69
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 72
    move-result-object v4

    .line 73
    const/4 v5, 0x0

    .line 74
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 77
    move-result-object v17

    .line 78
    const/16 v18, 0x0

    .line 80
    const/16 v19, 0x1

    .line 82
    const/16 v20, 0x0

    .line 84
    invoke-direct/range {v2 .. v20}, Lcom/micloud/midrive/model/FileItem;-><init>(Lcom/micloud/midrive/ui/bean/DriveFileType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 87
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 90
    return-object v1

    .line 91
    :cond_5a
    const/4 v0, 0x0

    .line 92
    return-object v0
.end method

.method private isLogin()Z
    .registers 4

    .line 1
    invoke-static {}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getInstance()Lcom/micloud/midrive/manager/MiDriveAccountManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getAccount()Landroid/accounts/Account;

    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_19

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v0

    .line 15
    const-string v1, "未登录"

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 25
    return v2

    .line 26
    :cond_19
    const/4 v0, 0x1

    .line 27
    return v0
.end method

.method private postCommonJobQueryRunnable()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mMainHandler:Landroid/os/Handler;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mCommonJobQueryRunnable:Ljava/lang/Runnable;

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    new-instance v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$6;

    .line 10
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/CloudContainerFragment$6;-><init>(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)V

    .line 13
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mCommonJobQueryRunnable:Ljava/lang/Runnable;

    .line 15
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mMainHandler:Landroid/os/Handler;

    .line 17
    const-wide/16 v2, 0x3e8

    .line 19
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    return-void
.end method

.method private refreshProgress()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->postCommonJobQueryRunnable()V

    .line 4
    return-void
.end method


# virtual methods
.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d0073

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 4

    .line 1
    new-instance v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$SessionProgressListener;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/fileexplorer/fragment/CloudContainerFragment$SessionProgressListener;-><init>(Lcom/android/fileexplorer/fragment/CloudContainerFragment;Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;)V

    .line 7
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mDownloadProgressListener:Lcom/android/fileexplorer/fragment/CloudContainerFragment$SessionProgressListener;

    .line 9
    new-instance v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$SyncListener;

    .line 11
    invoke-direct {v0, p0, v1}, Lcom/android/fileexplorer/fragment/CloudContainerFragment$SyncListener;-><init>(Lcom/android/fileexplorer/fragment/CloudContainerFragment;Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;)V

    .line 14
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mSyncListener:Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListener;

    .line 16
    const v0, 0x7f0a0414

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;

    .line 25
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;-><init>(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)V

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    const v0, 0x7f0a041e

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object v0

    .line 38
    new-instance v1, Lcom/android/fileexplorer/fragment/CloudContainerFragment$2;

    .line 40
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/CloudContainerFragment$2;-><init>(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)V

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v0, 0x7f0a041c

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v0

    .line 53
    new-instance v1, Lcom/android/fileexplorer/fragment/CloudContainerFragment$3;

    .line 55
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/CloudContainerFragment$3;-><init>(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)V

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v0, 0x7f0a0419

    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object v0

    .line 68
    new-instance v1, Lcom/android/fileexplorer/fragment/CloudContainerFragment$4;

    .line 70
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/CloudContainerFragment$4;-><init>(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)V

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v0, 0x7f0a041a

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    move-result-object p1

    .line 83
    new-instance v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$5;

    .line 85
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/CloudContainerFragment$5;-><init>(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)V

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 10

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    const/4 v0, -0x1

    .line 5
    if-ne p2, v0, :cond_64

    .line 7
    const/4 p2, 0x1

    .line 8
    if-ne p1, p2, :cond_64

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    .line 18
    move-result-object p2

    .line 19
    const/4 v0, 0x0

    .line 20
    if-eqz p2, :cond_2a

    .line 22
    move p3, v0

    .line 23
    :goto_16
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    .line 26
    move-result v1

    .line 27
    if-ge p3, v1, :cond_31

    .line 29
    invoke-virtual {p2, p3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    add-int/lit8 p3, p3, 0x1

    .line 42
    goto :goto_16

    .line 43
    :cond_2a
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_31
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 53
    move-result p2

    .line 54
    if-nez p2, :cond_64

    .line 56
    new-instance p2, Ljava/util/HashSet;

    .line 58
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 61
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Landroid/net/Uri;

    .line 67
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->generateTestFileItem(Landroid/net/Uri;)Lcom/micloud/midrive/model/FileItem;

    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 74
    const-string p1, "0"

    .line 76
    invoke-static {p2, p1}, Lcom/micloud/midrive/utils/TaskUtils;->fileItemsConvertToFileUploadInfos(Ljava/util/Set;Ljava/lang/String;)Ljava/util/List;

    .line 79
    move-result-object v3

    .line 80
    invoke-static {}, Lcom/micloud/midrive/session/helper/UploadSessionHelper;->getInstance()Lcom/micloud/midrive/session/helper/UploadSessionHelper;

    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 87
    move-result-object v1

    .line 88
    invoke-static {}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getInstance()Lcom/micloud/midrive/manager/MiDriveAccountManager;

    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getAccount()Landroid/accounts/Account;

    .line 95
    move-result-object v2

    .line 96
    const/4 v4, 0x1

    .line 97
    const/4 v5, 0x0

    .line 98
    invoke-virtual/range {v0 .. v5}, Lcom/micloud/midrive/session/helper/UploadSessionHelper;->addTask(Landroid/content/Context;Landroid/accounts/Account;Ljava/util/List;ZLcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;

    .line 101
    :cond_64
    return-void
.end method

.method public onPause()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onPause()V

    .line 4
    invoke-static {}, Lcom/micloud/midrive/session/manager/DownloadSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/DownloadSessionManager;

    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mDownloadProgressListener:Lcom/android/fileexplorer/fragment/CloudContainerFragment$SessionProgressListener;

    .line 10
    invoke-virtual {v0, v1}, Lcom/micloud/midrive/session/manager/SessionManager;->removeListener(Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListener;)V

    .line 13
    invoke-static {}, Lcom/micloud/midrive/session/manager/SyncSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/SyncSessionManager;

    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mSyncListener:Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListener;

    .line 19
    invoke-virtual {v0, v1}, Lcom/micloud/midrive/session/manager/SessionManager;->removeListener(Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListener;)V

    .line 22
    return-void
.end method

.method public onRequestFinished(Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$Result;)V
    .registers 4

    .line 1
    iget-object v0, p1, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$Result;->fileId:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mVideoFileId:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_28

    .line 11
    instance-of v0, p1, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$SuccessResult;

    .line 13
    if-eqz v0, :cond_28

    .line 15
    check-cast p1, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$SuccessResult;

    .line 17
    iget-object p1, p1, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$SuccessResult;->url:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    const-string v1, "online url: "

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    const-string v0, "----------"

    .line 38
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_28
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onResume()V

    .line 4
    invoke-static {}, Lcom/micloud/midrive/session/manager/DownloadSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/DownloadSessionManager;

    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mDownloadProgressListener:Lcom/android/fileexplorer/fragment/CloudContainerFragment$SessionProgressListener;

    .line 10
    invoke-virtual {v0, v1}, Lcom/micloud/midrive/session/manager/SessionManager;->addListener(Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListener;)V

    .line 13
    invoke-static {}, Lcom/micloud/midrive/session/manager/SyncSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/SyncSessionManager;

    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mSyncListener:Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListener;

    .line 19
    invoke-virtual {v0, v1}, Lcom/micloud/midrive/session/manager/SessionManager;->addListener(Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListener;)V

    .line 22
    return-void
.end method
