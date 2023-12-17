.class public final Landroidx/appcompat/widget/AppCompatSpinner$g$b;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/AppCompatSpinner$g;->show(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/AppCompatSpinner$g;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner$g;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$g$b;->a:Landroidx/appcompat/widget/AppCompatSpinner$g;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$g$b;->a:Landroidx/appcompat/widget/AppCompatSpinner$g;

    .line 3
    iget-object v1, v0, Landroidx/appcompat/widget/AppCompatSpinner$g;->I:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 10
    invoke-static {v1}, Lm0/g0$g;->b(Landroid/view/View;)Z

    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_19

    .line 16
    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatSpinner$g;->G:Landroid/graphics/Rect;

    .line 18
    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_19

    .line 24
    const/4 v0, 0x1

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 v0, 0x0

    .line 27
    :goto_1a
    if-nez v0, :cond_22

    .line 29
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$g$b;->a:Landroidx/appcompat/widget/AppCompatSpinner$g;

    .line 31
    invoke-virtual {v0}, Landroidx/appcompat/widget/k0;->dismiss()V

    .line 34
    goto :goto_2c

    .line 35
    :cond_22
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$g$b;->a:Landroidx/appcompat/widget/AppCompatSpinner$g;

    .line 37
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner$g;->f()V

    .line 40
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$g$b;->a:Landroidx/appcompat/widget/AppCompatSpinner$g;

    .line 42
    invoke-virtual {v0}, Landroidx/appcompat/widget/k0;->show()V

    .line 45
    :goto_2c
    return-void
.end method
