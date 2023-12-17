.class public Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;
.super Ljava/lang/Object;
.source "AbsActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/AbsActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CollapseView"
.end annotation


# instance fields
.field private mAlpha:F

.field private mDetached:Z

.field private mIsAcceptAlphaChange:Z

.field private mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mViews:Ljava/util/List;

    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mIsAcceptAlphaChange:Z

    .line 14
    return-void
.end method


# virtual methods
.method public animTo(FIILmiuix/animation/base/AnimConfig;)V
    .registers 11

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mDetached:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mIsAcceptAlphaChange:Z

    .line 8
    if-eqz v0, :cond_a

    .line 10
    goto :goto_c

    .line 11
    :cond_a
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mAlpha:F

    .line 13
    :goto_c
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 15
    const-string v1, "to"

    .line 17
    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 20
    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 22
    float-to-double v2, p1

    .line 23
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 29
    int-to-double v2, p2

    .line 30
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 33
    move-result-object v0

    .line 34
    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 36
    int-to-double v2, p3

    .line 37
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mViews:Ljava/util/List;

    .line 43
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 46
    move-result-object v1

    .line 47
    :cond_2e
    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_71

    .line 53
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Landroid/view/View;

    .line 59
    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    .line 62
    move-result v3

    .line 63
    if-nez v3, :cond_41

    .line 65
    goto :goto_2e

    .line 66
    :cond_41
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    .line 69
    move-result v3

    .line 70
    cmpl-float v3, v3, p1

    .line 72
    if-nez v3, :cond_5b

    .line 74
    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    .line 77
    move-result v3

    .line 78
    int-to-float v4, p2

    .line 79
    cmpl-float v3, v3, v4

    .line 81
    if-nez v3, :cond_5b

    .line 83
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    .line 86
    move-result v3

    .line 87
    int-to-float v4, p3

    .line 88
    cmpl-float v3, v3, v4

    .line 90
    if-eqz v3, :cond_2e

    .line 92
    :cond_5b
    const/4 v3, 0x1

    .line 93
    new-array v4, v3, [Landroid/view/View;

    .line 95
    const/4 v5, 0x0

    .line 96
    aput-object v2, v4, v5

    .line 98
    invoke-static {v4}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 101
    move-result-object v2

    .line 102
    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 105
    move-result-object v2

    .line 106
    new-array v3, v3, [Lmiuix/animation/base/AnimConfig;

    .line 108
    aput-object p4, v3, v5

    .line 110
    invoke-interface {v2, v0, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 113
    goto :goto_2e

    .line 114
    :cond_71
    return-void
.end method

.method public attachViews(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mViews:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    new-instance v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView$1;

    .line 12
    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView$1;-><init>(Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;)V

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 18
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mViews:Ljava/util/List;

    .line 20
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method

.method public detachView(Landroid/view/View;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_f

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mViews:Ljava/util/List;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_f

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mViews:Ljava/util/List;

    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 16
    :cond_f
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mDetached:Z

    .line 4
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mDetached:Z

    .line 4
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mViews:Ljava/util/List;

    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v1

    .line 10
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1e

    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroid/view/View;

    .line 22
    new-array v3, v0, [Landroid/view/View;

    .line 24
    const/4 v4, 0x0

    .line 25
    aput-object v2, v3, v4

    .line 27
    invoke-static {v3}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 30
    goto :goto_9

    .line 31
    :cond_1e
    return-void
.end method

.method public onHide()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mViews:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1e

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/view/View;

    .line 19
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 26
    const/4 v2, 0x4

    .line 27
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    goto :goto_6

    .line 31
    :cond_1e
    return-void
.end method

.method public onShow()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mViews:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_17

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/view/View;

    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 23
    goto :goto_6

    .line 24
    :cond_17
    return-void
.end method

.method public setAcceptAlphaChange(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mIsAcceptAlphaChange:Z

    .line 3
    return-void
.end method

.method public setAlpha(F)V
    .registers 8

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mDetached:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mAlpha:F

    .line 8
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mViews:Ljava/util/List;

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 14
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_38

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroid/view/View;

    .line 26
    const/4 v2, 0x1

    .line 27
    new-array v3, v2, [Landroid/view/View;

    .line 29
    const/4 v4, 0x0

    .line 30
    aput-object v1, v3, v4

    .line 32
    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 39
    move-result-object v1

    .line 40
    const/4 v3, 0x2

    .line 41
    new-array v3, v3, [Ljava/lang/Object;

    .line 43
    sget-object v5, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 45
    aput-object v5, v3, v4

    .line 47
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 50
    move-result-object v4

    .line 51
    aput-object v4, v3, v2

    .line 53
    invoke-interface {v1, v3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 56
    goto :goto_d

    .line 57
    :cond_38
    return-void
.end method

.method public setAnimFrom(FII)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIIZ)V

    return-void
.end method

.method public setAnimFrom(FIIZ)V
    .registers 10

    .line 2
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mDetached:Z

    if-eqz v0, :cond_5

    return-void

    .line 3
    :cond_5
    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v1, "from"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 4
    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mIsAcceptAlphaChange:Z

    if-eqz v2, :cond_14

    float-to-double v2, p1

    goto :goto_17

    :cond_14
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mAlpha:F

    float-to-double v2, v2

    :goto_17
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    int-to-double v2, p2

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    int-to-double v2, p3

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz p4, :cond_48

    .line 8
    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    int-to-float v3, p2

    .line 9
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    int-to-float v3, p3

    .line 10
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 11
    :cond_48
    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_4f

    goto :goto_2f

    :cond_4f
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 12
    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v2

    invoke-interface {v2, v0}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    goto :goto_2f

    :cond_61
    return-void
.end method

.method public setTransparent(II)V
    .registers 9

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mDetached:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mViews:Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v0

    .line 12
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_49

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/view/View;

    .line 24
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_1e

    .line 30
    goto :goto_b

    .line 31
    :cond_1e
    const/4 v2, 0x1

    .line 32
    new-array v3, v2, [Landroid/view/View;

    .line 34
    const/4 v4, 0x0

    .line 35
    aput-object v1, v3, v4

    .line 37
    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 40
    move-result-object v1

    .line 41
    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 44
    move-result-object v1

    .line 45
    const/4 v3, 0x4

    .line 46
    new-array v3, v3, [Ljava/lang/Object;

    .line 48
    sget-object v5, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 50
    aput-object v5, v3, v4

    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object v4

    .line 56
    aput-object v4, v3, v2

    .line 58
    const/4 v2, 0x2

    .line 59
    sget-object v4, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 61
    aput-object v4, v3, v2

    .line 63
    const/4 v2, 0x3

    .line 64
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    move-result-object v4

    .line 68
    aput-object v4, v3, v2

    .line 70
    invoke-interface {v1, v3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 73
    goto :goto_b

    .line 74
    :cond_49
    return-void
.end method

.method public setVisibility(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mViews:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1b

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/view/View;

    .line 19
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    if-eqz p1, :cond_6

    .line 24
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 27
    goto :goto_6

    .line 28
    :cond_1b
    return-void
.end method
