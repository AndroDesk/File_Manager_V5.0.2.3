.class public Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Lmiuix/appcompat/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuViewAccessibilityDelegate;,
        Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;,
        Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;,
        Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;,
        Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuItem;,
        Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;,
        Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$HeaderViewHolder;,
        Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$SeparatorViewHolder;,
        Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$SubheaderViewHolder;,
        Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NormalViewHolder;,
        Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$ViewHolder;
    }
.end annotation


# static fields
.field public static final NO_TEXT_APPEARANCE_SET:I = 0x0

.field private static final STATE_ADAPTER:Ljava/lang/String; = "android:menu:adapter"

.field private static final STATE_HEADER:Ljava/lang/String; = "android:menu:header"

.field private static final STATE_HIERARCHY:Ljava/lang/String; = "android:menu:list"


# instance fields
.field public adapter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;

.field private callback:Lmiuix/appcompat/view/menu/MenuPresenter$Callback;

.field public dividerInsetEnd:I

.field public dividerInsetStart:I

.field public hasCustomItemIconSize:Z

.field public headerLayout:Landroid/widget/LinearLayout;

.field public iconTintList:Landroid/content/res/ColorStateList;

.field private id:I

.field public isBehindStatusBar:Z

.field public itemBackground:Landroid/graphics/drawable/Drawable;

.field public itemForeground:Landroid/graphics/drawable/RippleDrawable;

.field public itemHorizontalPadding:I

.field public itemIconPadding:I

.field public itemIconSize:I

.field private itemMaxLines:I

.field public itemVerticalPadding:I

.field public layoutInflater:Landroid/view/LayoutInflater;

.field public menu:Lmiuix/appcompat/view/menu/MenuBuilder;

.field private menuView:Lmiuix/navigator/navigation/internal/NavigationMenuView;

.field public final onClickListener:Landroid/view/View$OnClickListener;

.field private overScrollMode:I

.field public paddingSeparator:I

.field private paddingTopDefault:I

.field public subheaderColor:Landroid/content/res/ColorStateList;

.field public subheaderInsetEnd:I

.field public subheaderInsetStart:I

.field public subheaderTextAppearance:I

.field public textAppearance:I

