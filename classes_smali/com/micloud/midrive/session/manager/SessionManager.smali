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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mSessionManagerListenerList:Ljava/util/List;

    new-instance v0, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;

    invoke-direct {v0, p0}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;-><init>(Lcom/micloud/midrive/session/manager/SessionManager;)V

    iput-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mSessionStorage:Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;

    return-void
.end method

.method public static synthetic access$000(Lcom/micloud/midrive/session/manager/SessionManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/micloud/midrive/session/manager/SessionManager;->postSessionStatusChanged()V

    return-void
.end method

.method public static synthetic access$100(Lcom/micloud/midrive/session/manager/SessionManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/micloud/midrive/session/manager/SessionManager;->postSessionStageProgressChanged()V

    return-void
.end method

.method public static synthetic access$200(Lcom/micloud/midrive/session/manager/SessionManager;Landroid/content/Context;Lcom/micloud/midrive/session/BaseSession;Lcom/micloud/midrive/session/params/SessionParams;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/micloud/midrive/session/manager/SessionManager;->handleSessionCompleted(Landroid/content/Context;Lcom/micloud/midrive/session/BaseSession;Lcom/micloud/midrive/session/params/SessionParams;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/micloud/midrive/session/manager/SessionManager;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mSessionManagerListenerList:Ljava/util/List;

    return-object p0
.end method

.method private checkRunInMainThread()V
    .registers 2

    const-string v0, "CloudBackupManager must be called in main thread"

    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkRunInMainThread(Ljava/lang/String;)V

    return-void
.end method

.method private handleSessionCompleted(Landroid/content/Context;Lcom/micloud/midrive/session/BaseSession;Lcom/micloud/midrive/session/params/SessionParams;)V
    .registers 5

    iget-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mCurrentSession:Lcom/micloud/midrive/session/BaseSession;

    if-ne v0, p2, :cond_16

    const/4 p2, 0x0

    invoke-virtual {p3, p2}, Lcom/micloud/midrive/session/params/SessionParams;->setExtrasHandler(Lcom/micloud/midrive/session/params/SessionExtrasHandler;)V

    iget-object p3, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mSessionStorage:Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;

    invoke-virtual {p3, p1}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->clearSessionParams(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mCurrentSession:Lcom/micloud/midrive/session/BaseSession;

    invoke-direct {p0}, Lcom/micloud/midrive/session/manager/SessionManager;->postSessionChanged()V

    invoke-direct {p0, p1, v0}, Lcom/micloud/midrive/session/manager/SessionManager;->postOnSessionCompleted(Landroid/content/Context;Lcom/micloud/midrive/session/BaseSession;)V

    return-void

    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "session is not corrected"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private postOnSessionCompleted(Landroid/content/Context;Lcom/micloud/midrive/session/BaseSession;)V
    .registers 5

    iget-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/micloud/midrive/session/manager/SessionManager$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/micloud/midrive/session/manager/SessionManager$4;-><init>(Lcom/micloud/midrive/session/manager/SessionManager;Landroid/content/Context;Lcom/micloud/midrive/session/BaseSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private postSessionChanged()V
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/micloud/midrive/session/manager/SessionManager$3;

    invoke-direct {v1, p0}, Lcom/micloud/midrive/session/manager/SessionManager$3;-><init>(Lcom/micloud/midrive/session/manager/SessionManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private postSessionStageProgressChanged()V
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/micloud/midrive/session/manager/SessionManager$2;

    invoke-direct {v1, p0}, Lcom/micloud/midrive/session/manager/SessionManager$2;-><init>(Lcom/micloud/midrive/session/manager/SessionManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private postSessionStatusChanged()V
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/micloud/midrive/session/manager/SessionManager$1;

    invoke-direct {v1, p0}, Lcom/micloud/midrive/session/manager/SessionManager$1;-><init>(Lcom/micloud/midrive/session/manager/SessionManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private resumeSessionIfExistOnInit(Landroid/content/Context;)V
    .registers 7

    iget-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mSessionStorage:Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;

    invoke-virtual {v0, p1}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->createSessionParamsFromStorage(Landroid/content/Context;)Lcom/micloud/midrive/session/params/SessionParams;

    move-result-object v0

    if-eqz v0, :cond_2a

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resume session params: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " on init"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/micloud/midrive/session/manager/SessionManager;->startIfNoSessionRunning(Landroid/content/Context;Lcom/micloud/midrive/session/params/SessionParams;)Lcom/micloud/midrive/session/BaseSession;

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

    iget-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mCurrentSession:Lcom/micloud/midrive/session/BaseSession;

    const/4 v1, 0x0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mSessionStorage:Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;

    invoke-virtual {v0, p1, p2}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->saveSessionParamsIfNeeded(Landroid/content/Context;Lcom/micloud/midrive/session/params/SessionParams;)V

    iget-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mSessionStorage:Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;

    invoke-virtual {p2, v0}, Lcom/micloud/midrive/session/params/SessionParams;->setExtrasHandler(Lcom/micloud/midrive/session/params/SessionExtrasHandler;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "session start with params: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    new-instance v0, Lcom/micloud/midrive/session/manager/SessionManager$SessionListener;

    invoke-direct {v0, p0, v1}, Lcom/micloud/midrive/session/manager/SessionManager$SessionListener;-><init>(Lcom/micloud/midrive/session/manager/SessionManager;Lcom/micloud/midrive/session/manager/SessionManager$1;)V

    invoke-virtual {p0, p2, v0}, Lcom/micloud/midrive/session/manager/SessionManager;->onCreateSession(Lcom/micloud/midrive/session/params/SessionParams;Lcom/micloud/midrive/session/BaseSession$SessionListener;)Lcom/micloud/midrive/session/BaseSession;

    move-result-object p2

    iput-object p2, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mCurrentSession:Lcom/micloud/midrive/session/BaseSession;

    invoke-virtual {p2, p1}, Lcom/micloud/midrive/session/BaseSession;->start(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/micloud/midrive/session/manager/SessionManager;->postSessionChanged()V

    iget-object p1, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mCurrentSession:Lcom/micloud/midrive/session/BaseSession;

    return-object p1

    :cond_3d
    return-object v1
.end method


# virtual methods
.method public addListener(Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListener;)V
    .registers 3

    invoke-direct {p0}, Lcom/micloud/midrive/session/manager/SessionManager;->checkRunInMainThread()V

    iget-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mSessionManagerListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearSharedPrefs(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mSessionStorage:Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;

    invoke-static {v0}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->access$300(Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/micloud/midrive/utils/ISharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Lcom/micloud/midrive/utils/ISharedPreferences;->clear()V

    return-void
.end method

.method public getCurrentSession()Lcom/micloud/midrive/session/BaseSession;
    .registers 2

    invoke-direct {p0}, Lcom/micloud/midrive/session/manager/SessionManager;->checkRunInMainThread()V

    iget-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mCurrentSession:Lcom/micloud/midrive/session/BaseSession;

    return-object v0
.end method

.method public initAndMaybeStartSession(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Lcom/micloud/midrive/session/manager/SessionManager;->checkRunInMainThread()V

    iget-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mSessionStorage:Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;

    invoke-virtual {p0}, Lcom/micloud/midrive/session/manager/SessionManager;->onGetSessionStorageKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->init(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/manager/SessionManager;->resumeSessionIfExistOnInit(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mInit:Z

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

    invoke-direct {p0}, Lcom/micloud/midrive/session/manager/SessionManager;->checkRunInMainThread()V

    iget-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mSessionManagerListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

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

    iget-boolean v0, p0, Lcom/micloud/midrive/session/manager/SessionManager;->mInit:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/micloud/midrive/session/manager/SessionManager;->checkRunInMainThread()V

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/session/manager/SessionManager;->startIfNoSessionRunning(Landroid/content/Context;Lcom/micloud/midrive/session/params/SessionParams;)Lcom/micloud/midrive/session/BaseSession;

    move-result-object p1

    return-object p1

    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not init yet"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
