.class public Lcom/google/android/material/internal/NavigationMenu;
.super Landroidx/appcompat/view/menu/h;
.source "NavigationMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/h;-><init>(Landroid/content/Context;)V

    .line 4
    return-void
.end method


# virtual methods
.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 5

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/h;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroidx/appcompat/view/menu/j;

    .line 7
    new-instance p2, Lcom/google/android/material/internal/NavigationSubMenu;

    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h;->getContext()Landroid/content/Context;

    .line 12
    move-result-object p3

    .line 13
    invoke-direct {p2, p3, p0, p1}, Lcom/google/android/material/internal/NavigationSubMenu;-><init>(Landroid/content/Context;Lcom/google/android/material/internal/NavigationMenu;Landroidx/appcompat/view/menu/j;)V

    .line 16
    iput-object p2, p1, Landroidx/appcompat/view/menu/j;->o:Landroidx/appcompat/view/menu/s;

    .line 18
    iget-object p1, p1, Landroidx/appcompat/view/menu/j;->e:Ljava/lang/CharSequence;

    .line 20
    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/s;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 23
    return-object p2
.end method
