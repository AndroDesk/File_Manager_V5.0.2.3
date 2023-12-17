.class public Lcom/micloud/midrive/session/manager/UploadSessionManager;
.super Lcom/micloud/midrive/session/manager/SessionManager;
.source "UploadSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/session/manager/UploadSessionManager$SingletonHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/micloud/midrive/session/manager/SessionManager<",
        "Lcom/micloud/midrive/session/params/UploadSessionParams;",
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

.method public synthetic constructor <init>(Lcom/micloud/midrive/session/manager/UploadSessionManager$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/session/manager/UploadSessionManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/micloud/midrive/session/manager/UploadSessionManager;
    .registers 1

    .line 1
    sget-object v0, Lcom/micloud/midrive/session/manager/UploadSessionManager$SingletonHolder;->INSTANCE:Lcom/micloud/midrive/session/manager/UploadSessionManager;

    .line 3
    return-object v0
.end method

.method private startNewSession(Landroid/content/Context;Lcom/micloud/midrive/session/params/UploadSessionParams;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/micloud/midrive/session/manager/SessionManager;->start(Landroid/content/Context;Lcom/micloud/midrive/session/params/SessionParams;)Lcom/micloud/midrive/session/BaseSession;

    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic onCreateSession(Lcom/micloud/midrive/session/params/SessionParams;Lcom/micloud/midrive/session/BaseSession$SessionListener;)Lcom/micloud/midrive/session/BaseSession;
    .registers 3

    .line 1
    check-cast p1, Lcom/micloud/midrive/session/params/UploadSessionParams;

    invoke-virtual {p0, p1, p2}, Lcom/micloud/midrive/session/manager/UploadSessionManager;->onCreateSession(Lcom/micloud/midrive/session/params/UploadSessionParams;Lcom/micloud/midrive/session/BaseSession$SessionListener;)Lcom/micloud/midrive/session/BaseSession;

    move-result-object p1

    return-object p1
.end method

.method public onCreateSession(Lcom/micloud/midrive/session/params/UploadSessionParams;Lcom/micloud/midrive/session/BaseSession$SessionListener;)Lcom/micloud/midrive/session/BaseSession;
    .registers 4

    .line 2
    new-instance v0, Lcom/micloud/midrive/session/UploadSession;

    invoke-direct {v0, p1, p2}, Lcom/micloud/midrive/session/UploadSession;-><init>(Lcom/micloud/midrive/session/params/SessionParams;Lcom/micloud/midrive/session/BaseSession$SessionListener;)V

    return-object v0
.end method

.method public bridge synthetic onCreateSessionParams(Ljava/lang/String;)Lcom/micloud/midrive/session/params/SessionParams;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/micloud/midrive/session/manager/UploadSessionManager;->onCreateSessionParams(Ljava/lang/String;)Lcom/micloud/midrive/session/params/UploadSessionParams;

    move-result-object p1

    return-object p1
.end method

.method public onCreateSessionParams(Ljava/lang/String;)Lcom/micloud/midrive/session/params/UploadSessionParams;
    .registers 3

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/micloud/midrive/session/params/UploadSessionParams$Factory;->create(Lorg/json/JSONObject;)Lcom/micloud/midrive/session/params/UploadSessionParams;

    move-result-object p1

    return-object p1
.end method

.method public onGetSessionStorageKey()Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public onSessionCompleted(Landroid/content/Context;Lcom/micloud/midrive/session/BaseSession;)V
    .registers 5

    .line 1
    check-cast p2, Lcom/micloud/midrive/session/UploadSession;

    .line 3
    invoke-virtual {p2}, Lcom/micloud/midrive/session/TransferSession;->getPendingEvent()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_23

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/micloud/midrive/session/TransferSession$TransferEvent;

    .line 23
    instance-of v1, v1, Lcom/micloud/midrive/session/TransferSession$NewTransferTaskEvent;

    .line 25
    if-eqz v1, :cond_a

    .line 27
    invoke-virtual {p2}, Lcom/micloud/midrive/session/TransferSession;->getTransferParams()Lcom/micloud/midrive/session/params/TransferParams;

    .line 30
    move-result-object p2

    .line 31
    check-cast p2, Lcom/micloud/midrive/session/params/UploadSessionParams;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/session/manager/UploadSessionManager;->startNewSession(Landroid/content/Context;Lcom/micloud/midrive/session/params/UploadSessionParams;)V

    .line 36
    :cond_23
    return-void
.end method
