.class public final Landroidx/appcompat/app/o;
.super La/b;
.source "AppCompatDelegateImpl.java"


# instance fields
.field public final synthetic l:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/o;->l:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 3
    invoke-direct {p0}, La/b;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final b()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/o;->l:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Landroidx/appcompat/app/o;->l:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 11
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    move-result-object v0

    .line 17
    instance-of v0, v0, Landroid/view/View;

    .line 19
    if-eqz v0, :cond_23

    .line 21
    iget-object v0, p0, Landroidx/appcompat/app/o;->l:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 23
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/view/View;

    .line 31
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 33
    invoke-static {v0}, Lm0/g0$h;->c(Landroid/view/View;)V

    .line 36
    :cond_23
    return-void
.end method

.method public final onAnimationEnd()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/o;->l:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 5
    const/high16 v1, 0x3f800000  # 1.0f

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 10
    iget-object v0, p0, Landroidx/appcompat/app/o;->l:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 12
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->C:Lm0/o0;

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lm0/o0;->d(Lm0/p0;)V

    .line 18
    iget-object v0, p0, Landroidx/appcompat/app/o;->l:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 20
    iput-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->C:Lm0/o0;

    .line 22
    return-void
.end method
