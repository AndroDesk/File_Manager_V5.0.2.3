.class public Lcom/miui/maml/animation/ScaleAnimation;
.super Lcom/miui/maml/animation/BaseAnimation;
.source "ScaleAnimation.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ScaleAnimation"


# instance fields
.field private mDelayValueX:D

.field private mDelayValueY:D


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V
    .registers 6

    .line 1
    const-string v0, "value"

    .line 3
    const-string v1, "x"

    .line 5
    const-string v2, "y"

    .line 7
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "Item"

    .line 13
    invoke-direct {p0, p1, v1, v0, p2}, Lcom/miui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/String;Lcom/miui/maml/elements/ScreenElement;)V

    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Lcom/miui/maml/animation/BaseAnimation;->getItem(I)Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    .line 20
    move-result-object p1

    .line 21
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/ScaleAnimation;->getItemX(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)D

    .line 24
    move-result-wide v0

    .line 25
    iput-wide v0, p0, Lcom/miui/maml/animation/ScaleAnimation;->mDelayValueX:D

    .line 27
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/ScaleAnimation;->getItemY(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)D

    .line 30
    move-result-wide p1

    .line 31
    iput-wide p1, p0, Lcom/miui/maml/animation/ScaleAnimation;->mDelayValueY:D

    .line 33
    return-void
.end method

.method private getItemX(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)D
    .registers 4

    .line 1
    if-nez p1, :cond_5

    .line 3
    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    .line 5
    goto :goto_12

    .line 6
    :cond_5
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->attrExists(I)Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_d

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 v0, 0x1

    .line 15
    :goto_e
    invoke-virtual {p1, v0}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    .line 18
    move-result-wide v0

    .line 19
    :goto_12
    return-wide v0
.end method

.method private getItemY(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)D
    .registers 4

    .line 1
    if-nez p1, :cond_5

    .line 3
    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    .line 5
    goto :goto_12

    .line 6
    :cond_5
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->attrExists(I)Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_d

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 v0, 0x2

    .line 15
    :goto_e
    invoke-virtual {p1, v0}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    .line 18
    move-result-wide v0

    .line 19
    :goto_12
    return-wide v0
.end method


# virtual methods
.method public getDelayValue(I)D
    .registers 4

    .line 1
    if-eqz p1, :cond_9

    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_6

    .line 6
    goto :goto_9

    .line 7
    :cond_6
    iget-wide v0, p0, Lcom/miui/maml/animation/ScaleAnimation;->mDelayValueY:D

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    :goto_9
    iget-wide v0, p0, Lcom/miui/maml/animation/ScaleAnimation;->mDelayValueX:D

    .line 12
    :goto_b
    return-wide v0
.end method

.method public final getScaleX()D
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/miui/maml/animation/BaseAnimation;->getCurValue(I)D

    .line 5
    move-result-wide v0

    .line 6
    return-wide v0
.end method

.method public final getScaleY()D
    .registers 3

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/miui/maml/animation/BaseAnimation;->getCurValue(I)D

    .line 5
    move-result-wide v0

    .line 6
    return-wide v0
.end method

.method public onTick(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;Lcom/miui/maml/animation/BaseAnimation$AnimationItem;F)V
    .registers 11

    .line 1
    if-nez p1, :cond_5

    .line 3
    if-nez p2, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/ScaleAnimation;->getItemX(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)D

    .line 9
    move-result-wide v0

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {p0, p2}, Lcom/miui/maml/animation/ScaleAnimation;->getItemX(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)D

    .line 14
    move-result-wide v3

    .line 15
    sub-double/2addr v3, v0

    .line 16
    float-to-double v5, p3

    .line 17
    mul-double/2addr v3, v5

    .line 18
    add-double/2addr v3, v0

    .line 19
    invoke-virtual {p0, v2, v3, v4}, Lcom/miui/maml/animation/BaseAnimation;->setCurValue(ID)V

    .line 22
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/ScaleAnimation;->getItemY(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)D

    .line 25
    move-result-wide v0

    .line 26
    const/4 p1, 0x2

    .line 27
    invoke-direct {p0, p2}, Lcom/miui/maml/animation/ScaleAnimation;->getItemY(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)D

    .line 30
    move-result-wide p2

    .line 31
    sub-double/2addr p2, v0

    .line 32
    mul-double/2addr p2, v5

    .line 33
    add-double/2addr p2, v0

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/maml/animation/BaseAnimation;->setCurValue(ID)V

    .line 37
    return-void
.end method
