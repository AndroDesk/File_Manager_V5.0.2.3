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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/r;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/view/menu/r$a;->a:Landroidx/appcompat/view/menu/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/r$a;->a:Landroidx/appcompat/view/menu/r;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/r;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroidx/appcompat/view/menu/r$a;->a:Landroidx/appcompat/view/menu/r;

    iget-object v1, v0, Landroidx/appcompat/view/menu/r;->i:Landroidx/appcompat/widget/m0;

    iget-boolean v1, v1, Landroidx/appcompat/widget/k0;->A:Z

    if-nez v1, :cond_28

    iget-object v0, v0, Landroidx/appcompat/view/menu/r;->n:Landroid/view/View;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_23

    :cond_1b
    iget-object v0, p0, Landroidx/appcompat/view/menu/r$a;->a:Landroidx/appcompat/view/menu/r;

    iget-object v0, v0, Landroidx/appcompat/view/menu/r;->i:Landroidx/appcompat/widget/m0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/k0;->show()V

    goto :goto_28

    :cond_23
    :goto_23
    iget-object v0, p0, Landroidx/appcompat/view/menu/r$a;->a:Landroidx/appcompat/view/menu/r;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/r;->dismiss()V

    :cond_28
    :goto_28
    return-void
.end method
