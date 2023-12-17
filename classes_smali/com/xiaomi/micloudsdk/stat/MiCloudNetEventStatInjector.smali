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

.field public static final RESULT_TYPE_FAILED:I

.field public static final RESULT_TYPE_SUCCESS:I

.field public static final RESULT_TYPE_TIMEOUT:I


# instance fields
.field private mIMiCloudDownloadFileNetEventStatCallback:Lcom/xiaomi/micloudsdk/stat/IMiCloudDownloadFileNetEventStatCallback;

.field private mIMiCloudStatCallback:Lcom/xiaomi/micloudsdk/stat/IMiCloudNetEventStatCallback;

.field private mIsDownloadCallbackInitialized:Z

.field private mIsInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->RESULT_TYPE_FAILED:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->RESULT_TYPE_SUCCESS:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->RESULT_TYPE_TIMEOUT:I

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->mIsInitialized:Z

    iput-boolean v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->mIsDownloadCallbackInitialized:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;
    .registers 1

    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector$MiCloudNetEventStatInjectorHolder;->access$000()Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addAddDownloadFileFailedEvent(Lcom/xiaomi/micloudsdk/stat/DownloadFileFailedStatParam;)V
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->mIMiCloudDownloadFileNetEventStatCallback:Lcom/xiaomi/micloudsdk/stat/IMiCloudDownloadFileNetEventStatCallback;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/xiaomi/micloudsdk/stat/IMiCloudDownloadFileNetEventStatCallback;->onAddDownloadFileFailedEvent(Lcom/xiaomi/micloudsdk/stat/DownloadFileFailedStatParam;)V

    :cond_7
    return-void
.end method

.method public addGetDownloadFileUrlsFailedEvent(Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam;)V
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->mIMiCloudDownloadFileNetEventStatCallback:Lcom/xiaomi/micloudsdk/stat/IMiCloudDownloadFileNetEventStatCallback;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/xiaomi/micloudsdk/stat/IMiCloudDownloadFileNetEventStatCallback;->onAddGetDownloadFileUrlsFailedEvent(Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam;)V

    :cond_7
    return-void
.end method

.method public addNetFailedEvent(Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;)V
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->mIMiCloudStatCallback:Lcom/xiaomi/micloudsdk/stat/IMiCloudNetEventStatCallback;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/xiaomi/micloudsdk/stat/IMiCloudNetEventStatCallback;->onAddNetFailedEvent(Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;)V

    :cond_7
    return-void
.end method

.method public addNetSuccessEvent(Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;)V
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->mIMiCloudStatCallback:Lcom/xiaomi/micloudsdk/stat/IMiCloudNetEventStatCallback;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/xiaomi/micloudsdk/stat/IMiCloudNetEventStatCallback;->onAddNetSuccessEvent(Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;)V

    :cond_7
    return-void
.end method

.method public init(Lcom/xiaomi/micloudsdk/stat/IMiCloudNetEventStatCallback;)V
    .registers 4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->mIsInitialized:Z

    if-nez v0, :cond_1b

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->mIMiCloudStatCallback:Lcom/xiaomi/micloudsdk/stat/IMiCloudNetEventStatCallback;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->mIsInitialized:Z

    :cond_1b
    return-void

    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "init() must be invoked in main thread"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initDownloadFile(Lcom/xiaomi/micloudsdk/stat/IMiCloudDownloadFileNetEventStatCallback;)V
    .registers 4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->mIsDownloadCallbackInitialized:Z

    if-nez v0, :cond_1b

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->mIMiCloudDownloadFileNetEventStatCallback:Lcom/xiaomi/micloudsdk/stat/IMiCloudDownloadFileNetEventStatCallback;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->mIsDownloadCallbackInitialized:Z

    :cond_1b
    return-void

    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "initDownloadFile() must be invoked in main thread"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isGetDownloadFileRequestUrl(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->mIMiCloudDownloadFileNetEventStatCallback:Lcom/xiaomi/micloudsdk/stat/IMiCloudDownloadFileNetEventStatCallback;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/micloudsdk/stat/IMiCloudDownloadFileNetEventStatCallback;->isGetDownloadFileRequestUrl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method
