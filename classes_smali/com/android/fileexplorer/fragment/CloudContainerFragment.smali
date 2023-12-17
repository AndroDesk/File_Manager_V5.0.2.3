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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->isLogin()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mLargestFileInfo:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/android/fileexplorer/fragment/CloudContainerFragment;Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mLargestFileInfo:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->m2ndLargestFileInfo:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/android/fileexplorer/fragment/CloudContainerFragment;Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->m2ndLargestFileInfo:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    return-object p1
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mVideoFileId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/android/fileexplorer/fragment/CloudContainerFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mVideoFileId:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->doRename()V

    return-void
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->doCommonQueryTask()V

    return-void
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/task/CommonJobQueryTask;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mCommonJobQueryTask:Lcom/micloud/midrive/task/CommonJobQueryTask;

    return-object p0
.end method

.method public static synthetic access$802(Lcom/android/fileexplorer/fragment/CloudContainerFragment;Lcom/micloud/midrive/task/CommonJobQueryTask;)Lcom/micloud/midrive/task/CommonJobQueryTask;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mCommonJobQueryTask:Lcom/micloud/midrive/task/CommonJobQueryTask;

    return-object p1
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->refreshProgress()V

    return-void
.end method

.method private doCommonQueryTask()V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mCommonJobQueryTask:Lcom/micloud/midrive/task/CommonJobQueryTask;

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->postCommonJobQueryRunnable()V

    return-void

    :cond_8
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Download do query in work task"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mCommonJobQueryRunnable:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mLargestFileInfo:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    if-eqz v1, :cond_28

    iget-object v1, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object v3, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    iget-object v1, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->sha1:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->m2ndLargestFileInfo:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    if-eqz v1, :cond_35

    iget-object v1, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object v3, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    iget-object v1, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->sha1:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_35
    new-instance v1, Lcom/micloud/midrive/task/CommonJobQueryTask;

    sget-object v3, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-direct {v1, v3, v0}, Lcom/micloud/midrive/task/CommonJobQueryTask;-><init>(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mCommonJobQueryTask:Lcom/micloud/midrive/task/CommonJobQueryTask;

    new-instance v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$7;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/CloudContainerFragment$7;-><init>(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)V

    invoke-virtual {v1, v0}, Lcom/micloud/midrive/task/CommonJobQueryTask;->setListener(Lcom/micloud/midrive/task/CommonJobQueryTask$CommonJobQueryListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mCommonJobQueryTask:Lcom/micloud/midrive/task/CommonJobQueryTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private doRename()V
    .registers 6

    const-string v0, "30939761994366977"

    :try_start_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/micloud/midrive/server/transport/Network;->forAllowAnyNetwork(Landroid/content/Context;)Lcom/micloud/midrive/server/transport/Network;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "123477711_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->setRename(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1, v2}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getSyncFileInfo(Lcom/micloud/midrive/server/transport/Network;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->insertOrUpdateCloudFiles(Ljava/util/List;)Z
    :try_end_3a
    .catch Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException; {:try_start_2 .. :try_end_3a} :catch_48
    .catch Lcom/micloud/midrive/server/transport/exception/RequestIOException; {:try_start_2 .. :try_end_3a} :catch_46
    .catch Lcom/micloud/midrive/server/exception/ProtocolBadContentException; {:try_start_2 .. :try_end_3a} :catch_44
    .catch Lcom/micloud/midrive/server/exception/OperationFailedException; {:try_start_2 .. :try_end_3a} :catch_42
    .catch Lcom/micloud/midrive/server/transport/exception/RequestBadResponseException; {:try_start_2 .. :try_end_3a} :catch_40
    .catch Lcom/micloud/midrive/server/transport/exception/RequestServiceNotAvailableException; {:try_start_2 .. :try_end_3a} :catch_3e
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_3a} :catch_3c

    const/4 v0, 0x0

    goto :goto_49

    :catch_3c
    move-exception v0

    goto :goto_49

    :catch_3e
    move-exception v0

    goto :goto_49

    :catch_40
    move-exception v0

    goto :goto_49

    :catch_42
    move-exception v0

    goto :goto_49

    :catch_44
    move-exception v0

    goto :goto_49

    :catch_46
    move-exception v0

    goto :goto_49

    :catch_48
    move-exception v0

    :goto_49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doRename error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "----------"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private generateTestFileItem(Landroid/net/Uri;)Lcom/micloud/midrive/model/FileItem;
    .registers 23

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_5a

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5a

    const-string v1, "_display_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v1, "_size"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-string v1, "last_modified"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    move-wide v11, v9

    move-wide v13, v9

    move-wide v15, v9

    new-instance v1, Lcom/micloud/midrive/model/FileItem;

    move-object v2, v1

    new-instance v4, Lcom/micloud/midrive/ui/bean/DriveFileType;

    move-object v3, v4

    invoke-direct {v4}, Lcom/micloud/midrive/ui/bean/DriveFileType;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    invoke-direct/range {v2 .. v20}, Lcom/micloud/midrive/model/FileItem;-><init>(Lcom/micloud/midrive/ui/bean/DriveFileType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_5a
    const/4 v0, 0x0

    return-object v0
.end method

.method private isLogin()Z
    .registers 4

    invoke-static {}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getInstance()Lcom/micloud/midrive/manager/MiDriveAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "未登录"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v2

    :cond_19
    const/4 v0, 0x1

    return v0
.end method

.method private postCommonJobQueryRunnable()V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mCommonJobQueryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$6;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/CloudContainerFragment$6;-><init>(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mCommonJobQueryRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private refreshProgress()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->postCommonJobQueryRunnable()V

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

    new-instance v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$SessionProgressListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/fileexplorer/fragment/CloudContainerFragment$SessionProgressListener;-><init>(Lcom/android/fileexplorer/fragment/CloudContainerFragment;Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mDownloadProgressListener:Lcom/android/fileexplorer/fragment/CloudContainerFragment$SessionProgressListener;

    new-instance v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$SyncListener;

    invoke-direct {v0, p0, v1}, Lcom/android/fileexplorer/fragment/CloudContainerFragment$SyncListener;-><init>(Lcom/android/fileexplorer/fragment/CloudContainerFragment;Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mSyncListener:Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListener;

    const v0, 0x7f032982

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;-><init>(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f032988

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/fragment/CloudContainerFragment$2;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/CloudContainerFragment$2;-><init>(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f03298a

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/fragment/CloudContainerFragment$3;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/CloudContainerFragment$3;-><init>(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f03298f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/fragment/CloudContainerFragment$4;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/CloudContainerFragment$4;-><init>(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f03298c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$5;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/CloudContainerFragment$5;-><init>(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 10

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_64

    const/4 p2, 0x1

    if-ne p1, p2, :cond_64

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2a

    move p3, v0

    :goto_16
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-ge p3, v1, :cond_31

    invoke-virtual {p2, p3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_16

    :cond_2a
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_64

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->generateTestFileItem(Landroid/net/Uri;)Lcom/micloud/midrive/model/FileItem;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string p1, "0"

    invoke-static {p2, p1}, Lcom/micloud/midrive/utils/TaskUtils;->fileItemsConvertToFileUploadInfos(Ljava/util/Set;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lcom/micloud/midrive/session/helper/UploadSessionHelper;->getInstance()Lcom/micloud/midrive/session/helper/UploadSessionHelper;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getInstance()Lcom/micloud/midrive/manager/MiDriveAccountManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/micloud/midrive/session/helper/UploadSessionHelper;->addTask(Landroid/content/Context;Landroid/accounts/Account;Ljava/util/List;ZLcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;

    :cond_64
    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onPause()V

    invoke-static {}, Lcom/micloud/midrive/session/manager/DownloadSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/DownloadSessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mDownloadProgressListener:Lcom/android/fileexplorer/fragment/CloudContainerFragment$SessionProgressListener;

    invoke-virtual {v0, v1}, Lcom/micloud/midrive/session/manager/SessionManager;->removeListener(Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListener;)V

    invoke-static {}, Lcom/micloud/midrive/session/manager/SyncSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/SyncSessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mSyncListener:Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListener;

    invoke-virtual {v0, v1}, Lcom/micloud/midrive/session/manager/SessionManager;->removeListener(Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListener;)V

    return-void
.end method

.method public onRequestFinished(Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$Result;)V
    .registers 4

    iget-object v0, p1, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$Result;->fileId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mVideoFileId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    instance-of v0, p1, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$SuccessResult;

    if-eqz v0, :cond_28

    check-cast p1, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$SuccessResult;

    iget-object p1, p1, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$SuccessResult;->url:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "online url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "----------"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onResume()V

    invoke-static {}, Lcom/micloud/midrive/session/manager/DownloadSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/DownloadSessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mDownloadProgressListener:Lcom/android/fileexplorer/fragment/CloudContainerFragment$SessionProgressListener;

    invoke-virtual {v0, v1}, Lcom/micloud/midrive/session/manager/SessionManager;->addListener(Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListener;)V

    invoke-static {}, Lcom/micloud/midrive/session/manager/SyncSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/SyncSessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->mSyncListener:Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListener;

    invoke-virtual {v0, v1}, Lcom/micloud/midrive/session/manager/SessionManager;->addListener(Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListener;)V

    return-void
.end method
