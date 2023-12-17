.class public abstract Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;
.super Ljava/lang/Object;
.source "BaseMenuPresenter.java"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/MenuPresenter;


# instance fields
.field private mCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

.field public mContext:Landroid/content/Context;

.field private mId:I

.field public mInflater:Landroid/view/LayoutInflater;

.field private mItemLayoutRes:I

.field public mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field private mMenuLayoutRes:I

.field public mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

.field public mSystemContext:Landroid/content/Context;

.field public mSystemInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    .line 12
    iput p2, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    .line 14
    iput p3, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    .line 16
    return-void
.end method

.method public static close(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->closeInternal(Z)V

    .line 4
    return-void
.end method

.method public static createMenuItemImpl(Lmiuix/appcompat/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;
    .registers 16

    .line 1
    new-instance v8, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 3
    move-object v0, v8

    .line 4
    move-object v1, p0

    .line 5
    move v2, p1

    .line 6
    move v3, p2

    .line 7
    move v4, p3

    .line 8
    move v5, p4

    .line 9
    move-object v6, p5

    .line 10
    move v7, p6

    .line 11
    invoke-direct/range {v0 .. v7}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;-><init>(Lmiuix/appcompat/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    .line 14
    return-object v8
.end method

.method public static dispatchMenuItemSelected(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static notifyItemsChanged(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 4
    return-void
.end method


# virtual methods
.method public addItemView(Landroid/view/View;I)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup;

    .line 7
    if-eqz v0, :cond_b

    .line 9
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 12
    :cond_b
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 14
    check-cast v0, Landroid/view/ViewGroup;

    .line 16
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 19
    return-void
.end method

.method public abstract bindItemView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;)V
.end method

.method public collapseItemActionView(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public createItemView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    .line 3
    iget v1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;

    .line 12
    return-object p1
.end method

.method public expandItemActionView(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
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
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mId:I

    .line 3
    return v0
.end method

.method public getItemView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 1
    instance-of v0, p2, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    check-cast p2, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;

    .line 7
    goto :goto_b

    .line 8
    :cond_7
    invoke-virtual {p0, p3}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->createItemView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;

    .line 11
    move-result-object p2

    .line 12
    :goto_b
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->bindItemView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;)V

    .line 15
    check-cast p2, Landroid/view/View;

    .line 17
    return-object p2
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 3
    if-nez v0, :cond_1a

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    .line 7
    iget v1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 16
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 18
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 20
    invoke-interface {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuView;->initialize(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 23
    const/4 p1, 0x1

    .line 24
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 27
    :cond_1a
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 29
    return-object p1
.end method

.method public initForMenu(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 9
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 11
    return-void
.end method

.method public onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    .line 8
    :cond_7
    return-void
.end method

.method public onSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-interface {v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z

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

.method public setCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    .line 3
    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mId:I

    .line 3
    return-void
.end method

.method public shouldIncludeItem(ILmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method

.method public updateMenuView(Z)V
    .registers 8

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 3
    move-object v0, p1

    .line 4
    check-cast v0, Landroid/view/ViewGroup;

    .line 6
    if-nez v0, :cond_8

    .line 8
    return-void

    .line 9
    :cond_8
    invoke-interface {p1}, Lmiuix/appcompat/internal/view/menu/MenuView;->hasBackgroundView()Z

    .line 12
    move-result p1

    .line 13
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 15
    if-eqz v1, :cond_57

    .line 17
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 20
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 22
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v1

    .line 30
    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_57

    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 42
    invoke-virtual {p0, p1, v2}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->shouldIncludeItem(ILmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z

    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_1d

    .line 48
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 51
    move-result-object v3

    .line 52
    instance-of v4, v3, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;

    .line 54
    if-eqz v4, :cond_3f

    .line 56
    move-object v4, v3

    .line 57
    check-cast v4, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;

    .line 59
    invoke-interface {v4}, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;->getItemData()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 62
    move-result-object v4

    .line 63
    goto :goto_40

    .line 64
    :cond_3f
    const/4 v4, 0x0

    .line 65
    :goto_40
    invoke-virtual {p0, v2, v3, v0}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->getItemView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 68
    move-result-object v5

    .line 69
    if-eq v2, v4, :cond_4a

    .line 71
    const/4 v4, 0x0

    .line 72
    invoke-virtual {v5, v4}, Landroid/view/View;->setPressed(Z)V

    .line 75
    :cond_4a
    if-eq v5, v3, :cond_4f

    .line 77
    invoke-virtual {p0, v5, p1}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->addItemView(Landroid/view/View;I)V

    .line 80
    :cond_4f
    if-eqz v2, :cond_54

    .line 82
    invoke-virtual {v2, v5}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setView(Landroid/view/View;)V

    .line 85
    :cond_54
    add-int/lit8 p1, p1, 0x1

    .line 87
    goto :goto_1d

    .line 88
    :cond_57
    :goto_57
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 91
    move-result v1

    .line 92
    if-ge p1, v1, :cond_68

    .line 94
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 96
    invoke-interface {v1, p1}, Lmiuix/appcompat/internal/view/menu/MenuView;->filterLeftoverView(I)Z

    .line 99
    move-result v1

    .line 100
    if-nez v1, :cond_57

    .line 102
    add-int/lit8 p1, p1, 0x1

    .line 104
    goto :goto_57

    .line 105
    :cond_68
    return-void
.end method
