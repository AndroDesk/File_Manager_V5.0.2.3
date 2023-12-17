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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;II)V
    .registers 12

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;IIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;IIII)V
    .registers 7

    invoke-direct {p0, p1, p3, p4}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    const p1, 0x10102f6

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowMenuAttrs:I

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    new-instance p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupPresenterCallback;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupPresenterCallback;-><init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$1;)V

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mPopupPresenterCallback:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupPresenterCallback;

    iput p5, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mListLayoutRes:I

    iput p6, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mListItemLayoutRes:I

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

    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    return-object p0
.end method

.method public static synthetic access$1100(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .registers 1

    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    return-object p0
.end method

.method public static synthetic access$1200(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .registers 1

    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    return-object p0
.end method

.method public static synthetic access$1300(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .registers 1

    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    return-object p0
.end method

.method public static synthetic access$1400(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .registers 1

    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    return-object p0
.end method

.method public static synthetic access$1500(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .registers 1

    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    return-object p0
.end method

.method public static synthetic access$1602(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;
    .registers 2

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowMenu:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

    return-object p1
.end method

.method public static synthetic access$1702(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ActionButtonSubMenu;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ActionButtonSubMenu;
    .registers 2

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mActionButtonPopup:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ActionButtonSubMenu;

    return-object p1
.end method

.method public static synthetic access$1800(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .registers 2

    invoke-static {p0, p1}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->close(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    return-void
.end method

.method public static synthetic access$1900(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .registers 1

    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$2002(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;
    .registers 2

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mPostedOpenRunnable:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;

    return-object p1
.end method

.method public static synthetic access$300(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)I
    .registers 1

    iget p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mListLayoutRes:I

    return p0
.end method

.method public static synthetic access$400(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)I
    .registers 1

    iget p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mListItemLayoutRes:I

    return p0
.end method

.method public static synthetic access$500(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .registers 1

    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    return-object p0
.end method

.method public static synthetic access$600(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .registers 1

    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    return-object p0
.end method

.method public static synthetic access$700(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;
    .registers 1

    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mDecorView:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    return-object p0
.end method

.method public static synthetic access$800(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .registers 1

    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    return-object p0
.end method

.method public static synthetic access$900(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .registers 1

    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    return-object p0
.end method

.method private findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .registers 8

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_24

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;

    if-eqz v5, :cond_21

    move-object v5, v4

    check-cast v5, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;

    invoke-interface {v5}, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;->getItemData()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v5

    if-ne v5, p1, :cond_21

    return-object v4

    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_24
    return-object v1
.end method

.method private getOverflowMenu()Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;
    .registers 8

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->shouldShowPopupOverflow()Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupOverflowMenu;

    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupOverflowMenu;-><init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    return-object v0

    :cond_15
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mListOverflowMenu:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

    if-nez v0, :cond_21

    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;-><init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$1;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mListOverflowMenu:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

    :cond_21
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mListOverflowMenu:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

    return-object v0
.end method

.method private synthetic lambda$createOverflowMenuButton$0()V
    .registers 4

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getRootMenu()Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getOverflowMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->dispatchMenuItemSelected(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    :cond_f
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    goto :goto_1f

    :cond_1c
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->showOverflowMenu()Z

    :goto_1f
    return-void
.end method


# virtual methods
.method public addBadgeOnItemView(I)V
    .registers 3

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->addBadgeOnItemView(II)V

    return-void
.end method

.method public addBadgeOnItemView(II)V
    .registers 4

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->addBadgeOnItemView(Landroid/view/MenuItem;I)V

    return-void
.end method

.method public addBadgeOnItemView(Landroid/view/MenuItem;)V
    .registers 3

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->addBadgeOnItemView(Landroid/view/MenuItem;I)V

    return-void
.end method

.method public addBadgeOnItemView(Landroid/view/MenuItem;I)V
    .registers 4

    instance-of v0, p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    if-nez v0, :cond_5

    return-void

    :cond_5
    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setBadgeNeeded(ZI)V

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->updateBadgeOnItemView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V

    return-void
.end method

.method public bindItemView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;)V
    .registers 4

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;->initialize(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;I)V

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;

    invoke-interface {p2, p1}, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;->setItemInvoker(Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;)V

    return-void
.end method

.method public clearBadgeOnItemView(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->clearBadgeOnItemView(Landroid/view/MenuItem;)V

    return-void
.end method

.method public clearBadgeOnItemView(Landroid/view/MenuItem;)V
    .registers 3

    instance-of v0, p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    if-nez v0, :cond_5

    return-void

    :cond_5
    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setBadgeNeeded(Z)V

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->updateBadgeOnItemView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V

    return-void
.end method

.method public createOverflowMenuButton(Landroid/content/Context;)Landroid/view/View;
    .registers 5

    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;

    iget v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowMenuAttrs:I

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lmiuix/appcompat/internal/view/menu/action/a;

    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/view/menu/action/a;-><init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)V

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;->setOnOverflowMenuButtonClickListener(Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton$OnOverflowMenuButtonClickListener;)V

    return-object v0
.end method

.method public dismissPopupMenus(Z)Z
    .registers 2

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    move-result p1

    return p1
.end method

.method public flagActionItems()Z
    .registers 9

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMaxItems:I

    if-ge v2, v1, :cond_10

    add-int/lit8 v2, v2, -0x1

    :cond_10
    const/4 v3, 0x0

    move v4, v3

    :goto_12
    const/4 v5, 0x1

    if-ge v4, v1, :cond_35

    if-lez v2, :cond_35

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    invoke-virtual {v6}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v7

    if-nez v7, :cond_2b

    invoke-virtual {v6}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v7

    if-eqz v7, :cond_2a

    goto :goto_2b

    :cond_2a
    move v5, v3

    :cond_2b
    :goto_2b
    invoke-virtual {v6, v5}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    if-eqz v5, :cond_32

    add-int/lit8 v2, v2, -0x1

    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_35
    :goto_35
    if-ge v4, v1, :cond_43

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    :cond_43
    return v5
.end method

.method public getDefaultMaxItemCount()I
    .registers 4

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    const/4 v1, 0x5

    if-eqz v0, :cond_c

    sget v2, Lmiuix/appcompat/R$attr;->actionMenuItemLimit:I

    invoke-static {v0, v2, v1}, Lmiuix/internal/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result v0

    return v0

    :cond_c
    return v1
.end method

.method public getItemView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_c
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->isConvertViewTypeAllowed(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_13

    const/4 p2, 0x0

    :cond_13
    invoke-super {p0, p1, p2, p3}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->getItemView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :cond_17
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result p1

    if-eqz p1, :cond_20

    const/16 p1, 0x8

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    check-cast p3, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p3, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p2

    if-nez p2, :cond_37

    invoke-virtual {p3, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_37
    return-object v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .registers 4

    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->setPresenter(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)V

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mBottomMenuCustomView:Landroid/view/View;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_20

    instance-of v0, p1, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    if-eqz v0, :cond_20

    move-object v0, p1

    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mBottomMenuCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->addCustomView(Landroid/view/View;)V

    :cond_20
    return-object p1
.end method

.method public getOverflowMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;
    .registers 9

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowMenuItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    if-nez v0, :cond_1a

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    const/4 v2, 0x0

    sget v3, Lmiuix/appcompat/R$id;->more:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    sget v6, Lmiuix/appcompat/R$string;->more:I

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->createMenuItemImpl(Lmiuix/appcompat/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowMenuItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    :cond_1a
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowMenuItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public hideOverflowMenu(Z)Z
    .registers 5

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mPostedOpenRunnable:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    if-eqz v0, :cond_1c

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mPostedOpenRunnable:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mPostedOpenRunnable:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;

    const/4 p1, 0x1

    return p1

    :cond_1c
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowMenu:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

    if-eqz v0, :cond_31

    invoke-interface {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_2b
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowMenu:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

    invoke-interface {v1, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;->dismiss(Z)V

    return v0

    :cond_31
    return v1
.end method

.method public hideSubMenus()Z
    .registers 2

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mActionButtonPopup:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ActionButtonSubMenu;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->dismiss()V

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public initForMenu(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    invoke-static {p1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lmiuix/appcompat/internal/view/ActionBarPolicy;

    move-result-object p1

    iget-boolean p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mReserveOverflowSet:Z

    if-nez p2, :cond_14

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->showsOverflowMenuButton()Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mReserveOverflow:Z

    :cond_14
    iget-boolean p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mWidthLimitSet:Z

    if-nez p2, :cond_1e

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mWidthLimit:I

    :cond_1e
    iget-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->isMaxItemCountSet:Z

    if-nez p1, :cond_28

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getDefaultMaxItemCount()I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMaxItems:I

    :cond_28
    iget p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mWidthLimit:I

    iget-boolean p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mReserveOverflow:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_51

    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez p2, :cond_3b

    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->createOverflowMenuButton(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    :cond_3b
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz p2, :cond_53

    const/4 p2, 0x0

    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v1, p2, p2}, Landroid/view/View;->measure(II)V

    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p1, p2

    goto :goto_53

    :cond_51
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    :cond_53
    :goto_53
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mActionItemWidthLimit:I

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    return-void
.end method

.method public isConvertViewTypeAllowed(Landroid/view/View;)Z
    .registers 2

    instance-of p1, p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;

    return p1
.end method

.method public isOverflowMenuShowing()Z
    .registers 2

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowMenu:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isOverflowReserved()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mReserveOverflow:Z

    return v0
.end method

.method public onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->dismissPopupMenus(Z)Z

    invoke-super {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    iget-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->isMaxItemCountSet:Z

    if-nez p1, :cond_e

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getDefaultMaxItemCount()I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMaxItems:I

    :cond_e
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-eqz p1, :cond_16

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->notifyItemsChanged(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    :cond_16
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    check-cast p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$SavedState;

    iget p1, p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$SavedState;->openSubMenuId:I

    if-lez p1, :cond_17

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_17

    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->onSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)Z

    :cond_17
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$SavedState;

    invoke-direct {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$SavedState;-><init>()V

    iget v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOpenSubMenuId:I

    iput v1, v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$SavedState;->openSubMenuId:I

    return-object v0
.end method

.method public onSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)Z
    .registers 6

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    move-object v0, p1

    :goto_9
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v2

    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-eq v2, v3, :cond_18

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    goto :goto_9

    :cond_18
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v0, :cond_27

    return v1

    :cond_27
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOpenSubMenuId:I

    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ActionButtonSubMenu;

    invoke-direct {v0, p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ActionButtonSubMenu;-><init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mActionButtonPopup:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ActionButtonSubMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onSubUiVisibilityChanged(Z)V
    .registers 3

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)Z

    goto :goto_d

    :cond_7
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->close(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    :goto_d
    return-void
.end method

.method public removeBottomMenuCustomView()V
    .registers 3

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mBottomMenuCustomView:Landroid/view/View;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    instance-of v1, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    if-eqz v1, :cond_f

    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->removeCustomView()V

    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mBottomMenuCustomView:Landroid/view/View;

    :cond_12
    return-void
.end method

.method public setActionEditMode(Z)V
    .registers 2

    if-eqz p1, :cond_6

    sget p1, Lmiuix/appcompat/R$attr;->actionModeOverflowButtonStyle:I

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowMenuAttrs:I

    :cond_6
    return-void
.end method

.method public setBottomMenuCustomView(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mBottomMenuCustomView:Landroid/view/View;

    if-eqz v0, :cond_13

    if-eq v0, p1, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mBottomMenuCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_13
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mBottomMenuCustomView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    instance-of v1, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    if-eqz v1, :cond_26

    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->addCustomView(Landroid/view/View;)V

    :cond_26
    return-void
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    return-void
.end method

.method public setItemLimit(I)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->isMaxItemCountSet:Z

    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMaxItems:I

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMaxItems:I

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_10

    if-eq v0, p1, :cond_10

    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->updateVisibleItemCountLimit()V

    :cond_10
    return-void
.end method

.method public setReserveOverflow(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mReserveOverflow:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mReserveOverflowSet:Z

    return-void
.end method

.method public setWidthLimit(IZ)V
    .registers 3

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mWidthLimit:I

    iput-boolean p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mStrictWidthLimit:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mWidthLimitSet:Z

    return-void
.end method

.method public shouldIncludeItem(ILmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .registers 3

    invoke-virtual {p2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result p1

    return p1
.end method

.method public shouldShowPopupOverflow()Z
    .registers 2

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public showOverflowMenu()Z
    .registers 3

    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mPostedOpenRunnable:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_37

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v0, :cond_37

    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getOverflowMenu()Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

    move-result-object v0

    new-instance v1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-direct {v1, p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mPostedOpenRunnable:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)Z

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    return v1

    :cond_37
    const/4 v0, 0x0

    return v0
.end method

.method public updateBadgeOnItemView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V
    .registers 2

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->updateBadgeDrawable()V

    return-void
.end method

.method public updateBadgeOnItemViews()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    instance-of v2, v1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    if-eqz v2, :cond_18

    check-cast v1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->updateBadgeDrawable()V

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    return-void
.end method

.method public updateMenuView(Z)V
    .registers 5

    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    if-nez p1, :cond_8

    return-void

    :cond_8
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mReserveOverflow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    if-eqz p1, :cond_30

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2d

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result p1

    xor-int/lit8 v1, p1, 0x1

    goto :goto_30

    :cond_2d
    if-lez v0, :cond_30

    move v1, v2

    :cond_30
    :goto_30
    if-eqz v1, :cond_64

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez p1, :cond_3f

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->createOverflowMenuButton(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    goto :goto_43

    :cond_3f
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :goto_43
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    if-eq p1, v0, :cond_77

    if-eqz p1, :cond_56

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_56
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    check-cast p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateOverflowButtonLayoutParams(Landroid/view/View;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_77

    :cond_64
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz p1, :cond_77

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    if-ne p1, v0, :cond_77

    check-cast v0, Landroid/view/ViewGroup;

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_77
    :goto_77
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    check-cast p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mReserveOverflow:Z

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->setOverflowReserved(Z)V

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->shouldShowPopupOverflow()Z

    move-result p1

    if-nez p1, :cond_8f

    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getOverflowMenu()Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

    move-result-object p1

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-interface {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;->update(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    :cond_8f
    return-void
.end method
