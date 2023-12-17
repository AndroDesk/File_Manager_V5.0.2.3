.class public final Landroidx/appcompat/widget/Toolbar$c;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroidx/appcompat/view/menu/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/Toolbar;->ensureMenuView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar$c;->a:Landroidx/appcompat/widget/Toolbar;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onMenuItemSelected(Landroidx/appcompat/view/menu/h;Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$c;->a:Landroidx/appcompat/widget/Toolbar;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mMenuBuilderCallback:Landroidx/appcompat/view/menu/h$a;

    .line 5
    if-eqz v0, :cond_e

    .line 7
    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/h$a;->onMenuItemSelected(Landroidx/appcompat/view/menu/h;Landroid/view/MenuItem;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_e

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 p1, 0x0

    .line 16
    :goto_f
    return p1
.end method

.method public final onMenuModeChange(Landroidx/appcompat/view/menu/h;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$c;->a:Landroidx/appcompat/widget/Toolbar;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 5
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 7
    if-eqz v0, :cond_10

    .line 9
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->c()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_10

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    :goto_11
    if-nez v0, :cond_2d

    .line 20
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$c;->a:Landroidx/appcompat/widget/Toolbar;

    .line 22
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mMenuHostHelper:Lm0/m;

    .line 24
    iget-object v0, v0, Lm0/m;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v0

    .line 30
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2d

    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lm0/o;

    .line 42
    invoke-interface {v1, p1}, Lm0/o;->d(Landroid/view/Menu;)V

    .line 45
    goto :goto_1d

    .line 46
    :cond_2d
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$c;->a:Landroidx/appcompat/widget/Toolbar;

    .line 48
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mMenuBuilderCallback:Landroidx/appcompat/view/menu/h$a;

    .line 50
    if-eqz v0, :cond_36

    .line 52
    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/h$a;->onMenuModeChange(Landroidx/appcompat/view/menu/h;)V

    .line 55
    :cond_36
    return-void
.end method
