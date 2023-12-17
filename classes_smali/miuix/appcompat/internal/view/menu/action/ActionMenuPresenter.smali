.class public Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;
.super Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;,
        Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupPresenterCallback;,
        Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ActionButtonSubMenu;,
        Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupOverflowMenu;,
        Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;,
        Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;,
        Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$SavedState;
    }
.end annotation


# instance fields
.field private isMaxItemCountSet:Z

.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field private mActionButtonPopup:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ActionButtonSubMenu;

.field private mActionItemWidthLimit:I

.field private mBottomMenuCustomView:Landroid/view/View;

.field private mDecorView:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

.field private mExpandedActionViewsExclusive:Z

.field private mListItemLayoutRes:I

.field private mListLayoutRes:I

.field private mListOverflowMenu:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

.field private mMaxItems:I

.field public mOpenSubMenuId:I

.field public mOverflowButton:Landroid/view/View;

.field private mOverflowMenu:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

.field private mOverflowMenuAttrs:I

.field private mOverflowMenuItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

.field public final mPopupPresenterCallback:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupPresenterCallback;

.field private mPostedOpenRunnable:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;

.field private mReserveOverflow:Z

.field private mReserveOverflowSet:Z

.field private mScrapActionButtonView:Landroid/view/View;

.field private mStrictWidthLimit:Z

.field private mWidthLimit:I

.field private mWidthLimitSet:Z


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
    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;IIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;IIII)V
    .registers 7

    .line 2
    invoke-direct {p0, p1, p3, p4}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    const p1, 0x10102f6

    .line 3
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowMenuAttrs:I

    .line 4
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 5
    new-instance p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupPresenterCallback;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupPresenterCallback;-><init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$1;)V

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mPopupPresenterCallback:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupPresenterCallback;

    .line 6
    iput p5, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mListLayoutRes:I

    .line 7
    iput p6, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mListItemLayoutRes:I

    .line 8
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mDecorView:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    return-void
.end method

