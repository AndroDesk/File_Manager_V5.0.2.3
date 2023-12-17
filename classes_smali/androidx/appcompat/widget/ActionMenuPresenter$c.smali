.class public final Landroidx/appcompat/widget/ActionMenuPresenter$c;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Landroidx/appcompat/widget/ActionMenuPresenter$e;

.field public final synthetic b:Landroidx/appcompat/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroidx/appcompat/widget/ActionMenuPresenter$e;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter$c;->b:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Landroidx/appcompat/widget/ActionMenuPresenter$c;->a:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$c;->b:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/view/menu/b;->c:Landroidx/appcompat/view/menu/h;

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->changeMenuMode()V

    .line 10
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$c;->b:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 12
    iget-object v0, v0, Landroidx/appcompat/view/menu/b;->h:Landroidx/appcompat/view/menu/o;

    .line 14
    check-cast v0, Landroid/view/View;

    .line 16
    if-eqz v0, :cond_33

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_33

    .line 24
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$c;->a:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    .line 26
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/m;->b()Z

    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x1

    .line 31
    if-eqz v1, :cond_21

    .line 33
    goto :goto_2b

    .line 34
    :cond_21
    iget-object v1, v0, Landroidx/appcompat/view/menu/m;->f:Landroid/view/View;

    .line 36
    const/4 v3, 0x0

    .line 37
    if-nez v1, :cond_28

    .line 39
    move v2, v3

    .line 40
    goto :goto_2b

    .line 41
    :cond_28
    invoke-virtual {v0, v3, v3, v3, v3}, Landroidx/appcompat/view/menu/m;->d(IIZZ)V

    .line 44
    :goto_2b
    if-eqz v2, :cond_33

    .line 46
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$c;->b:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 48
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter$c;->a:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    .line 50
    iput-object v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->v:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    .line 52
    :cond_33
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$c;->b:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 54
    const/4 v1, 0x0

    .line 55
    iput-object v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->x:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    .line 57
    return-void
.end method
