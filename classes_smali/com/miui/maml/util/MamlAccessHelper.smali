.class public Lcom/miui/maml/util/MamlAccessHelper;
.super Lr0/a;
.source "MamlAccessHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MamlAccessHelper"


# instance fields
.field public mHostView:Landroid/view/View;

.field public mRoot:Lcom/miui/maml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-direct {p0, p2}, Lr0/a;-><init>(Landroid/view/View;)V

    .line 4
    iput-object p1, p0, Lcom/miui/maml/util/MamlAccessHelper;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 6
    iput-object p2, p0, Lcom/miui/maml/util/MamlAccessHelper;->mHostView:Landroid/view/View;

    .line 8
    invoke-virtual {p1, p0}, Lcom/miui/maml/ScreenElementRoot;->setMamlAccessHelper(Lcom/miui/maml/util/MamlAccessHelper;)V

    .line 11
    return-void
.end method


# virtual methods
.method public getVirtualViewAt(FF)I
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/MamlAccessHelper;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    if-eqz v0, :cond_26

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getAccessibleElements()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    move-result v1

    .line 13
    add-int/lit8 v1, v1, -0x1

    .line 15
    :goto_e
    if-ltz v1, :cond_26

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 23
    invoke-virtual {v2}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_23

    .line 29
    invoke-virtual {v2, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_23

    .line 35
    return v1

    .line 36
    :cond_23
    add-int/lit8 v1, v1, -0x1

    .line 38
    goto :goto_e

    .line 39
    :cond_26
    const/high16 p1, -0x80000000

    .line 41
    return p1
.end method

.method public getVisibleVirtualViews(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/MamlAccessHelper;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    if-eqz v0, :cond_25

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getAccessibleElements()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    move-result v2

    .line 14
    if-ge v1, v2, :cond_25

    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 22
    invoke-virtual {v2}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_22

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v2

    .line 32
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_22
    add-int/lit8 v1, v1, 0x1

    .line 37
    goto :goto_9

    .line 38
    :cond_25
    return-void
.end method

.method public onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .registers 6

    .line 1
    iget-object p3, p0, Lcom/miui/maml/util/MamlAccessHelper;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p3, :cond_2c

    .line 6
    const/16 v1, 0x10

    .line 8
    if-eq p2, v1, :cond_a

    .line 10
    return v0

    .line 11
    :cond_a
    invoke-virtual {p3}, Lcom/miui/maml/ScreenElementRoot;->getAccessibleElements()Ljava/util/List;

    .line 14
    move-result-object p2

    .line 15
    if-ltz p1, :cond_2c

    .line 17
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 20
    move-result p3

    .line 21
    if-ge p1, p3, :cond_2c

    .line 23
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 29
    const-string p2, "up"

    .line 31
    invoke-virtual {p1, p2}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 34
    instance-of p2, p1, Lcom/miui/maml/elements/ButtonScreenElement;

    .line 36
    if-eqz p2, :cond_2a

    .line 38
    check-cast p1, Lcom/miui/maml/elements/ButtonScreenElement;

    .line 40
    invoke-virtual {p1}, Lcom/miui/maml/elements/ButtonScreenElement;->onActionUp()V

    .line 43
    :cond_2a
    const/4 p1, 0x1

    .line 44
    return p1

    .line 45
    :cond_2c
    return v0
.end method

.method public onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/MamlAccessHelper;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    if-eqz v0, :cond_1d

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getAccessibleElements()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    if-ltz p1, :cond_1d

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    move-result v1

    .line 15
    if-ge p1, v1, :cond_1d

    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 23
    invoke-virtual {p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getContentDescription()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 30
    :cond_1d
    return-void
.end method

.method public onPopulateNodeForVirtualView(ILn0/c;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/MamlAccessHelper;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    if-eqz v0, :cond_85

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getAccessibleElements()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, ""

    .line 11
    const-string v2, "MamlAccessHelper"

    .line 13
    if-ltz p1, :cond_65

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    move-result v3

    .line 19
    if-ge p1, v3, :cond_65

    .line 21
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 27
    invoke-virtual {p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getContentDescription()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    if-nez v0, :cond_35

    .line 33
    const-string v0, "element.getContentDescription() == null "

    .line 35
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->getName()Ljava/lang/String;

    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    goto :goto_36

    .line 54
    :cond_35
    move-object v1, v0

    .line 55
    :goto_36
    invoke-virtual {p2, v1}, Ln0/c;->l(Ljava/lang/CharSequence;)V

    .line 58
    const/16 v0, 0x10

    .line 60
    invoke-virtual {p2, v0}, Ln0/c;->a(I)V

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    .line 65
    invoke-virtual {p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteLeft()F

    .line 68
    move-result v1

    .line 69
    float-to-int v1, v1

    .line 70
    invoke-virtual {p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteTop()F

    .line 73
    move-result v2

    .line 74
    float-to-int v2, v2

    .line 75
    invoke-virtual {p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteLeft()F

    .line 78
    move-result v3

    .line 79
    invoke-virtual {p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    .line 82
    move-result v4

    .line 83
    add-float/2addr v4, v3

    .line 84
    float-to-int v3, v4

    .line 85
    invoke-virtual {p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteTop()F

    .line 88
    move-result v4

    .line 89
    invoke-virtual {p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 92
    move-result p1

    .line 93
    add-float/2addr p1, v4

    .line 94
    float-to-int p1, p1

    .line 95
    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 98
    invoke-virtual {p2, v0}, Ln0/c;->h(Landroid/graphics/Rect;)V

    .line 101
    goto :goto_85

    .line 102
    :cond_65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    const-string v3, "virtualViewId not found "

    .line 109
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object p1

    .line 119
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p2, v1}, Ln0/c;->l(Ljava/lang/CharSequence;)V

    .line 125
    new-instance p1, Landroid/graphics/Rect;

    .line 127
    const/4 v0, 0x0

    .line 128
    invoke-direct {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 131
    invoke-virtual {p2, p1}, Ln0/c;->h(Landroid/graphics/Rect;)V

    .line 134
    :cond_85
    :goto_85
    return-void
.end method

.method public performAccessibilityAction(II)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/MamlAccessHelper;->mHostView:Landroid/view/View;

    .line 3
    new-instance v1, Lcom/miui/maml/util/MamlAccessHelper$1;

    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/miui/maml/util/MamlAccessHelper$1;-><init>(Lcom/miui/maml/util/MamlAccessHelper;II)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
.end method

.method public removeRoot()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/miui/maml/util/MamlAccessHelper;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 4
    return-void
.end method
