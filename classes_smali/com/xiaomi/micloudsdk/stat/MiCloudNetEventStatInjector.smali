.class public Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;
.super Ljava/lang/Object;
.source "MiCloudNetEventStatInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector$MiCloudNetEventStatInjectorHolder;
    }
.end annotation


# static fields
.field public static final ACTION_RECEIVE_NET_STAT_PARAM:Ljava/lang/String; = "com.miui.cloudservice.action.RECEIVE_NET_STAT_PARAM"

.field public static final KEY_NET_STAT_PARAM:Ljava/lang/String; = "net_stat_param"

.field public static final PKG_NET_STAT_RECEIVER:Ljava/lang/String; = "com.miui.cloudservice"

.field public static final RESULT_TYPE_FAILED:I = 0x1

.field public static final RESULT_TYPE_SUCCESS:I = 0x0

.field public static final RESULT_TYPE_TIMEOUT:I = 0x2


# instance fields
.field private mIMiCloudDownloadFileNetEventStatCallback:Lcom/xiaomi/micloudsdk/stat/IMiCloudDownloadFileNetEventStatCallback;

.field private mIMiCloudStatCallback:Lcom/xiaomi/micloudsdk/stat/IMiCloudNetEventStatCallback;

.field private mIsDownloadCallbackInitialized:Z

.field private mIsInitialized:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->mIsInitialized:Z

    .line 4
    iput-boolean v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->mIsDownloadCallbackInitialized:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;
    .registers 1

    .line 1
    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector$MiCloudNetEventStatInjectorHolder;->access$000()Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public addAddDownloadFileFailedEvent(Lcom/xiaomi/micloudsdk/stat/DownloadFileFailedStatParam;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->mIMiCloudDownloadFileNetEventStatCallback:Lcom/xiaomi/micloudsdk/stat/IMiCloudDownloadFileNetEventStatCallback;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Lcom/xiaomi/micloudsdk/stat/IMiCloudDownloadFileNetEventStatCallback;->onAddDownloadFileFailedEvent(Lcom/xiaomi/micloudsdk/stat/DownloadFileFailedStatParam;)V

    .line 8
    :cond_7
    return-void
.end method

.method public addGetDownloadFileUrlsFailedEvent(Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->mIMiCloudDownloadFileNetEventStatCallback:Lcom/xiaomi/micloudsdk/stat/IMiCloudDownloadFileNetEventStatCallback;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Lcom/xiaomi/micloudsdk/stat/IMiCloudDownloadFileNetEventStatCallback;->onAddGetDownloadFileUrlsFailedEvent(Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam;)V

    .line 8
    :cond_7
    return-void
.end method

.method public addNetFailedEvent(Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->mIMiCloudStatCallback:Lcom/xiaomi/micloudsdk/stat/IMiCloudNetEventStatCallback;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Lcom/xiaomi/micloudsdk/stat/IMiCloudNetEventStatCallback;->onAddNetFailedEvent(Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;)V

    .line 8
    :cond_7
    return-void
.end method

.method public addNetSuccessEvent(Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->mIMiCloudStatCallback:Lcom/xiaomi/micloudsdk/stat/IMiCloudNetEventStatCallback;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Lcom/xiaomi/micloudsdk/stat/IMiCloudNetEventStatCallback;->onAddNetSuccessEvent(Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;)V

    .line 8
    :cond_7
    return-void
.end method

.method public init(Lcom/xiaomi/micloudsdk/stat/IMiCloudNetEventStatCallback;)V
    .registers 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1c

    .line 19
    iget-boolean v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->mIsInitialized:Z

    .line 21
    if-nez v0, :cond_1b

    .line 23
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->mIMiCloudStatCallback:Lcom/xiaomi/micloudsdk/stat/IMiCloudNetEventStatCallback;

    .line 25
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->mIsInitialized:Z

    .line 28
    :cond_1b
    return-void

    .line 29
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    const-string v0, "init() must be invoked in main thread"

    .line 33
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p1
.end method

.method public initDownloadFile(Lcom/xiaomi/micloudsdk/stat/IMiCloudDownloadFileNetEventStatCallback;)V
    .registers 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1c

    .line 19
    iget-boolean v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->mIsDownloadCallbackInitialized:Z

    .line 21
    if-nez v0, :cond_1b

    .line 23
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->mIMiCloudDownloadFileNetEventStatCallback:Lcom/xiaomi/micloudsdk/stat/IMiCloudDownloadFileNetEventStatCallback;

    .line 25
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->mIsDownloadCallbackInitialized:Z

    .line 28
    :cond_1b
    return-void

    .line 29
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    const-string v0, "initDownloadFile() must be invoked in main thread"

    .line 33
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p1
.end method

.method public isGetDownloadFileRequestUrl(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->mIMiCloudDownloadFileNetEventStatCallback:Lcom/xiaomi/micloudsdk/stat/IMiCloudDownloadFileNetEventStatCallback;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-interface {v0, p1, p2}, Lcom/xiaomi/micloudsdk/stat/IMiCloudDownloadFileNetEventStatCallback;->isGetDownloadFileRequestUrl(Ljava/lang/String;Ljava/lang/String;)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_c

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    :goto_d
    return p1
.end method