.method public static synthetic a(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->lambda$createOverflowMenuButton$0()V

    return-void
.end method

.method public static synthetic access$1000(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1100(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1200(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1300(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1400(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1500(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1602(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowMenu:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

    .line 3
    return-object p1
.end method

.method public static synthetic access$1702(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ActionButtonSubMenu;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ActionButtonSubMenu;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mActionButtonPopup:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ActionButtonSubMenu;

    .line 3
    return-object p1
.end method

.method public static synthetic access$1800(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->close(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$1900(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Landroid/content/Context;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2002(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mPostedOpenRunnable:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;

    .line 3
    return-object p1
.end method

.method public static synthetic access$300(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mListLayoutRes:I

    .line 3
    return p0
.end method

.method public static synthetic access$400(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mListItemLayoutRes:I

    .line 3
    return p0
.end method

.method public static synthetic access$500(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mDecorView:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$900(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 3
    return-object p0
.end method

.method private findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .registers 8

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
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_d
    if-ge v3, v2, :cond_24

    .line 16
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    move-result-object v4

    .line 20
    instance-of v5, v4, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;

    .line 22
    if-eqz v5, :cond_21

    .line 24
    move-object v5, v4

    .line 25
    check-cast v5, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;

    .line 27
    invoke-interface {v5}, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;->getItemData()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 30
    move-result-object v5

    .line 31
    if-ne v5, p1, :cond_21

    .line 33
    return-object v4

    .line 34
    :cond_21
    add-int/lit8 v3, v3, 0x1

    .line 36
    goto :goto_d

    .line 37
    :cond_24
    return-object v1
.end method

.method private getOverflowMenu()Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;
    .registers 8

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->shouldShowPopupOverflow()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_15

    .line 7
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupOverflowMenu;

    .line 9
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    .line 11
    iget-object v4, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 13
    iget-object v5, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 15
    const/4 v6, 0x1

    .line 16
    move-object v1, v0

    .line 17
    move-object v2, p0

    .line 18
    invoke-direct/range {v1 .. v6}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupOverflowMenu;-><init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 21
    return-object v0

    .line 22
    :cond_15
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mListOverflowMenu:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

    .line 24
    if-nez v0, :cond_21

    .line 26
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;-><init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$1;)V

    .line 32
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mListOverflowMenu:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

    .line 34
    :cond_21
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mListOverflowMenu:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

    .line 36
    return-object v0
.end method

.method private synthetic lambda$createOverflowMenuButton$0()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getRootMenu()Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getOverflowMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 12
    move-result-object v2

    .line 13
    invoke-static {v0, v1, v2}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->dispatchMenuItemSelected(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    .line 16
    :cond_f
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1c

    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    .line 28
    goto :goto_1f

    .line 29
    :cond_1c
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->showOverflowMenu()Z

    .line 32
    :goto_1f
    return-void
.end method


# virtual methods
.method public addBadgeOnItemView(I)V
    .registers 3

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->addBadgeOnItemView(II)V

    return-void
.end method

.method public addBadgeOnItemView(II)V
    .registers 4

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->addBadgeOnItemView(Landroid/view/MenuItem;I)V

    return-void
.end method

.method public addBadgeOnItemView(Landroid/view/MenuItem;)V
    .registers 3

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->addBadgeOnItemView(Landroid/view/MenuItem;I)V

    return-void
.end method

.method public addBadgeOnItemView(Landroid/view/MenuItem;I)V
    .registers 4

    .line 5
    instance-of v0, p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    if-nez v0, :cond_5

    return-void

    .line 6
    :cond_5
    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0, p2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setBadgeNeeded(ZI)V

    .line 8
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->updateBadgeOnItemView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V

    return-void
.end method

.method public bindItemView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p2, p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;->initialize(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;I)V

    .line 5
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 7
    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;

    .line 9
    invoke-interface {p2, p1}, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;->setItemInvoker(Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;)V

    .line 12
    return-void
.end method

.method public clearBadgeOnItemView(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->clearBadgeOnItemView(Landroid/view/MenuItem;)V

    return-void
.end method

.method public clearBadgeOnItemView(Landroid/view/MenuItem;)V
    .registers 3

    .line 3
    instance-of v0, p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    if-nez v0, :cond_5

    return-void

    .line 4
    :cond_5
    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setBadgeNeeded(Z)V

    .line 6
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->updateBadgeOnItemView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V

    return-void
.end method

.method public createOverflowMenuButton(Landroid/content/Context;)Landroid/view/View;
    .registers 5

    .line 1
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;

    .line 3
    iget v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowMenuAttrs:I

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, p1, v2, v1}, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 9
    new-instance p1, Lmiuix/appcompat/internal/view/menu/action/a;

    .line 11
    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/view/menu/action/a;-><init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)V

    .line 14
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;->setOnOverflowMenuButtonClickListener(Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton$OnOverflowMenuButtonClickListener;)V

    .line 17
    return-object v0
.end method

.method public dismissPopupMenus(Z)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public flagActionItems()Z
    .registers 9

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v1

    .line 11
    iget v2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMaxItems:I

    .line 13
    if-ge v2, v1, :cond_10

    .line 15
    add-int/lit8 v2, v2, -0x1

    .line 17
    :cond_10
    const/4 v3, 0x0

    .line 18
    move v4, v3

    .line 19
    :goto_12
    const/4 v5, 0x1

    .line 20
    if-ge v4, v1, :cond_35

    .line 22
    if-lez v2, :cond_35

    .line 24
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v6

    .line 28
    check-cast v6, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 30
    invoke-virtual {v6}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    .line 33
    move-result v7

    .line 34
    if-nez v7, :cond_2b

    .line 36
    invoke-virtual {v6}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    .line 39
    move-result v7

    .line 40
    if-eqz v7, :cond_2a

    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    move v5, v3

    .line 44
    :cond_2b
    :goto_2b
    invoke-virtual {v6, v5}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 47
    if-eqz v5, :cond_32

    .line 49
    add-int/lit8 v2, v2, -0x1

    .line 51
    :cond_32
    add-int/lit8 v4, v4, 0x1

    .line 53
    goto :goto_12

    .line 54
    :cond_35
    :goto_35
    if-ge v4, v1, :cond_43

    .line 56
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 62
    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 65
    add-int/lit8 v4, v4, 0x1

    .line 67
    goto :goto_35

    .line 68
    :cond_43
    return v5
.end method

.method public getDefaultMaxItemCount()I
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    .line 3
    const/4 v1, 0x5

    .line 4
    if-eqz v0, :cond_c

    .line 6
    sget v2, Lmiuix/appcompat/R$attr;->actionMenuItemLimit:I

    .line 8
    invoke-static {v0, v2, v1}, Lmiuix/internal/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    .line 11
    move-result v0

    .line 12
    return v0

    .line 13
    :cond_c
    return v1
.end method

.method public getItemView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    .line 1
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_c

    .line 7
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_17

    .line 13
    :cond_c
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->isConvertViewTypeAllowed(Landroid/view/View;)Z

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_13

    .line 19
    const/4 p2, 0x0

    .line 20
    :cond_13
    invoke-super {p0, p1, p2, p3}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->getItemView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 23
    move-result-object v0

    .line 24
    :cond_17
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_20

    .line 30
    const/16 p1, 0x8

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    const/4 p1, 0x0

    .line 34
    :goto_21
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    check-cast p3, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p3, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 46
    move-result p2

    .line 47
    if-nez p2, :cond_37

    .line 49
    invoke-virtual {p3, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    :cond_37
    return-object v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 4
    move-result-object p1

    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 8
    invoke-virtual {v0, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->setPresenter(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)V

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mBottomMenuCustomView:Landroid/view/View;

    .line 13
    if-eqz v0, :cond_20

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_20

    .line 21
    instance-of v0, p1, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 23
    if-eqz v0, :cond_20

    .line 25
    move-object v0, p1

    .line 26
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 28
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mBottomMenuCustomView:Landroid/view/View;

    .line 30
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->addCustomView(Landroid/view/View;)V

    .line 33
    :cond_20
    return-object p1
.end method

.method public getOverflowMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;
    .registers 9

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowMenuItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 3
    if-nez v0, :cond_1a

    .line 5
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 7
    const/4 v2, 0x0

    .line 8
    sget v3, Lmiuix/appcompat/R$id;->more:I

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    .line 14
    sget v6, Lmiuix/appcompat/R$string;->more:I

    .line 16
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    move-result-object v6

    .line 20
    const/4 v7, 0x0

    .line 21
    invoke-static/range {v1 .. v7}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->createMenuItemImpl(Lmiuix/appcompat/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowMenuItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 27
    :cond_1a
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowMenuItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 29
    return-object v0
.end method

.method public hideOverflowMenu(Z)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mPostedOpenRunnable:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1c

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 8
    if-eqz v0, :cond_1c

    .line 10
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 12
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 15
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 17
    check-cast p1, Landroid/view/View;

    .line 19
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mPostedOpenRunnable:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 24
    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mPostedOpenRunnable:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;

    .line 27
    const/4 p1, 0x1

    .line 28
    return p1

    .line 29
    :cond_1c
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowMenu:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

    .line 31
    if-eqz v0, :cond_31

    .line 33
    invoke-interface {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;->isShowing()Z

    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2b

    .line 39
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 41
    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    .line 44
    :cond_2b
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowMenu:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

    .line 46
    invoke-interface {v1, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;->dismiss(Z)V

    .line 49
    return v0

    .line 50
    :cond_31
    return v1
.end method

.method public hideSubMenus()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mActionButtonPopup:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ActionButtonSubMenu;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->dismiss()V

    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public initForMenu(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    invoke-static {p1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lmiuix/appcompat/internal/view/ActionBarPolicy;

    .line 10
    move-result-object p1

    .line 11
    iget-boolean p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mReserveOverflowSet:Z

    .line 13
    if-nez p2, :cond_14

    .line 15
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->showsOverflowMenuButton()Z

    .line 18
    move-result p2

    .line 19
    iput-boolean p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mReserveOverflow:Z

    .line 21
    :cond_14
    iget-boolean p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mWidthLimitSet:Z

    .line 23
    if-nez p2, :cond_1e

    .line 25
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    .line 28
    move-result p1

    .line 29
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mWidthLimit:I

    .line 31
    :cond_1e
    iget-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->isMaxItemCountSet:Z

    .line 33
    if-nez p1, :cond_28

    .line 35
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getDefaultMaxItemCount()I

    .line 38
    move-result p1

    .line 39
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMaxItems:I

    .line 41
    :cond_28
    iget p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mWidthLimit:I

    .line 43
    iget-boolean p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mReserveOverflow:Z

    .line 45
    const/4 v0, 0x0

    .line 46
    if-eqz p2, :cond_51

    .line 48
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 50
    if-nez p2, :cond_3b

    .line 52
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    .line 54
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->createOverflowMenuButton(Landroid/content/Context;)Landroid/view/View;

    .line 57
    move-result-object p2

    .line 58
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 60
    :cond_3b
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 62
    if-eqz p2, :cond_53

    .line 64
    const/4 p2, 0x0

    .line 65
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 68
    move-result p2

    .line 69
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 71
    invoke-virtual {v1, p2, p2}, Landroid/view/View;->measure(II)V

    .line 74
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 76
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 79
    move-result p2

    .line 80
    sub-int/2addr p1, p2

    .line 81
    goto :goto_53

    .line 82
    :cond_51
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 84
    :cond_53
    :goto_53
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 86
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 88
    return-void
.end method

.method public isConvertViewTypeAllowed(Landroid/view/View;)Z
    .registers 2

    .line 1
    instance-of p1, p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;

    .line 3
    return p1
.end method

.method public isOverflowMenuShowing()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowMenu:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-interface {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;->isShowing()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public isOverflowReserved()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mReserveOverflow:Z

    .line 3
    return v0
.end method

.method public onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->dismissPopupMenus(Z)Z

    .line 5
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    .line 8
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    iget-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->isMaxItemCountSet:Z

    .line 3
    if-nez p1, :cond_e

    .line 5
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    .line 7
    if-eqz p1, :cond_e

    .line 9
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getDefaultMaxItemCount()I

    .line 12
    move-result p1

    .line 13
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMaxItems:I

    .line 15
    :cond_e
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 17
    if-eqz p1, :cond_16

    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-static {p1, v0}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->notifyItemsChanged(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    .line 23
    :cond_16
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 1
    check-cast p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$SavedState;

    .line 3
    iget p1, p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$SavedState;->openSubMenuId:I

    .line 5
    if-lez p1, :cond_17

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 9
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_17

    .line 15
    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    .line 21
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->onSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)Z

    .line 24
    :cond_17
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 1
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$SavedState;

    .line 3
    invoke-direct {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$SavedState;-><init>()V

    .line 6
    iget v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 8
    iput v1, v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$SavedState;->openSubMenuId:I

    .line 10
    return-object v0
.end method

.method public onSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)Z
    .registers 6

    .line 1
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    move-object v0, p1

    .line 10
    :goto_9
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    .line 13
    move-result-object v2

    .line 14
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 16
    if-eq v2, v3, :cond_18

    .line 18
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    .line 24
    goto :goto_9

    .line 25
    :cond_18
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    .line 28
    move-result-object v0

    .line 29
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    if-nez v0, :cond_27

    .line 35
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 37
    if-nez v0, :cond_27

    .line 39
    return v1

    .line 40
    :cond_27
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    .line 47
    move-result v0

    .line 48
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 50
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ActionButtonSubMenu;

    .line 52
    invoke-direct {v0, p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ActionButtonSubMenu;-><init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)V

    .line 55
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mActionButtonPopup:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ActionButtonSubMenu;

    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    .line 61
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)Z

    .line 64
    const/4 p1, 0x1

    .line 65
    return p1
.end method

.method public onSubUiVisibilityChanged(Z)V
    .registers 3

    .line 1
    if-eqz p1, :cond_7

    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)Z

    .line 7
    goto :goto_d

    .line 8
    :cond_7
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-static {p1, v0}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->close(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    .line 14
    :goto_d
    return-void
.end method

.method public removeBottomMenuCustomView()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mBottomMenuCustomView:Landroid/view/View;

    .line 3
    if-eqz v0, :cond_12

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 7
    instance-of v1, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 9
    if-eqz v1, :cond_f

    .line 11
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 13
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->removeCustomView()V

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mBottomMenuCustomView:Landroid/view/View;

    .line 19
    :cond_12
    return-void
.end method

.method public setActionEditMode(Z)V
    .registers 2

    .line 1
    if-eqz p1, :cond_6

    .line 3
    sget p1, Lmiuix/appcompat/R$attr;->actionModeOverflowButtonStyle:I

    .line 5
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowMenuAttrs:I

    .line 7
    :cond_6
    return-void
.end method

.method public setBottomMenuCustomView(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mBottomMenuCustomView:Landroid/view/View;

    .line 3
    if-eqz v0, :cond_13

    .line 5
    if-eq v0, p1, :cond_13

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/ViewGroup;

    .line 13
    if-eqz v0, :cond_13

    .line 15
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mBottomMenuCustomView:Landroid/view/View;

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 20
    :cond_13
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mBottomMenuCustomView:Landroid/view/View;

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_26

    .line 28
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 30
    instance-of v1, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 32
    if-eqz v1, :cond_26

    .line 34
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 36
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->addCustomView(Landroid/view/View;)V

    .line 39
    :cond_26
    return-void
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    .line 3
    return-void
.end method

.method public setItemLimit(I)V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->isMaxItemCountSet:Z

    .line 4
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMaxItems:I

    .line 6
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMaxItems:I

    .line 8
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 10
    if-eqz v1, :cond_10

    .line 12
    if-eq v0, p1, :cond_10

    .line 14
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->updateVisibleItemCountLimit()V

    .line 17
    :cond_10
    return-void
.end method

.method public setReserveOverflow(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mReserveOverflow:Z

    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mReserveOverflowSet:Z

    .line 6
    return-void
.end method

.method public setWidthLimit(IZ)V
    .registers 3

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mWidthLimit:I

    .line 3
    iput-boolean p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mStrictWidthLimit:Z

    .line 5
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mWidthLimitSet:Z

    .line 8
    return-void
.end method

.method public shouldIncludeItem(ILmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .registers 3

    .line 1
    invoke-virtual {p2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isActionButton()Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public shouldShowPopupOverflow()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public showOverflowMenu()Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mReserveOverflow:Z

    .line 3
    if-eqz v0, :cond_37

    .line 5
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->isOverflowMenuShowing()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_37

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 13
    if-eqz v0, :cond_37

    .line 15
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 17
    if-eqz v0, :cond_37

    .line 19
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mPostedOpenRunnable:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;

    .line 21
    if-nez v0, :cond_37

    .line 23
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 25
    if-eqz v0, :cond_37

    .line 27
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getOverflowMenu()Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;

    .line 33
    invoke-direct {v1, p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;)V

    .line 36
    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mPostedOpenRunnable:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;

    .line 38
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 40
    check-cast v0, Landroid/view/View;

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-super {p0, v0}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)Z

    .line 49
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 51
    const/4 v1, 0x1

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 55
    return v1

    .line 56
    :cond_37
    const/4 v0, 0x0

    .line 57
    return v0
.end method

.method public updateBadgeOnItemView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->updateBadgeDrawable()V

    .line 4
    return-void
.end method

.method public updateBadgeOnItemViews()V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 4
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->size()I

    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1b

    .line 10
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 12
    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 15
    move-result-object v1

    .line 16
    instance-of v2, v1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 18
    if-eqz v2, :cond_18

    .line 20
    check-cast v1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 22
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->updateBadgeDrawable()V

    .line 25
    :cond_18
    add-int/lit8 v0, v0, 0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_1b
    return-void
.end method

.method public updateMenuView(Z)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 6
    if-nez p1, :cond_8

    .line 8
    return-void

    .line 9
    :cond_8
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 11
    if-eqz p1, :cond_11

    .line 13
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    .line 16
    move-result-object p1

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    const/4 p1, 0x0

    .line 19
    :goto_12
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mReserveOverflow:Z

    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz v0, :cond_30

    .line 24
    if-eqz p1, :cond_30

    .line 26
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 29
    move-result v0

    .line 30
    const/4 v2, 0x1

    .line 31
    if-ne v0, v2, :cond_2d

    .line 33
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 39
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    .line 42
    move-result p1

    .line 43
    xor-int/lit8 v1, p1, 0x1

    .line 45
    goto :goto_30

    .line 46
    :cond_2d
    if-lez v0, :cond_30

    .line 48
    move v1, v2

    .line 49
    :cond_30
    :goto_30
    if-eqz v1, :cond_64

    .line 51
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 53
    if-nez p1, :cond_3f

    .line 55
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    .line 57
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->createOverflowMenuButton(Landroid/content/Context;)Landroid/view/View;

    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 63
    goto :goto_43

    .line 64
    :cond_3f
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 68
    :goto_43
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Landroid/view/ViewGroup;

    .line 76
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 78
    if-eq p1, v0, :cond_77

    .line 80
    if-eqz p1, :cond_56

    .line 82
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 87
    :cond_56
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 89
    check-cast p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 91
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 93
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateOverflowButtonLayoutParams(Landroid/view/View;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    goto :goto_77

    .line 101
    :cond_64
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 103
    if-eqz p1, :cond_77

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 108
    move-result-object p1

    .line 109
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 111
    if-ne p1, v0, :cond_77

    .line 113
    check-cast v0, Landroid/view/ViewGroup;

    .line 115
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 117
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 120
    :cond_77
    :goto_77
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 122
    check-cast p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 124
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mReserveOverflow:Z

    .line 126
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->setOverflowReserved(Z)V

    .line 129
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->shouldShowPopupOverflow()Z

    .line 132
    move-result p1

    .line 133
    if-nez p1, :cond_8f

    .line 135
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getOverflowMenu()Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

    .line 138
    move-result-object p1

    .line 139
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 141
    invoke-interface {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;->update(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 144
    :cond_8f
    return-void
.end method
