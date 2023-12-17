.class public Lmiuix/animation/controller/FolmeBlink;
.super Lmiuix/animation/controller/FolmeBase;
.source "FolmeBlink.java"

# interfaces
.implements Lmiuix/animation/IBlinkStyle;
.implements Lmiuix/animation/internal/BlinkStateSubject;


# instance fields
.field public flashcount:I

.field private mBlinkStateObserverList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/animation/internal/BlinkStateObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mBlinkTask:Ljava/lang/Runnable;

.field private mInterval:J

.field private mLimitCount:I

.field private mStopConfig:Lmiuix/animation/base/AnimConfig;

.field private mToHighlightConfig:Lmiuix/animation/base/AnimConfig;

.field private mToNormalConfig:Lmiuix/animation/base/AnimConfig;


# direct methods
.method public varargs constructor <init>([Lmiuix/animation/IAnimTarget;)V
    .registers 7

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeBase;-><init>([Lmiuix/animation/IAnimTarget;)V

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lmiuix/animation/controller/FolmeBlink;->mInterval:J

    .line 8
    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lmiuix/animation/controller/FolmeBlink;->mLimitCount:I

    .line 11
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lmiuix/animation/controller/FolmeBlink;->mBlinkStateObserverList:Ljava/util/List;

    .line 18
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 20
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 23
    new-array v1, p1, [F

    .line 25
    const/high16 v2, 0x44160000  # 600.0f

    .line 27
    const/4 v3, 0x0

    .line 28
    aput v2, v1, v3

    .line 30
    const/4 v2, 0x6

    .line 31
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lmiuix/animation/controller/FolmeBlink;->mToHighlightConfig:Lmiuix/animation/base/AnimConfig;

    .line 37
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 39
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 42
    new-array v1, p1, [F

    .line 44
    const/high16 v4, 0x43c80000  # 400.0f

    .line 46
    aput v4, v1, v3

    .line 48
    const/16 v4, 0x10

    .line 50
    invoke-virtual {v0, v4, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lmiuix/animation/controller/FolmeBlink;->mToNormalConfig:Lmiuix/animation/base/AnimConfig;

    .line 56
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 58
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 61
    new-array v1, p1, [F

    .line 63
    const/high16 v4, 0x42c80000  # 100.0f

    .line 65
    aput v4, v1, v3

    .line 67
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p0, Lmiuix/animation/controller/FolmeBlink;->mStopConfig:Lmiuix/animation/base/AnimConfig;

    .line 73
    new-instance v0, Lmiuix/animation/controller/FolmeBlink$1;

    .line 75
    invoke-direct {v0, p0}, Lmiuix/animation/controller/FolmeBlink$1;-><init>(Lmiuix/animation/controller/FolmeBlink;)V

    .line 78
    iput-object v0, p0, Lmiuix/animation/controller/FolmeBlink;->mBlinkTask:Ljava/lang/Runnable;

    .line 80
    iput v3, p0, Lmiuix/animation/controller/FolmeBlink;->flashcount:I

    .line 82
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeBlink;->setTintColor()V

    .line 85
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBlink;->mToNormalConfig:Lmiuix/animation/base/AnimConfig;

    .line 87
    new-array v1, p1, [Lmiuix/animation/listener/TransitionListener;

    .line 89
    new-instance v2, Lmiuix/animation/controller/FolmeBlink$6;

    .line 91
    invoke-direct {v2, p0}, Lmiuix/animation/controller/FolmeBlink$6;-><init>(Lmiuix/animation/controller/FolmeBlink;)V

    .line 94
    aput-object v2, v1, v3

    .line 96
    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 99
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBlink;->mToHighlightConfig:Lmiuix/animation/base/AnimConfig;

    .line 101
    new-array v1, p1, [Lmiuix/animation/listener/TransitionListener;

    .line 103
    new-instance v2, Lmiuix/animation/controller/FolmeBlink$7;

    .line 105
    invoke-direct {v2, p0}, Lmiuix/animation/controller/FolmeBlink$7;-><init>(Lmiuix/animation/controller/FolmeBlink;)V

    .line 108
    aput-object v2, v1, v3

    .line 110
    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 113
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBlink;->mStopConfig:Lmiuix/animation/base/AnimConfig;

    .line 115
    new-array p1, p1, [Lmiuix/animation/listener/TransitionListener;

    .line 117
    new-instance v1, Lmiuix/animation/controller/FolmeBlink$8;

    .line 119
    invoke-direct {v1, p0}, Lmiuix/animation/controller/FolmeBlink$8;-><init>(Lmiuix/animation/controller/FolmeBlink;)V

    .line 122
    aput-object v1, p1, v3

    .line 124
    invoke-virtual {v0, p1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 127
    return-void
.end method

.method public static synthetic access$000(Lmiuix/animation/controller/FolmeBlink;)Lmiuix/animation/base/AnimConfig;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBlink;->mToHighlightConfig:Lmiuix/animation/base/AnimConfig;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/animation/controller/FolmeBlink;)Lmiuix/animation/base/AnimConfig;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBlink;->mToNormalConfig:Lmiuix/animation/base/AnimConfig;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/animation/controller/FolmeBlink;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/animation/controller/FolmeBlink;->mLimitCount:I

    .line 3
    return p0
.end method

.method private setTintColor()V
    .registers 6

    .line 1
    const/16 v0, 0x14

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 10
    invoke-interface {v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    instance-of v2, v1, Landroid/view/View;

    .line 20
    if-eqz v2, :cond_21

    .line 22
    check-cast v1, Landroid/view/View;

    .line 24
    sget v0, Lmiuix/folme/R$color;->miuix_folme_color_blink_tint:I

    .line 26
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 33
    move-result v0

    .line 34
    :cond_21
    sget-object v1, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    .line 36
    iget-object v2, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 38
    sget-object v3, Lmiuix/animation/IBlinkStyle$BlinkType;->HIGHLIGHT:Lmiuix/animation/IBlinkStyle$BlinkType;

    .line 40
    invoke-interface {v2, v3}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 43
    move-result-object v2

    .line 44
    int-to-double v3, v0

    .line 45
    invoke-virtual {v2, v1, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 48
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 50
    sget-object v2, Lmiuix/animation/IBlinkStyle$BlinkType;->NORMAL:Lmiuix/animation/IBlinkStyle$BlinkType;

    .line 52
    invoke-interface {v0, v2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 55
    move-result-object v0

    .line 56
    const-wide/16 v2, 0x0

    .line 58
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 61
    return-void
.end method


# virtual methods
.method public attach(Lmiuix/animation/internal/BlinkStateObserver;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBlink;->mBlinkStateObserverList:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public detach(Lmiuix/animation/internal/BlinkStateObserver;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBlink;->mBlinkStateObserverList:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public notifyState(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBlink;->mBlinkStateObserverList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lmiuix/animation/internal/BlinkStateObserver;

    .line 19
    invoke-interface {v1, p1}, Lmiuix/animation/internal/BlinkStateObserver;->updateBlinkState(Z)V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public resetConfig()Lmiuix/animation/IBlinkStyle;
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBlink;->mToHighlightConfig:Lmiuix/animation/base/AnimConfig;

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v2, v1, [F

    .line 6
    const/high16 v3, 0x44160000  # 600.0f

    .line 8
    const/4 v4, 0x0

    .line 9
    aput v3, v2, v4

    .line 11
    const/4 v3, 0x6

    .line 12
    invoke-virtual {v0, v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 15
    move-result-object v0

    .line 16
    new-array v2, v1, [Lmiuix/animation/listener/TransitionListener;

    .line 18
    new-instance v3, Lmiuix/animation/controller/FolmeBlink$2;

    .line 20
    invoke-direct {v3, p0}, Lmiuix/animation/controller/FolmeBlink$2;-><init>(Lmiuix/animation/controller/FolmeBlink;)V

    .line 23
    aput-object v3, v2, v4

    .line 25
    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 28
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBlink;->mToNormalConfig:Lmiuix/animation/base/AnimConfig;

    .line 30
    new-array v2, v1, [F

    .line 32
    const/high16 v3, 0x43c80000  # 400.0f

    .line 34
    aput v3, v2, v4

    .line 36
    const/16 v3, 0x10

    .line 38
    invoke-virtual {v0, v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 41
    move-result-object v0

    .line 42
    new-array v2, v1, [Lmiuix/animation/listener/TransitionListener;

    .line 44
    new-instance v3, Lmiuix/animation/controller/FolmeBlink$3;

    .line 46
    invoke-direct {v3, p0}, Lmiuix/animation/controller/FolmeBlink$3;-><init>(Lmiuix/animation/controller/FolmeBlink;)V

    .line 49
    aput-object v3, v2, v4

    .line 51
    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 54
    const-wide/16 v2, 0x0

    .line 56
    iput-wide v2, p0, Lmiuix/animation/controller/FolmeBlink;->mInterval:J

    .line 58
    iput v1, p0, Lmiuix/animation/controller/FolmeBlink;->mLimitCount:I

    .line 60
    return-object p0
.end method

.method public setInterval(J)Lmiuix/animation/IBlinkStyle;
    .registers 3

    .line 1
    iput-wide p1, p0, Lmiuix/animation/controller/FolmeBlink;->mInterval:J

    .line 3
    return-object p0
.end method

.method public setLimitCount(I)Lmiuix/animation/IBlinkStyle;
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/animation/controller/FolmeBlink;->mLimitCount:I

    .line 3
    return-object p0
.end method

.method public setToHighlightConfig(Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IBlinkStyle;
    .registers 5

    .line 1
    iput-object p1, p0, Lmiuix/animation/controller/FolmeBlink;->mToHighlightConfig:Lmiuix/animation/base/AnimConfig;

    .line 3
    const/4 v0, 0x1

    .line 4
    new-array v0, v0, [Lmiuix/animation/listener/TransitionListener;

    .line 6
    new-instance v1, Lmiuix/animation/controller/FolmeBlink$4;

    .line 8
    invoke-direct {v1, p0}, Lmiuix/animation/controller/FolmeBlink$4;-><init>(Lmiuix/animation/controller/FolmeBlink;)V

    .line 11
    const/4 v2, 0x0

    .line 12
    aput-object v1, v0, v2

    .line 14
    invoke-virtual {p1, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 17
    return-object p0
.end method

.method public setToNormalConfig(Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IBlinkStyle;
    .registers 5

    .line 1
    iput-object p1, p0, Lmiuix/animation/controller/FolmeBlink;->mToNormalConfig:Lmiuix/animation/base/AnimConfig;

    .line 3
    const/4 v0, 0x1

    .line 4
    new-array v0, v0, [Lmiuix/animation/listener/TransitionListener;

    .line 6
    new-instance v1, Lmiuix/animation/controller/FolmeBlink$5;

    .line 8
    invoke-direct {v1, p0}, Lmiuix/animation/controller/FolmeBlink$5;-><init>(Lmiuix/animation/controller/FolmeBlink;)V

    .line 11
    const/4 v2, 0x0

    .line 12
    aput-object v1, v0, v2

    .line 14
    invoke-virtual {p1, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 17
    return-object p0
.end method

.method public varargs startBlink(I[Lmiuix/animation/base/AnimConfig;)V
    .registers 5

    .line 7
    iput p1, p0, Lmiuix/animation/controller/FolmeBlink;->mLimitCount:I

    .line 8
    array-length p1, p2

    const/4 v0, 0x0

    if-lez p1, :cond_14

    .line 9
    aget-object p1, p2, v0

    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeBlink;->setToHighlightConfig(Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IBlinkStyle;

    .line 10
    array-length p1, p2

    const/4 v1, 0x1

    if-le p1, v1, :cond_14

    .line 11
    aget-object p1, p2, v1

    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeBlink;->setToNormalConfig(Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IBlinkStyle;

    :cond_14
    new-array p1, v0, [Lmiuix/animation/base/AnimConfig;

    .line 12
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeBlink;->startBlink([Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public varargs startBlink([Lmiuix/animation/base/AnimConfig;)V
    .registers 5

    .line 1
    array-length v0, p1

    if-lez v0, :cond_12

    const/4 v0, 0x0

    .line 2
    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lmiuix/animation/controller/FolmeBlink;->setToHighlightConfig(Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IBlinkStyle;

    .line 3
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_12

    .line 4
    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeBlink;->setToNormalConfig(Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IBlinkStyle;

    .line 5
    :cond_12
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBlink;->mBlinkTask:Ljava/lang/Runnable;

    if-eqz p1, :cond_2c

    .line 6
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p1}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p1

    iget-object p1, p1, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    iget-object v0, p0, Lmiuix/animation/controller/FolmeBlink;->mBlinkTask:Ljava/lang/Runnable;

    iget v1, p0, Lmiuix/animation/controller/FolmeBlink;->flashcount:I

    if-nez v1, :cond_27

    const-wide/16 v1, 0x0

    goto :goto_29

    :cond_27
    iget-wide v1, p0, Lmiuix/animation/controller/FolmeBlink;->mInterval:J

    :goto_29
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2c
    return-void
.end method

.method public stopBlink()V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 3
    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    .line 9
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBlink;->mBlinkTask:Ljava/lang/Runnable;

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 16
    sget-object v1, Lmiuix/animation/IBlinkStyle$BlinkType;->NORMAL:Lmiuix/animation/IBlinkStyle$BlinkType;

    .line 18
    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x1

    .line 23
    new-array v2, v2, [Lmiuix/animation/base/AnimConfig;

    .line 25
    iget-object v3, p0, Lmiuix/animation/controller/FolmeBlink;->mStopConfig:Lmiuix/animation/base/AnimConfig;

    .line 27
    const/4 v4, 0x0

    .line 28
    aput-object v3, v2, v4

    .line 30
    invoke-interface {v0, v1, v2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 33
    return-void
.end method
