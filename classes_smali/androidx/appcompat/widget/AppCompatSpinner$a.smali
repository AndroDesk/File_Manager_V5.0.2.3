.class public final Landroidx/appcompat/widget/AppCompatSpinner$a;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/AppCompatSpinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/AppCompatSpinner;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$a;->a:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$a;->a:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner;->getInternalPopup()Landroidx/appcompat/widget/AppCompatSpinner$h;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatSpinner$h;->isShowing()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1b

    .line 13
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$a;->a:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 15
    iget-object v1, v0, Landroidx/appcompat/widget/AppCompatSpinner;->f:Landroidx/appcompat/widget/AppCompatSpinner$h;

    .line 17
    invoke-static {v0}, Landroidx/appcompat/widget/AppCompatSpinner$c;->b(Landroid/view/View;)I

    .line 20
    move-result v2

    .line 21
    invoke-static {v0}, Landroidx/appcompat/widget/AppCompatSpinner$c;->a(Landroid/view/View;)I

    .line 24
    move-result v0

    .line 25
    invoke-interface {v1, v2, v0}, Landroidx/appcompat/widget/AppCompatSpinner$h;->show(II)V

    .line 28
    :cond_1b
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$a;->a:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_26

    .line 36
    invoke-static {v0, p0}, Landroidx/appcompat/widget/AppCompatSpinner$b;->a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 39
    :cond_26
    return-void
.end method
