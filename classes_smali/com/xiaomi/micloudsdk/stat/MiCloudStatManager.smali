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
.method private constructor <init>()V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->mEnable:Z

    .line 4
    iput-boolean v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->mIsInitialized:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;
    .registers 1

    .line 1
    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager$Holder;->access$000()Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public addHttpEvent(Ljava/lang/String;JJILjava/lang/String;)V
    .registers 18

    .line 1
    move-object v0, p0

    .line 2
    iget-boolean v1, v0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->mEnable:Z

    .line 4
    if-eqz v1, :cond_17

    .line 6
    iget-boolean v1, v0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->mIsInitialized:Z

    .line 8
    if-eqz v1, :cond_17

    .line 10
    iget-object v2, v0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->mCldStatCallback:Lcom/xiaomi/micloudsdk/stat/IMiCloudStatCallback;

    .line 12
    if-eqz v2, :cond_17

    .line 14
    move-object v3, p1

    .line 15
    move-wide v4, p2

    .line 16
    move-wide v6, p4

    .line 17
    move/from16 v8, p6

    .line 19
    move-object/from16 v9, p7

    .line 21
    invoke-interface/range {v2 .. v9}, Lcom/xiaomi/micloudsdk/stat/IMiCloudStatCallback;->onAddHttpEvent(Ljava/lang/String;JJILjava/lang/String;)V

    .line 24
    :cond_17
    return-void
.end method

.method public getEnable()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->mEnable:Z

    .line 3
    return v0
.end method

.method public init(Lcom/xiaomi/micloudsdk/stat/IMiCloudStatCallback;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->mCldStatCallback:Lcom/xiaomi/micloudsdk/stat/IMiCloudStatCallback;

    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->mEnable:Z

    .line 6
    invoke-interface {p1}, Lcom/xiaomi/micloudsdk/stat/IMiCloudStatCallback;->onInitialize()V

    .line 9
    iput-boolean v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->mIsInitialized:Z

    .line 11
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->mCldStatCallback:Lcom/xiaomi/micloudsdk/stat/IMiCloudStatCallback;

    .line 13
    invoke-interface {p1}, Lcom/xiaomi/micloudsdk/stat/IMiCloudStatCallback;->onSetUploadPolicy()V

    .line 16
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->mCldStatCallback:Lcom/xiaomi/micloudsdk/stat/IMiCloudStatCallback;

    .line 18
    invoke-interface {p1}, Lcom/xiaomi/micloudsdk/stat/IMiCloudStatCallback;->onSetEventFilter()V

    .line 21
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->mCldStatCallback:Lcom/xiaomi/micloudsdk/stat/IMiCloudStatCallback;

    .line 23
    invoke-interface {p1}, Lcom/xiaomi/micloudsdk/stat/IMiCloudStatCallback;->onEnableAutoRecord()V

    .line 26
    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->mEnable:Z

    .line 3
    return-void
.end method
