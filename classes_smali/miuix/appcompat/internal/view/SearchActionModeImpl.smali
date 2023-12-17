.class public Lmiuix/appcompat/internal/view/SearchActionModeImpl;
.super Lmiuix/appcompat/internal/view/ActionModeImpl;
.source "SearchActionModeImpl.java"

# interfaces
.implements Lmiuix/view/SearchActionMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/view/ActionModeImpl;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 4
    return-void
.end method


# virtual methods
.method public addAnimationListener(Lmiuix/view/ActionModeAnimationListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionModeView;

    .line 9
    invoke-interface {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionModeView;->addAnimationListener(Lmiuix/view/ActionModeAnimationListener;)V

    .line 12
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 9
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getCustomView()Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getSearchInput()Landroid/widget/EditText;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 9
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getSearchInput()Landroid/widget/EditText;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public removeAnimationListener(Lmiuix/view/ActionModeAnimationListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionModeView;

    .line 9
    invoke-interface {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionModeView;->removeAnimationListener(Lmiuix/view/ActionModeAnimationListener;)V

    .line 12
    return-void
.end method

.method public resetCustomView()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 9
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->resetCustomView()V

    .line 12
    return-void
.end method

.method public setAnchorApplyExtraPaddingByUser(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 9
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setAnchorApplyExtraPaddingByUser(Z)V

    .line 12
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 9
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setAnchorView(Landroid/view/View;)V

    .line 12
    return-void
.end method

.method public setAnimateView(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 9
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setAnimateView(Landroid/view/View;)V

    .line 12
    return-void
.end method

.method public setAnimatedViewListener(Lmiuix/view/SearchActionMode$AnimatedViewListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 9
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setAnimatedViewListener(Lmiuix/view/SearchActionMode$AnimatedViewListener;)V

    .line 12
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 9
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setCustomView(Landroid/view/View;)V

    .line 12
    return-void
.end method

.method public setPendingInsets(Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    if-eqz v0, :cond_11

    .line 15
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->rePaddingAndRelayout(Landroid/graphics/Rect;)V

    .line 18
    :cond_11
    return-void
.end method

.method public setResultView(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 9
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setResultView(Landroid/view/View;)V

    .line 12
    return-void
.end method
