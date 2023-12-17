.class public Lmiuix/appcompat/view/menu/SubMenuBuilder;
.super Lmiuix/appcompat/view/menu/MenuBuilder;
.source "SubMenuBuilder.java"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field private mItem:Lmiuix/appcompat/view/menu/MenuItemImpl;

.field private mParentMenu:Lmiuix/appcompat/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiuix/appcompat/view/menu/MenuBuilder;Lmiuix/appcompat/view/menu/MenuItemImpl;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 4
    iput-object p2, p0, Lmiuix/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 6
    iput-object p3, p0, Lmiuix/appcompat/view/menu/SubMenuBuilder;->mItem:Lmiuix/appcompat/view/menu/MenuItemImpl;

    .line 8
    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lmiuix/appcompat/view/menu/MenuItemImpl;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->collapseItemActionView(Lmiuix/appcompat/view/menu/MenuItemImpl;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public dispatchMenuItemSelected(Lmiuix/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lmiuix/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_11

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 9
    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lmiuix/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_f

    .line 15
    goto :goto_11

    .line 16
    :cond_f
    const/4 p1, 0x0

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    :goto_11
    const/4 p1, 0x1

    .line 19
    :goto_12
    return p1
.end method

.method public expandItemActionView(Lmiuix/appcompat/view/menu/MenuItemImpl;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->expandItemActionView(Lmiuix/appcompat/view/menu/MenuItemImpl;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getActionViewStatesKey()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/view/menu/SubMenuBuilder;->mItem:Lmiuix/appcompat/view/menu/MenuItemImpl;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getItemId()I

    .line 8
    move-result v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    if-nez v0, :cond_e

    .line 13
    const/4 v0, 0x0

    .line 14
    return-object v0

    .line 15
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    invoke-super {p0}, Lmiuix/appcompat/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string v2, ":"

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method

.method public getItem()Landroid/view/MenuItem;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/view/menu/SubMenuBuilder;->mItem:Lmiuix/appcompat/view/menu/MenuItemImpl;

    .line 3
    return-object v0
.end method

.method public getParentMenu()Landroid/view/Menu;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 3
    return-object v0
.end method

.method public getRootMenu()Lmiuix/appcompat/view/menu/MenuBuilder;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->getRootMenu()Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isGroupDividerEnabled()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->isGroupDividerEnabled()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isQwertyMode()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->isQwertyMode()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isShortcutsVisible()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->isShortcutsVisible()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public setCallback(Lmiuix/appcompat/view/menu/MenuBuilder$Callback;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->setCallback(Lmiuix/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 6
    return-void
.end method

.method public setGroupDividerEnabled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->setGroupDividerEnabled(Z)V

    .line 6
    return-void
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .registers 2

    .line 2
    invoke-super {p0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->setHeaderIconInt(I)Lmiuix/appcompat/view/menu/MenuBuilder;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lmiuix/appcompat/view/menu/MenuBuilder;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .registers 2

    .line 2
    invoke-super {p0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->setHeaderTitleInt(I)Lmiuix/appcompat/view/menu/MenuBuilder;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lmiuix/appcompat/view/menu/MenuBuilder;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->setHeaderViewInt(Landroid/view/View;)Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/view/SubMenu;

    .line 7
    return-object p1
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/view/menu/SubMenuBuilder;->mItem:Lmiuix/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/view/menu/SubMenuBuilder;->mItem:Lmiuix/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setQwertyMode(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 6
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->setShortcutsVisible(Z)V

    .line 6
    return-void
.end method
