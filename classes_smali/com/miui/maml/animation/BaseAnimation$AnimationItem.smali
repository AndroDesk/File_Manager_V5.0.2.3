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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/animation/BaseAnimation;Lorg/w3c/dom/Element;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mNeedEvaluate:Z

    iput-object p1, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mAni:Lcom/miui/maml/animation/BaseAnimation;

    invoke-direct {p0, p2}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 10

    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mAni:Lcom/miui/maml/animation/BaseAnimation;

    invoke-virtual {v0}, Lcom/miui/maml/animation/BaseAnimation;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    const-string v1, "name"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mAni:Lcom/miui/maml/animation/BaseAnimation;

    iget-object v1, v1, Lcom/miui/maml/animation/BaseAnimation;->mScreenElement:Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Lcom/miui/maml/ScreenElementRoot;->addAnimationItem(Ljava/lang/String;Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)V

    :cond_21
    invoke-static {v0, p1}, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->create(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/interpolater/InterpolatorHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mInterpolator:Lcom/miui/maml/animation/interpolater/InterpolatorHelper;

    const-string v1, "time"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_39

    :try_start_33
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mTime:J
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_39} :catch_39

    :catch_39
    :cond_39
    const-string v1, "dtime"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mDeltaTimeExp:Lcom/miui/maml/data/Expression;

    iget-object v1, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mAni:Lcom/miui/maml/animation/BaseAnimation;

    invoke-virtual {v1}, Lcom/miui/maml/animation/BaseAnimation;->getAttrs()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_84

    array-length v2, v1

    new-array v2, v2, [D

    iput-object v2, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mAttrsValue:[D

    array-length v2, v1

    new-array v2, v2, [Lcom/miui/maml/data/Expression;

    iput-object v2, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mExps:[Lcom/miui/maml/data/Expression;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_5a
    if-ge v3, v2, :cond_84

    aget-object v5, v1, v3

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v6

    if-nez v6, :cond_7a

    if-nez v4, :cond_7a

    const-string v7, "value"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7a

    invoke-interface {p1, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v6

    :cond_7a
    iget-object v5, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mExps:[Lcom/miui/maml/data/Expression;

    add-int/lit8 v7, v4, 0x1

    aput-object v6, v5, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_5a

    :cond_84
    iget-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    iput-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mInitTime:J

    return-void
.end method

.method private reevaluate()V
    .registers 10

    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mExps:[Lcom/miui/maml/data/Expression;

    if-nez v0, :cond_5

    return-void

    :cond_5
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v2, v1, :cond_1f

    aget-object v4, v0, v2

    iget-object v5, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mAttrsValue:[D

    add-int/lit8 v6, v3, 0x1

    if-nez v4, :cond_15

    const-wide/16 v7, 0x0

    goto :goto_19

    :cond_15
    invoke-virtual {v4}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v7

    :goto_19
    aput-wide v7, v5, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v6

    goto :goto_8

    :cond_1f
    return-void
.end method


# virtual methods
.method public attrExists(I)Z
    .registers 5

    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mExps:[Lcom/miui/maml/data/Expression;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    if-ltz p1, :cond_10

    array-length v2, v0

    if-lt p1, v2, :cond_b

    goto :goto_10

    :cond_b
    aget-object p1, v0, p1

    if-eqz p1, :cond_10

    const/4 v1, 0x1

    :cond_10
    :goto_10
    return v1
.end method

.method public changeInterpolator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;

    iget-object v1, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mAni:Lcom/miui/maml/animation/BaseAnimation;

    invoke-virtual {v1}, Lcom/miui/maml/animation/BaseAnimation;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    invoke-direct {v0, v1, p1, p3, p2}, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mInterpolator:Lcom/miui/maml/animation/interpolater/InterpolatorHelper;

    return-void
.end method

.method public get(I)D
    .registers 5

    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mAttrsValue:[D

    if-eqz v0, :cond_19

    if-ltz p1, :cond_19

    array-length v0, v0

    if-lt p1, v0, :cond_a

    goto :goto_19

    :cond_a
    iget-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mNeedEvaluate:Z

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->reevaluate()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mNeedEvaluate:Z

    :cond_14
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mAttrsValue:[D

    aget-wide v1, v0, p1

    return-wide v1

    :cond_19
    :goto_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to get number in AnimationItem:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseAnimation"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public reset()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mNeedEvaluate:Z

    iget-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mInitTime:J

    iput-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    return-void
.end method
