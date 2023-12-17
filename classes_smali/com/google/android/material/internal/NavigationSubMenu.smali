.class public Lcom/google/android/material/internal/NavigationSubMenu;
.super Landroidx/appcompat/view/menu/s;
.source "NavigationSubMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/material/internal/NavigationMenu;Landroidx/appcompat/view/menu/j;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/s;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/h;Landroidx/appcompat/view/menu/j;)V

    .line 4
    return-void
.end method


# virtual methods
.method public onItemsChanged(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/s;->getParentMenu()Landroid/view/Menu;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroidx/appcompat/view/menu/h;

    .line 10
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    .line 13
    return-void
.end method
