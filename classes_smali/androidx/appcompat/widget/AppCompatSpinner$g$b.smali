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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner$g;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$g$b;->a:Landroidx/appcompat/widget/AppCompatSpinner$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$g$b;->a:Landroidx/appcompat/widget/AppCompatSpinner$g;

    iget-object v1, v0, Landroidx/appcompat/widget/AppCompatSpinner$g;->I:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v1}, Lm0/g0$g;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatSpinner$g;->G:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    if-nez v0, :cond_22

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$g$b;->a:Landroidx/appcompat/widget/AppCompatSpinner$g;

    invoke-virtual {v0}, Landroidx/appcompat/widget/k0;->dismiss()V

    goto :goto_2c

    :cond_22
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$g$b;->a:Landroidx/appcompat/widget/AppCompatSpinner$g;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner$g;->f()V

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$g$b;->a:Landroidx/appcompat/widget/AppCompatSpinner$g;

    invoke-virtual {v0}, Landroidx/appcompat/widget/k0;->show()V

    :goto_2c
    return-void
.end method
