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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Lm/e$a;)V
    .registers 3

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->a:Lm/a$a;

    return-void
.end method


# virtual methods
.method public final a(Lm/a;)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->a:Lm/a$a;

    invoke-interface {v0, p1}, Lm/a$a;->a(Lm/a;)V

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->A:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_18

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->B:Landroidx/appcompat/app/n;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_18
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_3f

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->C:Lm0/o0;

    if-eqz p1, :cond_25

    invoke-virtual {p1}, Lm0/o0;->b()V

    :cond_25
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Lm0/g0;->a(Landroid/view/View;)Lm0/o0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lm0/o0;->a(F)V

    iput-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->C:Lm0/o0;

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->C:Lm0/o0;

    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl$c$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$c$a;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl$c;)V

    invoke-virtual {p1, v0}, Lm0/o0;->d(Lm0/p0;)V

    :cond_3f
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Landroidx/appcompat/app/i;

    if-eqz v0, :cond_4a

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->y:Lm/a;

    invoke-interface {v0, p1}, Landroidx/appcompat/app/i;->onSupportActionModeFinished(Lm/a;)V

    :cond_4a
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->y:Lm/a;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->F:Landroid/view/ViewGroup;

    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lm0/g0$h;->c(Landroid/view/View;)V

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->V()V

    return-void
.end method

.method public final b(Lm/a;Landroidx/appcompat/view/menu/h;)Z
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->a:Lm/a$a;

    invoke-interface {v0, p1, p2}, Lm/a$a;->b(Lm/a;Landroidx/appcompat/view/menu/h;)Z

    move-result p1

    return p1
.end method

.method public final c(Lm/a;Landroid/view/MenuItem;)Z
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->a:Lm/a$a;

    invoke-interface {v0, p1, p2}, Lm/a$a;->c(Lm/a;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final d(Lm/a;Landroidx/appcompat/view/menu/h;)Z
    .registers 5

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->F:Landroid/view/ViewGroup;

    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lm0/g0$h;->c(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->a:Lm/a$a;

    invoke-interface {v0, p1, p2}, Lm/a$a;->d(Lm/a;Landroidx/appcompat/view/menu/h;)Z

    move-result p1

    return p1
.end method
