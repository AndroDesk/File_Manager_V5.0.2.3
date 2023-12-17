.class public final Landroidx/appcompat/app/AppCompatDelegateImpl$l;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroidx/appcompat/view/menu/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "l"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$l;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/h;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/h;->getRootMenu()Landroidx/appcompat/view/menu/h;

    .line 4
    move-result-object v0

    .line 5
    if-ne p1, v0, :cond_1d

    .line 7
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$l;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 9
    iget-boolean v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->K:Z

    .line 11
    if-eqz v1, :cond_1d

    .line 13
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->N()Landroid/view/Window$Callback;

    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1d

    .line 19
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$l;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 21
    iget-boolean v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->V:Z

    .line 23
    if-nez v1, :cond_1d

    .line 25
    const/16 v1, 0x6c

    .line 27
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 30
    :cond_1d
    const/4 p1, 0x1

    .line 31
    return p1
.end method

.method public final onCloseMenu(Landroidx/appcompat/view/menu/h;Z)V
    .registers 11

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/h;->getRootMenu()Landroidx/appcompat/view/menu/h;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, p1, :cond_a

    .line 9
    move v3, v2

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    move v3, v1

    .line 12
    :goto_b
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$l;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 14
    if-eqz v3, :cond_10

    .line 16
    move-object p1, v0

    .line 17
    :cond_10
    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->Q:[Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    .line 19
    if-eqz v4, :cond_16

    .line 21
    array-length v5, v4

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move v5, v1

    .line 24
    :goto_17
    if-ge v1, v5, :cond_25

    .line 26
    aget-object v6, v4, v1

    .line 28
    if-eqz v6, :cond_22

    .line 30
    iget-object v7, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/h;

    .line 32
    if-ne v7, p1, :cond_22

    .line 34
    goto :goto_26

    .line 35
    :cond_22
    add-int/lit8 v1, v1, 0x1

    .line 37
    goto :goto_17

    .line 38
    :cond_25
    const/4 v6, 0x0

    .line 39
    :goto_26
    if-eqz v6, :cond_3c

    .line 41
    if-eqz v3, :cond_37

    .line 43
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$l;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 45
    iget p2, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    .line 47
    invoke-virtual {p1, p2, v6, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->D(ILandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroidx/appcompat/view/menu/h;)V

    .line 50
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$l;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 52
    invoke-virtual {p1, v6, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->F(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    .line 55
    goto :goto_3c

    .line 56
    :cond_37
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$l;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 58
    invoke-virtual {p1, v6, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->F(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    .line 61
    :cond_3c
    :goto_3c
    return-void
.end method
