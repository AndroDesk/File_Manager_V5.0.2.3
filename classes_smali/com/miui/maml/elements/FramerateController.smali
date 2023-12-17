.class public Lcom/miui/maml/elements/FramerateController;
.super Lcom/miui/maml/elements/ScreenElement;
.source "FramerateController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/FramerateController$ControlPoint;
    }
.end annotation


# static fields
.field public static final INNER_TAG:Ljava/lang/String; = "ControlPoint"

.field public static final TAG_NAME:Ljava/lang/String; = "FramerateController"


# instance fields
.field private mControlPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/FramerateController$ControlPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mDelay:J

.field private mLastUpdateTime:J

.field private mLock:Ljava/lang/Object;

.field private mLoop:Z

.field private mNextUpdateInterval:J

.field private mStartTime:J

.field private mStopped:Z

.field private mTag:Ljava/lang/String;

.field private mTimeRange:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 9

    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/FramerateController;->mLock:Ljava/lang/Object;

    const-string p2, "loop"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/miui/maml/elements/FramerateController;->mLoop:Z

    const-string p2, "tag"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/elements/FramerateController;->mTag:Ljava/lang/String;

    const-string p2, "delay"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    :try_start_31
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/maml/elements/FramerateController;->mDelay:J
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_37} :catch_38

    goto :goto_3f

    :catch_38
    const-string p2, "FramerateController"

    const-string v0, "invalid delay attribute"

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    :goto_3f
    const-string p2, "ControlPoint"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 p2, 0x0

    move v0, p2

    :goto_47
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_60

    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    iget-object v2, p0, Lcom/miui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    new-instance v3, Lcom/miui/maml/elements/FramerateController$ControlPoint;

    invoke-direct {v3, v1}, Lcom/miui/maml/elements/FramerateController$ControlPoint;-><init>(Lorg/w3c/dom/Element;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    :cond_60
    iget-object p1, p0, Lcom/miui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/elements/FramerateController$ControlPoint;

    iget-wide v2, p1, Lcom/miui/maml/elements/FramerateController$ControlPoint;->mTime:J

    iput-wide v2, p0, Lcom/miui/maml/elements/FramerateController;->mTimeRange:J

    iget-boolean p1, p0, Lcom/miui/maml/elements/FramerateController;->mLoop:Z

    if-eqz p1, :cond_7d

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_7d

    move p2, v1

    :cond_7d
    iput-boolean p2, p0, Lcom/miui/maml/elements/FramerateController;->mLoop:Z

    return-void
.end method

.method private restart(J)V
    .registers 6

    iget-object v0, p0, Lcom/miui/maml/elements/FramerateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Lcom/miui/maml/elements/FramerateController;->mDelay:J

    add-long/2addr p1, v1

    iput-wide p1, p0, Lcom/miui/maml/elements/FramerateController;->mStartTime:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/maml/elements/FramerateController;->mStopped:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/miui/maml/elements/FramerateController;->mLastUpdateTime:J

    iput-wide p1, p0, Lcom/miui/maml/elements/FramerateController;->mNextUpdateInterval:J

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    monitor-exit v0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public playAnim(JJJZZ)V
    .registers 10

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-super/range {p0 .. p8}, Lcom/miui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    sub-long/2addr p1, p3

    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/FramerateController;->restart(J)V

    return-void
.end method

.method public reset(J)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->reset(J)V

    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/FramerateController;->restart(J)V

    return-void
.end method

.method public setAnim([Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/maml/elements/FramerateController;->mTag:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/maml/elements/ScreenElement;->isTagEnable([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    return-void
.end method

.method public updateFramerate(J)J
    .registers 16

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->updateVisibility()V

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    move-result v0

    const-wide v1, 0x7fffffffffffffffL

    if-nez v0, :cond_f

    return-wide v1

    :cond_f
    iget-object v0, p0, Lcom/miui/maml/elements/FramerateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_12
    iget-boolean v3, p0, Lcom/miui/maml/elements/FramerateController;->mStopped:Z

    if-eqz v3, :cond_18

    monitor-exit v0

    return-wide v1

    :cond_18
    iget-wide v3, p0, Lcom/miui/maml/elements/FramerateController;->mLastUpdateTime:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_33

    sub-long v3, p1, v3

    cmp-long v7, v3, v5

    if-ltz v7, :cond_33

    iget-wide v7, p0, Lcom/miui/maml/elements/FramerateController;->mNextUpdateInterval:J

    cmp-long v9, v3, v7

    if-gez v9, :cond_33

    sub-long/2addr v7, v3

    iput-wide v7, p0, Lcom/miui/maml/elements/FramerateController;->mNextUpdateInterval:J

    iput-wide p1, p0, Lcom/miui/maml/elements/FramerateController;->mLastUpdateTime:J

    monitor-exit v0

    return-wide v7

    :cond_33
    iget-wide v3, p0, Lcom/miui/maml/elements/FramerateController;->mStartTime:J

    sub-long v3, p1, v3

    cmp-long v7, v3, v5

    if-gez v7, :cond_3c

    move-wide v3, v5

    :cond_3c
    iget-boolean v7, p0, Lcom/miui/maml/elements/FramerateController;->mLoop:Z

    if-eqz v7, :cond_46

    iget-wide v7, p0, Lcom/miui/maml/elements/FramerateController;->mTimeRange:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    rem-long/2addr v3, v7

    :cond_46
    iget-object v7, p0, Lcom/miui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    :goto_4e
    if-ltz v7, :cond_84

    iget-object v9, p0, Lcom/miui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/maml/elements/FramerateController$ControlPoint;

    iget-wide v10, v9, Lcom/miui/maml/elements/FramerateController$ControlPoint;->mTime:J

    cmp-long v12, v3, v10

    if-ltz v12, :cond_80

    iget v9, v9, Lcom/miui/maml/elements/FramerateController$ControlPoint;->mFramerate:I

    int-to-float v9, v9

    invoke-virtual {p0, v9}, Lcom/miui/maml/elements/ScreenElement;->requestFramerate(F)V

    iget-boolean v9, p0, Lcom/miui/maml/elements/FramerateController;->mLoop:Z

    if-nez v9, :cond_73

    iget-object v9, p0, Lcom/miui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v8

    if-ne v7, v9, :cond_73

    iput-boolean v8, p0, Lcom/miui/maml/elements/FramerateController;->mStopped:Z

    :cond_73
    iput-wide p1, p0, Lcom/miui/maml/elements/FramerateController;->mLastUpdateTime:J

    iget-boolean p1, p0, Lcom/miui/maml/elements/FramerateController;->mStopped:Z

    if-eqz p1, :cond_7a

    goto :goto_7c

    :cond_7a
    sub-long v1, v5, v3

    :goto_7c
    iput-wide v1, p0, Lcom/miui/maml/elements/FramerateController;->mNextUpdateInterval:J

    monitor-exit v0

    return-wide v1

    :cond_80
    add-int/lit8 v7, v7, -0x1

    move-wide v5, v10

    goto :goto_4e

    :cond_84
    monitor-exit v0

    return-wide v1

    :catchall_86
    move-exception p1

    monitor-exit v0
    :try_end_88
    .catchall {:try_start_12 .. :try_end_88} :catchall_86

    throw p1
.end method
