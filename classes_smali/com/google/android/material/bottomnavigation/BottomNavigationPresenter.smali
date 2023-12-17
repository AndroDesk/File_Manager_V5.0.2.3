.class public Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;
.super Ljava/lang/Object;
.source "BottomNavigationPresenter.java"

# interfaces
.implements Landroidx/appcompat/view/menu/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;
    }
.end annotation


# instance fields
.field private id:I

.field private menu:Landroidx/appcompat/view/menu/h;

.field private menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

.field private updateSuspended:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->updateSuspended:Z

    .line 7
    return-void
.end method


# virtual methods
.method public collapseItemActionView(Landroidx/appcompat/view/menu/h;Landroidx/appcompat/view/menu/j;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public expandItemActionView(Landroidx/appcompat/view/menu/h;Landroidx/appcompat/view/menu/j;)Z
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
    iget v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->id:I

    .line 3
    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/o;
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 3
    return-object p1
.end method

.method public initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/h;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->menu:Landroidx/appcompat/view/menu/h;

    .line 3
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 5
    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->initialize(Landroidx/appcompat/view/menu/h;)V

    .line 8
    return-void
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/h;Z)V
    .registers 3

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    .line 1
    instance-of v0, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;

    .line 3
    if-eqz v0, :cond_1e

    .line 5
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 7
    check-cast p1, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;

    .line 9
    iget v1, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;->selectedItemId:I

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tryRestoreSelectedItemId(I)V

    .line 14
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v0

    .line 20
    iget-object p1, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;->badgeSavedStates:Lcom/google/android/material/internal/ParcelableSparseArray;

    .line 22
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeUtils;->createBadgeDrawablesFromSavedStates(Landroid/content/Context;Lcom/google/android/material/internal/ParcelableSparseArray;)Landroid/util/SparseArray;

    .line 25
    move-result-object p1

    .line 26
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 28
    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setBadgeDrawables(Landroid/util/SparseArray;)V

    .line 31
    :cond_1e
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;

    .line 3
    invoke-direct {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getSelectedItemId()I

    .line 11
    move-result v1

    .line 12
    iput v1, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;->selectedItemId:I

    .line 14
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 16
    invoke-virtual {v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getBadgeDrawables()Landroid/util/SparseArray;

    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Lcom/google/android/material/badge/BadgeUtils;->createParcelableBadgeStates(Landroid/util/SparseArray;)Lcom/google/android/material/internal/ParcelableSparseArray;

    .line 23
    move-result-object v1

    .line 24
    iput-object v1, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;->badgeSavedStates:Lcom/google/android/material/internal/ParcelableSparseArray;

    .line 26
    return-object v0
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/s;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setBottomNavigationMenuView(Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 3
    return-void
.end method

.method public setCallback(Landroidx/appcompat/view/menu/n$a;)V
    .registers 2

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->id:I

    .line 3
    return-void
.end method

.method public setUpdateSuspended(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->updateSuspended:Z

    .line 3
    return-void
.end method

.method public updateMenuView(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->updateSuspended:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    if-eqz p1, :cond_d

    .line 8
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buildMenuView()V

    .line 13
    goto :goto_12

    .line 14
    :cond_d
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 16
    invoke-virtual {p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->updateMenuView()V

    .line 19
    :goto_12
    return-void
.end method
