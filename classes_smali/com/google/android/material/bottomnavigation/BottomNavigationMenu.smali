.class public final Lcom/google/android/material/bottomnavigation/BottomNavigationMenu;
.super Landroidx/appcompat/view/menu/h;
.source "BottomNavigationMenu.java"


# static fields
.field public static final MAX_ITEM_COUNT:I = 0x5


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/h;-><init>(Landroid/content/Context;)V

    .line 4
    return-void
.end method


# virtual methods
.method public addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h;->size()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    add-int/2addr v0, v1

    .line 7
    const/4 v2, 0x5

    .line 8
    if-gt v0, v2, :cond_1e

    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h;->stopDispatchingItemsChanged()V

    .line 13
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/h;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 16
    move-result-object p1

    .line 17
    instance-of p2, p1, Landroidx/appcompat/view/menu/j;

    .line 19
    if-eqz p2, :cond_1a

    .line 21
    move-object p2, p1

    .line 22
    check-cast p2, Landroidx/appcompat/view/menu/j;

    .line 24
    invoke-virtual {p2, v1}, Landroidx/appcompat/view/menu/j;->d(Z)V

    .line 27
    :cond_1a
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h;->startDispatchingItemsChanged()V

    .line 30
    return-object p1

    .line 31
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 33
    const-string p2, "Maximum number of items supported by BottomNavigationView is 5. Limit can be checked with BottomNavigationView#getMaxItemCount()"

    .line 35
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    throw p1
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 5

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string p2, "BottomNavigationView does not support submenus"

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method
