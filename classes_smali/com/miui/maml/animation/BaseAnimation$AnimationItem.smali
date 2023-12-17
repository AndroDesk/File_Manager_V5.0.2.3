.class public Lcom/miui/maml/animation/BaseAnimation$AnimationItem;
.super Ljava/lang/Object;
.source "BaseAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/animation/BaseAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationItem"
.end annotation


# instance fields
.field private mAni:Lcom/miui/maml/animation/BaseAnimation;

.field private mAttrsValue:[D

.field public mDeltaTimeExp:Lcom/miui/maml/data/Expression;

.field public mExps:[Lcom/miui/maml/data/Expression;

.field public mInitTime:J

.field public mInterpolator:Lcom/miui/maml/animation/interpolater/InterpolatorHelper;

.field private mName:Ljava/lang/String;

.field private mNeedEvaluate:Z

.field public mTime:J


# direct methods
.method public constructor <init>(Lcom/miui/maml/animation/BaseAnimation;Lorg/w3c/dom/Element;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mNeedEvaluate:Z

    .line 7
    iput-object p1, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mAni:Lcom/miui/maml/animation/BaseAnimation;

    .line 9
    invoke-direct {p0, p2}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->load(Lorg/w3c/dom/Element;)V

    .line 12
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mAni:Lcom/miui/maml/animation/BaseAnimation;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/animation/BaseAnimation;->getVariables()Lcom/miui/maml/data/Variables;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "name"

    .line 9
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    iput-object v1, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mName:Ljava/lang/String;

    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_21

    .line 21
    iget-object v1, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mAni:Lcom/miui/maml/animation/BaseAnimation;

    .line 23
    iget-object v1, v1, Lcom/miui/maml/animation/BaseAnimation;->mScreenElement:Lcom/miui/maml/elements/ScreenElement;

    .line 25
    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mName:Ljava/lang/String;

    .line 31
    invoke-virtual {v1, v2, p0}, Lcom/miui/maml/ScreenElementRoot;->addAnimationItem(Ljava/lang/String;Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)V

    .line 34
    :cond_21
    invoke-static {v0, p1}, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->create(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/interpolater/InterpolatorHelper;

    .line 37
    move-result-object v1

    .line 38
    iput-object v1, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mInterpolator:Lcom/miui/maml/animation/interpolater/InterpolatorHelper;

    .line 40
    const-string v1, "time"

    .line 42
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_39

    .line 52
    :try_start_33
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 55
    move-result-wide v1

    .line 56
    iput-wide v1, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mTime:J
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_39} :catch_39

    .line 58
    :catch_39
    :cond_39
    const-string v1, "dtime"

    .line 60
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 67
    move-result-object v1

    .line 68
    iput-object v1, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mDeltaTimeExp:Lcom/miui/maml/data/Expression;

    .line 70
    iget-object v1, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mAni:Lcom/miui/maml/animation/BaseAnimation;

    .line 72
    invoke-virtual {v1}, Lcom/miui/maml/animation/BaseAnimation;->getAttrs()[Ljava/lang/String;

    .line 75
    move-result-object v1

    .line 76
    if-eqz v1, :cond_84

    .line 78
    array-length v2, v1

    .line 79
    new-array v2, v2, [D

    .line 81
    iput-object v2, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mAttrsValue:[D

    .line 83
    array-length v2, v1

    .line 84
    new-array v2, v2, [Lcom/miui/maml/data/Expression;

    .line 86
    iput-object v2, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mExps:[Lcom/miui/maml/data/Expression;

    .line 88
    array-length v2, v1

    .line 89
    const/4 v3, 0x0

    .line 90
    move v4, v3

    .line 91
    :goto_5a
    if-ge v3, v2, :cond_84

    .line 93
    aget-object v5, v1, v3

    .line 95
    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    move-result-object v6

    .line 99
    invoke-static {v0, v6}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 102
    move-result-object v6

    .line 103
    if-nez v6, :cond_7a

    .line 105
    if-nez v4, :cond_7a

    .line 107
    const-string v7, "value"

    .line 109
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    move-result v5

    .line 113
    if-nez v5, :cond_7a

    .line 115
    invoke-interface {p1, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    move-result-object v5

    .line 119
    invoke-static {v0, v5}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 122
    move-result-object v6

    .line 123
    :cond_7a
    iget-object v5, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mExps:[Lcom/miui/maml/data/Expression;

    .line 125
    add-int/lit8 v7, v4, 0x1

    .line 127
    aput-object v6, v5, v4

    .line 129
    add-int/lit8 v3, v3, 0x1

    .line 131
    move v4, v7

    .line 132
    goto :goto_5a

    .line 133
    :cond_84
    iget-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    .line 135
    iput-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mInitTime:J

    .line 137
    return-void
.end method

.method private reevaluate()V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mExps:[Lcom/miui/maml/data/Expression;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    array-length v1, v0

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_8
    if-ge v2, v1, :cond_1f

    .line 11
    aget-object v4, v0, v2

    .line 13
    iget-object v5, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mAttrsValue:[D

    .line 15
    add-int/lit8 v6, v3, 0x1

    .line 17
    if-nez v4, :cond_15

    .line 19
    const-wide/16 v7, 0x0

    .line 21
    goto :goto_19

    .line 22
    :cond_15
    invoke-virtual {v4}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 25
    move-result-wide v7

    .line 26
    :goto_19
    aput-wide v7, v5, v3

    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 30
    move v3, v6

    .line 31
    goto :goto_8

    .line 32
    :cond_1f
    return-void
.end method


# virtual methods
.method public attrExists(I)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mExps:[Lcom/miui/maml/data/Expression;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_10

    .line 6
    if-ltz p1, :cond_10

    .line 8
    array-length v2, v0

    .line 9
    if-lt p1, v2, :cond_b

    .line 11
    goto :goto_10

    .line 12
    :cond_b
    aget-object p1, v0, p1

    .line 14
    if-eqz p1, :cond_10

    .line 16
    const/4 v1, 0x1

    .line 17
    :cond_10
    :goto_10
    return v1
.end method

.method public changeInterpolator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    new-instance v0, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;

    .line 3
    iget-object v1, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mAni:Lcom/miui/maml/animation/BaseAnimation;

    .line 5
    invoke-virtual {v1}, Lcom/miui/maml/animation/BaseAnimation;->getVariables()Lcom/miui/maml/data/Variables;

    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1, p1, p3, p2}, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iput-object v0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mInterpolator:Lcom/miui/maml/animation/interpolater/InterpolatorHelper;

    .line 14
    return-void
.end method

.method public get(I)D
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mAttrsValue:[D

    .line 3
    if-eqz v0, :cond_19

    .line 5
    if-ltz p1, :cond_19

    .line 7
    array-length v0, v0

    .line 8
    if-lt p1, v0, :cond_a

    .line 10
    goto :goto_19

    .line 11
    :cond_a
    iget-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mNeedEvaluate:Z

    .line 13
    if-eqz v0, :cond_14

    .line 15
    invoke-direct {p0}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->reevaluate()V

    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mNeedEvaluate:Z

    .line 21
    :cond_14
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mAttrsValue:[D

    .line 23
    aget-wide v1, v0, p1

    .line 25
    return-wide v1

    .line 26
    :cond_19
    :goto_19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    const-string v1, "fail to get number in AnimationItem:"

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    const-string v0, "BaseAnimation"

    .line 45
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const-wide/16 v0, 0x0

    .line 50
    return-wide v0
.end method

.method public reset()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mNeedEvaluate:Z

    .line 4
    iget-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mInitTime:J

    .line 6
    iput-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    .line 8
    return-void
.end method
