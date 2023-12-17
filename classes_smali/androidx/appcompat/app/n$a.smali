.class public final Landroidx/appcompat/app/n$a;
.super La/b;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/n;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic l:Landroidx/appcompat/app/n;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/n;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/n$a;->l:Landroidx/appcompat/app/n;

    .line 3
    invoke-direct {p0}, La/b;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final b()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/n$a;->l:Landroidx/appcompat/app/n;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/n;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 5
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 11
    return-void
.end method

.method public final onAnimationEnd()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/n$a;->l:Landroidx/appcompat/app/n;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/n;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 5
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 7
    const/high16 v1, 0x3f800000  # 1.0f

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 12
    iget-object v0, p0, Landroidx/appcompat/app/n$a;->l:Landroidx/appcompat/app/n;

    .line 14
    iget-object v0, v0, Landroidx/appcompat/app/n;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 16
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->C:Lm0/o0;

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Lm0/o0;->d(Lm0/p0;)V

    .line 22
    iget-object v0, p0, Landroidx/appcompat/app/n$a;->l:Landroidx/appcompat/app/n;

    .line 24
    iget-object v0, v0, Landroidx/appcompat/app/n;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 26
    iput-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->C:Lm0/o0;

    .line 28
    return-void
.end method
