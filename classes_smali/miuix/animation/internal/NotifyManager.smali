.class public Lmiuix/animation/internal/NotifyManager;
.super Ljava/lang/Object;
.source "NotifyManager.java"


# instance fields
.field private mConfig:Lmiuix/animation/base/AnimConfig;

.field public mNotifier:Lmiuix/animation/listener/ListenerNotifier;

.field public mSetToNotifier:Lmiuix/animation/listener/ListenerNotifier;

.field public mTarget:Lmiuix/animation/IAnimTarget;


# direct methods
.method public constructor <init>(Lmiuix/animation/IAnimTarget;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 6
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/animation/internal/NotifyManager;->mConfig:Lmiuix/animation/base/AnimConfig;

    .line 11
    iput-object p1, p0, Lmiuix/animation/internal/NotifyManager;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 13
    new-instance v0, Lmiuix/animation/listener/ListenerNotifier;

    .line 15
    invoke-direct {v0, p1}, Lmiuix/animation/listener/ListenerNotifier;-><init>(Lmiuix/animation/IAnimTarget;)V

    .line 18
    iput-object v0, p0, Lmiuix/animation/internal/NotifyManager;->mSetToNotifier:Lmiuix/animation/listener/ListenerNotifier;

    .line 20
    new-instance v0, Lmiuix/animation/listener/ListenerNotifier;

    .line 22
    invoke-direct {v0, p1}, Lmiuix/animation/listener/ListenerNotifier;-><init>(Lmiuix/animation/IAnimTarget;)V

    .line 25
    iput-object v0, p0, Lmiuix/animation/internal/NotifyManager;->mNotifier:Lmiuix/animation/listener/ListenerNotifier;

    .line 27
    return-void
.end method


# virtual methods
.method public getNotifier()Lmiuix/animation/listener/ListenerNotifier;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/NotifyManager;->mNotifier:Lmiuix/animation/listener/ListenerNotifier;

    .line 3
    return-object v0
.end method

.method public setToNotify(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V
    .registers 5

    .line 1
    if-nez p2, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    invoke-virtual {p1}, Lmiuix/animation/controller/AnimState;->getTag()Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lmiuix/animation/internal/NotifyManager;->mConfig:Lmiuix/animation/base/AnimConfig;

    .line 10
    invoke-virtual {p1}, Lmiuix/animation/controller/AnimState;->getConfig()Lmiuix/animation/base/AnimConfig;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v1, p1}, Lmiuix/animation/base/AnimConfig;->copy(Lmiuix/animation/base/AnimConfig;)V

    .line 17
    iget-object p1, p0, Lmiuix/animation/internal/NotifyManager;->mConfig:Lmiuix/animation/base/AnimConfig;

    .line 19
    invoke-virtual {p2, p1}, Lmiuix/animation/base/AnimConfigLink;->addTo(Lmiuix/animation/base/AnimConfig;)V

    .line 22
    iget-object p1, p0, Lmiuix/animation/internal/NotifyManager;->mSetToNotifier:Lmiuix/animation/listener/ListenerNotifier;

    .line 24
    iget-object p2, p0, Lmiuix/animation/internal/NotifyManager;->mConfig:Lmiuix/animation/base/AnimConfig;

    .line 26
    invoke-virtual {p1, v0, p2}, Lmiuix/animation/listener/ListenerNotifier;->addListeners(Ljava/lang/Object;Lmiuix/animation/base/AnimConfig;)Z

    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_25

    .line 32
    iget-object p1, p0, Lmiuix/animation/internal/NotifyManager;->mConfig:Lmiuix/animation/base/AnimConfig;

    .line 34
    invoke-virtual {p1}, Lmiuix/animation/base/AnimConfig;->clear()V

    .line 37
    return-void

    .line 38
    :cond_25
    iget-object p1, p0, Lmiuix/animation/internal/NotifyManager;->mSetToNotifier:Lmiuix/animation/listener/ListenerNotifier;

    .line 40
    invoke-virtual {p1, v0, v0}, Lmiuix/animation/listener/ListenerNotifier;->notifyBegin(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    iget-object p1, p0, Lmiuix/animation/internal/NotifyManager;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 45
    iget-object p1, p1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 47
    iget-object p1, p1, Lmiuix/animation/internal/AnimManager;->mUpdateMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 49
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 52
    move-result-object p1

    .line 53
    iget-object p2, p0, Lmiuix/animation/internal/NotifyManager;->mSetToNotifier:Lmiuix/animation/listener/ListenerNotifier;

    .line 55
    invoke-virtual {p2, v0, v0, p1}, Lmiuix/animation/listener/ListenerNotifier;->notifyPropertyBegin(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)V

    .line 58
    iget-object p2, p0, Lmiuix/animation/internal/NotifyManager;->mSetToNotifier:Lmiuix/animation/listener/ListenerNotifier;

    .line 60
    invoke-virtual {p2, v0, v0, p1}, Lmiuix/animation/listener/ListenerNotifier;->notifyUpdate(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)V

    .line 63
    iget-object p2, p0, Lmiuix/animation/internal/NotifyManager;->mSetToNotifier:Lmiuix/animation/listener/ListenerNotifier;

    .line 65
    invoke-virtual {p2, v0, v0, p1}, Lmiuix/animation/listener/ListenerNotifier;->notifyPropertyEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)V

    .line 68
    iget-object p1, p0, Lmiuix/animation/internal/NotifyManager;->mSetToNotifier:Lmiuix/animation/listener/ListenerNotifier;

    .line 70
    invoke-virtual {p1, v0, v0}, Lmiuix/animation/listener/ListenerNotifier;->notifyEndAll(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    iget-object p1, p0, Lmiuix/animation/internal/NotifyManager;->mSetToNotifier:Lmiuix/animation/listener/ListenerNotifier;

    .line 75
    invoke-virtual {p1, v0}, Lmiuix/animation/listener/ListenerNotifier;->removeListeners(Ljava/lang/Object;)V

    .line 78
    iget-object p1, p0, Lmiuix/animation/internal/NotifyManager;->mConfig:Lmiuix/animation/base/AnimConfig;

    .line 80
    invoke-virtual {p1}, Lmiuix/animation/base/AnimConfig;->clear()V

    .line 83
    return-void
.end method
