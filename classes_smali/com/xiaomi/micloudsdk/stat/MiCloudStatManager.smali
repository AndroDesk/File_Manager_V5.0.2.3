.class public Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;
.super Ljava/lang/Object;
.source "MiCloudStatManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager$Holder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mCldStatCallback:Lcom/xiaomi/micloudsdk/stat/IMiCloudStatCallback;

.field private mEnable:Z

.field private mIsInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->mEnable:Z

    iput-boolean v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->mIsInitialized:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;
    .registers 1

    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager$Holder;->access$000()Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addHttpEvent(Ljava/lang/String;JJILjava/lang/String;)V
    .registers 18

    move-object v0, p0

    iget-boolean v1, v0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->mEnable:Z

    if-eqz v1, :cond_17

    iget-boolean v1, v0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->mIsInitialized:Z

    if-eqz v1, :cond_17

    iget-object v2, v0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->mCldStatCallback:Lcom/xiaomi/micloudsdk/stat/IMiCloudStatCallback;

    if-eqz v2, :cond_17

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/xiaomi/micloudsdk/stat/IMiCloudStatCallback;->onAddHttpEvent(Ljava/lang/String;JJILjava/lang/String;)V

    :cond_17
    return-void
.end method

.method public getEnable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->mEnable:Z

    return v0
.end method

.method public init(Lcom/xiaomi/micloudsdk/stat/IMiCloudStatCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->mCldStatCallback:Lcom/xiaomi/micloudsdk/stat/IMiCloudStatCallback;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->mEnable:Z

    invoke-interface {p1}, Lcom/xiaomi/micloudsdk/stat/IMiCloudStatCallback;->onInitialize()V

    iput-boolean v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->mIsInitialized:Z

    iget-object p1, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->mCldStatCallback:Lcom/xiaomi/micloudsdk/stat/IMiCloudStatCallback;

    invoke-interface {p1}, Lcom/xiaomi/micloudsdk/stat/IMiCloudStatCallback;->onSetUploadPolicy()V

    iget-object p1, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->mCldStatCallback:Lcom/xiaomi/micloudsdk/stat/IMiCloudStatCallback;

    invoke-interface {p1}, Lcom/xiaomi/micloudsdk/stat/IMiCloudStatCallback;->onSetEventFilter()V

    iget-object p1, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->mCldStatCallback:Lcom/xiaomi/micloudsdk/stat/IMiCloudStatCallback;

    invoke-interface {p1}, Lcom/xiaomi/micloudsdk/stat/IMiCloudStatCallback;->onEnableAutoRecord()V

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->mEnable:Z

    return-void
.end method
