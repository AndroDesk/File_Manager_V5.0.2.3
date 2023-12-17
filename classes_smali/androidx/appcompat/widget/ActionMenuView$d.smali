.class public final Landroidx/appcompat/widget/ActionMenuView$d;
.super Ljava/lang/Object;
.source "ActionMenuView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/ActionMenuView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActionMenuView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView$d;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onMenuItemSelected(Landroidx/appcompat/view/menu/h;Landroid/view/MenuItem;)Z
    .registers 7

    .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView$d;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 3
    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->l:Landroidx/appcompat/widget/ActionMenuView$e;

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    if-eqz p1, :cond_3c

    .line 9
    check-cast p1, Landroidx/appcompat/widget/Toolbar$a;

    .line 11
    iget-object v2, p1, Landroidx/appcompat/widget/Toolbar$a;->a:Landroidx/appcompat/widget/Toolbar;

    .line 13
    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mMenuHostHelper:Lm0/m;

    .line 15
    iget-object v2, v2, Lm0/m;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v2

    .line 21
    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_28

    .line 27
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lm0/o;

    .line 33
    invoke-interface {v3, p2}, Lm0/o;->a(Landroid/view/MenuItem;)Z

    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_14

    .line 39
    move p2, v1

    .line 40
    goto :goto_29

    .line 41
    :cond_28
    move p2, v0

    .line 42
    :goto_29
    if-eqz p2, :cond_2d

    .line 44
    move p1, v1

    .line 45
    goto :goto_39

    .line 46
    :cond_2d
    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar$a;->a:Landroidx/appcompat/widget/Toolbar;

    .line 48
    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->mOnMenuItemClickListener:Landroidx/appcompat/widget/Toolbar$h;

    .line 50
    if-eqz p1, :cond_38

    .line 52
    invoke-interface {p1}, Landroidx/appcompat/widget/Toolbar$h;->a()Z

    .line 55
    move-result p1

    .line 56
    goto :goto_39

    .line 57
    :cond_38
    move p1, v0

    .line 58
    :goto_39
    if-eqz p1, :cond_3c

    .line 60
    move v0, v1

    .line 61
    :cond_3c
    return v0
.end method

.method public final onMenuModeChange(Landroidx/appcompat/view/menu/h;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView$d;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/view/menu/h$a;

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/h$a;->onMenuModeChange(Landroidx/appcompat/view/menu/h;)V

    .line 10
    :cond_9
    return-void
.end method
