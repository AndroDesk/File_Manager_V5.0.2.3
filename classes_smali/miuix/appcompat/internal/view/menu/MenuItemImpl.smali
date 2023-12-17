.class public final Lmiuix/appcompat/internal/view/menu/MenuItemImpl;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Landroid/view/MenuItem;


# static fields
.field private static final CHECKABLE:I = 0x1

.field private static final CHECKED:I = 0x2

.field private static final ENABLED:I = 0x10

.field private static final EXCLUSIVE:I = 0x4

.field private static final HIDDEN:I = 0x8

.field private static final IS_ACTION:I = 0x20

.field public static final NO_ICON:I = 0x0

.field private static final SHOW_AS_ACTION_MASK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MenuItemImpl"

.field private static sDeleteShortcutLabel:Ljava/lang/String;

.field private static sEnterShortcutLabel:Ljava/lang/String;

.field private static sPrependShortcutLabel:Ljava/lang/String;

.field private static sSpaceShortcutLabel:Ljava/lang/String;


# instance fields
.field private mActionProvider:Landroid/view/ActionProvider;

.field private mActionView:Landroid/view/View;

.field private mBadgeDrawable:Lmiuix/appcompat/widget/BadgeDrawable;

.field private mBadgeGravity:I

.field private final mCategoryOrder:I

.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mFlags:I

.field private final mGroup:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private final mId:I

.field private mIntent:Landroid/content/Intent;

.field private mIsActionViewExpanded:Z

.field private mItemCallback:Ljava/lang/Runnable;

.field private mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field private mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mNeedBadge:Z

.field private mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutNumericChar:C

.field private mShowAsAction:I

.field private mSubMenu:Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V
    .registers 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mNeedBadge:Z

    .line 7
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIconResId:I

    .line 9
    const/16 v1, 0x10

    .line 11
    iput v1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 13
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 15
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 17
    iput p3, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mId:I

    .line 19
    iput p2, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mGroup:I

    .line 21
    iput p4, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mCategoryOrder:I

    .line 23
    iput p5, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mOrdering:I

    .line 25
    iput-object p6, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 27
    iput p7, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 29
    return-void
.end method

