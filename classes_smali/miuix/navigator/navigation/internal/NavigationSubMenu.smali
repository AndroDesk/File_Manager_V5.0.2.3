.class public Lmiuix/navigator/navigation/internal/NavigationSubMenu;
.super Lmiuix/appcompat/view/menu/SubMenuBuilder;
.source "NavigationSubMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiuix/navigator/navigation/internal/NavigationMenu;Lmiuix/appcompat/view/menu/MenuItemImpl;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lmiuix/appcompat/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Lmiuix/appcompat/view/menu/MenuBuilder;Lmiuix/appcompat/view/menu/MenuItemImpl;)V

    .line 4
    return-void
.end method


# virtual methods
.method public onItemsChanged(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 4
    invoke-virtual {p0}, Lmiuix/appcompat/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 10
    invoke-virtual {v0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 13
    return-void
.end method
