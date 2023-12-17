.class public final Lmiuix/navigator/navigation/internal/NavigationMenu;
.super Lmiuix/appcompat/view/menu/MenuBuilder;
.source "NavigationMenu.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lmiuix/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/view/menu/MenuItemImpl;

    new-instance p2, Lmiuix/navigator/navigation/internal/NavigationSubMenu;

    invoke-virtual {p0}, Lmiuix/appcompat/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, p0, p1}, Lmiuix/navigator/navigation/internal/NavigationSubMenu;-><init>(Landroid/content/Context;Lmiuix/navigator/navigation/internal/NavigationMenu;Lmiuix/appcompat/view/menu/MenuItemImpl;)V

    invoke-virtual {p1, p2}, Lmiuix/appcompat/view/menu/MenuItemImpl;->setSubMenu(Lmiuix/appcompat/view/menu/SubMenuBuilder;)V

    return-object p2
.end method
