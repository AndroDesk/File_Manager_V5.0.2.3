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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V
    .registers 8

    const-string v0, "w"

    const-string v1, "h"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Size"

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/miui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/String;Lcom/miui/maml/elements/ScreenElement;)V

    iget-object p1, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_13
    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_42

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v1

    iget-wide v3, p0, Lcom/miui/maml/animation/SizeAnimation;->mMaxW:D

    cmpl-double v1, v1, v3

    if-lez v1, :cond_30

    invoke-virtual {p2, v0}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/maml/animation/SizeAnimation;->mMaxW:D

    :cond_30
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v1

    iget-wide v3, p0, Lcom/miui/maml/animation/SizeAnimation;->mMaxH:D

    cmpl-double v1, v1, v3

    if-lez v1, :cond_13

    invoke-virtual {p2, v0}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/maml/animation/SizeAnimation;->mMaxH:D

    goto :goto_13

    :cond_42
    return-void
.end method


# virtual methods
.method public final getHeight()D
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/maml/animation/BaseAnimation;->getCurValue(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getMaxHeight()D
    .registers 3

    iget-wide v0, p0, Lcom/miui/maml/animation/SizeAnimation;->mMaxH:D

    return-wide v0
.end method

.method public final getMaxWidth()D
    .registers 3

    iget-wide v0, p0, Lcom/miui/maml/animation/SizeAnimation;->mMaxW:D

    return-wide v0
.end method

.method public final getWidth()D
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/maml/animation/BaseAnimation;->getCurValue(I)D

    move-result-wide v0

    return-wide v0
.end method
