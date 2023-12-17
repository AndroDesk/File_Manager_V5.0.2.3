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
.field public static final NO_TEXT_APPEARANCE_SET:I

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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->NO_TEXT_APPEARANCE_SET:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->subheaderTextAppearance:I

    iput v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->textAppearance:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->isBehindStatusBar:Z

    const/4 v0, -0x1

    iput v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->overScrollMode:I

    new-instance v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$1;

    invoke-direct {v0, p0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$1;-><init>(Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;)V

    iput-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static synthetic access$000(Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;)I
    .registers 1

    iget p0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemMaxLines:I

    return p0
.end method

.method private updateTopPadding()V
    .registers 5

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->isBehindStatusBar:Z

    if-eqz v0, :cond_10

    iget v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->paddingTopDefault:I

    goto :goto_11

    :cond_10
    move v0, v1

    :goto_11
    iget-object v2, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->menuView:Lmiuix/navigator/navigation/internal/NavigationMenuView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v2, v1, v0, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->menuView:Lmiuix/navigator/navigation/internal/NavigationMenuView;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public collapseItemActionView(Lmiuix/appcompat/view/menu/MenuBuilder;Lmiuix/appcompat/view/menu/MenuItemImpl;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public dispatchApplyWindowInsets(Lm0/r0;)V
    .registers 6

    invoke-virtual {p1}, Lm0/r0;->e()I

    move-result v0

    iget v1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->paddingTopDefault:I

    if-eq v1, v0, :cond_d

    iput v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->paddingTopDefault:I

    invoke-direct {p0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->updateTopPadding()V

    :cond_d
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->menuView:Lmiuix/navigator/navigation/internal/NavigationMenuView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Lm0/r0;->b()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-static {v0, p1}, Lm0/g0;->b(Landroid/view/View;Lm0/r0;)Lm0/r0;

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

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->adapter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getCheckedItem()Lmiuix/appcompat/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getDividerInsetEnd()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->dividerInsetEnd:I

    return v0
.end method

.method public getDividerInsetStart()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->dividerInsetStart:I

    return v0
.end method

.method public getHeaderCount()I
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getHeaderView(I)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->id:I

    return v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemHorizontalPadding()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemHorizontalPadding:I

    return v0
.end method

.method public getItemIconPadding()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemIconPadding:I

    return v0
.end method

.method public getItemMaxLines()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemMaxLines:I

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->textColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemTintList()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->iconTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemVerticalPadding()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemVerticalPadding:I

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/view/menu/MenuView;
    .registers 5

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->menuView:Lmiuix/navigator/navigation/internal/NavigationMenuView;

    if-nez v0, :cond_45

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lmiuix/navigator/R$layout;->miuix_design_navigation_menu:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/navigator/navigation/internal/NavigationMenuView;

    iput-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->menuView:Lmiuix/navigator/navigation/internal/NavigationMenuView;

    new-instance v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuViewAccessibilityDelegate;

    iget-object v1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->menuView:Lmiuix/navigator/navigation/internal/NavigationMenuView;

    invoke-direct {v0, p0, v1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuViewAccessibilityDelegate;-><init>(Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;Lmiuix/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/r;)V

    iget-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->adapter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    if-nez p1, :cond_26

    new-instance p1, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-direct {p1, p0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;-><init>(Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;)V

    iput-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->adapter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    :cond_26
    iget p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->overScrollMode:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_30

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->menuView:Lmiuix/navigator/navigation/internal/NavigationMenuView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/SpringRecyclerView;->setOverScrollMode(I)V

    :cond_30
    iget-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    sget v0, Lmiuix/navigator/R$layout;->miuix_design_navigation_item_header:I

    iget-object v1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->menuView:Lmiuix/navigator/navigation/internal/NavigationMenuView;

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->menuView:Lmiuix/navigator/navigation/internal/NavigationMenuView;

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->adapter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_45
    iget-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->menuView:Lmiuix/navigator/navigation/internal/NavigationMenuView;

    return-object p1
.end method

.method public getSubheaderInsetEnd()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->subheaderInsetEnd:I

    return v0
.end method

.method public getSubheaderInsetStart()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->subheaderInsetStart:I

    return v0
.end method

.method public inflateHeaderView(I)Landroid/view/View;
    .registers 5

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->addHeaderView(Landroid/view/View;)V

    return-object p1
.end method

.method public initForMenu(Landroid/content/Context;Lmiuix/appcompat/view/menu/MenuBuilder;)V
    .registers 4

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/navigator/R$dimen;->miuix_design_navigation_separator_vertical_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->paddingSeparator:I

    return-void
.end method

.method public isBehindStatusBar()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->isBehindStatusBar:Z

    return v0
.end method

.method public onCloseMenu(Lmiuix/appcompat/view/menu/MenuBuilder;Z)V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->callback:Lmiuix/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/view/menu/MenuPresenter$Callback;->onCloseMenu(Lmiuix/appcompat/view/menu/MenuBuilder;Z)V

    :cond_7
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_2d

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "android:menu:list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->menuView:Lmiuix/navigator/navigation/internal/NavigationMenuView;

    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_13
    const-string v0, "android:menu:adapter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->adapter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v1, v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->restoreInstanceState(Landroid/os/Bundle;)V

    :cond_20
    const-string v0, "android:menu:header"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_2d

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_2d
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->menuView:Lmiuix/navigator/navigation/internal/NavigationMenuView;

    if-eqz v1, :cond_18

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->menuView:Lmiuix/navigator/navigation/internal/NavigationMenuView;

    invoke-virtual {v2, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string v2, "android:menu:list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_18
    iget-object v1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->adapter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->createInstanceState()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android:menu:adapter"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_25
    iget-object v1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_38

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string v2, "android:menu:header"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

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

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-nez p1, :cond_19

    iget-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->menuView:Lmiuix/navigator/navigation/internal/NavigationMenuView;

    iget v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->paddingTopDefault:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_19
    return-void
.end method

.method public setBehindStatusBar(Z)V
    .registers 3

    iget-boolean v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->isBehindStatusBar:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->isBehindStatusBar:Z

    invoke-direct {p0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->updateTopPadding()V

    :cond_9
    return-void
.end method

.method public setCallback(Lmiuix/appcompat/view/menu/MenuPresenter$Callback;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->callback:Lmiuix/appcompat/view/menu/MenuPresenter$Callback;

    return-void
.end method

.method public setCheckedItem(Lmiuix/appcompat/view/menu/MenuItemImpl;)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->adapter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Lmiuix/appcompat/view/menu/MenuItemImpl;)V

    return-void
.end method

.method public setDividerInsetEnd(I)V
    .registers 2

    iput p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->dividerInsetEnd:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setDividerInsetStart(I)V
    .registers 2

    iput p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->dividerInsetStart:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setId(I)V
    .registers 2

    iput p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->id:I

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemBackground:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setItemForeground(Landroid/graphics/drawable/RippleDrawable;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemForeground:Landroid/graphics/drawable/RippleDrawable;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setItemHorizontalPadding(I)V
    .registers 2

    iput p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemHorizontalPadding:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setItemIconPadding(I)V
    .registers 2

    iput p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemIconPadding:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setItemIconSize(I)V
    .registers 3

    iget v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemIconSize:I

    if-eq v0, p1, :cond_d

    iput p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemIconSize:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->hasCustomItemIconSize:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    :cond_d
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->iconTintList:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setItemMaxLines(I)V
    .registers 2

    iput p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemMaxLines:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setItemTextAppearance(I)V
    .registers 2

    iput p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->textAppearance:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->textColor:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setItemVerticalPadding(I)V
    .registers 2

    iput p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemVerticalPadding:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setOverScrollMode(I)V
    .registers 3

    iput p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->overScrollMode:I

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->menuView:Lmiuix/navigator/navigation/internal/NavigationMenuView;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/SpringRecyclerView;->setOverScrollMode(I)V

    :cond_9
    return-void
.end method

.method public setSubheaderColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->subheaderColor:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setSubheaderInsetEnd(I)V
    .registers 2

    iput p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->subheaderInsetEnd:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setSubheaderInsetStart(I)V
    .registers 2

    iput p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->subheaderInsetStart:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setSubheaderTextAppearance(I)V
    .registers 2

    iput p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->subheaderTextAppearance:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setUpdateSuspended(Z)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->adapter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setUpdateSuspended(Z)V

    :cond_7
    return-void
.end method

.method public updateMenuView(Z)V
    .registers 2

    iget-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->adapter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->update()V

    :cond_7
    return-void
.end method
