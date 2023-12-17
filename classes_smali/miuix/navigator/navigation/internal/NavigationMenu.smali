.class public final Lmiuix/navigator/navigation/internal/NavigationMenu;
.super Lmiuix/appcompat/view/menu/MenuBuilder;
.source "NavigationMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 4
    return-void
.end method


# virtual methods
.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 5

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lmiuix/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lmiuix/appcompat/view/menu/MenuItemImpl;

    .line 7
    new-instance p2, Lmiuix/navigator/navigation/internal/NavigationSubMenu;

    .line 9
    invoke-virtual {p0}, Lmiuix/appcompat/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    .line 12
    move-result-object p3

    .line 13
    invoke-direct {p2, p3, p0, p1}, Lmiuix/navigator/navigation/internal/NavigationSubMenu;-><init>(Landroid/content/Context;Lmiuix/navigator/navigation/internal/NavigationMenu;Lmiuix/appcompat/view/menu/MenuItemImpl;)V

    .line 16
    invoke-virtual {p1, p2}, Lmiuix/appcompat/view/menu/MenuItemImpl;->setSubMenu(Lmiuix/appcompat/view/menu/SubMenuBuilder;)V

    .line 19
    return-object p2
.end method
