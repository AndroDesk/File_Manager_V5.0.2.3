.class Lcom/android/fileexplorer/service/CleanMasterSDK;
.super Ljava/lang/Object;
.source "CleanMasterSDK.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBinded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mQueryManager:Lcom/miui/optimizecenter/dirinfo/IDirInfoQueryManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CleanMasterSDK"

    iput-object v0, p0, Lcom/android/fileexplorer/service/CleanMasterSDK;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/fileexplorer/service/CleanMasterSDK;->mBinded:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/android/fileexplorer/service/CleanMasterSDK$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/service/CleanMasterSDK$1;-><init>(Lcom/android/fileexplorer/service/CleanMasterSDK;)V

    iput-object v0, p0, Lcom/android/fileexplorer/service/CleanMasterSDK;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/service/CleanMasterSDK;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/service/CleanMasterSDK;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/fileexplorer/service/CleanMasterSDK;Lcom/miui/optimizecenter/dirinfo/IDirInfoQueryManager;)Lcom/miui/optimizecenter/dirinfo/IDirInfoQueryManager;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/service/CleanMasterSDK;->mQueryManager:Lcom/miui/optimizecenter/dirinfo/IDirInfoQueryManager;

    return-object p1
.end method


# virtual methods
.method public close()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/service/CleanMasterSDK;->mBinded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/service/CleanMasterSDK;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/android/fileexplorer/service/CleanMasterSDK;->mBinded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1b
    return-void
.end method

.method public getManager()Lcom/miui/optimizecenter/dirinfo/IDirInfoQueryManager;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/service/CleanMasterSDK;->mQueryManager:Lcom/miui/optimizecenter/dirinfo/IDirInfoQueryManager;

    return-object v0
.end method

.method public init()V
    .registers 5

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.cleanmaster.DIR_INFO_QUERY_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.cleanmaster"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/fileexplorer/service/CleanMasterSDK;->mBinded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_32

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/service/CleanMasterSDK;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/fileexplorer/service/CleanMasterSDK;->mBinded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    goto :goto_32

    :catch_2b
    iget-object v0, p0, Lcom/android/fileexplorer/service/CleanMasterSDK;->TAG:Ljava/lang/String;

    const-string v1, "new dir parse sdk init failed."

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    :goto_32
    return-void
.end method
