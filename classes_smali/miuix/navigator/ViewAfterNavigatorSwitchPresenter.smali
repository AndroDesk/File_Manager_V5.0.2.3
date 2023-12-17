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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;->mViews:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;->mIsIgnoreHover:Z

    return-void
.end method


# virtual methods
.method public attachViews(Landroid/view/View;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;->mViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;->mViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public detachView(Landroid/view/View;)V
    .registers 3

    if-eqz p1, :cond_f

    iget-object v0, p0, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;->mViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;->mViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method public ignoreHover()V
    .registers 5

    iget-boolean v0, p0, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;->mIsIgnoreHover:Z

    if-nez v0, :cond_2a

    iget-object v0, p0, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;->mViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object v2

    invoke-interface {v2, v1}, Lmiuix/animation/IHoverStyle;->ignoreHoverOf(Landroid/view/View;)V

    goto :goto_a

    :cond_28
    iput-boolean v2, p0, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;->mIsIgnoreHover:Z

    :cond_2a
    return-void
.end method

.method public setTranslationX(F)V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;->mViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public setTranslationXTagForHover(F)V
    .registers 7

    iget-object v0, p0, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;->mViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget v3, Lmiuix/folme/R$id;->miuix_animation_tag_hover_set_translation_x:I

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-boolean v3, p0, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;->mIsIgnoreHover:Z

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/View;

    aput-object v1, v3, v2

    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v3

    invoke-interface {v3}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object v3

    sget-object v4, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {v3, v4}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object v3

    new-array v2, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v3, v1, v2}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    goto :goto_6

    :cond_39
    iput-boolean v2, p0, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;->mIsIgnoreHover:Z

    return-void
.end method