.field public textColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->subheaderTextAppearance:I

    .line 7
    iput v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->textAppearance:I

    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->isBehindStatusBar:Z

    .line 12
    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->overScrollMode:I

    .line 15
    new-instance v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$1;

    .line 17
    invoke-direct {v0, p0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$1;-><init>(Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;)V

    .line 20
    iput-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->onClickListener:Landroid/view/View$OnClickListener;

    .line 22
    return-void
.end method

.method public static synthetic access$000(Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemMaxLines:I

    .line 3
    return p0
.end method

.method private updateTopPadding()V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_10

    .line 10
    iget-boolean v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->isBehindStatusBar:Z

    .line 12
    if-eqz v0, :cond_10

    .line 14
    iget v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->paddingTopDefault:I

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    move v0, v1

    .line 18
    :goto_11
    iget-object v2, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->menuView:Lmiuix/navigator/navigation/internal/NavigationMenuView;

    .line 20
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    .line 23
    move-result v3

    .line 24
    invoke-virtual {v2, v1, v0, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 27
    return-void
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->menuView:Lmiuix/navigator/navigation/internal/NavigationMenuView;

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 16
    return-void
.end method

.method public collapseItemActionView(Lmiuix/appcompat/view/menu/MenuBuilder;Lmiuix/appcompat/view/menu/MenuItemImpl;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public dispatchApplyWindowInsets(Lm0/r0;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Lm0/r0;->e()I

    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->paddingTopDefault:I

    .line 7
    if-eq v1, v0, :cond_d

    .line 9
    iput v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->paddingTopDefault:I

    .line 11
    invoke-direct {p0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->updateTopPadding()V

    .line 14
    :cond_d
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->menuView:Lmiuix/navigator/navigation/internal/NavigationMenuView;

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lm0/r0;->b()I

    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 28
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    .line 30
    invoke-static {v0, p1}, Lm0/g0;->b(Landroid/view/View;Lm0/r0;)Lm0/r0;

    .line 33
    return-void
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

.method public getCheckedItem()Lmiuix/appcompat/view/menu/MenuItemImpl;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->adapter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getCheckedItem()Lmiuix/appcompat/view/menu/MenuItemImpl;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDividerInsetEnd()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->dividerInsetEnd:I

    .line 3
    return v0
.end method

.method public getDividerInsetStart()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->dividerInsetStart:I

    .line 3
    return v0
.end method

.method public getHeaderCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getHeaderView(I)Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getId()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->id:I

    .line 3
    return v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemBackground:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object v0
.end method

.method public getItemHorizontalPadding()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemHorizontalPadding:I

    .line 3
    return v0
.end method

.method public getItemIconPadding()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemIconPadding:I

    .line 3
    return v0
.end method

.method public getItemMaxLines()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemMaxLines:I

    .line 3
    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->textColor:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getItemTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->iconTintList:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getItemVerticalPadding()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemVerticalPadding:I

    .line 3
    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/view/menu/MenuView;
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->menuView:Lmiuix/navigator/navigation/internal/NavigationMenuView;

    .line 3
    if-nez v0, :cond_45

    .line 5
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 7
    sget v1, Lmiuix/navigator/R$layout;->miuix_design_navigation_menu:I

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lmiuix/navigator/navigation/internal/NavigationMenuView;

    .line 16
    iput-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->menuView:Lmiuix/navigator/navigation/internal/NavigationMenuView;

    .line 18
    new-instance v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuViewAccessibilityDelegate;

    .line 20
    iget-object v1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->menuView:Lmiuix/navigator/navigation/internal/NavigationMenuView;

    .line 22
    invoke-direct {v0, p0, v1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuViewAccessibilityDelegate;-><init>(Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;Lmiuix/recyclerview/widget/RecyclerView;)V

    .line 25
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/r;)V

    .line 28
    iget-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->adapter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    .line 30
    if-nez p1, :cond_26

    .line 32
    new-instance p1, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    .line 34
    invoke-direct {p1, p0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;-><init>(Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;)V

    .line 37
    iput-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->adapter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    .line 39
    :cond_26
    iget p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->overScrollMode:I

    .line 41
    const/4 v0, -0x1

    .line 42
    if-eq p1, v0, :cond_30

    .line 44
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->menuView:Lmiuix/navigator/navigation/internal/NavigationMenuView;

    .line 46
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/SpringRecyclerView;->setOverScrollMode(I)V

    .line 49
    :cond_30
    iget-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 51
    sget v0, Lmiuix/navigator/R$layout;->miuix_design_navigation_item_header:I

    .line 53
    iget-object v1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->menuView:Lmiuix/navigator/navigation/internal/NavigationMenuView;

    .line 55
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Landroid/widget/LinearLayout;

    .line 61
    iput-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    .line 63
    iget-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->menuView:Lmiuix/navigator/navigation/internal/NavigationMenuView;

    .line 65
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->adapter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    .line 67
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 70
    :cond_45
    iget-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->menuView:Lmiuix/navigator/navigation/internal/NavigationMenuView;

    .line 72
    return-object p1
.end method

.method public getSubheaderInsetEnd()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->subheaderInsetEnd:I

    .line 3
    return v0
.end method

.method public getSubheaderInsetStart()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->subheaderInsetStart:I

    .line 3
    return v0
.end method

.method public inflateHeaderView(I)Landroid/view/View;
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 3
    iget-object v1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->addHeaderView(Landroid/view/View;)V

    .line 13
    return-object p1
.end method

.method public initForMenu(Landroid/content/Context;Lmiuix/appcompat/view/menu/MenuBuilder;)V
    .registers 4

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 7
    iput-object p2, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object p1

    .line 13
    sget p2, Lmiuix/navigator/R$dimen;->miuix_design_navigation_separator_vertical_padding:I

    .line 15
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 18
    move-result p1

    .line 19
    iput p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->paddingSeparator:I

    .line 21
    return-void
.end method

.method public isBehindStatusBar()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->isBehindStatusBar:Z

    .line 3
    return v0
.end method

.method public onCloseMenu(Lmiuix/appcompat/view/menu/MenuBuilder;Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->callback:Lmiuix/appcompat/view/menu/MenuPresenter$Callback;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/view/menu/MenuPresenter$Callback;->onCloseMenu(Lmiuix/appcompat/view/menu/MenuBuilder;Z)V

    .line 8
    :cond_7
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    .line 1
    instance-of v0, p1, Landroid/os/Bundle;

    .line 3
    if-eqz v0, :cond_2d

    .line 5
    check-cast p1, Landroid/os/Bundle;

    .line 7
    const-string v0, "android:menu:list"

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_13

    .line 15
    iget-object v1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->menuView:Lmiuix/navigator/navigation/internal/NavigationMenuView;

    .line 17
    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 20
    :cond_13
    const-string v0, "android:menu:adapter"

    .line 22
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_20

    .line 28
    iget-object v1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->adapter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    .line 30
    invoke-virtual {v1, v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 33
    :cond_20
    const-string v0, "android:menu:header"

    .line 35
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_2d

    .line 41
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    .line 43
    invoke-virtual {v0, p1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 46
    :cond_2d
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    iget-object v1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->menuView:Lmiuix/navigator/navigation/internal/NavigationMenuView;

    .line 8
    if-eqz v1, :cond_18

    .line 10
    new-instance v1, Landroid/util/SparseArray;

    .line 12
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 15
    iget-object v2, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->menuView:Lmiuix/navigator/navigation/internal/NavigationMenuView;

    .line 17
    invoke-virtual {v2, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 20
    const-string v2, "android:menu:list"

    .line 22
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 25
    :cond_18
    iget-object v1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->adapter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    .line 27
    if-eqz v1, :cond_25

    .line 29
    invoke-virtual {v1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->createInstanceState()Landroid/os/Bundle;

    .line 32
    move-result-object v1

    .line 33
    const-string v2, "android:menu:adapter"

    .line 35
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 38
    :cond_25
    iget-object v1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    .line 40
    if-eqz v1, :cond_38

    .line 42
    new-instance v1, Landroid/util/SparseArray;

    .line 44
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 47
    iget-object v2, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    .line 49
    invoke-virtual {v2, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 52
    const-string v2, "android:menu:header"

    .line 54
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 57
    :cond_38
    return-object v0
.end method

.method public onSubMenuSelected(Lmiuix/appcompat/view/menu/SubMenuBuilder;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    .line 8
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_19

    .line 14
    iget-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->menuView:Lmiuix/navigator/navigation/internal/NavigationMenuView;

    .line 16
    iget v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->paddingTopDefault:I

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {p1, v2, v0, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 26
    :cond_19
    return-void
.end method

.method public setBehindStatusBar(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->isBehindStatusBar:Z

    .line 3
    if-eq v0, p1, :cond_9

    .line 5
    iput-boolean p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->isBehindStatusBar:Z

    .line 7
    invoke-direct {p0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->updateTopPadding()V

    .line 10
    :cond_9
    return-void
.end method

.method public setCallback(Lmiuix/appcompat/view/menu/MenuPresenter$Callback;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->callback:Lmiuix/appcompat/view/menu/MenuPresenter$Callback;

    .line 3
    return-void
.end method

.method public setCheckedItem(Lmiuix/appcompat/view/menu/MenuItemImpl;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->adapter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Lmiuix/appcompat/view/menu/MenuItemImpl;)V

    .line 6
    return-void
.end method

.method public setDividerInsetEnd(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->dividerInsetEnd:I

    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 7
    return-void
.end method

.method public setDividerInsetStart(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->dividerInsetStart:I

    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 7
    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->id:I

    .line 3
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemBackground:Landroid/graphics/drawable/Drawable;

    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 7
    return-void
.end method

.method public setItemForeground(Landroid/graphics/drawable/RippleDrawable;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemForeground:Landroid/graphics/drawable/RippleDrawable;

    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 7
    return-void
.end method

.method public setItemHorizontalPadding(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemHorizontalPadding:I

    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 7
    return-void
.end method

.method public setItemIconPadding(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemIconPadding:I

    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 7
    return-void
.end method

.method public setItemIconSize(I)V
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemIconSize:I

    .line 3
    if-eq v0, p1, :cond_d

    .line 5
    iput p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemIconSize:I

    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->hasCustomItemIconSize:Z

    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 14
    :cond_d
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->iconTintList:Landroid/content/res/ColorStateList;

    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 7
    return-void
.end method

.method public setItemMaxLines(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemMaxLines:I

    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 7
    return-void
.end method

.method public setItemTextAppearance(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->textAppearance:I

    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 7
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->textColor:Landroid/content/res/ColorStateList;

    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 7
    return-void
.end method

.method public setItemVerticalPadding(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemVerticalPadding:I

    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 7
    return-void
.end method

.method public setOverScrollMode(I)V
    .registers 3

    .line 1
    iput p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->overScrollMode:I

    .line 3
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->menuView:Lmiuix/navigator/navigation/internal/NavigationMenuView;

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/SpringRecyclerView;->setOverScrollMode(I)V

    .line 10
    :cond_9
    return-void
.end method

.method public setSubheaderColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->subheaderColor:Landroid/content/res/ColorStateList;

    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 7
    return-void
.end method

.method public setSubheaderInsetEnd(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->subheaderInsetEnd:I

    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 7
    return-void
.end method

.method public setSubheaderInsetStart(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->subheaderInsetStart:I

    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 7
    return-void
.end method

.method public setSubheaderTextAppearance(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->subheaderTextAppearance:I

    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 7
    return-void
.end method

.method public setUpdateSuspended(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->adapter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setUpdateSuspended(Z)V

    .line 8
    :cond_7
    return-void
.end method

.method public updateMenuView(Z)V
    .registers 2

    .line 1
    iget-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->adapter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    .line 3
    if-eqz p1, :cond_7

    .line 5
    invoke-virtual {p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->update()V

    .line 8
    :cond_7
    return-void
.end method
