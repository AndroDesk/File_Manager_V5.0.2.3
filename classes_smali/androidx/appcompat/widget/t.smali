.class public final Landroidx/appcompat/widget/t;
.super Landroidx/appcompat/widget/h0;
.source "AppCompatSpinner.java"


# instance fields
.field public final synthetic j:Landroidx/appcompat/widget/AppCompatSpinner$g;

.field public final synthetic k:Landroidx/appcompat/widget/AppCompatSpinner;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner;Landroid/view/View;Landroidx/appcompat/widget/AppCompatSpinner$g;)V
    .registers 4

    iput-object p1, p0, Landroidx/appcompat/widget/t;->k:Landroidx/appcompat/widget/AppCompatSpinner;

    iput-object p3, p0, Landroidx/appcompat/widget/t;->j:Landroidx/appcompat/widget/AppCompatSpinner$g;

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/h0;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final b()Landroidx/appcompat/view/menu/q;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/t;->j:Landroidx/appcompat/widget/AppCompatSpinner$g;

    return-object v0
.end method

.method public final c()Z
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    iget-object v0, p0, Landroidx/appcompat/widget/t;->k:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner;->getInternalPopup()Landroidx/appcompat/widget/AppCompatSpinner$h;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatSpinner$h;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Landroidx/appcompat/widget/t;->k:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v1, v0, Landroidx/appcompat/widget/AppCompatSpinner;->f:Landroidx/appcompat/widget/AppCompatSpinner$h;

    invoke-static {v0}, Landroidx/appcompat/widget/AppCompatSpinner$c;->b(Landroid/view/View;)I

    move-result v2

    invoke-static {v0}, Landroidx/appcompat/widget/AppCompatSpinner$c;->a(Landroid/view/View;)I

    move-result v0

    invoke-interface {v1, v2, v0}, Landroidx/appcompat/widget/AppCompatSpinner$h;->show(II)V

    :cond_1b
    const/4 v0, 0x1

    return v0
.end method
