.class public final Landroidx/appcompat/view/menu/k;
.super Landroidx/appcompat/view/menu/c;
.source "MenuItemWrapperICS.java"

# interfaces
.implements Landroid/view/MenuItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/k$c;,
        Landroidx/appcompat/view/menu/k$b;,
        Landroidx/appcompat/view/menu/k$a;,
        Landroidx/appcompat/view/menu/k$d;,
        Landroidx/appcompat/view/menu/k$e;
    }
.end annotation


# instance fields
.field public final d:Lh0/b;

.field public e:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lh0/b;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/c;-><init>(Landroid/content/Context;)V

    .line 4
    if-eqz p2, :cond_8

    .line 6
    iput-object p2, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 8
    return-void

    .line 9
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    const-string p2, "Wrapped Object can not be null."

    .line 13
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    throw p1
.end method


# virtual methods
.method public final collapseActionView()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 3
    invoke-interface {v0}, Lh0/b;->collapseActionView()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final expandActionView()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 3
    invoke-interface {v0}, Lh0/b;->expandActionView()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getActionProvider()Landroid/view/ActionProvider;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 3
    invoke-interface {v0}, Lh0/b;->getSupportActionProvider()Lm0/b;

    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Landroidx/appcompat/view/menu/k$a;

    .line 9
    if-eqz v1, :cond_f

    .line 11
    check-cast v0, Landroidx/appcompat/view/menu/k$a;

    .line 13
    iget-object v0, v0, Landroidx/appcompat/view/menu/k$a;->b:Landroid/view/ActionProvider;

    .line 15
    return-object v0

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method

.method public final getActionView()Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 3
    invoke-interface {v0}, Lh0/b;->getActionView()Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Landroidx/appcompat/view/menu/k$c;

    .line 9
    if-eqz v1, :cond_10

    .line 11
    check-cast v0, Landroidx/appcompat/view/menu/k$c;

    .line 13
    iget-object v0, v0, Landroidx/appcompat/view/menu/k$c;->a:Landroid/view/CollapsibleActionView;

    .line 15
    check-cast v0, Landroid/view/View;

    .line 17
    :cond_10
    return-object v0
.end method

