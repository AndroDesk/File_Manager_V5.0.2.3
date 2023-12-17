.class public abstract Lcom/micloud/midrive/session/manager/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;,
        Lcom/micloud/midrive/session/manager/SessionManager$SessionListener;,
        Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListenerAdapter;,
        Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/micloud/midrive/session/params/SessionParams;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCurrentSession:Lcom/micloud/midrive/session/BaseSession;

.field private mInit:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private final mSessionManagerListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionStorage:Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/micloud/midrive/session/manager/SessionManager<",
            "TT;>.SessionStorage;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    iput-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mMainHandler:Landroid/os/Handler;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mSessionManagerListenerList:Ljava/util/List;

    .line 22
    new-instance v0, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;

    .line 24
    invoke-direct {v0, p0}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;-><init>(Lcom/micloud/midrive/session/manager/SessionManager;)V

    .line 27
    iput-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mSessionStorage:Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;

    .line 29
    return-void
.end method

.method public static synthetic access$000(Lcom/micloud/midrive/session/manager/SessionManager;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/session/manager/SessionManager;->postSessionStatusChanged()V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/micloud/midrive/session/manager/SessionManager;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/session/manager/SessionManager;->postSessionStageProgressChanged()V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/micloud/midrive/session/manager/SessionManager;Landroid/content/Context;Lcom/micloud/midrive/session/BaseSession;Lcom/micloud/midrive/session/params/SessionParams;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/micloud/midrive/session/manager/SessionManager;->handleSessionCompleted(Landroid/content/Context;Lcom/micloud/midrive/session/BaseSession;Lcom/micloud/midrive/session/params/SessionParams;)V

    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/micloud/midrive/session/manager/SessionManager;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mSessionManagerListenerList:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method private checkRunInMainThread()V
    .registers 2

    .line 1
    const-string v0, "CloudBackupManager must be called in main thread"

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkRunInMainThread(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method private handleSessionCompleted(Landroid/content/Context;Lcom/micloud/midrive/session/BaseSession;Lcom/micloud/midrive/session/params/SessionParams;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mCurrentSession:Lcom/micloud/midrive/session/BaseSession;

    .line 3
    if-ne v0, p2, :cond_16

    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-virtual {p3, p2}, Lcom/micloud/midrive/session/params/SessionParams;->setExtrasHandler(Lcom/micloud/midrive/session/params/SessionExtrasHandler;)V

    .line 9
    iget-object p3, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mSessionStorage:Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;

    .line 11
    invoke-virtual {p3, p1}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->clearSessionParams(Landroid/content/Context;)V

    .line 14
    iput-object p2, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mCurrentSession:Lcom/micloud/midrive/session/BaseSession;

    .line 16
    invoke-direct {p0}, Lcom/micloud/midrive/session/manager/SessionManager;->postSessionChanged()V

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/micloud/midrive/session/manager/SessionManager;->postOnSessionCompleted(Landroid/content/Context;Lcom/micloud/midrive/session/BaseSession;)V

    .line 22
    return-void

    .line 23
    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    const-string p2, "session is not corrected"

    .line 27
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p1
.end method

.method private postOnSessionCompleted(Landroid/content/Context;Lcom/micloud/midrive/session/BaseSession;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mMainHandler:Landroid/os/Handler;

    .line 3
    new-instance v1, Lcom/micloud/midrive/session/manager/SessionManager$4;

    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/micloud/midrive/session/manager/SessionManager$4;-><init>(Lcom/micloud/midrive/session/manager/SessionManager;Landroid/content/Context;Lcom/micloud/midrive/session/BaseSession;)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
.end method

.method private postSessionChanged()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mMainHandler:Landroid/os/Handler;

    .line 3
    new-instance v1, Lcom/micloud/midrive/session/manager/SessionManager$3;

    .line 5
    invoke-direct {v1, p0}, Lcom/micloud/midrive/session/manager/SessionManager$3;-><init>(Lcom/micloud/midrive/session/manager/SessionManager;)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
.end method

.method private postSessionStageProgressChanged()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mMainHandler:Landroid/os/Handler;

    .line 3
    new-instance v1, Lcom/micloud/midrive/session/manager/SessionManager$2;

    .line 5
    invoke-direct {v1, p0}, Lcom/micloud/midrive/session/manager/SessionManager$2;-><init>(Lcom/micloud/midrive/session/manager/SessionManager;)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
.end method

.method private postSessionStatusChanged()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mMainHandler:Landroid/os/Handler;

    .line 3
    new-instance v1, Lcom/micloud/midrive/session/manager/SessionManager$1;

    .line 5
    invoke-direct {v1, p0}, Lcom/micloud/midrive/session/manager/SessionManager$1;-><init>(Lcom/micloud/midrive/session/manager/SessionManager;)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
.end method

.method private resumeSessionIfExistOnInit(Landroid/content/Context;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mSessionStorage:Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;

    .line 3
    invoke-virtual {v0, p1}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->createSessionParamsFromStorage(Landroid/content/Context;)Lcom/micloud/midrive/session/params/SessionParams;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2a

    .line 9
    const/4 v1, 0x1

    .line 10
    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    const/4 v2, 0x0

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    const-string v4, "resume session params: "

    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    const-string v4, " on init"

    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 35
    aput-object v3, v1, v2

    .line 37
    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/micloud/midrive/session/manager/SessionManager;->startIfNoSessionRunning(Landroid/content/Context;Lcom/micloud/midrive/session/params/SessionParams;)Lcom/micloud/midrive/session/BaseSession;

    .line 43
    :cond_2a
    return-void
.end method

.method private startIfNoSessionRunning(Landroid/content/Context;Lcom/micloud/midrive/session/params/SessionParams;)Lcom/micloud/midrive/session/BaseSession;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)",
            "Lcom/micloud/midrive/session/BaseSession;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mCurrentSession:Lcom/micloud/midrive/session/BaseSession;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_3d

    .line 6
    iget-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mSessionStorage:Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;

    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->saveSessionParamsIfNeeded(Landroid/content/Context;Lcom/micloud/midrive/session/params/SessionParams;)V

    .line 11
    iget-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mSessionStorage:Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;

    .line 13
    invoke-virtual {p2, v0}, Lcom/micloud/midrive/session/params/SessionParams;->setExtrasHandler(Lcom/micloud/midrive/session/params/SessionExtrasHandler;)V

    .line 16
    const/4 v0, 0x1

    .line 17
    new-array v0, v0, [Ljava/lang/Object;

    .line 19
    const/4 v2, 0x0

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    const-string v4, "session start with params: "

    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v3

    .line 37
    aput-object v3, v0, v2

    .line 39
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 42
    new-instance v0, Lcom/micloud/midrive/session/manager/SessionManager$SessionListener;

    .line 44
    invoke-direct {v0, p0, v1}, Lcom/micloud/midrive/session/manager/SessionManager$SessionListener;-><init>(Lcom/micloud/midrive/session/manager/SessionManager;Lcom/micloud/midrive/session/manager/SessionManager$1;)V

    .line 47
    invoke-virtual {p0, p2, v0}, Lcom/micloud/midrive/session/manager/SessionManager;->onCreateSession(Lcom/micloud/midrive/session/params/SessionParams;Lcom/micloud/midrive/session/BaseSession$SessionListener;)Lcom/micloud/midrive/session/BaseSession;

    .line 50
    move-result-object p2

    .line 51
    iput-object p2, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mCurrentSession:Lcom/micloud/midrive/session/BaseSession;

    .line 53
    invoke-virtual {p2, p1}, Lcom/micloud/midrive/session/BaseSession;->start(Landroid/content/Context;)V

    .line 56
    invoke-direct {p0}, Lcom/micloud/midrive/session/manager/SessionManager;->postSessionChanged()V

    .line 59
    iget-object p1, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mCurrentSession:Lcom/micloud/midrive/session/BaseSession;

    .line 61
    return-object p1

    .line 62
    :cond_3d
    return-object v1
.end method


# virtual methods
.method public addListener(Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListener;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/session/manager/SessionManager;->checkRunInMainThread()V

    .line 4
    iget-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mSessionManagerListenerList:Ljava/util/List;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    return-void
.end method

.method public clearSharedPrefs(Landroid/content/Context;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mSessionStorage:Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->access$300(Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/micloud/midrive/utils/ISharedPreferences;

    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1}, Lcom/micloud/midrive/utils/ISharedPreferences;->clear()V

    .line 14
    return-void
.end method

.method public getCurrentSession()Lcom/micloud/midrive/session/BaseSession;
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/session/manager/SessionManager;->checkRunInMainThread()V

    .line 4
    iget-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mCurrentSession:Lcom/micloud/midrive/session/BaseSession;

    .line 6
    return-object v0
.end method

.method public initAndMaybeStartSession(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/session/manager/SessionManager;->checkRunInMainThread()V

    .line 4
    iget-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mSessionStorage:Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;

    .line 6
    invoke-virtual {p0}, Lcom/micloud/midrive/session/manager/SessionManager;->onGetSessionStorageKey()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->init(Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/manager/SessionManager;->resumeSessionIfExistOnInit(Landroid/content/Context;)V

    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mInit:Z

    .line 19
    return-void
.end method

.method public abstract onCreateSession(Lcom/micloud/midrive/session/params/SessionParams;Lcom/micloud/midrive/session/BaseSession$SessionListener;)Lcom/micloud/midrive/session/BaseSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/micloud/midrive/session/BaseSession$SessionListener;",
            ")",
            "Lcom/micloud/midrive/session/BaseSession;"
        }
    .end annotation
.end method

.method public abstract onCreateSessionParams(Ljava/lang/String;)Lcom/micloud/midrive/session/params/SessionParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract onGetSessionStorageKey()Ljava/lang/String;
.end method

.method public abstract onSessionCompleted(Landroid/content/Context;Lcom/micloud/midrive/session/BaseSession;)V
.end method

.method public removeListener(Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListener;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/session/manager/SessionManager;->checkRunInMainThread()V

    .line 4
    iget-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mSessionManagerListenerList:Ljava/util/List;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9
    return-void
.end method

.method public start(Landroid/content/Context;Lcom/micloud/midrive/session/params/SessionParams;)Lcom/micloud/midrive/session/BaseSession;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)",
            "Lcom/micloud/midrive/session/BaseSession;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mInit:Z

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-direct {p0}, Lcom/micloud/midrive/session/manager/SessionManager;->checkRunInMainThread()V

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/session/manager/SessionManager;->startIfNoSessionRunning(Landroid/content/Context;Lcom/micloud/midrive/session/params/SessionParams;)Lcom/micloud/midrive/session/BaseSession;

    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    const-string p2, "not init yet"

    .line 17
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    throw p1
.end method
