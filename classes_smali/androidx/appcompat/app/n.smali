.class public final Landroidx/appcompat/app/n;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/n;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/n;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 3
    iget-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->A:Landroid/widget/PopupWindow;

    .line 5
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 7
    const/16 v2, 0x37

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 13
    iget-object v0, p0, Landroidx/appcompat/app/n;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 15
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->C:Lm0/o0;

    .line 17
    if-eqz v0, :cond_15

    .line 19
    invoke-virtual {v0}, Lm0/o0;->b()V

    .line 22
    :cond_15
    iget-object v0, p0, Landroidx/appcompat/app/n;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 24
    iget-boolean v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Z

    .line 26
    if-eqz v1, :cond_29

    .line 28
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->F:Landroid/view/ViewGroup;

    .line 30
    if-eqz v0, :cond_29

    .line 32
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 34
    invoke-static {v0}, Lm0/g0$g;->c(Landroid/view/View;)Z

    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_29

    .line 40
    const/4 v0, 0x1

    .line 41
    goto :goto_2a

    .line 42
    :cond_29
    move v0, v3

    .line 43
    :goto_2a
    const/high16 v1, 0x3f800000  # 1.0f

    .line 45
    if-eqz v0, :cond_50

    .line 47
    iget-object v0, p0, Landroidx/appcompat/app/n;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 49
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 55
    iget-object v0, p0, Landroidx/appcompat/app/n;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 57
    iget-object v2, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 59
    invoke-static {v2}, Lm0/g0;->a(Landroid/view/View;)Lm0/o0;

    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2, v1}, Lm0/o0;->a(F)V

    .line 66
    iput-object v2, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->C:Lm0/o0;

    .line 68
    iget-object v0, p0, Landroidx/appcompat/app/n;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 70
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->C:Lm0/o0;

    .line 72
    new-instance v1, Landroidx/appcompat/app/n$a;

    .line 74
    invoke-direct {v1, p0}, Landroidx/appcompat/app/n$a;-><init>(Landroidx/appcompat/app/n;)V

    .line 77
    invoke-virtual {v0, v1}, Lm0/o0;->d(Lm0/p0;)V

    .line 80
    goto :goto_5e

    .line 81
    :cond_50
    iget-object v0, p0, Landroidx/appcompat/app/n;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 83
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 88
    iget-object v0, p0, Landroidx/appcompat/app/n;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 90
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 92
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 95
    :goto_5e
    return-void
.end method
