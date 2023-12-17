.class public Lcom/android/fileexplorer/service/DirParseSDK;
.super Ljava/lang/Object;
.source "DirParseSDK.java"


# static fields
.field private static volatile mInstance:Lcom/android/fileexplorer/service/DirParseSDK;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBinded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mService:Lcom/android/fileexplorer/service/IDirParse;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "DirParseSDK"

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/service/DirParseSDK;->TAG:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 14
    iput-object v0, p0, Lcom/android/fileexplorer/service/DirParseSDK;->mBinded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    new-instance v0, Lcom/android/fileexplorer/service/DirParseSDK$1;

    .line 18
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/service/DirParseSDK$1;-><init>(Lcom/android/fileexplorer/service/DirParseSDK;)V

    .line 21
    iput-object v0, p0, Lcom/android/fileexplorer/service/DirParseSDK;->mConnection:Landroid/content/ServiceConnection;

    .line 23
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/service/DirParseSDK;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/service/DirParseSDK;->TAG:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/fileexplorer/service/DirParseSDK;Lcom/android/fileexplorer/service/IDirParse;)Lcom/android/fileexplorer/service/IDirParse;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/service/DirParseSDK;->mService:Lcom/android/fileexplorer/service/IDirParse;

    .line 3
    return-object p1
.end method

.method public static getInstance()Lcom/android/fileexplorer/service/DirParseSDK;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/service/DirParseSDK;->mInstance:Lcom/android/fileexplorer/service/DirParseSDK;

    .line 3
    if-nez v0, :cond_17

    .line 5
    const-class v0, Lcom/android/fileexplorer/service/DirParseSDK;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    sget-object v1, Lcom/android/fileexplorer/service/DirParseSDK;->mInstance:Lcom/android/fileexplorer/service/DirParseSDK;

    .line 10
    if-nez v1, :cond_12

    .line 12
    new-instance v1, Lcom/android/fileexplorer/service/DirParseSDK;

    .line 14
    invoke-direct {v1}, Lcom/android/fileexplorer/service/DirParseSDK;-><init>()V

    .line 17
    sput-object v1, Lcom/android/fileexplorer/service/DirParseSDK;->mInstance:Lcom/android/fileexplorer/service/DirParseSDK;

    .line 19
    :cond_12
    monitor-exit v0

    .line 20
    goto :goto_17

    .line 21
    :catchall_14
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    .line 23
    throw v1

    .line 24
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/fileexplorer/service/DirParseSDK;->mInstance:Lcom/android/fileexplorer/service/DirParseSDK;

    .line 26
    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/service/DirParseSDK;->mBinded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_17

    .line 9
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/android/fileexplorer/service/DirParseSDK;->mConnection:Landroid/content/ServiceConnection;

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 18
    iget-object v0, p0, Lcom/android/fileexplorer/service/DirParseSDK;->mBinded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 24
    :cond_17
    return-void
.end method

.method public getService()Lcom/android/fileexplorer/service/IDirParse;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/service/DirParseSDK;->mService:Lcom/android/fileexplorer/service/IDirParse;

    .line 3
    return-object v0
.end method

.method public init()V
    .registers 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "com.android.fileexplorer.DirParseService"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    sget-boolean v1, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    .line 10
    if-eqz v1, :cond_e

    .line 12
    const-string v1, "com.mi.android.globalFileexplorer"

    .line 14
    goto :goto_10

    .line 15
    :cond_e
    const-string v1, "com.android.fileexplorer"

    .line 17
    :goto_10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    iget-object v1, p0, Lcom/android/fileexplorer/service/DirParseSDK;->mBinded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_31

    .line 28
    iget-object v1, p0, Lcom/android/fileexplorer/service/DirParseSDK;->mConnection:Landroid/content/ServiceConnection;

    .line 30
    if-eqz v1, :cond_31

    .line 32
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 35
    move-result-object v1

    .line 36
    iget-object v2, p0, Lcom/android/fileexplorer/service/DirParseSDK;->mConnection:Landroid/content/ServiceConnection;

    .line 38
    const/4 v3, 0x1

    .line 39
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_31

    .line 45
    iget-object v0, p0, Lcom/android/fileexplorer/service/DirParseSDK;->mBinded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 50
    :cond_31
    return-void
.end method
