.class public Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;
.super Ljava/lang/Object;
.source "ActionMenuItem.java"

# interfaces
.implements Landroid/view/MenuItem;


# static fields
.field private static final CHECKABLE:I = 0x1

.field private static final CHECKED:I = 0x2

.field private static final ENABLED:I = 0x10

.field private static final EXCLUSIVE:I = 0x4

.field private static final HIDDEN:I = 0x8


# instance fields
.field private final mCategoryOrder:I

.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mContext:Landroid/content/Context;

.field private mFlags:I

.field private final mGroup:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private final mId:I

.field private mIntent:Landroid/content/Intent;

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutNumericChar:C

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0x10

    .line 6
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mFlags:I

    .line 8
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mContext:Landroid/content/Context;

    .line 10
    iput p3, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mId:I

    .line 12
    iput p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mGroup:I

    .line 14
    iput p4, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mCategoryOrder:I

    .line 16
    iput p5, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mOrdering:I

    .line 18
    iput-object p6, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 20
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public expandActionView()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .registers 2

    .line 1
    iget-char v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mShortcutAlphabeticChar:C

    .line 3
    return v0
.end method

.method public getGroupId()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mGroup:I

    .line 3
    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mIntent:Landroid/content/Intent;

    .line 3
    return-object v0
.end method

.method public getItemId()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mId:I

    .line 3
    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumericShortcut()C
    .registers 2

    .line 1
    iget-char v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mShortcutNumericChar:C

    .line 3
    return v0
.end method

.method public getOrder()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mOrdering:I

    .line 3
    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportActionProvider()Landroid/view/ActionProvider;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public hasSubMenu()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public invoke()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

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
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mIntent:Landroid/content/Intent;

    .line 15
    if-eqz v0, :cond_16

    .line 17
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mContext:Landroid/content/Context;

    .line 19
    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 22
    return v1

    .line 23
    :cond_16
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public isActionViewExpanded()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable()Z
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mFlags:I

    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_7

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
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mFlags:I

    .line 3
    and-int/lit8 v0, v0, 0x2

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

.method public isEnabled()Z
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mFlags:I

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

.method public isVisible()Z
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mFlags:I

    .line 3
    and-int/lit8 v0, v0, 0x8

    .line 5
    if-nez v0, :cond_8

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
    .registers 2

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p1
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .registers 2

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .registers 2

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .registers 2

    .line 1
    iput-char p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mShortcutAlphabeticChar:C

    .line 3
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mFlags:I

    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 5
    or-int/2addr p1, v0

    .line 6
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mFlags:I

    .line 8
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mFlags:I

    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 5
    if-eqz p1, :cond_8

    .line 7
    const/4 p1, 0x2

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 p1, 0x0

    .line 10
    :goto_9
    or-int/2addr p1, v0

    .line 11
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mFlags:I

    .line 13
    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mFlags:I

    .line 3
    and-int/lit8 v0, v0, -0x11

    .line 5
    if-eqz p1, :cond_9

    .line 7
    const/16 p1, 0x10

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    :goto_a
    or-int/2addr p1, v0

    .line 12
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mFlags:I

    .line 14
    return-object p0
.end method

.method public setExclusiveCheckable(Z)Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mFlags:I

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
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mFlags:I

    .line 13
    return-object p0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mIntent:Landroid/content/Intent;

    .line 3
    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .registers 2

    .line 1
    iput-char p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mShortcutNumericChar:C

    .line 3
    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 2

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p1
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iput-char p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mShortcutNumericChar:C

    .line 3
    iput-char p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mShortcutAlphabeticChar:C

    .line 5
    return-object p0
.end method

.method public setShowAsAction(I)V
    .registers 2

    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->setShowAsAction(I)V

    .line 4
    return-object p0
.end method

.method public setSupportActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 2

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p1
.end method

.method public setSupportOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 2

    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 3
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .registers 4

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mFlags:I

    .line 3
    const/16 v1, 0x8

    .line 5
    and-int/2addr v0, v1

    .line 6
    if-eqz p1, :cond_8

    .line 8
    const/4 v1, 0x0

    .line 9
    :cond_8
    or-int p1, v0, v1

    .line 11
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mFlags:I

    .line 13
    return-object p0
.end method
