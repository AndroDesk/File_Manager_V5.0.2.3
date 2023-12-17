.class public Lmiuix/appcompat/view/menu/SubMenuBuilder;
.super Lmiuix/appcompat/view/menu/MenuBuilder;
.source "SubMenuBuilder.java"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field private mItem:Lmiuix/appcompat/view/menu/MenuItemImpl;

.field private mParentMenu:Lmiuix/appcompat/view/menu/MenuBuilder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiuix/appcompat/view/menu/MenuBuilder;Lmiuix/appcompat/view/menu/MenuItemImpl;)V
    .registers 4

    invoke-direct {p0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lmiuix/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    iput-object p3, p0, Lmiuix/appcompat/view/menu/SubMenuBuilder;->mItem:Lmiuix/appcompat/view/menu/MenuItemImpl;

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lmiuix/appcompat/view/menu/MenuItemImpl;)Z
    .registers 3

    iget-object v0, p0, Lmiuix/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->collapseItemActionView(Lmiuix/appcompat/view/menu/MenuItemImpl;)Z

    move-result p1

    return p1
.end method

.method public dispatchMenuItemSelected(Lmiuix/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Lmiuix/appcompat/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lmiuix/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lmiuix/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lmiuix/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p1, 0x1

    :goto_12
    return p1
.end method

.method public expandItemActionView(Lmiuix/appcompat/view/menu/MenuItemImpl;)Z
    .registers 3

    iget-object v0, p0, Lmiuix/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->expandItemActionView(Lmiuix/appcompat/view/menu/MenuItemImpl;)Z

    move-result p1

    return p1
.end method

.method public getActionViewStatesKey()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lmiuix/appcompat/view/menu/SubMenuBuilder;->mItem:Lmiuix/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-nez v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lmiuix/appcompat/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem()Landroid/view/MenuItem;
    .registers 2

    iget-object v0, p0, Lmiuix/appcompat/view/menu/SubMenuBuilder;->mItem:Lmiuix/appcompat/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getParentMenu()Landroid/view/Menu;
    .registers 2

    iget-object v0, p0, Lmiuix/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getRootMenu()Lmiuix/appcompat/view/menu/MenuBuilder;
    .registers 2

    iget-object v0, p0, Lmiuix/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->getRootMenu()Lmiuix/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    return-object v0
.end method

.method public isGroupDividerEnabled()Z
    .registers 2

    iget-object v0, p0, Lmiuix/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->isGroupDividerEnabled()Z

    move-result v0

    return v0
.end method

.method public isQwertyMode()Z
    .registers 2

    iget-object v0, p0, Lmiuix/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v0

    return v0
.end method

.method public isShortcutsVisible()Z
    .registers 2

    iget-object v0, p0, Lmiuix/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    return v0
.end method

.method public setCallback(Lmiuix/appcompat/view/menu/MenuBuilder$Callback;)V
    .registers 3

    iget-object v0, p0, Lmiuix/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->setCallback(Lmiuix/appcompat/view/menu/MenuBuilder$Callback;)V

    return-void
.end method

.method public setGroupDividerEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lmiuix/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->setGroupDividerEnabled(Z)V

    return-void
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .registers 2

    invoke-super {p0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->setHeaderIconInt(I)Lmiuix/appcompat/view/menu/MenuBuilder;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .registers 2

    invoke-super {p0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lmiuix/appcompat/view/menu/MenuBuilder;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .registers 2

    invoke-super {p0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->setHeaderTitleInt(I)Lmiuix/appcompat/view/menu/MenuBuilder;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 2

    invoke-super {p0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lmiuix/appcompat/view/menu/MenuBuilder;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .registers 2

    invoke-super {p0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->setHeaderViewInt(Landroid/view/View;)Lmiuix/appcompat/view/menu/MenuBuilder;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .registers 3

    iget-object v0, p0, Lmiuix/appcompat/view/menu/SubMenuBuilder;->mItem:Lmiuix/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .registers 3

    iget-object v0, p0, Lmiuix/appcompat/view/menu/SubMenuBuilder;->mItem:Lmiuix/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setQwertyMode(Z)V
    .registers 3

    iget-object v0, p0, Lmiuix/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->setQwertyMode(Z)V

    return-void
.end method

.method public setShortcutsVisible(Z)V
    .registers 3

    iget-object v0, p0, Lmiuix/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->setShortcutsVisible(Z)V

    return-void
.end method
