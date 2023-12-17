.class public Lmiuix/appcompat/internal/view/ActionModeImpl;
.super Landroid/view/ActionMode;
.source "ActionModeImpl.java"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;
.implements Lmiuix/view/ActionModeAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/view/ActionModeImpl$ActionModeCallback;
    }
.end annotation


# static fields
.field public static final TYPE_FLOATING:I = 0x1

.field public static final TYPE_PRIMARY:I


# instance fields
.field private mActionModeCallback:Lmiuix/appcompat/internal/view/ActionModeImpl$ActionModeCallback;

.field public mActionModeView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/appcompat/internal/app/widget/ActionModeView;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Landroid/view/ActionMode$Callback;

.field public mContext:Landroid/content/Context;

.field public mFinishing:Z

.field private mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mFinishing:Z

    .line 7
    iput-object p1, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mContext:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    .line 11
    new-instance p2, Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 13
    invoke-direct {p2, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 p1, 0x1

    .line 17
    invoke-virtual {p2, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 23
    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setCallback(Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;)V

    .line 26
    return-void
.end method


# virtual methods
.method public dispatchOnCreate()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 6
    :try_start_5
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    .line 8
    iget-object v1, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 10
    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 13
    move-result v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_13

    .line 14
    iget-object v1, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 16
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 19
    return v0

    .line 20
    :catchall_13
    move-exception v0

    .line 21
    iget-object v1, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 23
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 26
    throw v0
.end method

.method public finish()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mFinishing:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mFinishing:Z

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionModeView;

    .line 17
    invoke-interface {v0}, Lmiuix/appcompat/internal/app/widget/ActionModeView;->closeMode()V

    .line 20
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mActionModeCallback:Lmiuix/appcompat/internal/view/ActionModeImpl$ActionModeCallback;

    .line 22
    if-eqz v0, :cond_1a

    .line 24
    invoke-interface {v0, p0}, Lmiuix/appcompat/internal/view/ActionModeImpl$ActionModeCallback;->onActionModeFinish(Landroid/view/ActionMode;)V

    .line 27
    :cond_1a
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    .line 29
    if-eqz v0, :cond_24

    .line 31
    invoke-interface {v0, p0}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 34
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    .line 37
    :cond_24
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v1, "getCustomView not supported"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 3
    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    .line 1
    new-instance v0, Landroid/view/MenuInflater;

    .line 3
    iget-object v1, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mContext:Landroid/content/Context;

    .line 5
    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 8
    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v1, "getSubtitle not supported"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v1, "getTitle not supported"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
.end method

.method public invalidate()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 6
    :try_start_5
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    .line 8
    iget-object v1, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 10
    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_12

    .line 13
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 15
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 18
    return-void

    .line 19
    :catchall_12
    move-exception v0

    .line 20
    iget-object v1, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 22
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 25
    throw v0
.end method

.method public onMenuItemSelected(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 3

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    .line 3
    if-eqz p1, :cond_c

    .line 5
    invoke-interface {p1, p0, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_c

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    :goto_d
    return p1
.end method

.method public onMenuModeChange(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    .line 3
    if-nez p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/ActionModeImpl;->invalidate()V

    .line 9
    return-void
.end method

.method public onStart(Z)V
    .registers 2

    return-void
.end method

.method public onStop(Z)V
    .registers 2

    .line 1
    if-nez p1, :cond_c

    .line 3
    iget-object p1, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    .line 5
    if-eqz p1, :cond_c

    .line 7
    invoke-interface {p1, p0}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 10
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    .line 13
    :cond_c
    return-void
.end method

.method public onUpdate(ZF)V
    .registers 3

    return-void
.end method

.method public setActionModeCallback(Lmiuix/appcompat/internal/view/ActionModeImpl$ActionModeCallback;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mActionModeCallback:Lmiuix/appcompat/internal/view/ActionModeImpl$ActionModeCallback;

    .line 3
    return-void
.end method

.method public setActionModeView(Lmiuix/appcompat/internal/app/widget/ActionModeView;)V
    .registers 3

    .line 1
    invoke-interface {p1, p0}, Lmiuix/appcompat/internal/app/widget/ActionModeView;->addAnimationListener(Lmiuix/view/ActionModeAnimationListener;)V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    .line 11
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v0, "setCustomView not supported"

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public setSubtitle(I)V
    .registers 3

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "setSubTitle not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "setSubTitle not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTitle(I)V
    .registers 3

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "setTitle not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "setTitle not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
