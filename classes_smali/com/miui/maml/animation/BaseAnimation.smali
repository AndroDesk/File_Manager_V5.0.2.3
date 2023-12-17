.class public abstract Lcom/miui/maml/animation/BaseAnimation;
.super Ljava/lang/Object;
.source "BaseAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/animation/BaseAnimation$AnimationItem;
    }
.end annotation


# static fields
.field private static final INFINITE_TIME:J = 0xe8d4a51000L

.field private static final LOG_TAG:Ljava/lang/String; = "BaseAnimation"

.field public static final PLAY_TO_END:I = -0x1

.field private static final VAR_CURRENT_FRAME:Ljava/lang/String; = "current_frame"


# instance fields
.field private mAnimEndTime:J

.field private mAnimStartTime:J

.field public mAttrs:[Ljava/lang/String;

.field private mCurValues:[D

.field private mCurrentFrame:Lcom/miui/maml/data/IndexedVariable;

.field private mDelay:Lcom/miui/maml/data/Expression;

.field private mDisable:Z

.field private mEndTime:J

.field private mHasName:Z

.field private mInitPaused:Z

.field private mIsDelay:Z

.field private mIsFirstFrame:Z

.field private mIsFirstReset:Z

.field private mIsLastFrame:Z

.field private mIsLoop:Z

.field private mIsPaused:Z

.field private mIsReverse:Z

.field private mIsTimeInfinite:Z

.field public mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/animation/BaseAnimation$AnimationItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLoop:Z

.field private mName:Ljava/lang/String;

.field private mPauseTime:J

.field private mPlayTimeRange:J

.field private mRealTimeRange:J

.field private mResetTime:J

.field public mScreenElement:Lcom/miui/maml/elements/ScreenElement;

.field private mStartTime:J

.field private mTag:Ljava/lang/String;

.field private mTriggers:Lcom/miui/maml/CommandTriggers;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V
    .registers 5

    const/4 v0, 0x0

    const-string v1, "value"

    .line 10
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/miui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/elements/ScreenElement;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/elements/ScreenElement;)V
    .registers 5

    const-string v0, "value"

    .line 9
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/elements/ScreenElement;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/elements/ScreenElement;)V
    .registers 7

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    .line 8
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/miui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/String;Lcom/miui/maml/elements/ScreenElement;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/String;Lcom/miui/maml/elements/ScreenElement;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mLoop:Z

    .line 4
    iput-object p4, p0, Lcom/miui/maml/animation/BaseAnimation;->mScreenElement:Lcom/miui/maml/elements/ScreenElement;

    .line 5
    iput-object p3, p0, Lcom/miui/maml/animation/BaseAnimation;->mAttrs:[Ljava/lang/String;

    .line 6
    array-length p3, p3

    new-array p3, p3, [D

    iput-object p3, p0, Lcom/miui/maml/animation/BaseAnimation;->mCurValues:[D

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/animation/BaseAnimation;->load(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    return-void
.end method

.method private getRatio(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;JJJ)F
    .registers 10

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v0, p6, v0

    .line 5
    if-nez v0, :cond_9

    .line 7
    const/high16 p2, 0x3f800000  # 1.0f

    .line 9
    goto :goto_d

    .line 10
    :cond_9
    sub-long/2addr p2, p4

    .line 11
    long-to-float p2, p2

    .line 12
    long-to-float p3, p6

    .line 13
    div-float/2addr p2, p3

    .line 14
    :goto_d
    if-eqz p1, :cond_17

    .line 16
    iget-object p1, p1, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mInterpolator:Lcom/miui/maml/animation/interpolater/InterpolatorHelper;

    .line 18
    if-eqz p1, :cond_17

    .line 20
    invoke-virtual {p1, p2}, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->get(F)F

    .line 23
    move-result p2

    .line 24
    :cond_17
    return p2
.end method

.method private load(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .registers 11

    .line 1
    const-string v0, "name"

    .line 3
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mName:Ljava/lang/String;

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    xor-int/2addr v0, v1

    .line 15
    iput-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mHasName:Z

    .line 17
    invoke-virtual {p0}, Lcom/miui/maml/animation/BaseAnimation;->getVariables()Lcom/miui/maml/data/Variables;

    .line 20
    move-result-object v0

    .line 21
    iget-boolean v2, p0, Lcom/miui/maml/animation/BaseAnimation;->mHasName:Z

    .line 23
    if-eqz v2, :cond_2e

    .line 25
    new-instance v2, Lcom/miui/maml/data/IndexedVariable;

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    iget-object v4, p0, Lcom/miui/maml/animation/BaseAnimation;->mName:Ljava/lang/String;

    .line 34
    const-string v5, "."

    .line 36
    const-string v6, "current_frame"

    .line 38
    invoke-static {v3, v4, v5, v6}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v3

    .line 42
    invoke-direct {v2, v3, v0, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 45
    iput-object v2, p0, Lcom/miui/maml/animation/BaseAnimation;->mCurrentFrame:Lcom/miui/maml/data/IndexedVariable;

    .line 47
    :cond_2e
    const-string v2, "delay"

    .line 49
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v2

    .line 53
    invoke-static {v0, v2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mDelay:Lcom/miui/maml/data/Expression;

    .line 59
    const-string v0, "initPause"

    .line 61
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 68
    move-result v0

    .line 69
    iput-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mInitPaused:Z

    .line 71
    const-string v0, "loop"

    .line 73
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    const-string v2, "false"

    .line 79
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 82
    move-result v0

    .line 83
    xor-int/2addr v0, v1

    .line 84
    iput-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mLoop:Z

    .line 86
    const-string v0, "tag"

    .line 88
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    iput-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mTag:Ljava/lang/String;

    .line 94
    const/4 v0, 0x2

    .line 95
    new-array v2, v0, [Ljava/lang/String;

    .line 97
    const/4 v3, 0x0

    .line 98
    aput-object p2, v2, v3

    .line 100
    const-string p2, "Item"

    .line 102
    aput-object p2, v2, v1

    .line 104
    new-instance p2, Lcom/miui/maml/animation/BaseAnimation$1;

    .line 106
    invoke-direct {p2, p0}, Lcom/miui/maml/animation/BaseAnimation$1;-><init>(Lcom/miui/maml/animation/BaseAnimation;)V

    .line 109
    invoke-static {p1, v2, p2}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildrenTags(Lorg/w3c/dom/Element;[Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    .line 112
    iget-object p2, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    .line 114
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 117
    move-result p2

    .line 118
    if-gtz p2, :cond_7f

    .line 120
    const-string p1, "BaseAnimation"

    .line 122
    const-string p2, "empty items"

    .line 124
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void

    .line 128
    :cond_7f
    iget-object p2, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    .line 130
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 133
    move-result v2

    .line 134
    sub-int/2addr v2, v1

    .line 135
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 138
    move-result-object p2

    .line 139
    check-cast p2, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    .line 141
    iget-wide v4, p2, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    .line 143
    const-wide v6, 0xe8d4a51000L

    .line 148
    cmp-long p2, v4, v6

    .line 150
    if-ltz p2, :cond_98

    .line 152
    move v3, v1

    .line 153
    :cond_98
    iput-boolean v3, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsTimeInfinite:Z

    .line 155
    iget-object p2, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    .line 157
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 160
    move-result p2

    .line 161
    if-le p2, v1, :cond_b8

    .line 163
    iget-boolean p2, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsTimeInfinite:Z

    .line 165
    if-eqz p2, :cond_b8

    .line 167
    iget-object p2, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    .line 169
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 172
    move-result v1

    .line 173
    sub-int/2addr v1, v0

    .line 174
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 177
    move-result-object p2

    .line 178
    check-cast p2, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    .line 180
    iget-wide v0, p2, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    .line 182
    iput-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mRealTimeRange:J

    .line 184
    goto :goto_c9

    .line 185
    :cond_b8
    iget-object p2, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    .line 187
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 190
    move-result v0

    .line 191
    sub-int/2addr v0, v1

    .line 192
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 195
    move-result-object p2

    .line 196
    check-cast p2, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    .line 198
    iget-wide v0, p2, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    .line 200
    iput-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mRealTimeRange:J

    .line 202
    :goto_c9
    const-string p2, "Triggers"

    .line 204
    invoke-static {p1, p2}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 207
    move-result-object p1

    .line 208
    if-eqz p1, :cond_da

    .line 210
    new-instance p2, Lcom/miui/maml/CommandTriggers;

    .line 212
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mScreenElement:Lcom/miui/maml/elements/ScreenElement;

    .line 214
    invoke-direct {p2, p1, v0}, Lcom/miui/maml/CommandTriggers;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    .line 217
    iput-object p2, p0, Lcom/miui/maml/animation/BaseAnimation;->mTriggers:Lcom/miui/maml/CommandTriggers;

    .line 219
    :cond_da
    return-void
.end method

.method private reevaluate()V
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-wide/16 v2, 0x0

    .line 10
    move v4, v1

    .line 11
    move-wide v5, v2

    .line 12
    :goto_b
    if-ge v4, v0, :cond_31

    .line 14
    iget-object v7, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v7

    .line 20
    check-cast v7, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    .line 22
    iget-object v8, v7, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mDeltaTimeExp:Lcom/miui/maml/data/Expression;

    .line 24
    if-eqz v8, :cond_27

    .line 26
    invoke-virtual {v8}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 29
    move-result-wide v8

    .line 30
    double-to-long v8, v8

    .line 31
    cmp-long v10, v8, v2

    .line 33
    if-gez v10, :cond_23

    .line 35
    move-wide v8, v2

    .line 36
    :cond_23
    add-long/2addr v5, v8

    .line 37
    iput-wide v5, v7, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    .line 39
    goto :goto_2e

    .line 40
    :cond_27
    iget-wide v7, v7, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    .line 42
    cmp-long v9, v7, v5

    .line 44
    if-ltz v9, :cond_2e

    .line 46
    move-wide v5, v7

    .line 47
    :cond_2e
    :goto_2e
    add-int/lit8 v4, v4, 0x1

    .line 49
    goto :goto_b

    .line 50
    :cond_31
    const-wide v2, 0xe8d4a51000L

    .line 55
    cmp-long v2, v5, v2

    .line 57
    const/4 v3, 0x1

    .line 58
    if-ltz v2, :cond_3c

    .line 60
    move v1, v3

    .line 61
    :cond_3c
    iput-boolean v1, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsTimeInfinite:Z

    .line 63
    if-le v0, v3, :cond_51

    .line 65
    if-eqz v1, :cond_51

    .line 67
    iget-object v1, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    .line 69
    add-int/lit8 v0, v0, -0x2

    .line 71
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    .line 77
    iget-wide v0, v0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    .line 79
    iput-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mRealTimeRange:J

    .line 81
    goto :goto_53

    .line 82
    :cond_51
    iput-wide v5, p0, Lcom/miui/maml/animation/BaseAnimation;->mRealTimeRange:J

    .line 84
    :goto_53
    return-void
.end method

.method private resetTime()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsFirstReset:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_7

    .line 6
    iput-boolean v1, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsFirstReset:Z

    .line 8
    :cond_7
    iput-boolean v1, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsLastFrame:Z

    .line 10
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v0

    .line 16
    :goto_f
    if-ge v1, v0, :cond_1f

    .line 18
    iget-object v2, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    .line 26
    invoke-virtual {v2}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->reset()V

    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 31
    goto :goto_f

    .line 32
    :cond_1f
    invoke-direct {p0}, Lcom/miui/maml/animation/BaseAnimation;->reevaluate()V

    .line 35
    iget-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mStartTime:J

    .line 37
    invoke-direct {p0, v0, v1}, Lcom/miui/maml/animation/BaseAnimation;->transToAnimTime(J)J

    .line 40
    move-result-wide v0

    .line 41
    iput-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mAnimStartTime:J

    .line 43
    iget-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mEndTime:J

    .line 45
    invoke-direct {p0, v0, v1}, Lcom/miui/maml/animation/BaseAnimation;->transToAnimTime(J)J

    .line 48
    move-result-wide v0

    .line 49
    iput-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mAnimEndTime:J

    .line 51
    iget-wide v2, p0, Lcom/miui/maml/animation/BaseAnimation;->mAnimStartTime:J

    .line 53
    sub-long/2addr v0, v2

    .line 54
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    .line 57
    move-result-wide v0

    .line 58
    iput-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mPlayTimeRange:J

    .line 60
    return-void
.end method

.method private transToAnimTime(J)J
    .registers 5

    .line 1
    const-wide/16 v0, -0x1

    .line 3
    cmp-long v0, p1, v0

    .line 5
    if-eqz v0, :cond_e

    .line 7
    iget-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mRealTimeRange:J

    .line 9
    cmp-long v0, p1, v0

    .line 11
    if-lez v0, :cond_d

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    return-wide p1

    .line 15
    :cond_e
    :goto_e
    iget-wide p1, p0, Lcom/miui/maml/animation/BaseAnimation;->mRealTimeRange:J

    .line 17
    return-wide p1
.end method


# virtual methods
.method public finish()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mTriggers:Lcom/miui/maml/CommandTriggers;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/CommandTriggers;->finish()V

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    move v2, v1

    .line 16
    :goto_f
    if-ge v2, v0, :cond_1f

    .line 18
    iget-object v3, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    .line 26
    invoke-virtual {v3}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->reset()V

    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 31
    goto :goto_f

    .line 32
    :cond_1f
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mCurValues:[D

    .line 34
    array-length v0, v0

    .line 35
    :goto_22
    if-ge v1, v0, :cond_2d

    .line 37
    iget-object v2, p0, Lcom/miui/maml/animation/BaseAnimation;->mCurValues:[D

    .line 39
    const-wide/16 v3, 0x0

    .line 41
    aput-wide v3, v2, v1

    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 45
    goto :goto_22

    .line 46
    :cond_2d
    return-void
.end method

.method public getAttrs()[Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mAttrs:[Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getCurValue(I)D
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mCurValues:[D

    .line 3
    aget-wide v1, v0, p1

    .line 5
    return-wide v1
.end method

.method public getDefaultValue()D
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDelayValue(I)D
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/miui/maml/animation/BaseAnimation;->getItem(I)Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    .line 5
    move-result-object v0

    .line 6
    if-eqz v0, :cond_c

    .line 8
    invoke-virtual {v0, p1}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    .line 11
    move-result-wide v0

    .line 12
    goto :goto_e

    .line 13
    :cond_c
    const-wide/16 v0, 0x0

    .line 15
    :goto_e
    return-wide v0
.end method

.method public getItem(I)Lcom/miui/maml/animation/BaseAnimation$AnimationItem;
    .registers 3

    .line 1
    if-ltz p1, :cond_14

    .line 3
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 9
    if-lt p1, v0, :cond_b

    .line 11
    goto :goto_14

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    .line 20
    return-object p1

    .line 21
    :cond_14
    :goto_14
    const/4 p1, 0x0

    .line 22
    return-object p1
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mTag:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public final getVariables()Lcom/miui/maml/data/Variables;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mScreenElement:Lcom/miui/maml/elements/ScreenElement;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public init()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mTriggers:Lcom/miui/maml/CommandTriggers;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/CommandTriggers;->init()V

    .line 8
    :cond_7
    return-void
.end method

.method public onAction(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mTriggers:Lcom/miui/maml/CommandTriggers;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lcom/miui/maml/CommandTriggers;->onAction(Ljava/lang/String;)V

    .line 8
    :cond_7
    return-void
.end method

.method public onCreateItem(Lcom/miui/maml/animation/BaseAnimation;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/BaseAnimation$AnimationItem;
    .registers 4

    .line 1
    new-instance v0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    .line 3
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;-><init>(Lcom/miui/maml/animation/BaseAnimation;Lorg/w3c/dom/Element;)V

    .line 6
    return-object v0
.end method

.method public onTick(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;Lcom/miui/maml/animation/BaseAnimation$AnimationItem;F)V
    .registers 15

    .line 1
    if-nez p1, :cond_5

    .line 3
    if-nez p2, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {p0}, Lcom/miui/maml/animation/BaseAnimation;->getDefaultValue()D

    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Lcom/miui/maml/animation/BaseAnimation;->mAttrs:[Ljava/lang/String;

    .line 12
    array-length v2, v2

    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_d
    if-ge v3, v2, :cond_26

    .line 16
    if-nez p1, :cond_13

    .line 18
    move-wide v4, v0

    .line 19
    goto :goto_17

    .line 20
    :cond_13
    invoke-virtual {p1, v3}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    .line 23
    move-result-wide v4

    .line 24
    :goto_17
    iget-object v6, p0, Lcom/miui/maml/animation/BaseAnimation;->mCurValues:[D

    .line 26
    invoke-virtual {p2, v3}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    .line 29
    move-result-wide v7

    .line 30
    sub-double/2addr v7, v4

    .line 31
    float-to-double v9, p3

    .line 32
    mul-double/2addr v7, v9

    .line 33
    add-double/2addr v7, v4

    .line 34
    aput-wide v7, v6, v3

    .line 36
    add-int/lit8 v3, v3, 0x1

    .line 38
    goto :goto_d

    .line 39
    :cond_26
    return-void
.end method

.method public pause()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mTriggers:Lcom/miui/maml/CommandTriggers;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/CommandTriggers;->pause()V

    .line 8
    :cond_7
    return-void
.end method

.method public pauseAnim(J)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mDisable:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsPaused:Z

    .line 8
    if-nez v0, :cond_e

    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsPaused:Z

    .line 13
    iput-wide p1, p0, Lcom/miui/maml/animation/BaseAnimation;->mPauseTime:J

    .line 15
    :cond_e
    return-void
.end method

.method public playAnim(JJJZZ)V
    .registers 14

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mDisable:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput-wide p1, p0, Lcom/miui/maml/animation/BaseAnimation;->mResetTime:J

    .line 8
    const-wide/16 v0, 0x0

    .line 10
    cmp-long v2, p3, v0

    .line 12
    const-wide/16 v3, -0x1

    .line 14
    if-gez v2, :cond_15

    .line 16
    cmp-long v2, p3, v3

    .line 18
    if-nez v2, :cond_14

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    move-wide p3, v0

    .line 22
    :cond_15
    :goto_15
    iput-wide p3, p0, Lcom/miui/maml/animation/BaseAnimation;->mStartTime:J

    .line 24
    iput-wide p3, p0, Lcom/miui/maml/animation/BaseAnimation;->mAnimStartTime:J

    .line 26
    cmp-long v2, p5, v0

    .line 28
    if-gez v2, :cond_23

    .line 30
    cmp-long v2, p5, v3

    .line 32
    if-nez v2, :cond_22

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    move-wide p5, v0

    .line 36
    :cond_23
    :goto_23
    iput-wide p5, p0, Lcom/miui/maml/animation/BaseAnimation;->mEndTime:J

    .line 38
    iput-wide p5, p0, Lcom/miui/maml/animation/BaseAnimation;->mAnimEndTime:J

    .line 40
    iput-boolean p7, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsLoop:Z

    .line 42
    iput-boolean p8, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsDelay:Z

    .line 44
    cmp-long p7, p3, v3

    .line 46
    const/4 v2, 0x1

    .line 47
    const/4 v3, 0x0

    .line 48
    if-eqz p7, :cond_3c

    .line 50
    cmp-long p7, p3, p5

    .line 52
    if-ltz p7, :cond_3a

    .line 54
    cmp-long p7, p5, v0

    .line 56
    if-ltz p7, :cond_3a

    .line 58
    goto :goto_3c

    .line 59
    :cond_3a
    move p7, v3

    .line 60
    goto :goto_3d

    .line 61
    :cond_3c
    :goto_3c
    move p7, v2

    .line 62
    :goto_3d
    iput-boolean p7, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsReverse:Z

    .line 64
    cmp-long p3, p3, p5

    .line 66
    if-nez p3, :cond_45

    .line 68
    iput-boolean v3, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsLoop:Z

    .line 70
    :cond_45
    if-eqz p8, :cond_54

    .line 72
    iget-object p3, p0, Lcom/miui/maml/animation/BaseAnimation;->mDelay:Lcom/miui/maml/data/Expression;

    .line 74
    if-eqz p3, :cond_54

    .line 76
    long-to-double p1, p1

    .line 77
    invoke-virtual {p3}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 80
    move-result-wide p3

    .line 81
    add-double/2addr p3, p1

    .line 82
    double-to-long p1, p3

    .line 83
    iput-wide p1, p0, Lcom/miui/maml/animation/BaseAnimation;->mResetTime:J

    .line 85
    :cond_54
    iput-boolean v2, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsFirstFrame:Z

    .line 87
    iput-boolean v3, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsLastFrame:Z

    .line 89
    iput-boolean v3, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsPaused:Z

    .line 91
    iput-boolean v2, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsFirstReset:Z

    .line 93
    iput-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mPlayTimeRange:J

    .line 95
    return-void
.end method

.method public reset(J)V
    .registers 12

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mDisable:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mAttrs:[Ljava/lang/String;

    .line 8
    array-length v0, v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_9
    if-ge v1, v0, :cond_16

    .line 12
    iget-object v2, p0, Lcom/miui/maml/animation/BaseAnimation;->mCurValues:[D

    .line 14
    invoke-virtual {p0, v1}, Lcom/miui/maml/animation/BaseAnimation;->getDelayValue(I)D

    .line 17
    move-result-wide v3

    .line 18
    aput-wide v3, v2, v1

    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 22
    goto :goto_9

    .line 23
    :cond_16
    iget-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mInitPaused:Z

    .line 25
    if-eqz v0, :cond_26

    .line 27
    const-wide/16 v3, 0x0

    .line 29
    const-wide/16 v5, 0x0

    .line 31
    const/4 v7, 0x0

    .line 32
    const/4 v8, 0x0

    .line 33
    move-object v0, p0

    .line 34
    move-wide v1, p1

    .line 35
    invoke-virtual/range {v0 .. v8}, Lcom/miui/maml/animation/BaseAnimation;->playAnim(JJJZZ)V

    .line 38
    goto :goto_31

    .line 39
    :cond_26
    const-wide/16 v3, 0x0

    .line 41
    const-wide/16 v5, -0x1

    .line 43
    const/4 v7, 0x1

    .line 44
    const/4 v8, 0x1

    .line 45
    move-object v0, p0

    .line 46
    move-wide v1, p1

    .line 47
    invoke-virtual/range {v0 .. v8}, Lcom/miui/maml/animation/BaseAnimation;->playAnim(JJJZZ)V

    .line 50
    :goto_31
    iget-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mHasName:Z

    .line 52
    if-eqz v0, :cond_3c

    .line 54
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mCurrentFrame:Lcom/miui/maml/data/IndexedVariable;

    .line 56
    const-wide/16 v1, 0x0

    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 61
    :cond_3c
    const-string v0, "init"

    .line 63
    invoke-virtual {p0, v0}, Lcom/miui/maml/animation/BaseAnimation;->onAction(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public resume()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mTriggers:Lcom/miui/maml/CommandTriggers;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/CommandTriggers;->resume()V

    .line 8
    :cond_7
    return-void
.end method

.method public resumeAnim(J)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mDisable:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsPaused:Z

    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne v0, v1, :cond_15

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsPaused:Z

    .line 14
    iget-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mResetTime:J

    .line 16
    iget-wide v2, p0, Lcom/miui/maml/animation/BaseAnimation;->mPauseTime:J

    .line 18
    sub-long/2addr p1, v2

    .line 19
    add-long/2addr p1, v0

    .line 20
    iput-wide p1, p0, Lcom/miui/maml/animation/BaseAnimation;->mResetTime:J

    .line 22
    :cond_15
    return-void
.end method

.method public setCurValue(ID)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mCurValues:[D

    .line 3
    aput-wide p2, v0, p1

    .line 5
    return-void
.end method

.method public setDisable(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/animation/BaseAnimation;->mDisable:Z

    .line 3
    return-void
.end method

.method public final tick(J)V
    .registers 20

    .line 1
    move-object/from16 v8, p0

    .line 3
    iget-boolean v0, v8, Lcom/miui/maml/animation/BaseAnimation;->mIsPaused:Z

    .line 5
    if-nez v0, :cond_cf

    .line 7
    iget-boolean v0, v8, Lcom/miui/maml/animation/BaseAnimation;->mDisable:Z

    .line 9
    if-eqz v0, :cond_c

    .line 11
    goto/16 :goto_cf

    .line 13
    :cond_c
    iget-wide v0, v8, Lcom/miui/maml/animation/BaseAnimation;->mResetTime:J

    .line 15
    sub-long v0, p1, v0

    .line 17
    const-wide/16 v2, 0x0

    .line 19
    cmp-long v4, v0, v2

    .line 21
    const/4 v5, 0x0

    .line 22
    const/4 v6, 0x0

    .line 23
    if-gez v4, :cond_25

    .line 25
    iget-boolean v0, v8, Lcom/miui/maml/animation/BaseAnimation;->mIsFirstFrame:Z

    .line 27
    if-eqz v0, :cond_20

    .line 29
    iput-boolean v5, v8, Lcom/miui/maml/animation/BaseAnimation;->mIsFirstFrame:Z

    .line 31
    move-wide v0, v2

    .line 32
    goto :goto_25

    .line 33
    :cond_20
    const/4 v0, 0x0

    .line 34
    invoke-virtual {v8, v6, v6, v0}, Lcom/miui/maml/animation/BaseAnimation;->onTick(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;Lcom/miui/maml/animation/BaseAnimation$AnimationItem;F)V

    .line 37
    return-void

    .line 38
    :cond_25
    :goto_25
    iget-boolean v4, v8, Lcom/miui/maml/animation/BaseAnimation;->mIsFirstReset:Z

    .line 40
    if-nez v4, :cond_39

    .line 42
    iget-boolean v4, v8, Lcom/miui/maml/animation/BaseAnimation;->mIsLastFrame:Z

    .line 44
    if-eqz v4, :cond_3c

    .line 46
    iget-boolean v4, v8, Lcom/miui/maml/animation/BaseAnimation;->mIsTimeInfinite:Z

    .line 48
    if-nez v4, :cond_3c

    .line 50
    iget-boolean v4, v8, Lcom/miui/maml/animation/BaseAnimation;->mLoop:Z

    .line 52
    if-eqz v4, :cond_3c

    .line 54
    iget-boolean v4, v8, Lcom/miui/maml/animation/BaseAnimation;->mIsLoop:Z

    .line 56
    if-eqz v4, :cond_3c

    .line 58
    :cond_39
    invoke-direct/range {p0 .. p0}, Lcom/miui/maml/animation/BaseAnimation;->resetTime()V

    .line 61
    :cond_3c
    iget-boolean v4, v8, Lcom/miui/maml/animation/BaseAnimation;->mIsTimeInfinite:Z

    .line 63
    const/4 v7, 0x1

    .line 64
    if-nez v4, :cond_49

    .line 66
    iget-boolean v4, v8, Lcom/miui/maml/animation/BaseAnimation;->mLoop:Z

    .line 68
    if-eqz v4, :cond_49

    .line 70
    iget-boolean v4, v8, Lcom/miui/maml/animation/BaseAnimation;->mIsLoop:Z

    .line 72
    if-nez v4, :cond_68

    .line 74
    :cond_49
    iget-boolean v4, v8, Lcom/miui/maml/animation/BaseAnimation;->mIsLastFrame:Z

    .line 76
    if-eqz v4, :cond_68

    .line 78
    iput-boolean v7, v8, Lcom/miui/maml/animation/BaseAnimation;->mIsPaused:Z

    .line 80
    iget-wide v0, v8, Lcom/miui/maml/animation/BaseAnimation;->mResetTime:J

    .line 82
    iget-wide v2, v8, Lcom/miui/maml/animation/BaseAnimation;->mPlayTimeRange:J

    .line 84
    add-long/2addr v0, v2

    .line 85
    iput-wide v0, v8, Lcom/miui/maml/animation/BaseAnimation;->mPauseTime:J

    .line 87
    iget-boolean v0, v8, Lcom/miui/maml/animation/BaseAnimation;->mHasName:Z

    .line 89
    if-eqz v0, :cond_62

    .line 91
    iget-object v0, v8, Lcom/miui/maml/animation/BaseAnimation;->mCurrentFrame:Lcom/miui/maml/data/IndexedVariable;

    .line 93
    iget-wide v1, v8, Lcom/miui/maml/animation/BaseAnimation;->mEndTime:J

    .line 95
    long-to-double v1, v1

    .line 96
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 99
    :cond_62
    const-string v0, "end"

    .line 101
    invoke-virtual {v8, v0}, Lcom/miui/maml/animation/BaseAnimation;->onAction(Ljava/lang/String;)V

    .line 104
    return-void

    .line 105
    :cond_68
    iget-wide v9, v8, Lcom/miui/maml/animation/BaseAnimation;->mPlayTimeRange:J

    .line 107
    cmp-long v4, v0, v9

    .line 109
    const-wide/16 v11, 0x1

    .line 111
    if-ltz v4, :cond_7a

    .line 113
    add-long v13, v9, v11

    .line 115
    rem-long/2addr v0, v13

    .line 116
    sub-long v0, p1, v0

    .line 118
    iput-wide v0, v8, Lcom/miui/maml/animation/BaseAnimation;->mResetTime:J

    .line 120
    iput-boolean v7, v8, Lcom/miui/maml/animation/BaseAnimation;->mIsLastFrame:Z

    .line 122
    move-wide v0, v9

    .line 123
    :cond_7a
    iget-boolean v4, v8, Lcom/miui/maml/animation/BaseAnimation;->mIsReverse:Z

    .line 125
    if-eqz v4, :cond_82

    .line 127
    iget-wide v9, v8, Lcom/miui/maml/animation/BaseAnimation;->mAnimStartTime:J

    .line 129
    sub-long/2addr v9, v0

    .line 130
    goto :goto_85

    .line 131
    :cond_82
    iget-wide v9, v8, Lcom/miui/maml/animation/BaseAnimation;->mAnimStartTime:J

    .line 133
    add-long/2addr v9, v0

    .line 134
    :goto_85
    iget-wide v0, v8, Lcom/miui/maml/animation/BaseAnimation;->mRealTimeRange:J

    .line 136
    add-long/2addr v0, v11

    .line 137
    rem-long/2addr v9, v0

    .line 138
    iget-object v0, v8, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    .line 140
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 143
    move-result v0

    .line 144
    move-object v1, v6

    .line 145
    :goto_90
    if-ge v5, v0, :cond_ca

    .line 147
    iget-object v1, v8, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    .line 149
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 152
    move-result-object v1

    .line 153
    move-object v11, v1

    .line 154
    check-cast v11, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    .line 156
    iget-wide v12, v11, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    .line 158
    cmp-long v1, v9, v12

    .line 160
    if-gez v1, :cond_c6

    .line 162
    if-nez v5, :cond_a8

    .line 164
    move-wide v4, v2

    .line 165
    move-wide v15, v12

    .line 166
    move-object v12, v6

    .line 167
    move-wide v6, v15

    .line 168
    goto :goto_ba

    .line 169
    :cond_a8
    iget-object v0, v8, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    .line 171
    sub-int/2addr v5, v7

    .line 172
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 175
    move-result-object v0

    .line 176
    move-object v6, v0

    .line 177
    check-cast v6, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    .line 179
    iget-wide v0, v11, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    .line 181
    iget-wide v2, v6, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    .line 183
    sub-long/2addr v0, v2

    .line 184
    move-wide v4, v2

    .line 185
    move-object v12, v6

    .line 186
    move-wide v6, v0

    .line 187
    :goto_ba
    move-object/from16 v0, p0

    .line 189
    move-object v1, v12

    .line 190
    move-wide v2, v9

    .line 191
    invoke-direct/range {v0 .. v7}, Lcom/miui/maml/animation/BaseAnimation;->getRatio(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;JJJ)F

    .line 194
    move-result v0

    .line 195
    invoke-virtual {v8, v12, v11, v0}, Lcom/miui/maml/animation/BaseAnimation;->onTick(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;Lcom/miui/maml/animation/BaseAnimation$AnimationItem;F)V

    .line 198
    return-void

    .line 199
    :cond_c6
    add-int/lit8 v5, v5, 0x1

    .line 201
    move-object v1, v11

    .line 202
    goto :goto_90

    .line 203
    :cond_ca
    const/high16 v0, 0x3f800000  # 1.0f

    .line 205
    invoke-virtual {v8, v6, v1, v0}, Lcom/miui/maml/animation/BaseAnimation;->onTick(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;Lcom/miui/maml/animation/BaseAnimation$AnimationItem;F)V

    .line 208
    :cond_cf
    :goto_cf
    return-void
.end method
