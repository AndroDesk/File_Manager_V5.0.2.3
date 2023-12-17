.class public final Landroidx/appcompat/widget/ActionMenuPresenter$f;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroidx/appcompat/view/menu/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActionMenuPresenter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter$f;->a:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/h;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$f;->a:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 3
    iget-object v1, v0, Landroidx/appcompat/view/menu/b;->c:Landroidx/appcompat/view/menu/h;

    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne p1, v1, :cond_8

    .line 8
    return v2

    .line 9
    :cond_8
    move-object v1, p1

    .line 10
    check-cast v1, Landroidx/appcompat/view/menu/s;

    .line 12
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/s;->getItem()Landroid/view/MenuItem;

    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    .line 19
    move-result v1

    .line 20
    iput v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->A:I

    .line 22
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$f;->a:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 24
    iget-object v0, v0, Landroidx/appcompat/view/menu/b;->e:Landroidx/appcompat/view/menu/n$a;

    .line 26
    if-eqz v0, :cond_1f

    .line 28
    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/n$a;->a(Landroidx/appcompat/view/menu/h;)Z

    .line 31
    move-result v2

    .line 32
    :cond_1f
    return v2
.end method

.method public final onCloseMenu(Landroidx/appcompat/view/menu/h;Z)V
    .registers 5

    .line 1
    instance-of v0, p1, Landroidx/appcompat/view/menu/s;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/h;->getRootMenu()Landroidx/appcompat/view/menu/h;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/h;->close(Z)V

    .line 13
    :cond_c
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$f;->a:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 15
    iget-object v0, v0, Landroidx/appcompat/view/menu/b;->e:Landroidx/appcompat/view/menu/n$a;

    .line 17
    if-eqz v0, :cond_15

    .line 19
    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/n$a;->onCloseMenu(Landroidx/appcompat/view/menu/h;Z)V

    .line 22
    :cond_15
    return-void
.end method
