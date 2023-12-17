.class public final Landroidx/appcompat/widget/t;
.super Landroidx/appcompat/widget/h0;
.source "AppCompatSpinner.java"


# instance fields
.field public final synthetic j:Landroidx/appcompat/widget/AppCompatSpinner$g;

.field public final synthetic k:Landroidx/appcompat/widget/AppCompatSpinner;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner;Landroid/view/View;Landroidx/appcompat/widget/AppCompatSpinner$g;)V
    .registers 4

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/t;->k:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 3
    iput-object p3, p0, Landroidx/appcompat/widget/t;->j:Landroidx/appcompat/widget/AppCompatSpinner$g;

    .line 5
    invoke-direct {p0, p2}, Landroidx/appcompat/widget/h0;-><init>(Landroid/view/View;)V

    .line 8
    return-void
.end method


# virtual methods
.method public final b()Landroidx/appcompat/view/menu/q;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/t;->j:Landroidx/appcompat/widget/AppCompatSpinner$g;

    .line 3
    return-object v0
.end method

.method public final c()Z
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/t;->k:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner;->getInternalPopup()Landroidx/appcompat/widget/AppCompatSpinner$h;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatSpinner$h;->isShowing()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1b

    .line 13
    iget-object v0, p0, Landroidx/appcompat/widget/t;->k:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 15
    iget-object v1, v0, Landroidx/appcompat/widget/AppCompatSpinner;->f:Landroidx/appcompat/widget/AppCompatSpinner$h;

    .line 17
    invoke-static {v0}, Landroidx/appcompat/widget/AppCompatSpinner$c;->b(Landroid/view/View;)I

    .line 20
    move-result v2

    .line 21
    invoke-static {v0}, Landroidx/appcompat/widget/AppCompatSpinner$c;->a(Landroid/view/View;)I

    .line 24
    move-result v0

    .line 25
    invoke-interface {v1, v2, v0}, Landroidx/appcompat/widget/AppCompatSpinner$h;->show(II)V

    .line 28
    :cond_1b
    const/4 v0, 0x1

    .line 29
    return v0
.end method
