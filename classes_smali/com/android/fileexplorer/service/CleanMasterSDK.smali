.class Lcom/android/fileexplorer/service/CleanMasterSDK;
.super Ljava/lang/Object;
.source "CleanMasterSDK.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBinded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mQueryManager:Lcom/miui/optimizecenter/dirinfo/IDirInfoQueryManager;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "CleanMasterSDK"

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/service/CleanMasterSDK;->TAG:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 14
    iput-object v0, p0, Lcom/android/fileexplorer/service/CleanMasterSDK;->mBinded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    new-instance v0, Lcom/android/fileexplorer/service/CleanMasterSDK$1;

    .line 18
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/service/CleanMasterSDK$1;-><init>(Lcom/android/fileexplorer/service/CleanMasterSDK;)V

    .line 21
    iput-object v0, p0, Lcom/android/fileexplorer/service/CleanMasterSDK;->mConnection:Landroid/content/ServiceConnection;

    .line 23
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/service/CleanMasterSDK;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/service/CleanMasterSDK;->TAG:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/fileexplorer/service/CleanMasterSDK;Lcom/miui/optimizecenter/dirinfo/IDirInfoQueryManager;)Lcom/miui/optimizecenter/dirinfo/IDirInfoQueryManager;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/service/CleanMasterSDK;->mQueryManager:Lcom/miui/optimizecenter/dirinfo/IDirInfoQueryManager;

    .line 3
    return-object p1
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/service/CleanMasterSDK;->mBinded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1b

    .line 9
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/android/fileexplorer/service/CleanMasterSDK;->mConnection:Landroid/content/ServiceConnection;

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 22
    iget-object v0, p0, Lcom/android/fileexplorer/service/CleanMasterSDK;->mBinded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 28
    :cond_1b
    return-void
.end method

.method public getManager()Lcom/miui/optimizecenter/dirinfo/IDirInfoQueryManager;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/service/CleanMasterSDK;->mQueryManager:Lcom/miui/optimizecenter/dirinfo/IDirInfoQueryManager;

    .line 3
    return-object v0
.end method

.method public init()V
    .registers 5

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "com.miui.cleanmaster.DIR_INFO_QUERY_SERVICE"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v1, "com.miui.cleanmaster"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    iget-object v1, p0, Lcom/android/fileexplorer/service/CleanMasterSDK;->mBinded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_32

    .line 21
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p0, Lcom/android/fileexplorer/service/CleanMasterSDK;->mConnection:Landroid/content/ServiceConnection;

    .line 31
    const/4 v3, 0x1

    .line 32
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_32

    .line 38
    iget-object v0, p0, Lcom/android/fileexplorer/service/CleanMasterSDK;->mBinded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    .line 43
    goto :goto_32

    .line 44
    :catch_2b
    iget-object v0, p0, Lcom/android/fileexplorer/service/CleanMasterSDK;->TAG:Ljava/lang/String;

    .line 46
    const-string v1, "new dir parse sdk init failed."

    .line 48
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_32
    :goto_32
    return-void
.end method
