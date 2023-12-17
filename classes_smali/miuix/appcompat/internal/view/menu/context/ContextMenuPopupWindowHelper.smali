.class public Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;
.super Ljava/lang/Object;
.source "ContextMenuPopupWindowHelper.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mAnchorParent:Landroid/view/ViewGroup;

.field private mContextMenuPopupWindow:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindow;

.field private mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field private mPoint:[F

.field private mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [F

    .line 7
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mPoint:[F

    .line 9
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 11
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mContextMenuPopupWindow:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindow;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    invoke-interface {v0}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindow;->dismiss()V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mContextMenuPopupWindow:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindow;

    .line 11
    :cond_a
    return-void
.end method

.method public getContextMenuPopupWindow()Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mContextMenuPopupWindow:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindow;

    .line 3
    instance-of v1, v0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;

    .line 5
    if-eqz v1, :cond_9

    .line 7
    check-cast v0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;

    .line 9
    return-object v0

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public onDismiss()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-interface {v0, v1, v2}, Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    .line 11
    :cond_a
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 13
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->clearAll()V

    .line 16
    return-void
.end method

.method public refreshContextMenuPopupWindow()V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mContextMenuPopupWindow:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindow;

    .line 3
    if-eqz v0, :cond_13

    .line 5
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mAnchor:Landroid/view/View;

    .line 7
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mAnchorParent:Landroid/view/ViewGroup;

    .line 9
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mPoint:[F

    .line 11
    const/4 v4, 0x0

    .line 12
    aget v4, v3, v4

    .line 14
    const/4 v5, 0x1

    .line 15
    aget v3, v3, v5

    .line 17
    invoke-interface {v0, v1, v2, v4, v3}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindow;->updatePopupWindow(Landroid/view/View;Landroid/view/ViewGroup;FF)V

    .line 20
    :cond_13
    return-void
.end method

.method public setPresenterCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    .line 3
    return-void
.end method

.method public show(Landroid/os/IBinder;Landroid/view/View;FF)V
    .registers 7

    .line 1
    new-instance p1, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 11
    invoke-direct {p1, v0, v1, p0}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 14
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mContextMenuPopupWindow:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindow;

    .line 16
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mAnchor:Landroid/view/View;

    .line 18
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/view/ViewGroup;

    .line 24
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mAnchorParent:Landroid/view/ViewGroup;

    .line 26
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mPoint:[F

    .line 28
    const/4 v0, 0x0

    .line 29
    aput p3, p2, v0

    .line 31
    const/4 v0, 0x1

    .line 32
    aput p4, p2, v0

    .line 34
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mContextMenuPopupWindow:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindow;

    .line 36
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mAnchor:Landroid/view/View;

    .line 38
    invoke-interface {p2, v0, p1, p3, p4}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindow;->show(Landroid/view/View;Landroid/view/ViewGroup;FF)V

    .line 41
    return-void
.end method
