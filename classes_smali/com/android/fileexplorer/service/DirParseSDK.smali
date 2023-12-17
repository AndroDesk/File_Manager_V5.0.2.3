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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DirParseSDK"

    iput-object v0, p0, Lcom/android/fileexplorer/service/DirParseSDK;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/fileexplorer/service/DirParseSDK;->mBinded:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/android/fileexplorer/service/DirParseSDK$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/service/DirParseSDK$1;-><init>(Lcom/android/fileexplorer/service/DirParseSDK;)V

    iput-object v0, p0, Lcom/android/fileexplorer/service/DirParseSDK;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/service/DirParseSDK;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/service/DirParseSDK;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/fileexplorer/service/DirParseSDK;Lcom/android/fileexplorer/service/IDirParse;)Lcom/android/fileexplorer/service/IDirParse;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/service/DirParseSDK;->mService:Lcom/android/fileexplorer/service/IDirParse;

    return-object p1
.end method

.method public static getInstance()Lcom/android/fileexplorer/service/DirParseSDK;
    .registers 2

    sget-object v0, Lcom/android/fileexplorer/service/DirParseSDK;->mInstance:Lcom/android/fileexplorer/service/DirParseSDK;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/fileexplorer/service/DirParseSDK;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/fileexplorer/service/DirParseSDK;->mInstance:Lcom/android/fileexplorer/service/DirParseSDK;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/fileexplorer/service/DirParseSDK;

    invoke-direct {v1}, Lcom/android/fileexplorer/service/DirParseSDK;-><init>()V

    sput-object v1, Lcom/android/fileexplorer/service/DirParseSDK;->mInstance:Lcom/android/fileexplorer/service/DirParseSDK;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/android/fileexplorer/service/DirParseSDK;->mInstance:Lcom/android/fileexplorer/service/DirParseSDK;

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/service/DirParseSDK;->mBinded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/service/DirParseSDK;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/android/fileexplorer/service/DirParseSDK;->mBinded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_17
    return-void
.end method

.method public getService()Lcom/android/fileexplorer/service/IDirParse;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/service/DirParseSDK;->mService:Lcom/android/fileexplorer/service/IDirParse;

    return-object v0
.end method

.method public init()V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.fileexplorer.DirParseService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    if-eqz v1, :cond_e

    const-string v1, "com.mi.android.globalFileexplorer"

    goto :goto_10

    :cond_e
    const-string v1, "com.android.fileexplorer"

    :goto_10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/fileexplorer/service/DirParseSDK;->mBinded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_31

    iget-object v1, p0, Lcom/android/fileexplorer/service/DirParseSDK;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_31

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/service/DirParseSDK;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/fileexplorer/service/DirParseSDK;->mBinded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_31
    return-void
.end method
