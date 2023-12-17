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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/navigator/navigation/NavigationBarPresenter;->updateSuspended:Z

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

    iget v0, p0, Lmiuix/navigator/navigation/NavigationBarPresenter;->id:I

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/view/menu/MenuView;
    .registers 2

    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarPresenter;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    return-object p1
.end method

.method public initForMenu(Landroid/content/Context;Lmiuix/appcompat/view/menu/MenuBuilder;)V
    .registers 3

    iput-object p2, p0, Lmiuix/navigator/navigation/NavigationBarPresenter;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarPresenter;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {p1, p2}, Lmiuix/navigator/navigation/NavigationBarMenuView;->initialize(Lmiuix/appcompat/view/menu/MenuBuilder;)V

    return-void
.end method

.method public onCloseMenu(Lmiuix/appcompat/view/menu/MenuBuilder;Z)V
    .registers 3

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    instance-of v0, p1, Lmiuix/navigator/navigation/NavigationBarPresenter$SavedState;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarPresenter;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    check-cast p1, Lmiuix/navigator/navigation/NavigationBarPresenter$SavedState;

    iget p1, p1, Lmiuix/navigator/navigation/NavigationBarPresenter$SavedState;->selectedItemId:I

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->tryRestoreSelectedItemId(I)V

    :cond_d
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    new-instance v0, Lmiuix/navigator/navigation/NavigationBarPresenter$SavedState;

    invoke-direct {v0}, Lmiuix/navigator/navigation/NavigationBarPresenter$SavedState;-><init>()V

    iget-object v1, p0, Lmiuix/navigator/navigation/NavigationBarPresenter;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {v1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getSelectedItemId()I

    move-result v1

    iput v1, v0, Lmiuix/navigator/navigation/NavigationBarPresenter$SavedState;->selectedItemId:I

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

    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarPresenter;->id:I

    return-void
.end method

.method public setMenuView(Lmiuix/navigator/navigation/NavigationBarMenuView;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarPresenter;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    return-void
.end method

.method public setUpdateSuspended(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiuix/navigator/navigation/NavigationBarPresenter;->updateSuspended:Z

    return-void
.end method

.method public updateMenuView(Z)V
    .registers 3

    iget-boolean v0, p0, Lmiuix/navigator/navigation/NavigationBarPresenter;->updateSuspended:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_d

    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarPresenter;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->buildMenuView()V

    goto :goto_12

    :cond_d
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarPresenter;->menuView:Lmiuix/navigator/navigation/NavigationBarMenuView;

    invoke-virtual {p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->updateMenuView()V

    :goto_12
    return-void
.end method
