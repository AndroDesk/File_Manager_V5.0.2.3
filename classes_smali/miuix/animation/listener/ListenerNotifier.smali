.class public Lmiuix/animation/listener/ListenerNotifier;
.super Ljava/lang/Object;
.source "ListenerNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/listener/ListenerNotifier$EndNotifier;,
        Lmiuix/animation/listener/ListenerNotifier$CancelNotifier;,
        Lmiuix/animation/listener/ListenerNotifier$PropertyEndNotifier;,
        Lmiuix/animation/listener/ListenerNotifier$UpdateNotifier;,
        Lmiuix/animation/listener/ListenerNotifier$MassUpdateNotifier;,
        Lmiuix/animation/listener/ListenerNotifier$PropertyBeginNotifier;,
        Lmiuix/animation/listener/ListenerNotifier$BeginNotifier;,
        Lmiuix/animation/listener/ListenerNotifier$INotifier;
    }
.end annotation


# static fields
.field public static final sBegin:Lmiuix/animation/listener/ListenerNotifier$BeginNotifier;

.field public static final sCancelAll:Lmiuix/animation/listener/ListenerNotifier$CancelNotifier;

.field public static final sEndAll:Lmiuix/animation/listener/ListenerNotifier$EndNotifier;

.field public static final sMassUpdate:Lmiuix/animation/listener/ListenerNotifier$MassUpdateNotifier;

.field public static final sPropertyBegin:Lmiuix/animation/listener/ListenerNotifier$PropertyBeginNotifier;

.field public static final sPropertyEnd:Lmiuix/animation/listener/ListenerNotifier$PropertyEndNotifier;

.field public static final sUpdate:Lmiuix/animation/listener/ListenerNotifier$UpdateNotifier;


# instance fields
.field public final mListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lmiuix/animation/listener/TransitionListener;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mTarget:Lmiuix/animation/IAnimTarget;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lmiuix/animation/listener/ListenerNotifier$BeginNotifier;

    .line 3
    invoke-direct {v0}, Lmiuix/animation/listener/ListenerNotifier$BeginNotifier;-><init>()V

    .line 6
    sput-object v0, Lmiuix/animation/listener/ListenerNotifier;->sBegin:Lmiuix/animation/listener/ListenerNotifier$BeginNotifier;

    .line 8
    new-instance v0, Lmiuix/animation/listener/ListenerNotifier$PropertyBeginNotifier;

    .line 10
    invoke-direct {v0}, Lmiuix/animation/listener/ListenerNotifier$PropertyBeginNotifier;-><init>()V

    .line 13
    sput-object v0, Lmiuix/animation/listener/ListenerNotifier;->sPropertyBegin:Lmiuix/animation/listener/ListenerNotifier$PropertyBeginNotifier;

    .line 15
    new-instance v0, Lmiuix/animation/listener/ListenerNotifier$MassUpdateNotifier;

    .line 17
    invoke-direct {v0}, Lmiuix/animation/listener/ListenerNotifier$MassUpdateNotifier;-><init>()V

    .line 20
    sput-object v0, Lmiuix/animation/listener/ListenerNotifier;->sMassUpdate:Lmiuix/animation/listener/ListenerNotifier$MassUpdateNotifier;

    .line 22
    new-instance v0, Lmiuix/animation/listener/ListenerNotifier$UpdateNotifier;

    .line 24
    invoke-direct {v0}, Lmiuix/animation/listener/ListenerNotifier$UpdateNotifier;-><init>()V

    .line 27
    sput-object v0, Lmiuix/animation/listener/ListenerNotifier;->sUpdate:Lmiuix/animation/listener/ListenerNotifier$UpdateNotifier;

    .line 29
    new-instance v0, Lmiuix/animation/listener/ListenerNotifier$PropertyEndNotifier;

    .line 31
    invoke-direct {v0}, Lmiuix/animation/listener/ListenerNotifier$PropertyEndNotifier;-><init>()V

    .line 34
    sput-object v0, Lmiuix/animation/listener/ListenerNotifier;->sPropertyEnd:Lmiuix/animation/listener/ListenerNotifier$PropertyEndNotifier;

    .line 36
    new-instance v0, Lmiuix/animation/listener/ListenerNotifier$CancelNotifier;

    .line 38
    invoke-direct {v0}, Lmiuix/animation/listener/ListenerNotifier$CancelNotifier;-><init>()V

    .line 41
    sput-object v0, Lmiuix/animation/listener/ListenerNotifier;->sCancelAll:Lmiuix/animation/listener/ListenerNotifier$CancelNotifier;

    .line 43
    new-instance v0, Lmiuix/animation/listener/ListenerNotifier$EndNotifier;

    .line 45
    invoke-direct {v0}, Lmiuix/animation/listener/ListenerNotifier$EndNotifier;-><init>()V

    .line 48
    sput-object v0, Lmiuix/animation/listener/ListenerNotifier;->sEndAll:Lmiuix/animation/listener/ListenerNotifier$EndNotifier;

    .line 50
    return-void
