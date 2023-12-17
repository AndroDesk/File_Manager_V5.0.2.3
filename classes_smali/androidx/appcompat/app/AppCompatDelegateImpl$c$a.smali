.class public final Landroidx/appcompat/app/AppCompatDelegateImpl$c$a;
.super La/b;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl$c;->a(Lm/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic l:Landroidx/appcompat/app/AppCompatDelegateImpl$c;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl$c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c$a;->l:Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    .line 3
    invoke-direct {p0}, La/b;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationEnd()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c$a;->l:Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 5
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 7
    const/16 v1, 0x8

    .line 9
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c$a;->l:Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    .line 14
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 16
    iget-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->A:Landroid/widget/PopupWindow;

    .line 18
    if-eqz v1, :cond_17

    .line 20
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 23
    goto :goto_32

    .line 24
    :cond_17
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 29
    move-result-object v0

    .line 30
    instance-of v0, v0, Landroid/view/View;

    .line 32
    if-eqz v0, :cond_32

    .line 34
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c$a;->l:Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    .line 36
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 38
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroid/view/View;

    .line 46
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 48
    invoke-static {v0}, Lm0/g0$h;->c(Landroid/view/View;)V

    .line 51
    :cond_32
    :goto_32
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c$a;->l:Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    .line 53
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 55
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 57
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->h()V

    .line 60
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c$a;->l:Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    .line 62
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 64
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->C:Lm0/o0;

    .line 66
    const/4 v1, 0x0

    .line 67
    invoke-virtual {v0, v1}, Lm0/o0;->d(Lm0/p0;)V

    .line 70
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c$a;->l:Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    .line 72
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 74
    iput-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->C:Lm0/o0;

    .line 76
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->F:Landroid/view/ViewGroup;

    .line 78
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 80
    invoke-static {v0}, Lm0/g0$h;->c(Landroid/view/View;)V

    .line 83
    return-void
.end method
