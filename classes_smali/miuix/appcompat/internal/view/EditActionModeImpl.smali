.class public Lmiuix/appcompat/internal/view/EditActionModeImpl;
.super Lmiuix/appcompat/internal/view/ActionModeImpl;
.source "EditActionModeImpl.java"

# interfaces
.implements Lmiuix/view/EditActionMode;


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

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 9
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

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

.method public setButton(II)V
    .registers 4

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/view/EditActionModeImpl;->setButton(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public setButton(III)V
    .registers 5

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lmiuix/appcompat/internal/view/EditActionModeImpl;->setButton(ILjava/lang/CharSequence;I)V

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setButton(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;I)V
    .registers 5

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v0, p1, p2, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setButton(ILjava/lang/CharSequence;I)V

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .registers 6

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public setSubtitle(I)V
    .registers 2

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 2

    return-void
.end method

.method public setTitle(I)V
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/EditActionModeImpl;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
