.class public Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;
.super Ljava/lang/Object;
.source "ViewAfterNavigatorSwitchPresenter.java"


# instance fields
.field private mIsIgnoreHover:Z

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
    iput-object v0, p0, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;->mViews:Ljava/util/List;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;->mIsIgnoreHover:Z

    .line 14
    return-void
.end method


# virtual methods
.method public attachViews(Landroid/view/View;)V
    .registers 3

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;->mViews:Ljava/util/List;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_c

    .line 12
    return-void

    .line 13
    :cond_c
    iget-object v0, p0, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;->mViews:Ljava/util/List;

    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    return-void
.end method

.method public detachView(Landroid/view/View;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_f

    .line 3
    iget-object v0, p0, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;->mViews:Ljava/util/List;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_f

    .line 11
    iget-object v0, p0, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;->mViews:Ljava/util/List;

    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 16
    :cond_f
    return-void
.end method

.method public ignoreHover()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;->mIsIgnoreHover:Z

    .line 3
    if-nez v0, :cond_2a

    .line 5
    iget-object v0, p0, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;->mViews:Ljava/util/List;

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v1, :cond_28

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/view/View;

    .line 24
    new-array v2, v2, [Landroid/view/View;

    .line 26
    const/4 v3, 0x0

    .line 27
    aput-object v1, v2, v3

    .line 29
    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v2}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    .line 36
    move-result-object v2

    .line 37
    invoke-interface {v2, v1}, Lmiuix/animation/IHoverStyle;->ignoreHoverOf(Landroid/view/View;)V

    .line 40
    goto :goto_a

    .line 41
    :cond_28
    iput-boolean v2, p0, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;->mIsIgnoreHover:Z

    .line 43
    :cond_2a
    return-void
.end method

.method public setTranslationX(F)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;->mViews:Ljava/util/List;

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
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/view/View;

    .line 19
    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public setTranslationXTagForHover(F)V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;->mViews:Ljava/util/List;

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
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_39

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/view/View;

    .line 20
    sget v3, Lmiuix/folme/R$id;->miuix_animation_tag_hover_set_translation_x:I

    .line 22
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v1, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 29
    iget-boolean v3, p0, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;->mIsIgnoreHover:Z

    .line 31
    if-eqz v3, :cond_6

    .line 33
    const/4 v3, 0x1

    .line 34
    new-array v3, v3, [Landroid/view/View;

    .line 36
    aput-object v1, v3, v2

    .line 38
    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 41
    move-result-object v3

    .line 42
    invoke-interface {v3}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    .line 45
    move-result-object v3

    .line 46
    sget-object v4, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 48
    invoke-interface {v3, v4}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    .line 51
    move-result-object v3

    .line 52
    new-array v2, v2, [Lmiuix/animation/base/AnimConfig;

    .line 54
    invoke-interface {v3, v1, v2}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 57
    goto :goto_6

    .line 58
    :cond_39
    iput-boolean v2, p0, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;->mIsIgnoreHover:Z

    .line 60
    return-void
.end method
