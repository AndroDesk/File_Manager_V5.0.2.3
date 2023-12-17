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
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 9

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    .line 6
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object p2, p0, Lcom/miui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    .line 11
    new-instance p2, Ljava/lang/Object;

    .line 13
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p2, p0, Lcom/miui/maml/elements/FramerateController;->mLock:Ljava/lang/Object;

    .line 18
    const-string p2, "loop"

    .line 20
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p2

    .line 24
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 27
    move-result p2

    .line 28
    iput-boolean p2, p0, Lcom/miui/maml/elements/FramerateController;->mLoop:Z

    .line 30
    const-string p2, "tag"

    .line 32
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object p2

    .line 36
    iput-object p2, p0, Lcom/miui/maml/elements/FramerateController;->mTag:Ljava/lang/String;

    .line 38
    const-string p2, "delay"

    .line 40
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object p2

    .line 44
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_3f

    .line 50
    :try_start_31
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 53
    move-result-wide v0

    .line 54
    iput-wide v0, p0, Lcom/miui/maml/elements/FramerateController;->mDelay:J
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_37} :catch_38

    .line 56
    goto :goto_3f

    .line 57
    :catch_38
    const-string p2, "FramerateController"

    .line 59
    const-string v0, "invalid delay attribute"

    .line 61
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_3f
    :goto_3f
    const-string p2, "ControlPoint"

    .line 66
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    .line 69
    move-result-object p1

    .line 70
    const/4 p2, 0x0

    .line 71
    move v0, p2

    .line 72
    :goto_47
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 75
    move-result v1

    .line 76
    if-ge v0, v1, :cond_60

    .line 78
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Lorg/w3c/dom/Element;

    .line 84
    iget-object v2, p0, Lcom/miui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    .line 86
    new-instance v3, Lcom/miui/maml/elements/FramerateController$ControlPoint;

    .line 88
    invoke-direct {v3, v1}, Lcom/miui/maml/elements/FramerateController$ControlPoint;-><init>(Lorg/w3c/dom/Element;)V

    .line 91
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v0, v0, 0x1

    .line 96
    goto :goto_47

    .line 97
    :cond_60
    iget-object p1, p0, Lcom/miui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    .line 99
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 102
    move-result v0

    .line 103
    const/4 v1, 0x1

    .line 104
    sub-int/2addr v0, v1

    .line 105
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Lcom/miui/maml/elements/FramerateController$ControlPoint;

    .line 111
    iget-wide v2, p1, Lcom/miui/maml/elements/FramerateController$ControlPoint;->mTime:J

    .line 113
    iput-wide v2, p0, Lcom/miui/maml/elements/FramerateController;->mTimeRange:J

    .line 115
    iget-boolean p1, p0, Lcom/miui/maml/elements/FramerateController;->mLoop:Z

    .line 117
    if-eqz p1, :cond_7d

    .line 119
    const-wide/16 v4, 0x0

    .line 121
    cmp-long p1, v2, v4

    .line 123
    if-eqz p1, :cond_7d

    .line 125
    move p2, v1

    .line 126
    :cond_7d
    iput-boolean p2, p0, Lcom/miui/maml/elements/FramerateController;->mLoop:Z

    .line 128
    return-void
.end method

.method private restart(J)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/FramerateController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-wide v1, p0, Lcom/miui/maml/elements/FramerateController;->mDelay:J

    .line 6
    add-long/2addr p1, v1

    .line 7
    iput-wide p1, p0, Lcom/miui/maml/elements/FramerateController;->mStartTime:J

    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/miui/maml/elements/FramerateController;->mStopped:Z

    .line 12
    const-wide/16 p1, 0x0

    .line 14
    iput-wide p1, p0, Lcom/miui/maml/elements/FramerateController;->mLastUpdateTime:J

    .line 16
    iput-wide p1, p0, Lcom/miui/maml/elements/FramerateController;->mNextUpdateInterval:J

    .line 18
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_16
    move-exception p1

    .line 24
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    .line 25
    throw p1
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public playAnim(JJJZZ)V
    .registers 10

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-super/range {p0 .. p8}, Lcom/miui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    .line 11
    sub-long/2addr p1, p3

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/FramerateController;->restart(J)V

    .line 15
    return-void
.end method

.method public reset(J)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->reset(J)V

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/FramerateController;->restart(J)V

    .line 7
    return-void
.end method

