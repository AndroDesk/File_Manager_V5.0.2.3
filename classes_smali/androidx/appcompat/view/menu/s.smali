.class public Landroidx/appcompat/view/menu/s;
.super Landroidx/appcompat/view/menu/h;
.source "SubMenuBuilder.java"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field private mItem:Landroidx/appcompat/view/menu/j;

.field private mParentMenu:Landroidx/appcompat/view/menu/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/h;Landroidx/appcompat/view/menu/j;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/h;-><init>(Landroid/content/Context;)V

    .line 4
    iput-object p2, p0, Landroidx/appcompat/view/menu/s;->mParentMenu:Landroidx/appcompat/view/menu/h;

    .line 6
    iput-object p3, p0, Landroidx/appcompat/view/menu/s;->mItem:Landroidx/appcompat/view/menu/j;

    .line 8
    return-void
.end method


# virtual methods
.method public collapseItemActionView(Landroidx/appcompat/view/menu/j;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/s;->mParentMenu:Landroidx/appcompat/view/menu/h;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/h;->collapseItemActionView(Landroidx/appcompat/view/menu/j;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public dispatchMenuItemSelected(Landroidx/appcompat/view/menu/h;Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/h;->dispatchMenuItemSelected(Landroidx/appcompat/view/menu/h;Landroid/view/MenuItem;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_11

    .line 7
    iget-object v0, p0, Landroidx/appcompat/view/menu/s;->mParentMenu:Landroidx/appcompat/view/menu/h;

    .line 9
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/h;->dispatchMenuItemSelected(Landroidx/appcompat/view/menu/h;Landroid/view/MenuItem;)Z

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

.method public expandItemActionView(Landroidx/appcompat/view/menu/j;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/s;->mParentMenu:Landroidx/appcompat/view/menu/h;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/h;->expandItemActionView(Landroidx/appcompat/view/menu/j;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getActionViewStatesKey()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/s;->mItem:Landroidx/appcompat/view/menu/j;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    iget v0, v0, Landroidx/appcompat/view/menu/j;->a:I

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    if-nez v0, :cond_c

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    invoke-super {p0}, Landroidx/appcompat/view/menu/h;->getActionViewStatesKey()Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string v2, ":"

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method

.method public getItem()Landroid/view/MenuItem;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/s;->mItem:Landroidx/appcompat/view/menu/j;

    .line 3
    return-object v0
.end method

.method public getParentMenu()Landroid/view/Menu;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/s;->mParentMenu:Landroidx/appcompat/view/menu/h;

    .line 3
    return-object v0
.end method

.method public getRootMenu()Landroidx/appcompat/view/menu/h;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/s;->mParentMenu:Landroidx/appcompat/view/menu/h;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->getRootMenu()Landroidx/appcompat/view/menu/h;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isGroupDividerEnabled()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/s;->mParentMenu:Landroidx/appcompat/view/menu/h;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->isGroupDividerEnabled()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isQwertyMode()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/s;->mParentMenu:Landroidx/appcompat/view/menu/h;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->isQwertyMode()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isShortcutsVisible()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/s;->mParentMenu:Landroidx/appcompat/view/menu/h;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->isShortcutsVisible()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public setCallback(Landroidx/appcompat/view/menu/h$a;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/s;->mParentMenu:Landroidx/appcompat/view/menu/h;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/h;->setCallback(Landroidx/appcompat/view/menu/h$a;)V

    .line 6
    return-void
.end method

.method public setGroupDividerEnabled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/s;->mParentMenu:Landroidx/appcompat/view/menu/h;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/h;->setGroupDividerEnabled(Z)V

    .line 6
    return-void
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .registers 2

    .line 2
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/h;->setHeaderIconInt(I)Landroidx/appcompat/view/menu/h;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/h;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/view/menu/h;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .registers 2

    .line 2
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/h;->setHeaderTitleInt(I)Landroidx/appcompat/view/menu/h;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/h;->setHeaderTitleInt(Ljava/lang/CharSequence;)Landroidx/appcompat/view/menu/h;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/h;->setHeaderViewInt(Landroid/view/View;)Landroidx/appcompat/view/menu/h;

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
    iget-object v0, p0, Landroidx/appcompat/view/menu/s;->mItem:Landroidx/appcompat/view/menu/j;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/j;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/s;->mItem:Landroidx/appcompat/view/menu/j;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/j;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setQwertyMode(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/s;->mParentMenu:Landroidx/appcompat/view/menu/h;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/h;->setQwertyMode(Z)V

    .line 6
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/s;->mParentMenu:Landroidx/appcompat/view/menu/h;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/h;->setShortcutsVisible(Z)V

    .line 6
    return-void
.end method
