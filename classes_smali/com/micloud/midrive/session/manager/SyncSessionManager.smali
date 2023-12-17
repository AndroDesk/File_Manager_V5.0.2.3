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
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Lcom/micloud/midrive/session/manager/SessionManager;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/micloud/midrive/session/manager/SyncSessionManager$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/session/manager/SyncSessionManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/micloud/midrive/session/manager/SyncSessionManager;
    .registers 1

    .line 1
    sget-object v0, Lcom/micloud/midrive/session/manager/SyncSessionManager$SingletonHolder;->INSTANCE:Lcom/micloud/midrive/session/manager/SyncSessionManager;

    .line 3
    return-object v0
.end method

.method private startNewSession(Landroid/content/Context;Lcom/micloud/midrive/session/params/SyncSessionParams;)V
    .registers 4

    .line 1
    iget-boolean v0, p2, Lcom/micloud/midrive/session/params/SyncSessionParams;->isBackground:Z

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-static {p1}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->startAutoBackupJob(Landroid/content/Context;)V

    .line 8
    goto :goto_b

    .line 9
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/micloud/midrive/session/manager/SessionManager;->start(Landroid/content/Context;Lcom/micloud/midrive/session/params/SessionParams;)Lcom/micloud/midrive/session/BaseSession;

    .line 12
    :goto_b
    return-void
.end method


# virtual methods
.method public bridge synthetic onCreateSession(Lcom/micloud/midrive/session/params/SessionParams;Lcom/micloud/midrive/session/BaseSession$SessionListener;)Lcom/micloud/midrive/session/BaseSession;
    .registers 3

    .line 1
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

    .line 2
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lcom/micloud/midrive/session/SyncSession;

    invoke-direct {v0, p1, p2}, Lcom/micloud/midrive/session/SyncSession;-><init>(Lcom/micloud/midrive/session/params/SessionParams;Lcom/micloud/midrive/session/BaseSession$SessionListener;)V

    return-object v0
.end method

.method public bridge synthetic onCreateSessionParams(Ljava/lang/String;)Lcom/micloud/midrive/session/params/SessionParams;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/micloud/midrive/session/manager/SyncSessionManager;->onCreateSessionParams(Ljava/lang/String;)Lcom/micloud/midrive/session/params/SyncSessionParams;

    move-result-object p1

    return-object p1
.end method

.method public onCreateSessionParams(Ljava/lang/String;)Lcom/micloud/midrive/session/params/SyncSessionParams;
    .registers 3

    .line 2
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

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    const-string v2, "Sync Session complete."

    .line 7
    aput-object v2, v0, v1

    .line 9
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 12
    check-cast p2, Lcom/micloud/midrive/session/SyncSession;

    .line 14
    invoke-virtual {p2}, Lcom/micloud/midrive/session/SyncSession;->getPendingEvent()Ljava/util/Set;

    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v0

    .line 22
    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_2c

    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/micloud/midrive/session/SyncSession$SyncEvent;

    .line 34
    instance-of v1, v1, Lcom/micloud/midrive/session/SyncSession$SyncEvent;

    .line 36
    if-eqz v1, :cond_15

    .line 38
    invoke-virtual {p2}, Lcom/micloud/midrive/session/SyncSession;->getSyncParams()Lcom/micloud/midrive/session/params/SyncSessionParams;

    .line 41
    move-result-object p2

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/session/manager/SyncSessionManager;->startNewSession(Landroid/content/Context;Lcom/micloud/midrive/session/params/SyncSessionParams;)V

    .line 45
    :cond_2c
    return-void
.end method
