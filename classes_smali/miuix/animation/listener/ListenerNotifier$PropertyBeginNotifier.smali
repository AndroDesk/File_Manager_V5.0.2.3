.class Lmiuix/animation/listener/ListenerNotifier$PropertyBeginNotifier;
.super Ljava/lang/Object;
.source "ListenerNotifier.java"

# interfaces
.implements Lmiuix/animation/listener/ListenerNotifier$INotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/listener/ListenerNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropertyBeginNotifier"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doNotify(Ljava/lang/Object;Lmiuix/animation/listener/TransitionListener;Ljava/util/Collection;Lmiuix/animation/listener/UpdateInfo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lmiuix/animation/listener/TransitionListener;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;",
            "Lmiuix/animation/listener/UpdateInfo;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2, p1, p3}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;Ljava/util/Collection;)V

    return-void
.end method
