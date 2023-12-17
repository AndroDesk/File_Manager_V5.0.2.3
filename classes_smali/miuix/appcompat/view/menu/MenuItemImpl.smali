.class public final Lmiuix/appcompat/view/menu/MenuItemImpl;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Lh0/b;


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


# instance fields
.field private mActionProvider:Lm0/b;

.field private mActionView:Landroid/view/View;

.field private mBadgeDrawable:Lmiuix/appcompat/widget/BadgeDrawable;

.field private mBadgeGravity:I

.field private final mCategoryOrder:I

.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mFlags:I

.field private final mGroup:I

.field private mHasIconTint:Z

.field private mHasIconTintMode:Z

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mIconTintList:Landroid/content/res/ColorStateList;

.field private mIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private final mId:I

.field private mIntent:Landroid/content/Intent;

.field private mIsActionViewExpanded:Z

.field private mItemCallback:Ljava/lang/Runnable;

.field public mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

.field private mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mNeedBadge:Z

.field private mNeedToApplyIconTint:Z

.field private mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutAlphabeticModifiers:I

.field private mShortcutNumericChar:C

.field private mShortcutNumericModifiers:I

.field private mShowAsAction:I

.field private mSubMenu:Lmiuix/appcompat/view/menu/SubMenuBuilder;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;

.field private mTooltipText:Ljava/lang/CharSequence;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V
    .registers 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0x1000

    .line 6
    iput v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    .line 8
    iput v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mIconResId:I

    .line 13
    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mIconTintList:Landroid/content/res/ColorStateList;

    .line 16
    iput-object v1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 18
    iput-boolean v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mHasIconTint:Z

    .line 20
    iput-boolean v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mHasIconTintMode:Z

    .line 22
    iput-boolean v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    .line 24
    const/16 v1, 0x10

    .line 26
    iput v1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mFlags:I

    .line 28
    iput-boolean v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 30
    iput-boolean v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mNeedBadge:Z

    .line 32
    iput-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 34
    iput p3, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mId:I

    .line 36
    iput p2, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mGroup:I

    .line 38
    iput p4, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mCategoryOrder:I

    .line 40
    iput p5, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mOrdering:I

    .line 42
    iput-object p6, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 44
    iput p7, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 46
    return-void
.end method

.method private static appendModifier(Ljava/lang/StringBuilder;IILjava/lang/String;)V
    .registers 4

    .line 1
    and-int/2addr p1, p2

    .line 2
    if-ne p1, p2, :cond_6

    .line 4
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_6
    return-void
.end method

