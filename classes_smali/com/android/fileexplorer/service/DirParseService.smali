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

    const-class v0, Lcom/android/fileexplorer/service/DirParseService;

    const-string v0, "DirParseService"

    sput-object v0, Lcom/android/fileexplorer/service/DirParseService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/android/fileexplorer/service/DirParseService$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/service/DirParseService$1;-><init>(Lcom/android/fileexplorer/service/DirParseService;)V

    iput-object v0, p0, Lcom/android/fileexplorer/service/DirParseService;->mBinder:Lcom/android/fileexplorer/service/IDirParse$Stub;

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/service/DirParseService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/service/DirParseService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/service/DirParseService;->mIsNewSDK:Z

    return p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/service/DirParseService;Ljava/util/List;ILcom/android/fileexplorer/service/IQueryCallBack;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/service/DirParseService;->usingCleanMaster(Ljava/util/List;ILcom/android/fileexplorer/service/IQueryCallBack;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/service/DirParseService;Ljava/util/List;ILcom/android/fileexplorer/service/IQueryCallBack;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/service/DirParseService;->usingLieBao(Ljava/util/List;ILcom/android/fileexplorer/service/IQueryCallBack;)V

    return-void
.end method

.method private isNewDirSdk()Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.miui.cleanmaster"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_16

    const/16 v2, 0x8b

    if-lt v1, v2, :cond_16

    const/4 v0, 0x1

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

    iget-object v0, p0, Lcom/android/fileexplorer/service/DirParseService;->mCleanMaster:Lcom/android/fileexplorer/service/CleanMasterSDK;

    invoke-virtual {v0}, Lcom/android/fileexplorer/service/CleanMasterSDK;->getManager()Lcom/miui/optimizecenter/dirinfo/IDirInfoQueryManager;

    move-result-object v0

    if-eqz v0, :cond_18

    sget-object v1, Lcom/android/fileexplorer/service/DirParseService;->TAG:Ljava/lang/String;

    const-string v2, "start cleanmaster dir parse"

    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/fileexplorer/service/DirParseService$2;

    invoke-direct {v1, p0, p3, p2}, Lcom/android/fileexplorer/service/DirParseService$2;-><init>(Lcom/android/fileexplorer/service/DirParseService;Lcom/android/fileexplorer/service/IQueryCallBack;I)V

    invoke-interface {v0, p1, v1}, Lcom/miui/optimizecenter/dirinfo/IDirInfoQueryManager;->queryDirInfo(Ljava/util/List;Lcom/miui/optimizecenter/dirinfo/IDirInfoQueryCallBack;)V

    goto :goto_1d

    :cond_18
    if-eqz p3, :cond_1d

    invoke-interface {p3}, Lcom/android/fileexplorer/service/IQueryCallBack;->onQueryFinish()V

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

    iget-object v0, p0, Lcom/android/fileexplorer/service/DirParseService;->mLieBao:Lcom/android/fileexplorer/service/LieBaoSDK;

    invoke-virtual {v0}, Lcom/android/fileexplorer/service/LieBaoSDK;->getService()Lcom/cleanmaster/sdk/IKSCleaner;

    move-result-object v0

    if-eqz v0, :cond_18

    sget-object v1, Lcom/android/fileexplorer/service/DirParseService;->TAG:Ljava/lang/String;

    const-string v2, "start liebao dir parse"

    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/fileexplorer/service/DirParseService$3;

    invoke-direct {v1, p0, p3, p2}, Lcom/android/fileexplorer/service/DirParseService$3;-><init>(Lcom/android/fileexplorer/service/DirParseService;Lcom/android/fileexplorer/service/IQueryCallBack;I)V

    invoke-interface {v0, p1, v1}, Lcom/cleanmaster/sdk/IKSCleaner;->queryDirInfo(Ljava/util/List;Lcom/cleanmaster/sdk/IQueryInfoCallback;)V

    goto :goto_24

    :cond_18
    if-eqz p3, :cond_1d

    invoke-interface {p3}, Lcom/android/fileexplorer/service/IQueryCallBack;->onQueryFinish()V

    :cond_1d
    sget-object p1, Lcom/android/fileexplorer/service/DirParseService;->TAG:Ljava/lang/String;

    const-string p2, "liebao sdk failed."

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_24
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    sget-object p1, Lcom/android/fileexplorer/service/DirParseService;->TAG:Ljava/lang/String;

    const-string v0, "service connected!"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/service/DirParseService;->mBinder:Lcom/android/fileexplorer/service/IDirParse$Stub;

    return-object p1
.end method

.method public onCreate()V
    .registers 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-direct {p0}, Lcom/android/fileexplorer/service/DirParseService;->isNewDirSdk()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/fileexplorer/service/DirParseService;->mIsNewSDK:Z

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/android/fileexplorer/service/DirParseService;->TAG:Ljava/lang/String;

    const-string v1, "using clean master sdk"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/fileexplorer/service/CleanMasterSDK;

    invoke-direct {v0}, Lcom/android/fileexplorer/service/CleanMasterSDK;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/service/DirParseService;->mCleanMaster:Lcom/android/fileexplorer/service/CleanMasterSDK;

    invoke-virtual {v0}, Lcom/android/fileexplorer/service/CleanMasterSDK;->init()V

    goto :goto_2e

    :cond_1d
    sget-object v0, Lcom/android/fileexplorer/service/DirParseService;->TAG:Ljava/lang/String;

    const-string v1, "using liebao sdk"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/fileexplorer/service/LieBaoSDK;

    invoke-direct {v0}, Lcom/android/fileexplorer/service/LieBaoSDK;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/service/DirParseService;->mLieBao:Lcom/android/fileexplorer/service/LieBaoSDK;

    invoke-virtual {v0}, Lcom/android/fileexplorer/service/LieBaoSDK;->init()V

    :goto_2e
    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/android/fileexplorer/service/DirParseService;->mLieBao:Lcom/android/fileexplorer/service/LieBaoSDK;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/fileexplorer/service/LieBaoSDK;->close()V

    :cond_a
    iget-object v0, p0, Lcom/android/fileexplorer/service/DirParseService;->mCleanMaster:Lcom/android/fileexplorer/service/CleanMasterSDK;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/fileexplorer/service/CleanMasterSDK;->close()V

    :cond_11
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 4

    sget-object v0, Lcom/android/fileexplorer/service/DirParseService;->TAG:Ljava/lang/String;

    const-string v1, "service disconnected!"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
