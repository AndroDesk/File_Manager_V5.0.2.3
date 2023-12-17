.class public Lcom/android/fileexplorer/service/DirParseService;
.super Landroid/app/Service;
.source "DirParseService.java"


# static fields
.field public static final ACTION_START_SERVICE:Ljava/lang/String; = "com.android.fileexplorer.DirParseService"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBinder:Lcom/android/fileexplorer/service/IDirParse$Stub;

.field private mCleanMaster:Lcom/android/fileexplorer/service/CleanMasterSDK;

.field private mIsNewSDK:Z

.field private mLieBao:Lcom/android/fileexplorer/service/LieBaoSDK;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lcom/android/fileexplorer/service/DirParseService;

    .line 3
    const-string v0, "DirParseService"

    .line 5
    sput-object v0, Lcom/android/fileexplorer/service/DirParseService;->TAG:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 4
    new-instance v0, Lcom/android/fileexplorer/service/DirParseService$1;

    .line 6
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/service/DirParseService$1;-><init>(Lcom/android/fileexplorer/service/DirParseService;)V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/service/DirParseService;->mBinder:Lcom/android/fileexplorer/service/IDirParse$Stub;

    .line 11
    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/service/DirParseService;->TAG:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/service/DirParseService;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/service/DirParseService;->mIsNewSDK:Z

    .line 3
    return p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/service/DirParseService;Ljava/util/List;ILcom/android/fileexplorer/service/IQueryCallBack;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/service/DirParseService;->usingCleanMaster(Ljava/util/List;ILcom/android/fileexplorer/service/IQueryCallBack;)V

    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/service/DirParseService;Ljava/util/List;ILcom/android/fileexplorer/service/IQueryCallBack;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/service/DirParseService;->usingLieBao(Ljava/util/List;ILcom/android/fileexplorer/service/IQueryCallBack;)V

    .line 4
    return-void
.end method

.method private isNewDirSdk()Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    move-result-object v1

    .line 10
    const-string v2, "com.miui.cleanmaster"

    .line 12
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 15
    move-result-object v1

    .line 16
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_16

    .line 18
    const/16 v2, 0x8b

    .line 20
    if-lt v1, v2, :cond_16

    .line 22
    const/4 v0, 0x1

    .line 23
    :catch_16
    :cond_16
    return v0
.end method

