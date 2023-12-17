.class public Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;
.super Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;
.source "EndActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter$PopupSubMenu;
    }
.end annotation


# instance fields
.field private mMoreButtonItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;II)V
    .registers 12

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;IIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;IIII)V
    .registers 7

    .line 2
    invoke-direct/range {p0 .. p6}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;IIII)V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;Landroid/view/MenuItem;)Z
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;->lambda$createOverflowMenuButton$0(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$createOverflowMenuButton$0(Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 3
    if-eqz p1, :cond_f

    .line 5
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getRootMenu()Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getOverflowMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 12
    move-result-object v1

    .line 13
    invoke-static {p1, v0, v1}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->dispatchMenuItemSelected(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    .line 16
    :cond_f
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    .line 21
    move-result p1

    .line 22
    const/4 v0, 0x1

    .line 23
    if-eqz p1, :cond_1c

    .line 25
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    .line 28
    goto :goto_1f

    .line 29
    :cond_1c
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->showOverflowMenu()Z

    .line 32
    :goto_1f
    return v0
.end method


# virtual methods
.method public addBadgeOnMoreButton()V
    .registers 2

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;->addBadgeOnMoreButton(I)V

    return-void
.end method

.method public addBadgeOnMoreButton(I)V
    .registers 4

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;->mMoreButtonItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1, p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setBadgeNeeded(ZI)V

    .line 4
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;->updateBadgeOnMoreButton()V

    return-void
.end method

.method public clearBadgeOnMoreButton()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;->mMoreButtonItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setBadgeNeeded(Z)V

    .line 10
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;->updateBadgeOnMoreButton()V

    .line 13
    return-void
.end method

.method public createOverflowMenuButton(Landroid/content/Context;)Landroid/view/View;
    .registers 12

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 3
    check-cast v0, Landroid/view/ViewGroup;

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return-object v1

    .line 9
    :cond_8
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 11
    const/4 v3, 0x0

    .line 12
    sget v9, Lmiuix/appcompat/R$id;->more:I

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    sget v4, Lmiuix/appcompat/R$string;->more:I

    .line 18
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 21
    move-result-object v7

    .line 22
    const/4 v8, 0x2

    .line 23
    move v4, v9

    .line 24
    invoke-static/range {v2 .. v8}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->createMenuItemImpl(Lmiuix/appcompat/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 27
    move-result-object v2

    .line 28
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 30
    invoke-virtual {v3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 33
    const/4 v3, 0x1

    .line 34
    new-array v3, v3, [I

    .line 36
    sget v4, Lmiuix/appcompat/R$attr;->endActionMoreButtonIcon:I

    .line 38
    aput v4, v3, v5

    .line 40
    invoke-virtual {p1, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 54
    new-instance p1, Lmiuix/appcompat/internal/view/menu/action/b;

    .line 56
    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/view/menu/action/b;-><init>(Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;)V

    .line 59
    invoke-virtual {v2, p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 62
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 64
    invoke-virtual {p1, v5}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setPreventDispatchingItemsChanged(Z)V

    .line 67
    invoke-virtual {p0, v2, v1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getItemView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1, v9}, Landroid/view/View;->setId(I)V

    .line 74
    iput-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;->mMoreButtonItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 76
    invoke-virtual {v2, p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setView(Landroid/view/View;)V

    .line 79
    return-object p1
.end method

.method public getDefaultMaxItemCount()I
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    sget v1, Lmiuix/appcompat/R$integer;->action_bar_end_menu_max_item_count:I

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_f
    const/4 v0, 0x5

    .line 17
    return v0
.end method

.method public isConvertViewTypeAllowed(Landroid/view/View;)Z
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_18

    .line 4
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;->mMoreButtonItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v1, :cond_10

    .line 9
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getView()Landroid/view/View;

    .line 12
    move-result-object v1

    .line 13
    if-ne v1, p1, :cond_10

    .line 15
    move v1, v2

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    move v1, v0

    .line 18
    :goto_11
    instance-of p1, p1, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;

    .line 20
    if-eqz p1, :cond_18

    .line 22
    if-nez v1, :cond_18

    .line 24
    move v0, v2

    .line 25
    :cond_18
    return v0
.end method

.method public onSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)Z
    .registers 9

    .line 1
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_8
    new-instance v6, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter$PopupSubMenu;

    .line 11
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    .line 13
    iget-object v4, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 15
    const/4 v5, 0x1

    .line 16
    move-object v0, v6

    .line 17
    move-object v1, p0

    .line 18
    move-object v3, p1

    .line 19
    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter$PopupSubMenu;-><init>(Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 22
    invoke-virtual {v6}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->tryShow()Z

    .line 25
    const/4 p1, 0x1

    .line 26
    return p1
.end method

.method public updateBadgeOnMoreButton()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;->mMoreButtonItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->updateBadgeDrawable()V

    .line 9
    return-void
.end method