.end method

.method public constructor <init>(Lmiuix/animation/IAnimTarget;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/animation/listener/ListenerNotifier;->mListenerMap:Ljava/util/Map;

    .line 11
    iput-object p1, p0, Lmiuix/animation/listener/ListenerNotifier;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 13
    return-void
.end method

.method private getListenerSet(Ljava/lang/Object;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lmiuix/animation/listener/TransitionListener;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/animation/listener/ListenerNotifier;->mListenerMap:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 9
    if-nez v0, :cond_1a

    .line 11
    const-class v0, Ljava/util/ArrayList;

    .line 13
    const/4 v1, 0x0

    .line 14
    new-array v1, v1, [Ljava/lang/Object;

    .line 16
    invoke-static {v0, v1}, Lmiuix/animation/utils/ObjectPool;->acquire(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/util/List;

    .line 22
    iget-object v1, p0, Lmiuix/animation/listener/ListenerNotifier;->mListenerMap:Ljava/util/Map;

    .line 24
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_1a
    return-object v0
.end method

.method private notify(Ljava/lang/Object;Ljava/lang/Object;Lmiuix/animation/listener/ListenerNotifier$INotifier;Ljava/util/Collection;Lmiuix/animation/listener/UpdateInfo;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lmiuix/animation/listener/ListenerNotifier$INotifier;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;",
            "Lmiuix/animation/listener/UpdateInfo;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/animation/listener/ListenerNotifier;->mListenerMap:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/List;

    .line 9
    if-eqz p1, :cond_13

    .line 11
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_13

    .line 17
    invoke-static {p2, p1, p3, p4, p5}, Lmiuix/animation/listener/ListenerNotifier;->notifyListenerSet(Ljava/lang/Object;Ljava/util/List;Lmiuix/animation/listener/ListenerNotifier$INotifier;Ljava/util/Collection;Lmiuix/animation/listener/UpdateInfo;)V

    .line 20
    :cond_13
    return-void
.end method

.method private static notifyListenerSet(Ljava/lang/Object;Ljava/util/List;Lmiuix/animation/listener/ListenerNotifier$INotifier;Ljava/util/Collection;Lmiuix/animation/listener/UpdateInfo;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lmiuix/animation/listener/TransitionListener;",
            ">;",
            "Lmiuix/animation/listener/ListenerNotifier$INotifier;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;",
            "Lmiuix/animation/listener/UpdateInfo;",
            ")V"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/util/HashSet;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    invoke-static {v0, v1}, Lmiuix/animation/utils/ObjectPool;->acquire(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/util/Set;

    .line 12
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 15
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p1

    .line 19
    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_3b

    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lmiuix/animation/listener/TransitionListener;

    .line 31
    if-nez v1, :cond_37

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    const-string v2, "listener null tag="

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    const-string v2, "miuix_anim"

    .line 52
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    goto :goto_12

    .line 56
    :cond_37
    invoke-interface {p2, p0, v1, p3, p4}, Lmiuix/animation/listener/ListenerNotifier$INotifier;->doNotify(Ljava/lang/Object;Lmiuix/animation/listener/TransitionListener;Ljava/util/Collection;Lmiuix/animation/listener/UpdateInfo;)V

    .line 59
    goto :goto_12

    .line 60
    :cond_3b
    invoke-static {v0}, Lmiuix/animation/utils/ObjectPool;->release(Ljava/lang/Object;)V

    .line 63
    return-void
.end method


# virtual methods
.method public addListeners(Ljava/lang/Object;Lmiuix/animation/base/AnimConfig;)Z
    .registers 4

    .line 1
    iget-object v0, p2, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_a

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_a
    invoke-direct {p0, p1}, Lmiuix/animation/listener/ListenerNotifier;->getListenerSet(Ljava/lang/Object;)Ljava/util/List;

    .line 14
    move-result-object p1

    .line 15
    iget-object p2, p2, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    .line 17
    invoke-static {p2, p1}, Lmiuix/animation/utils/CommonUtils;->addTo(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 20
    const/4 p1, 0x1

    .line 21
    return p1
.end method

.method public notifyBegin(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    .line 1
    sget-object v3, Lmiuix/animation/listener/ListenerNotifier;->sBegin:Lmiuix/animation/listener/ListenerNotifier$BeginNotifier;

    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    invoke-direct/range {v0 .. v5}, Lmiuix/animation/listener/ListenerNotifier;->notify(Ljava/lang/Object;Ljava/lang/Object;Lmiuix/animation/listener/ListenerNotifier$INotifier;Ljava/util/Collection;Lmiuix/animation/listener/UpdateInfo;)V

    .line 11
    return-void
.end method

.method public notifyCancelAll(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    .line 1
    sget-object v3, Lmiuix/animation/listener/ListenerNotifier;->sCancelAll:Lmiuix/animation/listener/ListenerNotifier$CancelNotifier;

    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    invoke-direct/range {v0 .. v5}, Lmiuix/animation/listener/ListenerNotifier;->notify(Ljava/lang/Object;Ljava/lang/Object;Lmiuix/animation/listener/ListenerNotifier$INotifier;Ljava/util/Collection;Lmiuix/animation/listener/UpdateInfo;)V

    .line 11
    return-void
.end method

.method public notifyEndAll(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    .line 1
    sget-object v3, Lmiuix/animation/listener/ListenerNotifier;->sEndAll:Lmiuix/animation/listener/ListenerNotifier$EndNotifier;

    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    invoke-direct/range {v0 .. v5}, Lmiuix/animation/listener/ListenerNotifier;->notify(Ljava/lang/Object;Ljava/lang/Object;Lmiuix/animation/listener/ListenerNotifier$INotifier;Ljava/util/Collection;Lmiuix/animation/listener/UpdateInfo;)V

    .line 11
    return-void
.end method

.method public notifyMassUpdate(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    .line 1
    sget-object v3, Lmiuix/animation/listener/ListenerNotifier;->sMassUpdate:Lmiuix/animation/listener/ListenerNotifier$MassUpdateNotifier;

    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    invoke-direct/range {v0 .. v5}, Lmiuix/animation/listener/ListenerNotifier;->notify(Ljava/lang/Object;Ljava/lang/Object;Lmiuix/animation/listener/ListenerNotifier$INotifier;Ljava/util/Collection;Lmiuix/animation/listener/UpdateInfo;)V

    .line 11
    return-void
.end method

.method public notifyPropertyBegin(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v3, Lmiuix/animation/listener/ListenerNotifier;->sPropertyBegin:Lmiuix/animation/listener/ListenerNotifier$PropertyBeginNotifier;

    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move-object v4, p3

    .line 8
    invoke-direct/range {v0 .. v5}, Lmiuix/animation/listener/ListenerNotifier;->notify(Ljava/lang/Object;Ljava/lang/Object;Lmiuix/animation/listener/ListenerNotifier$INotifier;Ljava/util/Collection;Lmiuix/animation/listener/UpdateInfo;)V

    .line 11
    return-void
.end method

.method public notifyPropertyEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v3, Lmiuix/animation/listener/ListenerNotifier;->sPropertyEnd:Lmiuix/animation/listener/ListenerNotifier$PropertyEndNotifier;

    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move-object v4, p3

    .line 8
    invoke-direct/range {v0 .. v5}, Lmiuix/animation/listener/ListenerNotifier;->notify(Ljava/lang/Object;Ljava/lang/Object;Lmiuix/animation/listener/ListenerNotifier$INotifier;Ljava/util/Collection;Lmiuix/animation/listener/UpdateInfo;)V

    .line 11
    return-void
.end method

.method public notifyUpdate(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v3, Lmiuix/animation/listener/ListenerNotifier;->sUpdate:Lmiuix/animation/listener/ListenerNotifier$UpdateNotifier;

    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move-object v4, p3

    .line 8
    invoke-direct/range {v0 .. v5}, Lmiuix/animation/listener/ListenerNotifier;->notify(Ljava/lang/Object;Ljava/lang/Object;Lmiuix/animation/listener/ListenerNotifier$INotifier;Ljava/util/Collection;Lmiuix/animation/listener/UpdateInfo;)V

    .line 11
    return-void
.end method

.method public removeListeners()V
    .registers 2

    .line 3
    iget-object v0, p0, Lmiuix/animation/listener/ListenerNotifier;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/utils/ObjectPool;->release(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lmiuix/animation/listener/ListenerNotifier;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public removeListeners(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/listener/ListenerNotifier;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 2
    invoke-static {p1}, Lmiuix/animation/utils/ObjectPool;->release(Ljava/lang/Object;)V

    return-void
.end method
