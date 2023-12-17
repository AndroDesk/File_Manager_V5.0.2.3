.class Lcom/android/fileexplorer/service/LieBaoSDK;
.super Ljava/lang/Object;
.source "LieBaoSDK.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBinded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mService:Lcom/cleanmaster/sdk/IKSCleaner;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "LieBaoSDK"

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/service/LieBaoSDK;->TAG:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 14
    iput-object v0, p0, Lcom/android/fileexplorer/service/LieBaoSDK;->mBinded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    new-instance v0, Lcom/android/fileexplorer/service/LieBaoSDK$1;

    .line 18
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/service/LieBaoSDK$1;-><init>(Lcom/android/fileexplorer/service/LieBaoSDK;)V

    .line 21
    iput-object v0, p0, Lcom/android/fileexplorer/service/LieBaoSDK;->mConnection:Landroid/content/ServiceConnection;

    .line 23
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/service/LieBaoSDK;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/service/LieBaoSDK;->TAG:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/service/LieBaoSDK;)Lcom/cleanmaster/sdk/IKSCleaner;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/service/LieBaoSDK;->mService:Lcom/cleanmaster/sdk/IKSCleaner;

    .line 3
    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/fileexplorer/service/LieBaoSDK;Lcom/cleanmaster/sdk/IKSCleaner;)Lcom/cleanmaster/sdk/IKSCleaner;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/service/LieBaoSDK;->mService:Lcom/cleanmaster/sdk/IKSCleaner;

    .line 3
    return-object p1
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/service/LieBaoSDK;->mBinded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_15

    .line 9
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/android/fileexplorer/service/LieBaoSDK;->mConnection:Landroid/content/ServiceConnection;

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 22
    :cond_15
    return-void
.end method

.method public getService()Lcom/cleanmaster/sdk/IKSCleaner;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/service/LieBaoSDK;->mService:Lcom/cleanmaster/sdk/IKSCleaner;

    .line 3
    return-object v0
.end method

.method public init()V
    .registers 5

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "com.cleanmaster.action.sdk.CleanService"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v1, "com.cleanmaster.sdk"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/android/fileexplorer/service/LieBaoSDK;->mConnection:Landroid/content/ServiceConnection;

    .line 23
    const/4 v3, 0x1

    .line 24
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2a

    .line 30
    iget-object v0, p0, Lcom/android/fileexplorer/service/LieBaoSDK;->mBinded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    .line 35
    goto :goto_2a

    .line 36
    :catch_23
    iget-object v0, p0, Lcom/android/fileexplorer/service/LieBaoSDK;->TAG:Ljava/lang/String;

    .line 38
    const-string v1, "liebao sdk failed."

    .line 40
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_2a
    :goto_2a
    return-void
.end method