.method public setAnim([Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/FramerateController;->mTag:Ljava/lang/String;

    .line 3
    invoke-static {p1, v0}, Lcom/miui/maml/elements/ScreenElement;->isTagEnable([Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 10
    return-void
.end method

.method public updateFramerate(J)J
    .registers 16

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->updateVisibility()V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 7
    move-result v0

    .line 8
    const-wide v1, 0x7fffffffffffffffL

    .line 13
    if-nez v0, :cond_f

    .line 15
    return-wide v1

    .line 16
    :cond_f
    iget-object v0, p0, Lcom/miui/maml/elements/FramerateController;->mLock:Ljava/lang/Object;

    .line 18
    monitor-enter v0

    .line 19
    :try_start_12
    iget-boolean v3, p0, Lcom/miui/maml/elements/FramerateController;->mStopped:Z

    .line 21
    if-eqz v3, :cond_18

    .line 23
    monitor-exit v0

    .line 24
    return-wide v1

    .line 25
    :cond_18
    iget-wide v3, p0, Lcom/miui/maml/elements/FramerateController;->mLastUpdateTime:J

    .line 27
    const-wide/16 v5, 0x0

    .line 29
    cmp-long v7, v3, v5

    .line 31
    if-lez v7, :cond_33

    .line 33
    sub-long v3, p1, v3

    .line 35
    cmp-long v7, v3, v5

    .line 37
    if-ltz v7, :cond_33

    .line 39
    iget-wide v7, p0, Lcom/miui/maml/elements/FramerateController;->mNextUpdateInterval:J

    .line 41
    cmp-long v9, v3, v7

    .line 43
    if-gez v9, :cond_33

    .line 45
    sub-long/2addr v7, v3

    .line 46
    iput-wide v7, p0, Lcom/miui/maml/elements/FramerateController;->mNextUpdateInterval:J

    .line 48
    iput-wide p1, p0, Lcom/miui/maml/elements/FramerateController;->mLastUpdateTime:J

    .line 50
    monitor-exit v0

    .line 51
    return-wide v7

    .line 52
    :cond_33
    iget-wide v3, p0, Lcom/miui/maml/elements/FramerateController;->mStartTime:J

    .line 54
    sub-long v3, p1, v3

    .line 56
    cmp-long v7, v3, v5

    .line 58
    if-gez v7, :cond_3c

    .line 60
    move-wide v3, v5

    .line 61
    :cond_3c
    iget-boolean v7, p0, Lcom/miui/maml/elements/FramerateController;->mLoop:Z

    .line 63
    if-eqz v7, :cond_46

    .line 65
    iget-wide v7, p0, Lcom/miui/maml/elements/FramerateController;->mTimeRange:J

    .line 67
    const-wide/16 v9, 0x1

    .line 69
    add-long/2addr v7, v9

    .line 70
    rem-long/2addr v3, v7

    .line 71
    :cond_46
    iget-object v7, p0, Lcom/miui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    .line 73
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 76
    move-result v7

    .line 77
    const/4 v8, 0x1

    .line 78
    sub-int/2addr v7, v8

    .line 79
    :goto_4e
    if-ltz v7, :cond_84

    .line 81
    iget-object v9, p0, Lcom/miui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    .line 83
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 86
    move-result-object v9

    .line 87
    check-cast v9, Lcom/miui/maml/elements/FramerateController$ControlPoint;

    .line 89
    iget-wide v10, v9, Lcom/miui/maml/elements/FramerateController$ControlPoint;->mTime:J

    .line 91
    cmp-long v12, v3, v10

    .line 93
    if-ltz v12, :cond_80

    .line 95
    iget v9, v9, Lcom/miui/maml/elements/FramerateController$ControlPoint;->mFramerate:I

    .line 97
    int-to-float v9, v9

    .line 98
    invoke-virtual {p0, v9}, Lcom/miui/maml/elements/ScreenElement;->requestFramerate(F)V

    .line 101
    iget-boolean v9, p0, Lcom/miui/maml/elements/FramerateController;->mLoop:Z

    .line 103
    if-nez v9, :cond_73

    .line 105
    iget-object v9, p0, Lcom/miui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    .line 107
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 110
    move-result v9

    .line 111
    sub-int/2addr v9, v8

    .line 112
    if-ne v7, v9, :cond_73

    .line 114
    iput-boolean v8, p0, Lcom/miui/maml/elements/FramerateController;->mStopped:Z

    .line 116
    :cond_73
    iput-wide p1, p0, Lcom/miui/maml/elements/FramerateController;->mLastUpdateTime:J

    .line 118
    iget-boolean p1, p0, Lcom/miui/maml/elements/FramerateController;->mStopped:Z

    .line 120
    if-eqz p1, :cond_7a

    .line 122
    goto :goto_7c

    .line 123
    :cond_7a
    sub-long v1, v5, v3

    .line 125
    :goto_7c
    iput-wide v1, p0, Lcom/miui/maml/elements/FramerateController;->mNextUpdateInterval:J

    .line 127
    monitor-exit v0

    .line 128
    return-wide v1

    .line 129
    :cond_80
    add-int/lit8 v7, v7, -0x1

    .line 131
    move-wide v5, v10

    .line 132
    goto :goto_4e

    .line 133
    :cond_84
    monitor-exit v0

    .line 134
    return-wide v1

    .line 135
    :catchall_86
    move-exception p1

    .line 136
    monitor-exit v0
    :try_end_88
    .catchall {:try_start_12 .. :try_end_88} :catchall_86

    .line 137
    throw p1
.end method
