.class public Lcom/miui/maml/folme/MamlTransitionListener;
.super Lmiuix/animation/listener/TransitionListener;
.source "MamlTransitionListener.java"


# instance fields
.field public mBeginCallback:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/miui/maml/elements/FunctionElement;",
            ">;"
        }
    .end annotation
.end field

.field public mCompleteCallback:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/miui/maml/elements/FunctionElement;",
            ">;"
        }
    .end annotation
.end field

.field private mTarget:Lcom/miui/maml/elements/AnimatedScreenElement;

.field public mUpdateCallback:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/miui/maml/elements/FunctionElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/AnimatedScreenElement;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/miui/maml/folme/MamlTransitionListener;->mUpdateCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 11
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/miui/maml/folme/MamlTransitionListener;->mBeginCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 18
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 20
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/miui/maml/folme/MamlTransitionListener;->mCompleteCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 25
    iput-object p1, p0, Lcom/miui/maml/folme/MamlTransitionListener;->mTarget:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 27
    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/miui/maml/folme/MamlTransitionListener;->mBeginCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p1

    .line 7
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_16

    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/miui/maml/elements/FunctionElement;

    .line 19
    invoke-virtual {v0}, Lcom/miui/maml/elements/FunctionElement;->perform()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/miui/maml/folme/MamlTransitionListener;->mTarget:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 3
    iget-object p1, p1, Lcom/miui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 8
    iget-object p1, p0, Lcom/miui/maml/folme/MamlTransitionListener;->mCompleteCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 10
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p1

    .line 14
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1d

    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/miui/maml/elements/FunctionElement;

    .line 26
    invoke-virtual {v0}, Lcom/miui/maml/elements/FunctionElement;->perform()V

    .line 29
    goto :goto_d

    .line 30
    :cond_1d
    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 5
    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result p2

    .line 9
    if-eqz p2, :cond_2d

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Lmiuix/animation/listener/UpdateInfo;

    .line 17
    iget-object v0, p2, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 19
    instance-of v1, v0, Lcom/miui/maml/folme/IAnimatedProperty;

    .line 21
    if-eqz v1, :cond_21

    .line 23
    move-object v1, v0

    .line 24
    check-cast v1, Lcom/miui/maml/folme/IAnimatedProperty;

    .line 26
    iget-object v2, p0, Lcom/miui/maml/folme/MamlTransitionListener;->mTarget:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 28
    iget-wide v3, p2, Lmiuix/animation/listener/UpdateInfo;->velocity:D

    .line 30
    double-to-float v3, v3

    .line 31
    invoke-interface {v1, v2, v3}, Lcom/miui/maml/folme/IAnimatedProperty;->setVelocityValue(Ljava/lang/Object;F)V

    .line 34
    :cond_21
    iget-boolean p2, p2, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    .line 36
    if-eqz p2, :cond_4

    .line 38
    iget-object p2, p0, Lcom/miui/maml/folme/MamlTransitionListener;->mTarget:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 40
    iget-object p2, p2, Lcom/miui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 42
    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 45
    goto :goto_4

    .line 46
    :cond_2d
    iget-object p1, p0, Lcom/miui/maml/folme/MamlTransitionListener;->mUpdateCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 48
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object p1

    .line 52
    :goto_33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result p2

    .line 56
    if-eqz p2, :cond_43

    .line 58
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object p2

    .line 62
    check-cast p2, Lcom/miui/maml/elements/FunctionElement;

    .line 64
    invoke-virtual {p2}, Lcom/miui/maml/elements/FunctionElement;->perform()V

    .line 67
    goto :goto_33

    .line 68
    :cond_43
    return-void
.end method
