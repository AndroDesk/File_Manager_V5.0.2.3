.class public Lcom/miui/maml/animation/SizeAnimation;
.super Lcom/miui/maml/animation/BaseAnimation;
.source "SizeAnimation.java"


# static fields
.field public static final INNER_TAG_NAME:Ljava/lang/String; = "Size"

.field public static final TAG_NAME:Ljava/lang/String; = "SizeAnimation"


# instance fields
.field private mMaxH:D

.field private mMaxW:D


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V
    .registers 8

    .line 1
    const-string v0, "w"

    .line 3
    const-string v1, "h"

    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "Size"

    .line 11
    invoke-direct {p0, p1, v1, v0, p2}, Lcom/miui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/String;Lcom/miui/maml/elements/ScreenElement;)V

    .line 14
    iget-object p1, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object p1

    .line 20
    :cond_13
    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_42

    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object p2

    .line 30
    check-cast p2, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p2, v0}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    .line 36
    move-result-wide v1

    .line 37
    iget-wide v3, p0, Lcom/miui/maml/animation/SizeAnimation;->mMaxW:D

    .line 39
    cmpl-double v1, v1, v3

    .line 41
    if-lez v1, :cond_30

    .line 43
    invoke-virtual {p2, v0}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    .line 46
    move-result-wide v0

    .line 47
    iput-wide v0, p0, Lcom/miui/maml/animation/SizeAnimation;->mMaxW:D

    .line 49
    :cond_30
    const/4 v0, 0x1

    .line 50
    invoke-virtual {p2, v0}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    .line 53
    move-result-wide v1

    .line 54
    iget-wide v3, p0, Lcom/miui/maml/animation/SizeAnimation;->mMaxH:D

    .line 56
    cmpl-double v1, v1, v3

    .line 58
    if-lez v1, :cond_13

    .line 60
    invoke-virtual {p2, v0}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    .line 63
    move-result-wide v0

    .line 64
    iput-wide v0, p0, Lcom/miui/maml/animation/SizeAnimation;->mMaxH:D

    .line 66
    goto :goto_13

    .line 67
    :cond_42
    return-void
.end method


# virtual methods
.method public final getHeight()D
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

.method public final getMaxHeight()D
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/miui/maml/animation/SizeAnimation;->mMaxH:D

    .line 3
    return-wide v0
.end method

.method public final getMaxWidth()D
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/miui/maml/animation/SizeAnimation;->mMaxW:D

    .line 3
    return-wide v0
.end method

.method public final getWidth()D
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/miui/maml/animation/BaseAnimation;->getCurValue(I)D

    .line 5
    move-result-wide v0

    .line 6
    return-wide v0
.end method
