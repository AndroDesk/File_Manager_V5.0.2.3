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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl$c;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c$a;->l:Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    invoke-direct {p0}, La/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd()V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c$a;->l:Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c$a;->l:Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->A:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_32

    :cond_17
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_32

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c$a;->l:Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lm0/g0$h;->c(Landroid/view/View;)V

    :cond_32
    :goto_32
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c$a;->l:Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->h()V

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c$a;->l:Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->C:Lm0/o0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lm0/o0;->d(Lm0/p0;)V

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c$a;->l:Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iput-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->C:Lm0/o0;

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->F:Landroid/view/ViewGroup;

    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lm0/g0$h;->c(Landroid/view/View;)V

    return-void
.end method
