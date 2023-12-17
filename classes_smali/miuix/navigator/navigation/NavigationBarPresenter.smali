.class public Lmiuix/navigator/navigation/NavigationBarPresenter;
.super Ljava/lang/Object;
.source "NavigationBarPresenter.java"

# interfaces
.implements Lmiuix/appcompat/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/navigator/navigation/NavigationBarPresenter$SavedState;
    }
.end annotation


# instance fields
.field private id:I

.field private menu:Lmiuix/appcompat/view/menu/MenuBuilder;

.field private menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

.field private updateSuspended:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lmiuix/navigator/navigation/NavigationBarPresenter;->updateSuspended:Z

    .line 7
    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lmiuix/appcompat/view/menu/MenuBuilder;Lmiuix/appcompat/view/menu/MenuItemImpl;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public expandItemActionView(Lmiuix/appcompat/view/menu/MenuBuilder;Lmiuix/appcompat/view/menu/MenuItemImpl;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public flagActionItems()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarPresenter;->id:I

    .line 3
    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/view/menu/MenuView;
    .registers 2

    .line 1
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarPresenter;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 3
    return-object p1
.end method

.method public initForMenu(Landroid/content/Context;Lmiuix/appcompat/view/menu/MenuBuilder;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lmiuix/navigator/navigation/NavigationBarPresenter;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 3
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarPresenter;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 5
    invoke-virtual {p1, p2}, Lmiuix/navigator/navigation/NavigationBarMenuView;->initialize(Lmiuix/appcompat/view/menu/MenuBuilder;)V

    .line 8
    return-void
.end method

.method public onCloseMenu(Lmiuix/appcompat/view/menu/MenuBuilder;Z)V
    .registers 3

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 1
    instance-of v0, p1, Lmiuix/navigator/navigation/NavigationBarPresenter$SavedState;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarPresenter;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 7
    check-cast p1, Lmiuix/navigator/navigation/NavigationBarPresenter$SavedState;

    .line 9
    iget p1, p1, Lmiuix/navigator/navigation/NavigationBarPresenter$SavedState;->selectedItemId:I

    .line 11
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->tryRestoreSelectedItemId(I)V

    .line 14
    :cond_d
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 1
    new-instance v0, Lmiuix/navigator/navigation/NavigationBarPresenter$SavedState;

    .line 3
    invoke-direct {v0}, Lmiuix/navigator/navigation/NavigationBarPresenter$SavedState;-><init>()V

    .line 6
    iget-object v1, p0, Lmiuix/navigator/navigation/NavigationBarPresenter;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 8
    invoke-virtual {v1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getSelectedItemId()I

    .line 11
    move-result v1

    .line 12
    iput v1, v0, Lmiuix/navigator/navigation/NavigationBarPresenter$SavedState;->selectedItemId:I

    .line 14
    return-object v0
.end method

.method public onSubMenuSelected(Lmiuix/appcompat/view/menu/SubMenuBuilder;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setCallback(Lmiuix/appcompat/view/menu/MenuPresenter$Callback;)V
    .registers 2

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarPresenter;->id:I

    .line 3
    return-void
.end method

.method public setMenuView(Lmiuix/navigator/navigation/NavigationBarMenuView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarPresenter;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 3
    return-void
.end method

.method public setUpdateSuspended(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/navigator/navigation/NavigationBarPresenter;->updateSuspended:Z

    .line 3
    return-void
.end method

.method public updateMenuView(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/navigation/NavigationBarPresenter;->updateSuspended:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    if-eqz p1, :cond_d

    .line 8
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarPresenter;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 10
    invoke-virtual {p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->buildMenuView()V

    .line 13
    goto :goto_12

    .line 14
    :cond_d
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarPresenter;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 16
    invoke-virtual {p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->updateMenuView()V

    .line 19
    :goto_12
    return-void
.end method
