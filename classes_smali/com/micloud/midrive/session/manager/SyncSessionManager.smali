.class public Lcom/micloud/midrive/session/manager/SyncSessionManager;
.super Lcom/micloud/midrive/session/manager/SessionManager;
.source "SyncSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/session/manager/SyncSessionManager$SingletonHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/micloud/midrive/session/manager/SessionManager<",
        "Lcom/micloud/midrive/session/params/SyncSessionParams;",
        ">;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/micloud/midrive/session/manager/SessionManager;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/micloud/midrive/session/manager/SyncSessionManager$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/micloud/midrive/session/manager/SyncSessionManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/micloud/midrive/session/manager/SyncSessionManager;
    .registers 1

    sget-object v0, Lcom/micloud/midrive/session/manager/SyncSessionManager$SingletonHolder;->INSTANCE:Lcom/micloud/midrive/session/manager/SyncSessionManager;

    return-object v0
.end method

.method private startNewSession(Landroid/content/Context;Lcom/micloud/midrive/session/params/SyncSessionParams;)V
    .registers 4

    iget-boolean v0, p2, Lcom/micloud/midrive/session/params/SyncSessionParams;->isBackground:Z

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->startAutoBackupJob(Landroid/content/Context;)V

    goto :goto_b

    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/micloud/midrive/session/manager/SessionManager;->start(Landroid/content/Context;Lcom/micloud/midrive/session/params/SessionParams;)Lcom/micloud/midrive/session/BaseSession;

    :goto_b
    return-void
.end method


# virtual methods
.method public bridge synthetic onCreateSession(Lcom/micloud/midrive/session/params/SessionParams;Lcom/micloud/midrive/session/BaseSession$SessionListener;)Lcom/micloud/midrive/session/BaseSession;
    .registers 3

    check-cast p1, Lcom/micloud/midrive/session/params/SyncSessionParams;

    invoke-virtual {p0, p1, p2}, Lcom/micloud/midrive/session/manager/SyncSessionManager;->onCreateSession(Lcom/micloud/midrive/session/params/SyncSessionParams;Lcom/micloud/midrive/session/BaseSession$SessionListener;)Lcom/micloud/midrive/session/BaseSession;

    move-result-object p1

    return-object p1
.end method

.method public onCreateSession(Lcom/micloud/midrive/session/params/SyncSessionParams;Lcom/micloud/midrive/session/BaseSession$SessionListener;)Lcom/micloud/midrive/session/BaseSession;
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Create sync session."

    aput-object v2, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    new-instance v0, Lcom/micloud/midrive/session/SyncSession;

    invoke-direct {v0, p1, p2}, Lcom/micloud/midrive/session/SyncSession;-><init>(Lcom/micloud/midrive/session/params/SessionParams;Lcom/micloud/midrive/session/BaseSession$SessionListener;)V

    return-object v0
.end method

.method public bridge synthetic onCreateSessionParams(Ljava/lang/String;)Lcom/micloud/midrive/session/params/SessionParams;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/micloud/midrive/session/manager/SyncSessionManager;->onCreateSessionParams(Ljava/lang/String;)Lcom/micloud/midrive/session/params/SyncSessionParams;

    move-result-object p1

    return-object p1
.end method

.method public onCreateSessionParams(Ljava/lang/String;)Lcom/micloud/midrive/session/params/SyncSessionParams;
    .registers 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/micloud/midrive/session/params/SyncSessionParams$Factory;->create(Lorg/json/JSONObject;)Lcom/micloud/midrive/session/params/SyncSessionParams;

    move-result-object p1

    return-object p1
.end method

.method public onGetSessionStorageKey()Ljava/lang/String;
    .registers 2

    const-string v0, "sync"

    return-object v0
.end method

.method public onSessionCompleted(Landroid/content/Context;Lcom/micloud/midrive/session/BaseSession;)V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Sync Session complete."

    aput-object v2, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    check-cast p2, Lcom/micloud/midrive/session/SyncSession;

    invoke-virtual {p2}, Lcom/micloud/midrive/session/SyncSession;->getPendingEvent()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/micloud/midrive/session/SyncSession$SyncEvent;

    instance-of v1, v1, Lcom/micloud/midrive/session/SyncSession$SyncEvent;

    if-eqz v1, :cond_15

    invoke-virtual {p2}, Lcom/micloud/midrive/session/SyncSession;->getSyncParams()Lcom/micloud/midrive/session/params/SyncSessionParams;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/session/manager/SyncSessionManager;->startNewSession(Landroid/content/Context;Lcom/micloud/midrive/session/params/SyncSessionParams;)V

    :cond_2c
    return-void
.end method
