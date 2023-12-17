.class Lcom/android/fileexplorer/service/LieBaoSDK;
.super Ljava/lang/Object;
.source "LieBaoSDK.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBinded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mService:Lcom/cleanmaster/sdk/IKSCleaner;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "LieBaoSDK"

    iput-object v0, p0, Lcom/android/fileexplorer/service/LieBaoSDK;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/fileexplorer/service/LieBaoSDK;->mBinded:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/android/fileexplorer/service/LieBaoSDK$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/service/LieBaoSDK$1;-><init>(Lcom/android/fileexplorer/service/LieBaoSDK;)V

    iput-object v0, p0, Lcom/android/fileexplorer/service/LieBaoSDK;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/service/LieBaoSDK;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/service/LieBaoSDK;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/service/LieBaoSDK;)Lcom/cleanmaster/sdk/IKSCleaner;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/service/LieBaoSDK;->mService:Lcom/cleanmaster/sdk/IKSCleaner;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/fileexplorer/service/LieBaoSDK;Lcom/cleanmaster/sdk/IKSCleaner;)Lcom/cleanmaster/sdk/IKSCleaner;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/service/LieBaoSDK;->mService:Lcom/cleanmaster/sdk/IKSCleaner;

    return-object p1
.end method


# virtual methods
.method public close()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/service/LieBaoSDK;->mBinded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/service/LieBaoSDK;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_15
    return-void
.end method

.method public getService()Lcom/cleanmaster/sdk/IKSCleaner;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/service/LieBaoSDK;->mService:Lcom/cleanmaster/sdk/IKSCleaner;

    return-object v0
.end method

.method public init()V
    .registers 5

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cleanmaster.action.sdk.CleanService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.cleanmaster.sdk"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/service/LieBaoSDK;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/fileexplorer/service/LieBaoSDK;->mBinded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    goto :goto_2a

    :catch_23
    iget-object v0, p0, Lcom/android/fileexplorer/service/LieBaoSDK;->TAG:Ljava/lang/String;

    const-string v1, "liebao sdk failed."

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    :goto_2a
    return-void
.end method