.method private usingCleanMaster(Ljava/util/List;ILcom/android/fileexplorer/service/IQueryCallBack;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/android/fileexplorer/service/IQueryCallBack;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/service/DirParseService;->mCleanMaster:Lcom/android/fileexplorer/service/CleanMasterSDK;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/service/CleanMasterSDK;->getManager()Lcom/miui/optimizecenter/dirinfo/IDirInfoQueryManager;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_18

    .line 9
    sget-object v1, Lcom/android/fileexplorer/service/DirParseService;->TAG:Ljava/lang/String;

    .line 11
    const-string v2, "start cleanmaster dir parse"

    .line 13
    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v1, Lcom/android/fileexplorer/service/DirParseService$2;

    .line 18
    invoke-direct {v1, p0, p3, p2}, Lcom/android/fileexplorer/service/DirParseService$2;-><init>(Lcom/android/fileexplorer/service/DirParseService;Lcom/android/fileexplorer/service/IQueryCallBack;I)V

    .line 21
    invoke-interface {v0, p1, v1}, Lcom/miui/optimizecenter/dirinfo/IDirInfoQueryManager;->queryDirInfo(Ljava/util/List;Lcom/miui/optimizecenter/dirinfo/IDirInfoQueryCallBack;)V

    .line 24
    goto :goto_1d

    .line 25
    :cond_18
    if-eqz p3, :cond_1d

    .line 27
    invoke-interface {p3}, Lcom/android/fileexplorer/service/IQueryCallBack;->onQueryFinish()V

    .line 30
    :cond_1d
    :goto_1d
    return-void
.end method

.method private usingLieBao(Ljava/util/List;ILcom/android/fileexplorer/service/IQueryCallBack;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/android/fileexplorer/service/IQueryCallBack;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/service/DirParseService;->mLieBao:Lcom/android/fileexplorer/service/LieBaoSDK;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/service/LieBaoSDK;->getService()Lcom/cleanmaster/sdk/IKSCleaner;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_18

    .line 9
    sget-object v1, Lcom/android/fileexplorer/service/DirParseService;->TAG:Ljava/lang/String;

    .line 11
    const-string v2, "start liebao dir parse"

    .line 13
    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v1, Lcom/android/fileexplorer/service/DirParseService$3;

    .line 18
    invoke-direct {v1, p0, p3, p2}, Lcom/android/fileexplorer/service/DirParseService$3;-><init>(Lcom/android/fileexplorer/service/DirParseService;Lcom/android/fileexplorer/service/IQueryCallBack;I)V

    .line 21
    invoke-interface {v0, p1, v1}, Lcom/cleanmaster/sdk/IKSCleaner;->queryDirInfo(Ljava/util/List;Lcom/cleanmaster/sdk/IQueryInfoCallback;)V

    .line 24
    goto :goto_24

    .line 25
    :cond_18
    if-eqz p3, :cond_1d

    .line 27
    invoke-interface {p3}, Lcom/android/fileexplorer/service/IQueryCallBack;->onQueryFinish()V

    .line 30
    :cond_1d
    sget-object p1, Lcom/android/fileexplorer/service/DirParseService;->TAG:Ljava/lang/String;

    .line 32
    const-string p2, "liebao sdk failed."

    .line 34
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :goto_24
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .line 1
    sget-object p1, Lcom/android/fileexplorer/service/DirParseService;->TAG:Ljava/lang/String;

    .line 3
    const-string v0, "service connected!"

    .line 5
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/android/fileexplorer/service/DirParseService;->mBinder:Lcom/android/fileexplorer/service/IDirParse$Stub;

    .line 10
    return-object p1
.end method

.method public onCreate()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/service/DirParseService;->isNewDirSdk()Z

    .line 7
    move-result v0

    .line 8
    iput-boolean v0, p0, Lcom/android/fileexplorer/service/DirParseService;->mIsNewSDK:Z

    .line 10
    if-eqz v0, :cond_1d

    .line 12
    sget-object v0, Lcom/android/fileexplorer/service/DirParseService;->TAG:Ljava/lang/String;

    .line 14
    const-string v1, "using clean master sdk"

    .line 16
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lcom/android/fileexplorer/service/CleanMasterSDK;

    .line 21
    invoke-direct {v0}, Lcom/android/fileexplorer/service/CleanMasterSDK;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/android/fileexplorer/service/DirParseService;->mCleanMaster:Lcom/android/fileexplorer/service/CleanMasterSDK;

    .line 26
    invoke-virtual {v0}, Lcom/android/fileexplorer/service/CleanMasterSDK;->init()V

    .line 29
    goto :goto_2e

    .line 30
    :cond_1d
    sget-object v0, Lcom/android/fileexplorer/service/DirParseService;->TAG:Ljava/lang/String;

    .line 32
    const-string v1, "using liebao sdk"

    .line 34
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/android/fileexplorer/service/LieBaoSDK;

    .line 39
    invoke-direct {v0}, Lcom/android/fileexplorer/service/LieBaoSDK;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/android/fileexplorer/service/DirParseService;->mLieBao:Lcom/android/fileexplorer/service/LieBaoSDK;

    .line 44
    invoke-virtual {v0}, Lcom/android/fileexplorer/service/LieBaoSDK;->init()V

    .line 47
    :goto_2e
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/service/DirParseService;->mLieBao:Lcom/android/fileexplorer/service/LieBaoSDK;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Lcom/android/fileexplorer/service/LieBaoSDK;->close()V

    .line 11
    :cond_a
    iget-object v0, p0, Lcom/android/fileexplorer/service/DirParseService;->mCleanMaster:Lcom/android/fileexplorer/service/CleanMasterSDK;

    .line 13
    if-eqz v0, :cond_11

    .line 15
    invoke-virtual {v0}, Lcom/android/fileexplorer/service/CleanMasterSDK;->close()V

    .line 18
    :cond_11
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 4

    .line 1
    sget-object v0, Lcom/android/fileexplorer/service/DirParseService;->TAG:Ljava/lang/String;

    .line 3
    const-string v1, "service disconnected!"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    .line 11
    move-result p1

    .line 12
    return p1
.end method
