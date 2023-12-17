.class public Lmiuix/navigator/navigation/internal/NavigationSubMenu;
.super Lmiuix/appcompat/view/menu/SubMenuBuilder;
.source "NavigationSubMenu.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiuix/navigator/navigation/internal/NavigationMenu;Lmiuix/appcompat/view/menu/MenuItemImpl;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiuix/appcompat/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Lmiuix/appcompat/view/menu/MenuBuilder;Lmiuix/appcompat/view/menu/MenuItemImpl;)V

    return-void
.end method


# virtual methods
.method public onItemsChanged(Z)V
    .registers 3

    invoke-super {p0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    invoke-virtual {p0}, Lmiuix/appcompat/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method