.method private applyIconTintIfNecessary(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    if-eqz p1, :cond_27

    .line 3
    iget-boolean v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    .line 5
    if-eqz v0, :cond_27

    .line 7
    iget-boolean v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mHasIconTint:Z

    .line 9
    if-nez v0, :cond_e

    .line 11
    iget-boolean v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mHasIconTintMode:Z

    .line 13
    if-eqz v0, :cond_27

    .line 15
    :cond_e
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 18
    move-result-object p1

    .line 19
    iget-boolean v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mHasIconTint:Z

    .line 21
    if-eqz v0, :cond_1b

    .line 23
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mIconTintList:Landroid/content/res/ColorStateList;

    .line 25
    invoke-static {p1, v0}, Lg0/a$b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 28
    :cond_1b
    iget-boolean v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mHasIconTintMode:Z

    .line 30
    if-eqz v0, :cond_24

    .line 32
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 34
    invoke-static {p1, v0}, Lg0/a$b;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 37
    :cond_24
    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    .line 40
    :cond_27
    return-object p1
.end method

.method private getBadgeDrawable()Lmiuix/appcompat/widget/BadgeDrawable;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mBadgeDrawable:Lmiuix/appcompat/widget/BadgeDrawable;

    .line 3
    if-nez v0, :cond_11

    .line 5
    new-instance v0, Lmiuix/appcompat/widget/BadgeDrawable;

    .line 7
    iget-object v1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 9
    invoke-virtual {v1}, Lmiuix/appcompat/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Lmiuix/appcompat/widget/BadgeDrawable;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mBadgeDrawable:Lmiuix/appcompat/widget/BadgeDrawable;

    .line 18
    :cond_11
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mBadgeDrawable:Lmiuix/appcompat/widget/BadgeDrawable;

    .line 20
    return-object v0
.end method


# virtual methods
.method public actionFormatChanged()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 3
    invoke-virtual {v0, p0}, Lmiuix/appcompat/view/menu/MenuBuilder;->onItemActionRequestChanged(Lmiuix/appcompat/view/menu/MenuItemImpl;)V

    .line 6
    return-void
.end method

.method public collapseActionView()Z
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 3
    and-int/lit8 v0, v0, 0x8

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 11
    if-nez v0, :cond_e

    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_e
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    .line 17
    if-eqz v0, :cond_1a

    .line 19
    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_19

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    return v1

    .line 27
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 29
    invoke-virtual {v0, p0}, Lmiuix/appcompat/view/menu/MenuBuilder;->collapseItemActionView(Lmiuix/appcompat/view/menu/MenuItemImpl;)Z

    .line 32
    move-result v0

    .line 33
    return v0
.end method

.method public expandActionView()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

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
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    .line 11
    if-eqz v0, :cond_14

    .line 13
    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_13

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    return v1

    .line 21
    :cond_14
    :goto_14
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 23
    invoke-virtual {v0, p0}, Lmiuix/appcompat/view/menu/MenuBuilder;->expandItemActionView(Lmiuix/appcompat/view/menu/MenuItemImpl;)Z

    .line 26
    move-result v0

    .line 27
    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v1, "This is not supported, use MenuItemCompat.getActionProvider()"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-object v0

    .line 6
    :cond_5
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mActionProvider:Lm0/b;

    .line 8
    if-eqz v0, :cond_10

    .line 10
    invoke-virtual {v0, p0}, Lm0/b;->d(Landroid/view/MenuItem;)Landroid/view/View;

    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 16
    return-object v0

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    return-object v0
.end method

.method public getAlphabeticModifiers()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    .line 3
    return v0
.end method

.method public getAlphabeticShortcut()C
    .registers 2

    .line 1
    iget-char v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 3
    return v0
.end method

.method public getCallback()Ljava/lang/Runnable;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    .line 3
    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mContentDescription:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public getGroupId()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mGroup:I

    .line 3
    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-direct {p0, v0}, Lmiuix/appcompat/view/menu/MenuItemImpl;->applyIconTintIfNecessary(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_9
    iget v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mIconResId:I

    .line 12
    if-eqz v0, :cond_23

    .line 14
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 16
    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v0

    .line 20
    iget v1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mIconResId:I

    .line 22
    invoke-static {v0, v1}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x0

    .line 27
    iput v1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mIconResId:I

    .line 29
    iput-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 31
    invoke-direct {p0, v0}, Lmiuix/appcompat/view/menu/MenuItemImpl;->applyIconTintIfNecessary(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 34
    move-result-object v0

    .line 35
    return-object v0

    .line 36
    :cond_23
    const/4 v0, 0x0

    .line 37
    return-object v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mIconTintList:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 3
    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    .line 3
    return-object v0
.end method

.method public getItemId()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 1
    iget v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mId:I

    .line 3
    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3
    return-object v0
.end method

.method public getNumericModifiers()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    .line 3
    return v0
.end method

.method public getNumericShortcut()C
    .registers 2

    .line 1
    iget-char v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 3
    return v0
.end method

.method public getOrder()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mCategoryOrder:I

    .line 3
    return v0
.end method

.method public getOrdering()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mOrdering:I

    .line 3
    return v0
.end method

.method public getShortcut()C
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->isQwertyMode()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_b

    .line 9
    iget-char v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    iget-char v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 14
    :goto_d
    return v0
.end method

.method public getShortcutLabel()Ljava/lang/String;
    .registers 7

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getShortcut()C

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
    iget-object v1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 12
    invoke-virtual {v1}, Lmiuix/appcompat/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    iget-object v3, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 27
    invoke-virtual {v3}, Lmiuix/appcompat/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    .line 30
    move-result-object v3

    .line 31
    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_31

    .line 41
    sget v3, Lh/h;->abc_prepend_shortcut_label:I

    .line 43
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    :cond_31
    iget-object v3, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 52
    invoke-virtual {v3}, Lmiuix/appcompat/view/menu/MenuBuilder;->isQwertyMode()Z

    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_3c

    .line 58
    iget v3, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    .line 60
    goto :goto_3e

    .line 61
    :cond_3c
    iget v3, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    .line 63
    :goto_3e
    const/high16 v4, 0x10000

    .line 65
    sget v5, Lh/h;->abc_menu_meta_shortcut_label:I

    .line 67
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 70
    move-result-object v5

    .line 71
    invoke-static {v2, v3, v4, v5}, Lmiuix/appcompat/view/menu/MenuItemImpl;->appendModifier(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 74
    const/16 v4, 0x1000

    .line 76
    sget v5, Lh/h;->abc_menu_ctrl_shortcut_label:I

    .line 78
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 81
    move-result-object v5

    .line 82
    invoke-static {v2, v3, v4, v5}, Lmiuix/appcompat/view/menu/MenuItemImpl;->appendModifier(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 85
    const/4 v4, 0x2

    .line 86
    sget v5, Lh/h;->abc_menu_alt_shortcut_label:I

    .line 88
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 91
    move-result-object v5

    .line 92
    invoke-static {v2, v3, v4, v5}, Lmiuix/appcompat/view/menu/MenuItemImpl;->appendModifier(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 95
    const/4 v4, 0x1

    .line 96
    sget v5, Lh/h;->abc_menu_shift_shortcut_label:I

    .line 98
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 101
    move-result-object v5

    .line 102
    invoke-static {v2, v3, v4, v5}, Lmiuix/appcompat/view/menu/MenuItemImpl;->appendModifier(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 105
    const/4 v4, 0x4

    .line 106
    sget v5, Lh/h;->abc_menu_sym_shortcut_label:I

    .line 108
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 111
    move-result-object v5

    .line 112
    invoke-static {v2, v3, v4, v5}, Lmiuix/appcompat/view/menu/MenuItemImpl;->appendModifier(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 115
    sget v4, Lh/h;->abc_menu_function_shortcut_label:I

    .line 117
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 120
    move-result-object v4

    .line 121
    const/16 v5, 0x8

    .line 123
    invoke-static {v2, v3, v5, v4}, Lmiuix/appcompat/view/menu/MenuItemImpl;->appendModifier(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 126
    if-eq v0, v5, :cond_9f

    .line 128
    const/16 v3, 0xa

    .line 130
    if-eq v0, v3, :cond_95

    .line 132
    const/16 v3, 0x20

    .line 134
    if-eq v0, v3, :cond_8b

    .line 136
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    goto :goto_a8

    .line 140
    :cond_8b
    sget v0, Lh/h;->abc_menu_space_shortcut_label:I

    .line 142
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    goto :goto_a8

    .line 150
    :cond_95
    sget v0, Lh/h;->abc_menu_enter_shortcut_label:I

    .line 152
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    goto :goto_a8

    .line 160
    :cond_9f
    sget v0, Lh/h;->abc_menu_delete_shortcut_label:I

    .line 162
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :goto_a8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    move-result-object v0

    .line 173
    return-object v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mSubMenu:Lmiuix/appcompat/view/menu/SubMenuBuilder;

    .line 3
    return-object v0
.end method

.method public getSupportActionProvider()Lm0/b;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mActionProvider:Lm0/b;

    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    goto :goto_7

    .line 6
    :cond_5
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 8
    :goto_7
    return-object v0
.end method

.method public getTitleForItemView(Lmiuix/appcompat/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;
    .registers 2

    .line 1
    if-eqz p1, :cond_d

    .line 3
    invoke-interface {p1}, Lmiuix/appcompat/view/menu/MenuView$ItemView;->prefersCondensedTitle()Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_d

    .line 9
    invoke-virtual {p0}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getTitleCondensed()Ljava/lang/CharSequence;

    .line 12
    move-result-object p1

    .line 13
    goto :goto_11

    .line 14
    :cond_d
    invoke-virtual {p0}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    .line 17
    move-result-object p1

    .line 18
    :goto_11
    return-object p1
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mTooltipText:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public hasCollapsibleActionView()Z
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 3
    and-int/lit8 v0, v0, 0x8

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1a

    .line 8
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 10
    if-nez v0, :cond_15

    .line 12
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mActionProvider:Lm0/b;

    .line 14
    if-eqz v0, :cond_15

    .line 16
    invoke-virtual {v0, p0}, Lm0/b;->d(Landroid/view/MenuItem;)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 22
    :cond_15
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 24
    if-eqz v0, :cond_1a

    .line 26
    const/4 v1, 0x1

    .line 27
    :cond_1a
    return v1
.end method

.method public hasSubMenu()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mSubMenu:Lmiuix/appcompat/view/menu/SubMenuBuilder;

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
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

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
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 15
    invoke-virtual {v0, v0, p0}, Lmiuix/appcompat/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lmiuix/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_15

    .line 21
    return v1

    .line 22
    :cond_15
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    .line 24
    if-eqz v0, :cond_1d

    .line 26
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 29
    return v1

    .line 30
    :cond_1d
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    .line 32
    if-eqz v0, :cond_35

    .line 34
    :try_start_21
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 36
    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    .line 39
    move-result-object v0

    .line 40
    iget-object v2, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    .line 42
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_21 .. :try_end_2c} :catch_2d

    .line 45
    return v1

    .line 46
    :catch_2d
    move-exception v0

    .line 47
    const-string v2, "MenuItemImpl"

    .line 49
    const-string v3, "Can\'t find activity to handle intent; ignoring"

    .line 51
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    :cond_35
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mActionProvider:Lm0/b;

    .line 56
    if-eqz v0, :cond_40

    .line 58
    invoke-virtual {v0}, Lm0/b;->e()Z

    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_40

    .line 64
    return v1

    .line 65
    :cond_40
    const/4 v0, 0x0

    .line 66
    return v0
.end method

.method public isActionButton()Z
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mFlags:I

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
    iget-boolean v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 3
    return v0
.end method

.method public isCheckable()Z
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mFlags:I

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
    iget v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mFlags:I

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
    iget v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mFlags:I

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
    iget v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mFlags:I

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
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mActionProvider:Lm0/b;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_1d

    .line 7
    invoke-virtual {v0}, Lm0/b;->g()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1d

    .line 13
    iget v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mFlags:I

    .line 15
    and-int/lit8 v0, v0, 0x8

    .line 17
    if-nez v0, :cond_1b

    .line 19
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mActionProvider:Lm0/b;

    .line 21
    invoke-virtual {v0}, Lm0/b;->b()Z

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
    iget v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mFlags:I

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
    iget v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mShowAsAction:I

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
    iget v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mShowAsAction:I

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

.method public requiresOverflow()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/view/menu/MenuItemImpl;->requiresActionButton()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_e

    .line 7
    invoke-virtual {p0}, Lmiuix/appcompat/view/menu/MenuItemImpl;->requestsActionButton()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_e

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    :goto_f
    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v0, "This is not supported, use MenuItemCompat.setActionProvider()"

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public bridge synthetic setActionView(I)Landroid/view/MenuItem;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->setActionView(I)Lh0/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .registers 2

    .line 2
    invoke-virtual {p0, p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->setActionView(Landroid/view/View;)Lh0/b;

    move-result-object p1

    return-object p1
.end method

.method public setActionView(I)Lh0/b;
    .registers 5

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 11
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->setActionView(Landroid/view/View;)Lh0/b;

    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Lh0/b;
    .registers 4

    .line 3
    iput-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 4
    iput-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mView:Landroid/view/View;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mActionProvider:Lm0/b;

    if-eqz p1, :cond_17

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    iget v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mId:I

    if-lez v0, :cond_17

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 8
    :cond_17
    iget-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Lmiuix/appcompat/view/menu/MenuBuilder;->onItemActionRequestChanged(Lmiuix/appcompat/view/menu/MenuItemImpl;)V

    return-object p0
.end method

.method public setActionViewExpanded(Z)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 3
    iget-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 9
    return-void
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iget-char v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    if-ne v0, p1, :cond_5

    return-object p0

    .line 2
    :cond_5
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 3
    iget-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .registers 4

    .line 4
    iget-char v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    if-ne v0, p1, :cond_9

    iget v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    if-ne v0, p2, :cond_9

    return-object p0

    .line 5
    :cond_9
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 6
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    .line 7
    iget-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lmiuix/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setBadgeNeeded(Z)V
    .registers 3

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/view/menu/MenuItemImpl;->setBadgeNeeded(ZI)V

    return-void
.end method

.method public setBadgeNeeded(ZI)V
    .registers 3

    .line 2
    iput-boolean p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mNeedBadge:Z

    .line 3
    iput p2, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mBadgeGravity:I

    return-void
.end method

.method public setCallback(Ljava/lang/Runnable;)Landroid/view/MenuItem;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    .line 3
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .registers 4

    .line 1
    iget v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mFlags:I

    .line 3
    and-int/lit8 v1, v0, -0x2

    .line 5
    or-int/2addr p1, v1

    .line 6
    iput p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mFlags:I

    .line 8
    if-eq v0, p1, :cond_f

    .line 10
    iget-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 16
    :cond_f
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mFlags:I

    .line 3
    and-int/lit8 v0, v0, 0x4

    .line 5
    if-eqz v0, :cond_c

    .line 7
    iget-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 9
    invoke-virtual {p1, p0}, Lmiuix/appcompat/view/menu/MenuBuilder;->setExclusiveItemChecked(Landroid/view/MenuItem;)V

    .line 12
    goto :goto_f

    .line 13
    :cond_c
    invoke-virtual {p0, p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    .line 16
    :goto_f
    return-object p0
.end method

.method public setCheckedInt(Z)V
    .registers 5

    .line 1
    iget v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mFlags:I

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
    iput p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mFlags:I

    .line 14
    if-eq v0, p1, :cond_14

    .line 16
    iget-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 18
    invoke-virtual {p1, v2}, Lmiuix/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 21
    :cond_14
    return-void
.end method

.method public bridge synthetic setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->setContentDescription(Ljava/lang/CharSequence;)Lh0/b;

    move-result-object p1

    return-object p1
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Lh0/b;
    .registers 3

    .line 2
    iput-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mContentDescription:Ljava/lang/CharSequence;

    .line 3
    iget-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .registers 3

    .line 1
    if-eqz p1, :cond_9

    .line 3
    iget p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mFlags:I

    .line 5
    or-int/lit8 p1, p1, 0x10

    .line 7
    iput p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mFlags:I

    .line 9
    goto :goto_f

    .line 10
    :cond_9
    iget p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mFlags:I

    .line 12
    and-int/lit8 p1, p1, -0x11

    .line 14
    iput p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mFlags:I

    .line 16
    :goto_f
    iget-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 22
    return-object p0
.end method

.method public setExclusiveCheckable(Z)V
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mFlags:I

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
    iput p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mFlags:I

    .line 13
    return-void
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .registers 3

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 6
    iput p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mIconResId:I

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    .line 8
    iget-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mIconResId:I

    .line 2
    iput-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mIconTintList:Landroid/content/res/ColorStateList;

    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mHasIconTint:Z

    .line 6
    iput-boolean p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    .line 8
    iget-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 14
    return-object p0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mHasIconTintMode:Z

    .line 6
    iput-boolean p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    .line 8
    iget-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 14
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    .line 3
    return-object p0
.end method

.method public setIsActionButton(Z)V
    .registers 2

    .line 1
    if-eqz p1, :cond_9

    .line 3
    iget p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mFlags:I

    .line 5
    or-int/lit8 p1, p1, 0x20

    .line 7
    iput p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mFlags:I

    .line 9
    goto :goto_f

    .line 10
    :cond_9
    iget p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mFlags:I

    .line 12
    and-int/lit8 p1, p1, -0x21

    .line 14
    iput p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mFlags:I

    .line 16
    :goto_f
    return-void
.end method

.method public setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3
    return-void
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iget-char v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    if-ne v0, p1, :cond_5

    return-object p0

    .line 2
    :cond_5
    iput-char p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 3
    iget-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setNumericShortcut(CI)Landroid/view/MenuItem;
    .registers 4

    .line 4
    iget-char v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    if-ne v0, p1, :cond_9

    iget v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    if-ne v0, p2, :cond_9

    return-object p0

    .line 5
    :cond_9
    iput-char p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 6
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    .line 7
    iget-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lmiuix/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    .line 3
    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iput-char p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 2
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 3
    iget-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lmiuix/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setShortcut(CCII)Landroid/view/MenuItem;
    .registers 5

    .line 4
    iput-char p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 5
    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    .line 6
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 7
    invoke-static {p4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    .line 8
    iget-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lmiuix/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

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
    iput p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 22
    iget-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 24
    invoke-virtual {p1, p0}, Lmiuix/appcompat/view/menu/MenuBuilder;->onItemActionRequestChanged(Lmiuix/appcompat/view/menu/MenuItemImpl;)V

    .line 27
    return-void
.end method

.method public bridge synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->setShowAsActionFlags(I)Lh0/b;

    move-result-object p1

    return-object p1
.end method

.method public setShowAsActionFlags(I)Lh0/b;
    .registers 2

    .line 2
    invoke-virtual {p0, p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->setShowAsAction(I)V

    return-object p0
.end method

.method public setSubMenu(Lmiuix/appcompat/view/menu/SubMenuBuilder;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mSubMenu:Lmiuix/appcompat/view/menu/SubMenuBuilder;

    .line 3
    invoke-virtual {p0}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Lmiuix/appcompat/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 10
    return-void
.end method

.method public setSupportActionProvider(Lm0/b;)Lh0/b;
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mActionProvider:Lm0/b;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_7

    .line 6
    iput-object v1, v0, Lm0/b;->a:Lm0/b$a;

    .line 8
    :cond_7
    iput-object v1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 10
    iput-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mActionProvider:Lm0/b;

    .line 12
    iget-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p1, v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 18
    iget-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mActionProvider:Lm0/b;

    .line 20
    if-eqz p1, :cond_1d

    .line 22
    new-instance v0, Lmiuix/appcompat/view/menu/MenuItemImpl$1;

    .line 24
    invoke-direct {v0, p0}, Lmiuix/appcompat/view/menu/MenuItemImpl$1;-><init>(Lmiuix/appcompat/view/menu/MenuItemImpl;)V

    .line 27
    invoke-virtual {p1, v0}, Lm0/b;->h(Lm0/b$a;)V

    .line 30
    :cond_1d
    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .registers 3

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 4

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mSubMenu:Lmiuix/appcompat/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_f

    .line 4
    invoke-virtual {v0, p1}, Lmiuix/appcompat/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    :cond_f
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 3
    iget-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 9
    return-object p0
.end method

.method public bridge synthetic setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->setTooltipText(Ljava/lang/CharSequence;)Lh0/b;

    move-result-object p1

    return-object p1
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)Lh0/b;
    .registers 3

    .line 2
    iput-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mTooltipText:Ljava/lang/CharSequence;

    .line 3
    iget-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setView(Landroid/view/View;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mView:Landroid/view/View;

    .line 3
    return-void
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_b

    .line 7
    iget-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 9
    invoke-virtual {p1, p0}, Lmiuix/appcompat/view/menu/MenuBuilder;->onItemVisibleChanged(Lmiuix/appcompat/view/menu/MenuItemImpl;)V

    .line 12
    :cond_b
    return-object p0
.end method

.method public setVisibleInt(Z)Z
    .registers 5

    .line 1
    iget v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mFlags:I

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
    iput p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mFlags:I

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
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->getOptionalIconsVisible()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public shouldShowShortcut()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->isShortcutsVisible()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_10

    .line 9
    invoke-virtual {p0}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getShortcut()C

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
    iget v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mShowAsAction:I

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
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return-object v0
.end method

.method public updateBadgeDrawable()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mNeedBadge:Z

    .line 3
    if-eqz v0, :cond_18

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mView:Landroid/view/View;

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_18

    .line 13
    invoke-direct {p0}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getBadgeDrawable()Lmiuix/appcompat/widget/BadgeDrawable;

    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mView:Landroid/view/View;

    .line 19
    iget v2, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mBadgeGravity:I

    .line 21
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/widget/BadgeDrawable;->attachBadgeDrawable(Landroid/view/View;I)V

    .line 24
    goto :goto_22

    .line 25
    :cond_18
    iget-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mBadgeDrawable:Lmiuix/appcompat/widget/BadgeDrawable;

    .line 27
    if-eqz v0, :cond_22

    .line 29
    invoke-virtual {v0}, Lmiuix/appcompat/widget/BadgeDrawable;->detachBadgeDrawable()V

    .line 32
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lmiuix/appcompat/view/menu/MenuItemImpl;->mBadgeDrawable:Lmiuix/appcompat/widget/BadgeDrawable;

    .line 35
    :cond_22
    :goto_22
    return-void
.end method
