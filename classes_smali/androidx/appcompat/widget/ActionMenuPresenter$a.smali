.class public final Landroidx/appcompat/widget/ActionMenuPresenter$a;
.super Landroidx/appcompat/view/menu/m;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic m:Landroidx/appcompat/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;Landroidx/appcompat/view/menu/s;Landroid/view/View;)V
    .registers 11

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter$a;->m:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 3
    sget v5, Lh/a;->actionOverflowMenuStyle:I

    .line 5
    const/4 v4, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p2

    .line 8
    move-object v2, p3

    .line 9
    move-object v3, p4

    .line 10
    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/m;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/h;Landroid/view/View;ZI)V

    .line 13
    invoke-virtual {p3}, Landroidx/appcompat/view/menu/s;->getItem()Landroid/view/MenuItem;

    .line 16
    move-result-object p2

    .line 17
    check-cast p2, Landroidx/appcompat/view/menu/j;

    .line 19
    iget p2, p2, Landroidx/appcompat/view/menu/j;->x:I

    .line 21
    const/16 p3, 0x20

    .line 23
    and-int/2addr p2, p3

    .line 24
    if-ne p2, p3, :cond_1b

    .line 26
    const/4 p2, 0x1

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    const/4 p2, 0x0

    .line 29
    :goto_1c
    if-nez p2, :cond_28

    .line 31
    iget-object p2, p1, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    .line 33
    if-nez p2, :cond_26

    .line 35
    iget-object p2, p1, Landroidx/appcompat/view/menu/b;->h:Landroidx/appcompat/view/menu/o;

    .line 37
    check-cast p2, Landroid/view/View;

    .line 39
    :cond_26
    iput-object p2, p0, Landroidx/appcompat/view/menu/m;->f:Landroid/view/View;

    .line 41
    :cond_28
    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuPresenter;->z:Landroidx/appcompat/widget/ActionMenuPresenter$f;

    .line 43
    iput-object p1, p0, Landroidx/appcompat/view/menu/m;->i:Landroidx/appcompat/view/menu/n$a;

    .line 45
    iget-object p2, p0, Landroidx/appcompat/view/menu/m;->j:Landroidx/appcompat/view/menu/l;

    .line 47
    if-eqz p2, :cond_33

    .line 49
    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/n;->setCallback(Landroidx/appcompat/view/menu/n$a;)V

    .line 52
    :cond_33
    return-void
.end method


# virtual methods
.method public final c()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$a;->m:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->w:Landroidx/appcompat/widget/ActionMenuPresenter$a;

    .line 6
    const/4 v1, 0x0

    .line 7
    iput v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->A:I

    .line 9
    invoke-super {p0}, Landroidx/appcompat/view/menu/m;->c()V

    .line 12
    return-void
.end method