.method public final getAlphabeticModifiers()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 3
    invoke-interface {v0}, Lh0/b;->getAlphabeticModifiers()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getAlphabeticShortcut()C
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 3
    invoke-interface {v0}, Landroid/view/MenuItem;->getAlphabeticShortcut()C

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 3
    invoke-interface {v0}, Lh0/b;->getContentDescription()Ljava/lang/CharSequence;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getGroupId()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 3
    invoke-interface {v0}, Landroid/view/MenuItem;->getGroupId()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 3
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getIconTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 3
    invoke-interface {v0}, Lh0/b;->getIconTintList()Landroid/content/res/ColorStateList;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 3
    invoke-interface {v0}, Lh0/b;->getIconTintMode()Landroid/graphics/PorterDuff$Mode;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getIntent()Landroid/content/Intent;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 3
    invoke-interface {v0}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getItemId()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 3
    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 3
    invoke-interface {v0}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getNumericModifiers()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 3
    invoke-interface {v0}, Lh0/b;->getNumericModifiers()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getNumericShortcut()C
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 3
    invoke-interface {v0}, Landroid/view/MenuItem;->getNumericShortcut()C

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getOrder()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 3
    invoke-interface {v0}, Landroid/view/MenuItem;->getOrder()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getSubMenu()Landroid/view/SubMenu;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 3
    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/c;->b(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 3
    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getTitleCondensed()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 3
    invoke-interface {v0}, Landroid/view/MenuItem;->getTitleCondensed()Ljava/lang/CharSequence;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getTooltipText()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 3
    invoke-interface {v0}, Lh0/b;->getTooltipText()Ljava/lang/CharSequence;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final hasSubMenu()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 3
    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final isActionViewExpanded()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 3
    invoke-interface {v0}, Lh0/b;->isActionViewExpanded()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final isCheckable()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 3
    invoke-interface {v0}, Landroid/view/MenuItem;->isCheckable()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final isChecked()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 3
    invoke-interface {v0}, Landroid/view/MenuItem;->isChecked()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final isEnabled()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 3
    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final isVisible()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 3
    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 4

    .line 1
    new-instance v0, Landroidx/appcompat/view/menu/k$b;

    .line 3
    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/k$b;-><init>(Landroidx/appcompat/view/menu/k;Landroid/view/ActionProvider;)V

    .line 6
    iget-object v1, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 8
    if-eqz p1, :cond_a

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    invoke-interface {v1, v0}, Lh0/b;->setSupportActionProvider(Lm0/b;)Lh0/b;

    .line 15
    return-object p0
.end method

.method public final setActionView(I)Landroid/view/MenuItem;
    .registers 4

    .line 4
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    invoke-interface {v0, p1}, Lh0/b;->setActionView(I)Landroid/view/MenuItem;

    .line 5
    iget-object p1, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    invoke-interface {p1}, Lh0/b;->getActionView()Landroid/view/View;

    move-result-object p1

    .line 6
    instance-of v0, p1, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_19

    .line 7
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    new-instance v1, Landroidx/appcompat/view/menu/k$c;

    invoke-direct {v1, p1}, Landroidx/appcompat/view/menu/k$c;-><init>(Landroid/view/View;)V

    invoke-interface {v0, v1}, Lh0/b;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    :cond_19
    return-object p0
.end method

.method public final setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .registers 3

    .line 1
    instance-of v0, p1, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_a

    .line 2
    new-instance v0, Landroidx/appcompat/view/menu/k$c;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/k$c;-><init>(Landroid/view/View;)V

    move-object p1, v0

    .line 3
    :cond_a
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    invoke-interface {v0, p1}, Lh0/b;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .registers 4

    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    invoke-interface {v0, p1, p2}, Lh0/b;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setCheckable(Z)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 3
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 6
    return-object p0
.end method

.method public final setChecked(Z)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 3
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 6
    return-object p0
.end method

.method public final setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 3
    invoke-interface {v0, p1}, Lh0/b;->setContentDescription(Ljava/lang/CharSequence;)Lh0/b;

    .line 6
    return-object p0
.end method

.method public final setEnabled(Z)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 3
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 6
    return-object p0
.end method

.method public final setIcon(I)Landroid/view/MenuItem;
    .registers 3

    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 3
    invoke-interface {v0, p1}, Lh0/b;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    .line 6
    return-object p0
.end method

.method public final setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 3
    invoke-interface {v0, p1}, Lh0/b;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    .line 6
    return-object p0
.end method

.method public final setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 3
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 6
    return-object p0
.end method

.method public final setNumericShortcut(C)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setNumericShortcut(CI)Landroid/view/MenuItem;
    .registers 4

    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    invoke-interface {v0, p1, p2}, Lh0/b;->setNumericShortcut(CI)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 3
    if-eqz p1, :cond_a

    .line 5
    new-instance v1, Landroidx/appcompat/view/menu/k$d;

    .line 7
    invoke-direct {v1, p0, p1}, Landroidx/appcompat/view/menu/k$d;-><init>(Landroidx/appcompat/view/menu/k;Landroid/view/MenuItem$OnActionExpandListener;)V

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v1, 0x0

    .line 12
    :goto_b
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 15
    return-object p0
.end method

.method public final setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 3
    if-eqz p1, :cond_a

    .line 5
    new-instance v1, Landroidx/appcompat/view/menu/k$e;

    .line 7
    invoke-direct {v1, p0, p1}, Landroidx/appcompat/view/menu/k$e;-><init>(Landroidx/appcompat/view/menu/k;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v1, 0x0

    .line 12
    :goto_b
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 15
    return-object p0
.end method

.method public final setShortcut(CC)Landroid/view/MenuItem;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    invoke-interface {v0, p1, p2}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setShortcut(CCII)Landroid/view/MenuItem;
    .registers 6

    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    invoke-interface {v0, p1, p2, p3, p4}, Lh0/b;->setShortcut(CCII)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setShowAsAction(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 3
    invoke-interface {v0, p1}, Lh0/b;->setShowAsAction(I)V

    .line 6
    return-void
.end method

.method public final setShowAsActionFlags(I)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 3
    invoke-interface {v0, p1}, Lh0/b;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 6
    return-object p0
.end method

.method public final setTitle(I)Landroid/view/MenuItem;
    .registers 3

    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 3
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 6
    return-object p0
.end method

.method public final setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 3
    invoke-interface {v0, p1}, Lh0/b;->setTooltipText(Ljava/lang/CharSequence;)Lh0/b;

    .line 6
    return-object p0
.end method

.method public final setVisible(Z)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 3
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
