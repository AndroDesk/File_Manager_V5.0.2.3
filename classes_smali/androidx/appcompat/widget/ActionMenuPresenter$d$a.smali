.class public final Landroidx/appcompat/widget/ActionMenuPresenter$d$a;
.super Landroidx/appcompat/widget/h0;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/ActionMenuPresenter$d;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic j:Landroidx/appcompat/widget/ActionMenuPresenter$d;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActionMenuPresenter$d;Landroid/view/View;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter$d$a;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    .line 3
    invoke-direct {p0, p2}, Landroidx/appcompat/widget/h0;-><init>(Landroid/view/View;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final b()Landroidx/appcompat/view/menu/q;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$d$a;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter$d;->a:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 5
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->v:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    .line 7
    if-nez v0, :cond_a

    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_a
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/m;->a()Landroidx/appcompat/view/menu/l;

    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public final c()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$d$a;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter$d;->a:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->d()Z

    .line 8
    const/4 v0, 0x1

    .line 9
    return v0
.end method

.method public final d()Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$d$a;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter$d;->a:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 5
    iget-object v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->x:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    .line 7
    if-eqz v1, :cond_a

    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_a
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->b()Z

    .line 14
    const/4 v0, 0x1

    .line 15
    return v0
.end method
