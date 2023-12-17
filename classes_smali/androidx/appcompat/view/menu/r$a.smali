.class public final Landroidx/appcompat/view/menu/r$a;
.super Ljava/lang/Object;
.source "StandardMenuPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/r;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/r;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/r$a;->a:Landroidx/appcompat/view/menu/r;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/r$a;->a:Landroidx/appcompat/view/menu/r;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/r;->isShowing()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_28

    .line 9
    iget-object v0, p0, Landroidx/appcompat/view/menu/r$a;->a:Landroidx/appcompat/view/menu/r;

    .line 11
    iget-object v1, v0, Landroidx/appcompat/view/menu/r;->i:Landroidx/appcompat/widget/m0;

    .line 13
    iget-boolean v1, v1, Landroidx/appcompat/widget/k0;->A:Z

    .line 15
    if-nez v1, :cond_28

    .line 17
    iget-object v0, v0, Landroidx/appcompat/view/menu/r;->n:Landroid/view/View;

    .line 19
    if-eqz v0, :cond_23

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1b

    .line 27
    goto :goto_23

    .line 28
    :cond_1b
    iget-object v0, p0, Landroidx/appcompat/view/menu/r$a;->a:Landroidx/appcompat/view/menu/r;

    .line 30
    iget-object v0, v0, Landroidx/appcompat/view/menu/r;->i:Landroidx/appcompat/widget/m0;

    .line 32
    invoke-virtual {v0}, Landroidx/appcompat/widget/k0;->show()V

    .line 35
    goto :goto_28

    .line 36
    :cond_23
    :goto_23
    iget-object v0, p0, Landroidx/appcompat/view/menu/r$a;->a:Landroidx/appcompat/view/menu/r;

    .line 38
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/r;->dismiss()V

    .line 41
    :cond_28
    :goto_28
    return-void
.end method
