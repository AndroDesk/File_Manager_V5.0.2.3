.class public Lmiuix/navigator/bottomnavigation/BottomNavigationItemView;
.super Lmiuix/navigator/navigation/NavigationBarItemView;
.source "BottomNavigationItemView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/navigator/navigation/NavigationBarItemView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Lmiuix/navigator/navigation/NavigationBarItemView;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getItemDefaultMarginResId()I
    .registers 2

    .line 1
    sget v0, Lmiuix/navigator/R$dimen;->miuix_design_bottom_navigation_margin:I

    .line 3
    return v0
.end method

.method public getItemLayoutResId()I
    .registers 2

    .line 1
    sget v0, Lmiuix/navigator/R$layout;->miuix_design_bottom_navigation_item:I

    .line 3
    return v0
.end method

.method public setItemInvoker(Landroidx/appcompat/view/menu/h$b;)V
    .registers 2

    return-void
.end method
