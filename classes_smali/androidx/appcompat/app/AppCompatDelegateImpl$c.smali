.class public final Landroidx/appcompat/app/AppCompatDelegateImpl$c;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Lm/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Lm/a$a;

.field public final synthetic b:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Lm/e$a;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->a:Lm/a$a;

    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lm/a;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->a:Lm/a$a;

    .line 3
    invoke-interface {v0, p1}, Lm/a$a;->a(Lm/a;)V

    .line 6
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 8
    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->A:Landroid/widget/PopupWindow;

    .line 10
    if-eqz v0, :cond_18

    .line 12
    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroid/view/Window;

    .line 14
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 17
    move-result-object p1

    .line 18
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 20
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->B:Landroidx/appcompat/app/n;

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 25
    :cond_18
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 27
    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 29
    if-eqz v0, :cond_3f

    .line 31
    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->C:Lm0/o0;

    .line 33
    if-eqz p1, :cond_25

    .line 35
    invoke-virtual {p1}, Lm0/o0;->b()V

    .line 38
    :cond_25
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 40
    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 42
    invoke-static {v0}, Lm0/g0;->a(Landroid/view/View;)Lm0/o0;

    .line 45
    move-result-object v0

    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-virtual {v0, v1}, Lm0/o0;->a(F)V

    .line 50
    iput-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->C:Lm0/o0;

    .line 52
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 54
    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->C:Lm0/o0;

    .line 56
    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl$c$a;

    .line 58
    invoke-direct {v0, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$c$a;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl$c;)V

    .line 61
    invoke-virtual {p1, v0}, Lm0/o0;->d(Lm0/p0;)V

    .line 64
    :cond_3f
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 66
    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Landroidx/appcompat/app/i;

    .line 68
    if-eqz v0, :cond_4a

    .line 70
    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->y:Lm/a;

    .line 72
    invoke-interface {v0, p1}, Landroidx/appcompat/app/i;->onSupportActionModeFinished(Lm/a;)V

    .line 75
    :cond_4a
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 77
    const/4 v0, 0x0

    .line 78
    iput-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->y:Lm/a;

    .line 80
    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->F:Landroid/view/ViewGroup;

    .line 82
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 84
    invoke-static {p1}, Lm0/g0$h;->c(Landroid/view/View;)V

    .line 87
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 89
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->V()V

    .line 92
    return-void
.end method

.method public final b(Lm/a;Landroidx/appcompat/view/menu/h;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->a:Lm/a$a;

    .line 3
    invoke-interface {v0, p1, p2}, Lm/a$a;->b(Lm/a;Landroidx/appcompat/view/menu/h;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final c(Lm/a;Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->a:Lm/a$a;

    .line 3
    invoke-interface {v0, p1, p2}, Lm/a$a;->c(Lm/a;Landroid/view/MenuItem;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final d(Lm/a;Landroidx/appcompat/view/menu/h;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->F:Landroid/view/ViewGroup;

    .line 5
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 7
    invoke-static {v0}, Lm0/g0$h;->c(Landroid/view/View;)V

    .line 10
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->a:Lm/a$a;

    .line 12
    invoke-interface {v0, p1, p2}, Lm/a$a;->d(Lm/a;Landroidx/appcompat/view/menu/h;)Z

    .line 15
    move-result p1

    .line 16
    return p1
.end method
