.class public final Landroidx/appcompat/widget/ActionMenuPresenter$e;
.super Landroidx/appcompat/view/menu/m;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic m:Landroidx/appcompat/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;Landroidx/appcompat/view/menu/h;Landroidx/appcompat/widget/ActionMenuPresenter$d;)V
    .registers 11

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter$e;->m:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 3
    sget v5, Lh/a;->actionOverflowMenuStyle:I

    .line 5
    const/4 v4, 0x1

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
    const p2, 0x800005

    .line 16
    iput p2, p0, Landroidx/appcompat/view/menu/m;->g:I

    .line 18
    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuPresenter;->z:Landroidx/appcompat/widget/ActionMenuPresenter$f;

    .line 20
    iput-object p1, p0, Landroidx/appcompat/view/menu/m;->i:Landroidx/appcompat/view/menu/n$a;

    .line 22
    iget-object p2, p0, Landroidx/appcompat/view/menu/m;->j:Landroidx/appcompat/view/menu/l;

    .line 24
    if-eqz p2, :cond_1c

    .line 26
    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/n;->setCallback(Landroidx/appcompat/view/menu/n$a;)V

    .line 29
    :cond_1c
    return-void
.end method


# virtual methods
.method public final c()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$e;->m:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/view/menu/b;->c:Landroidx/appcompat/view/menu/h;

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->close()V

    .line 10
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$e;->m:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 12
    const/4 v1, 0x0

    .line 13
    iput-object v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->v:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    .line 15
    invoke-super {p0}, Landroidx/appcompat/view/menu/m;->c()V

    .line 18
    return-void
.end method
