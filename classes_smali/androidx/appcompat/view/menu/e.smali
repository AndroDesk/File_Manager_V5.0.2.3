.class public final Landroidx/appcompat/view/menu/e;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/d$d;

.field public final synthetic b:Landroid/view/MenuItem;

.field public final synthetic c:Landroidx/appcompat/view/menu/h;

.field public final synthetic d:Landroidx/appcompat/view/menu/d$c;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/d$c;Landroidx/appcompat/view/menu/d$d;Landroidx/appcompat/view/menu/j;Landroidx/appcompat/view/menu/h;)V
    .registers 5

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/e;->d:Landroidx/appcompat/view/menu/d$c;

    .line 3
    iput-object p2, p0, Landroidx/appcompat/view/menu/e;->a:Landroidx/appcompat/view/menu/d$d;

    .line 5
    iput-object p3, p0, Landroidx/appcompat/view/menu/e;->b:Landroid/view/MenuItem;

    .line 7
    iput-object p4, p0, Landroidx/appcompat/view/menu/e;->c:Landroidx/appcompat/view/menu/h;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->a:Landroidx/appcompat/view/menu/d$d;

    .line 3
    if-eqz v0, :cond_17

    .line 5
    iget-object v1, p0, Landroidx/appcompat/view/menu/e;->d:Landroidx/appcompat/view/menu/d$c;

    .line 7
    iget-object v1, v1, Landroidx/appcompat/view/menu/d$c;->a:Landroidx/appcompat/view/menu/d;

    .line 9
    const/4 v2, 0x1

    .line 10
    iput-boolean v2, v1, Landroidx/appcompat/view/menu/d;->C:Z

    .line 12
    iget-object v0, v0, Landroidx/appcompat/view/menu/d$d;->b:Landroidx/appcompat/view/menu/h;

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/h;->close(Z)V

    .line 18
    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->d:Landroidx/appcompat/view/menu/d$c;

    .line 20
    iget-object v0, v0, Landroidx/appcompat/view/menu/d$c;->a:Landroidx/appcompat/view/menu/d;

    .line 22
    iput-boolean v1, v0, Landroidx/appcompat/view/menu/d;->C:Z

    .line 24
    :cond_17
    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->b:Landroid/view/MenuItem;

    .line 26
    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2f

    .line 32
    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->b:Landroid/view/MenuItem;

    .line 34
    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2f

    .line 40
    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->c:Landroidx/appcompat/view/menu/h;

    .line 42
    iget-object v1, p0, Landroidx/appcompat/view/menu/e;->b:Landroid/view/MenuItem;

    .line 44
    const/4 v2, 0x4

    .line 45
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/h;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 48
    :cond_2f
    return-void
.end method