.method public static synthetic access$000(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 3
    return-object p0
.end method

.method private getBadgeDrawable()Lmiuix/appcompat/widget/BadgeDrawable;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mBadgeDrawable:Lmiuix/appcompat/widget/BadgeDrawable;

    .line 3
    if-nez v0, :cond_11

    .line 5
    new-instance v0, Lmiuix/appcompat/widget/BadgeDrawable;

    .line 7
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 9
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Lmiuix/appcompat/widget/BadgeDrawable;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mBadgeDrawable:Lmiuix/appcompat/widget/BadgeDrawable;

    .line 18
    :cond_11
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mBadgeDrawable:Lmiuix/appcompat/widget/BadgeDrawable;

    .line 20
    return-object v0
.end method


# virtual methods
.method public actionFormatChanged()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 3
    invoke-virtual {v0, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemActionRequestChanged(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V

    .line 6
    return-void
.end method

.method public collapseActionView()Z
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 3
    and-int/lit8 v0, v0, 0x8

    .line 5
    if-eqz v0, :cond_1e

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 9
    if-eqz v0, :cond_1c

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    .line 13
    if-eqz v0, :cond_14

    .line 15
    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1e

    .line 21
    :cond_14
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 23
    invoke-virtual {v0, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->collapseItemActionView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1e

    .line 29
    :cond_1c
    const/4 v0, 0x1

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    const/4 v0, 0x0

    .line 32
    :goto_1f
    return v0
.end method

.method public expandActionView()Z
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 3
    and-int/lit8 v0, v0, 0x8

    .line 5
    if-eqz v0, :cond_1e

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 9
    if-eqz v0, :cond_1e

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    .line 13
    if-eqz v0, :cond_14

    .line 15
    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1e

    .line 21
    :cond_14
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 23
    invoke-virtual {v0, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->expandItemActionView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1e

    .line 29
    const/4 v0, 0x1

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    const/4 v0, 0x0

    .line 32
    :goto_1f
    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v1, "Implementation should use getSupportActionProvider!"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-object v0

    .line 6
    :cond_5
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    .line 8
    if-eqz v0, :cond_10

    .line 10
    invoke-virtual {v0, p0}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 16
    return-object v0

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .registers 2

    .line 1
    iget-char v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 3
    return v0
.end method

.method public getCallback()Ljava/lang/Runnable;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    .line 3
    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mContentDescription:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public getGroupId()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mGroup:I

    .line 3
    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-object v0

    .line 6
    :cond_5
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIconResId:I

    .line 8
    if-eqz v0, :cond_25

    .line 10
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 12
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object v0

    .line 16
    iget v1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIconResId:I

    .line 18
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 20
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 27
    move-result-object v2

    .line 28
    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x0

    .line 33
    iput v1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIconResId:I

    .line 35
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 37
    return-object v0

    .line 38
    :cond_25
    const/4 v0, 0x0

    .line 39
    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    .line 3
    return-object v0
.end method

.method public getItemId()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mId:I

    .line 3
    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3
    return-object v0
.end method

.method public getNumericShortcut()C
    .registers 2

    .line 1
    iget-char v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 3
    return v0
.end method

.method public getOrder()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mCategoryOrder:I

    .line 3
    return v0
.end method

.method public getOrdering()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mOrdering:I

    .line 3
    return v0
.end method

.method public getShortcut()C
    .registers 2

    .line 1
    iget-char v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 3
    return v0
.end method

.method public getShortcutLabel()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getShortcut()C

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_9

    .line 7
    const-string v0, ""

    .line 9
    return-object v0

    .line 10
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    sget-object v2, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->sPrependShortcutLabel:Ljava/lang/String;

    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    const/16 v2, 0x8

    .line 19
    if-eq v0, v2, :cond_2c

    .line 21
    const/16 v2, 0xa

    .line 23
    if-eq v0, v2, :cond_26

    .line 25
    const/16 v2, 0x20

    .line 27
    if-eq v0, v2, :cond_20

    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    goto :goto_31

    .line 33
    :cond_20
    sget-object v0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->sSpaceShortcutLabel:Ljava/lang/String;

    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    goto :goto_31

    .line 39
    :cond_26
    sget-object v0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->sEnterShortcutLabel:Ljava/lang/String;

    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    goto :goto_31

    .line 45
    :cond_2c
    sget-object v0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->sDeleteShortcutLabel:Ljava/lang/String;

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    :goto_31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    return-object v0
.end method

.method public getShowAsAction()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 3
    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mSubMenu:Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    .line 3
    return-object v0
.end method

.method public getSupportActionProvider()Landroid/view/ActionProvider;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    goto :goto_7

    .line 6
    :cond_5
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 8
    :goto_7
    return-object v0
.end method

.method public getTitleForItemView(Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;
    .registers 2

    .line 1
    if-eqz p1, :cond_d

    .line 3
    invoke-interface {p1}, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;->prefersCondensedTitle()Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_d

    .line 9
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getTitleCondensed()Ljava/lang/CharSequence;

    .line 12
    move-result-object p1

    .line 13
    goto :goto_11

    .line 14
    :cond_d
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    .line 17
    move-result-object p1

    .line 18
    :goto_11
    return-object p1
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mView:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public hasCollapsibleActionView()Z
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 3
    and-int/lit8 v0, v0, 0x8

    .line 5
    if-eqz v0, :cond_c

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

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

.method public hasSubMenu()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mSubMenu:Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public invoke()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_c

    .line 6
    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_c

    .line 12
    return v1

    .line 13
    :cond_c
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 15
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getRootMenu()Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v2, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_19

    .line 25
    return v1

    .line 26
    :cond_19
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    .line 28
    if-eqz v0, :cond_21

    .line 30
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 33
    return v1

    .line 34
    :cond_21
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    .line 36
    if-eqz v0, :cond_39

    .line 38
    :try_start_25
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 40
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    .line 43
    move-result-object v0

    .line 44
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    .line 46
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_30
    .catch Landroid/content/ActivityNotFoundException; {:try_start_25 .. :try_end_30} :catch_31

    .line 49
    return v1

    .line 50
    :catch_31
    move-exception v0

    .line 51
    const-string v2, "MenuItemImpl"

    .line 53
    const-string v3, "Can\'t find activity to handle intent; ignoring"

    .line 55
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    :cond_39
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    .line 60
    if-eqz v0, :cond_44

    .line 62
    invoke-virtual {v0}, Landroid/view/ActionProvider;->onPerformDefaultAction()Z

    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_44

    .line 68
    goto :goto_45

    .line 69
    :cond_44
    const/4 v1, 0x0

    .line 70
    :goto_45
    return v1
.end method

.method public isActionButton()Z
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 3
    const/16 v1, 0x20

    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_9

    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return v0
.end method

.method public isActionViewExpanded()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 3
    return v0
.end method

.method public isCheckable()Z
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_7

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v1, 0x0

    .line 9
    :goto_8
    return v1
.end method

.method public isChecked()Z
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 3
    const/4 v1, 0x2

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 3
    and-int/lit8 v0, v0, 0x10

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public isExclusiveCheckable()Z
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 3
    and-int/lit8 v0, v0, 0x4

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public isVisible()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_1d

    .line 7
    invoke-virtual {v0}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1d

    .line 13
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 15
    and-int/lit8 v0, v0, 0x8

    .line 17
    if-nez v0, :cond_1b

    .line 19
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    .line 21
    invoke-virtual {v0}, Landroid/view/ActionProvider;->isVisible()Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1b

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    move v1, v2

    .line 29
    :goto_1c
    return v1

    .line 30
    :cond_1d
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 32
    and-int/lit8 v0, v0, 0x8

    .line 34
    if-nez v0, :cond_24

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    move v1, v2

    .line 38
    :goto_25
    return v1
.end method

.method public requestsActionButton()Z
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_7

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v1, 0x0

    .line 9
    :goto_8
    return v1
.end method

.method public requiresActionButton()Z
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 3
    const/4 v1, 0x2

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v0, "Implementation should use setSupportActionProvider!"

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .registers 5

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 9
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .registers 4

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 2
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mView:Landroid/view/View;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    if-eqz p1, :cond_17

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mId:I

    if-lez v0, :cond_17

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 6
    :cond_17
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemActionRequestChanged(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V

    return-object p0
.end method

.method public setActionViewExpanded(Z)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 3
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 9
    return-void
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iget-char v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-object p0

    .line 6
    :cond_5
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    .line 9
    move-result p1

    .line 10
    iput-char p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 12
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 18
    return-object p0
.end method

.method public setBadgeNeeded(Z)V
    .registers 3

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setBadgeNeeded(ZI)V

    return-void
.end method

.method public setBadgeNeeded(ZI)V
    .registers 3

    .line 2
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mNeedBadge:Z

    .line 3
    iput p2, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mBadgeGravity:I

    return-void
.end method

.method public setCallback(Ljava/lang/Runnable;)Landroid/view/MenuItem;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    .line 3
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .registers 4

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 3
    and-int/lit8 v1, v0, -0x2

    .line 5
    or-int/2addr p1, v1

    .line 6
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 8
    if-eq v0, p1, :cond_f

    .line 10
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 16
    :cond_f
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 3
    and-int/lit8 v0, v0, 0x4

    .line 5
    if-eqz v0, :cond_c

    .line 7
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 9
    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setExclusiveItemChecked(Landroid/view/MenuItem;)V

    .line 12
    goto :goto_f

    .line 13
    :cond_c
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    .line 16
    :goto_f
    return-object p0
.end method

.method public setCheckedInt(Z)V
    .registers 5

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 3
    and-int/lit8 v1, v0, -0x3

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p1, :cond_9

    .line 8
    const/4 p1, 0x2

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    move p1, v2

    .line 11
    :goto_a
    or-int/2addr p1, v1

    .line 12
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 14
    if-eq v0, p1, :cond_14

    .line 16
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 18
    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 21
    :cond_14
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mContentDescription:Ljava/lang/CharSequence;

    .line 3
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 9
    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .registers 3

    .line 1
    if-eqz p1, :cond_9

    .line 3
    iget p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 5
    or-int/lit8 p1, p1, 0x10

    .line 7
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 9
    goto :goto_f

    .line 10
    :cond_9
    iget p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 12
    and-int/lit8 p1, p1, -0x11

    .line 14
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 16
    :goto_f
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 22
    return-object p0
.end method

.method public setExclusiveCheckable(Z)V
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 5
    if-eqz p1, :cond_8

    .line 7
    const/4 p1, 0x4

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 p1, 0x0

    .line 10
    :goto_9
    or-int/2addr p1, v0

    .line 11
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 13
    return-void
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .registers 3

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIconResId:I

    .line 6
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIconResId:I

    .line 2
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    .line 3
    return-object p0
.end method

.method public setIsActionButton(Z)V
    .registers 2

    .line 1
    if-eqz p1, :cond_9

    .line 3
    iget p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 5
    or-int/lit8 p1, p1, 0x20

    .line 7
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 9
    goto :goto_f

    .line 10
    :cond_9
    iget p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 12
    and-int/lit8 p1, p1, -0x21

    .line 14
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 16
    :goto_f
    return-void
.end method

.method public setMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 3
    return-void
.end method

.method public setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3
    return-void
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iget-char v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-object p0

    .line 6
    :cond_5
    iput-char p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 8
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 14
    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setSupportOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iput-char p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 3
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    .line 6
    move-result p1

    .line 7
    iput-char p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 9
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 11
    const/4 p2, 0x0

    .line 12
    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 15
    return-object p0
.end method

.method public setShowAsAction(I)V
    .registers 4

    .line 1
    and-int/lit8 v0, p1, 0x3

    .line 3
    if-eqz v0, :cond_13

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_13

    .line 8
    const/4 v1, 0x2

    .line 9
    if-ne v0, v1, :cond_b

    .line 11
    goto :goto_13

    .line 12
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    const-string v0, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    .line 16
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p1

    .line 20
    :cond_13
    :goto_13
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 22
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 24
    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemActionRequestChanged(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V

    .line 27
    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setShowAsAction(I)V

    .line 4
    return-object p0
.end method

.method public setSubMenu(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mSubMenu:Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    .line 3
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 10
    return-void
.end method

.method public setSupportActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-object p0

    .line 6
    :cond_5
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 9
    if-eqz v0, :cond_d

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    .line 14
    :cond_d
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    .line 16
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 22
    if-eqz p1, :cond_1f

    .line 24
    new-instance v0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl$1;

    .line 26
    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl$1;-><init>(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    .line 32
    :cond_1f
    return-object p0
.end method

.method public setSupportOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    .line 3
    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .registers 3

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 4

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mSubMenu:Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_f

    .line 4
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    :cond_f
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 3
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 9
    return-object p0
.end method

.method public setView(Landroid/view/View;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mView:Landroid/view/View;

    .line 3
    return-void
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_b

    .line 7
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 9
    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemVisibleChanged(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V

    .line 12
    :cond_b
    return-object p0
.end method

.method public setVisibleInt(Z)Z
    .registers 5

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 3
    and-int/lit8 v1, v0, -0x9

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p1, :cond_9

    .line 8
    move p1, v2

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const/16 p1, 0x8

    .line 12
    :goto_b
    or-int/2addr p1, v1

    .line 13
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 15
    if-eq v0, p1, :cond_11

    .line 17
    const/4 v2, 0x1

    .line 18
    :cond_11
    return v2
.end method

.method public shouldShowIcon()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getOptionalIconsVisible()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public shouldShowShortcut()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->isShortcutsVisible()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_10

    .line 9
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getShortcut()C

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_10

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    :goto_11
    return v0
.end method

.method public showsTextAsAction()Z
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 3
    const/4 v1, 0x4

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public updateBadgeDrawable()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mNeedBadge:Z

    .line 3
    if-eqz v0, :cond_1a

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mView:Landroid/view/View;

    .line 7
    if-eqz v0, :cond_1a

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1a

    .line 15
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getBadgeDrawable()Lmiuix/appcompat/widget/BadgeDrawable;

    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mView:Landroid/view/View;

    .line 21
    iget v2, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mBadgeGravity:I

    .line 23
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/widget/BadgeDrawable;->attachBadgeDrawable(Landroid/view/View;I)V

    .line 26
    goto :goto_24

    .line 27
    :cond_1a
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mBadgeDrawable:Lmiuix/appcompat/widget/BadgeDrawable;

    .line 29
    if-eqz v0, :cond_24

    .line 31
    invoke-virtual {v0}, Lmiuix/appcompat/widget/BadgeDrawable;->detachBadgeDrawable()V

    .line 34
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mBadgeDrawable:Lmiuix/appcompat/widget/BadgeDrawable;

    .line 37
    :cond_24
    :goto_24
    return-void
.end method
