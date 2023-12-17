.class public final Lmiuix/appcompat/internal/view/menu/MenuItemImpl;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Landroid/view/MenuItem;


# static fields
.field private static final CHECKABLE:I

.field private static final CHECKED:I

.field private static final ENABLED:I

.field private static final EXCLUSIVE:I

.field private static final HIDDEN:I

.field private static final IS_ACTION:I

.field public static final NO_ICON:I

.field private static final SHOW_AS_ACTION_MASK:I

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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->CHECKABLE:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->CHECKED:I

    const v0, 0x92d86

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->ENABLED:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->EXCLUSIVE:I

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->HIDDEN:I

    const v0, 0x92db6

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->IS_ACTION:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->NO_ICON:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->SHOW_AS_ACTION_MASK:I

    return-void
.end method

.method public constructor <init>(Lmiuix/appcompat/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mNeedBadge:Z

    iput v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIconResId:I

    const/16 v1, 0x10

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iput p3, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mId:I

    iput p2, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mGroup:I

    iput p4, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mCategoryOrder:I

    iput p5, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mOrdering:I

    iput-object p6, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    iput p7, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    return-void
.end method

.method public static synthetic access$000(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .registers 1

    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    return-object p0
.end method

.method private getBadgeDrawable()Lmiuix/appcompat/widget/BadgeDrawable;
    .registers 3

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mBadgeDrawable:Lmiuix/appcompat/widget/BadgeDrawable;

    if-nez v0, :cond_11

    new-instance v0, Lmiuix/appcompat/widget/BadgeDrawable;

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/widget/BadgeDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mBadgeDrawable:Lmiuix/appcompat/widget/BadgeDrawable;

    :cond_11
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mBadgeDrawable:Lmiuix/appcompat/widget/BadgeDrawable;

    return-object v0
.end method


# virtual methods
.method public actionFormatChanged()V
    .registers 2

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemActionRequestChanged(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V

    return-void
.end method

.method public collapseActionView()Z
    .registers 2

    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_14

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_14
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->collapseItemActionView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method public expandActionView()Z
    .registers 2

    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_14

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_14
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->expandItemActionView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Implementation should use getSupportActionProvider!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    if-eqz v0, :cond_10

    invoke-virtual {v0, p0}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    return-object v0

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .registers 2

    iget-char v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    return v0
.end method

.method public getCallback()Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getGroupId()I
    .registers 2

    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mGroup:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 4

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIconResId:I

    if-eqz v0, :cond_25

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIconResId:I

    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIconResId:I

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_25
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getNumericShortcut()C
    .registers 2

    iget-char v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    return v0
.end method

.method public getOrder()I
    .registers 2

    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mCategoryOrder:I

    return v0
.end method

.method public getOrdering()I
    .registers 2

    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mOrdering:I

    return v0
.end method

.method public getShortcut()C
    .registers 2

    iget-char v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    return v0
.end method

.method public getShortcutLabel()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getShortcut()C

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ""

    return-object v0

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->sPrependShortcutLabel:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2c

    const/16 v2, 0xa

    if-eq v0, v2, :cond_26

    const/16 v2, 0x20

    if-eq v0, v2, :cond_20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_31

    :cond_20
    sget-object v0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->sSpaceShortcutLabel:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    :cond_26
    sget-object v0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->sEnterShortcutLabel:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    :cond_2c
    sget-object v0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->sDeleteShortcutLabel:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShowAsAction()I
    .registers 2

    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .registers 2

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mSubMenu:Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    return-object v0
.end method

.method public getSupportActionProvider()Landroid/view/ActionProvider;
    .registers 2

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    :goto_7
    return-object v0
.end method

.method public getTitleForItemView(Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;
    .registers 2

    if-eqz p1, :cond_d

    invoke-interface {p1}, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;->prefersCondensedTitle()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_11

    :cond_d
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    :goto_11
    return-object p1
.end method

.method public getView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mView:Landroid/view/View;

    return-object v0
.end method

.method public hasCollapsibleActionView()Z
    .registers 2

    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public hasSubMenu()Z
    .registers 2

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mSubMenu:Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public invoke()Z
    .registers 5

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    :cond_c
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getRootMenu()Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_19

    return v1

    :cond_19
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_21

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return v1

    :cond_21
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_39

    :try_start_25
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_30
    .catch Landroid/content/ActivityNotFoundException; {:try_start_25 .. :try_end_30} :catch_31

    return v1

    :catch_31
    move-exception v0

    const-string v2, "MenuItemImpl"

    const-string v3, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_39
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Landroid/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v0

    if-eqz v0, :cond_44

    goto :goto_45

    :cond_44
    const/4 v1, 0x0

    :goto_45
    return v1
.end method

.method public isActionButton()Z
    .registers 3

    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isActionViewExpanded()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    return v0
.end method

.method public isCheckable()Z
    .registers 3

    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public isChecked()Z
    .registers 3

    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isEnabled()Z
    .registers 2

    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isExclusiveCheckable()Z
    .registers 2

    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isVisible()Z
    .registers 4

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1b

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    return v1

    :cond_1d
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_24

    goto :goto_25

    :cond_24
    move v1, v2

    :goto_25
    return v1
.end method

.method public requestsActionButton()Z
    .registers 3

    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public requiresActionButton()Z
    .registers 3

    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Implementation should use setSupportActionProvider!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .registers 5

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

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

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mView:Landroid/view/View;

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mId:I

    if-lez v0, :cond_17

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    :cond_17
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemActionRequestChanged(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V

    return-object p0
.end method

.method public setActionViewExpanded(Z)V
    .registers 3

    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .registers 3

    iget-char v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    if-ne v0, p1, :cond_5

    return-object p0

    :cond_5
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setBadgeNeeded(Z)V
    .registers 3

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setBadgeNeeded(ZI)V

    return-void
.end method

.method public setBadgeNeeded(ZI)V
    .registers 3

    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mNeedBadge:Z

    iput p2, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mBadgeGravity:I

    return-void
.end method

.method public setCallback(Ljava/lang/Runnable;)Landroid/view/MenuItem;
    .registers 2

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .registers 4

    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v0, -0x2

    or-int/2addr p1, v1

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    if-eq v0, p1, :cond_f

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_f
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .registers 3

    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setExclusiveItemChecked(Landroid/view/MenuItem;)V

    goto :goto_f

    :cond_c
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    :goto_f
    return-object p0
.end method

.method public setCheckedInt(Z)V
    .registers 5

    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v0, -0x3

    const/4 v2, 0x0

    if-eqz p1, :cond_9

    const/4 p1, 0x2

    goto :goto_a

    :cond_9
    move p1, v2

    :goto_a
    or-int/2addr p1, v1

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    if-eq v0, p1, :cond_14

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_14
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mContentDescription:Ljava/lang/CharSequence;

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .registers 3

    if-eqz p1, :cond_9

    iget p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    goto :goto_f

    :cond_9
    iget p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    :goto_f
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setExclusiveCheckable(Z)V
    .registers 3

    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    if-eqz p1, :cond_8

    const/4 p1, 0x4

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    or-int/2addr p1, v0

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    return-void
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIconResId:I

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIconResId:I

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .registers 2

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public setIsActionButton(Z)V
    .registers 2

    if-eqz p1, :cond_9

    iget p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    goto :goto_f

    :cond_9
    iget p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    :goto_f
    return-void
.end method

.method public setMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .registers 2

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    return-void
.end method

.method public setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 2

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-void
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .registers 3

    iget-char v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    if-ne v0, p1, :cond_5

    return-object p0

    :cond_5
    iput-char p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 2

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setSupportOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .registers 2

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .registers 3

    iput-char p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setShowAsAction(I)V
    .registers 4

    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_13

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    goto :goto_13

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    :goto_13
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemActionRequestChanged(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V

    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .registers 2

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setShowAsAction(I)V

    return-object p0
.end method

.method public setSubMenu(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)V
    .registers 3

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mSubMenu:Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-void
.end method

.method public setSupportActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 4

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    if-ne v0, p1, :cond_5

    return-object p0

    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v0, :cond_d

    invoke-virtual {v0, v1}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    :cond_d
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    if-eqz p1, :cond_1f

    new-instance v0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl$1;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl$1;-><init>(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V

    invoke-virtual {p1, v0}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    :cond_1f
    return-object p0
.end method

.method public setSupportOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 2

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .registers 3

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

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mSubMenu:Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    :cond_f
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mView:Landroid/view/View;

    return-void
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .registers 2

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemVisibleChanged(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V

    :cond_b
    return-object p0
.end method

.method public setVisibleInt(Z)Z
    .registers 5

    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v0, -0x9

    const/4 v2, 0x0

    if-eqz p1, :cond_9

    move p1, v2

    goto :goto_b

    :cond_9
    const/16 p1, 0x8

    :goto_b
    or-int/2addr p1, v1

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    if-eq v0, p1, :cond_11

    const/4 v2, 0x1

    :cond_11
    return v2
.end method

.method public shouldShowIcon()Z
    .registers 2

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getOptionalIconsVisible()Z

    move-result v0

    return v0
.end method

.method public shouldShowShortcut()Z
    .registers 2

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getShortcut()C

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public showsTextAsAction()Z
    .registers 3

    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateBadgeDrawable()V
    .registers 4

    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mNeedBadge:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1a

    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getBadgeDrawable()Lmiuix/appcompat/widget/BadgeDrawable;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mView:Landroid/view/View;

    iget v2, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mBadgeGravity:I

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/widget/BadgeDrawable;->attachBadgeDrawable(Landroid/view/View;I)V

    goto :goto_24

    :cond_1a
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mBadgeDrawable:Lmiuix/appcompat/widget/BadgeDrawable;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lmiuix/appcompat/widget/BadgeDrawable;->detachBadgeDrawable()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mBadgeDrawable:Lmiuix/appcompat/widget/BadgeDrawable;

    :cond_24
    :goto_24
    return-void
.end method
