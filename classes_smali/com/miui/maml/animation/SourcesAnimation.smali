.class public Lcom/miui/maml/animation/SourcesAnimation;
.super Lcom/miui/maml/animation/PositionAnimation;
.source "SourcesAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/animation/SourcesAnimation$Source;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "SourcesAnimation"


# instance fields
.field private mCurrentSrc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V
    .registers 4

    .line 1
    const-string v0, "Source"

    .line 3
    invoke-direct {p0, p1, v0, p2}, Lcom/miui/maml/animation/PositionAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/elements/ScreenElement;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final getSrc()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/animation/SourcesAnimation;->mCurrentSrc:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public onCreateItem(Lcom/miui/maml/animation/BaseAnimation;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/BaseAnimation$AnimationItem;
    .registers 4

    .line 1
    new-instance v0, Lcom/miui/maml/animation/SourcesAnimation$Source;

    .line 3
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/animation/SourcesAnimation$Source;-><init>(Lcom/miui/maml/animation/BaseAnimation;Lorg/w3c/dom/Element;)V

    .line 6
    return-object v0
.end method

.method public onTick(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;Lcom/miui/maml/animation/BaseAnimation$AnimationItem;F)V
    .registers 6

    .line 1
    const/4 p1, 0x1

    .line 2
    const/4 p3, 0x0

    .line 3
    if-nez p2, :cond_d

    .line 5
    const-wide/16 v0, 0x0

    .line 7
    invoke-virtual {p0, p3, v0, v1}, Lcom/miui/maml/animation/BaseAnimation;->setCurValue(ID)V

    .line 10
    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/maml/animation/BaseAnimation;->setCurValue(ID)V

    .line 13
    return-void

    .line 14
    :cond_d
    invoke-virtual {p2, p3}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    .line 17
    move-result-wide v0

    .line 18
    invoke-virtual {p0, p3, v0, v1}, Lcom/miui/maml/animation/BaseAnimation;->setCurValue(ID)V

    .line 21
    invoke-virtual {p2, p1}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    .line 24
    move-result-wide v0

    .line 25
    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/maml/animation/BaseAnimation;->setCurValue(ID)V

    .line 28
    check-cast p2, Lcom/miui/maml/animation/SourcesAnimation$Source;

    .line 30
    iget-object p1, p2, Lcom/miui/maml/animation/SourcesAnimation$Source;->mSrc:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/miui/maml/animation/SourcesAnimation;->mCurrentSrc:Ljava/lang/String;

    .line 34
    return-void
.end method
