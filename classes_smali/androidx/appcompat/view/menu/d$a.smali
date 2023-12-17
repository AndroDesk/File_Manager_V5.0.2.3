.class public final Landroidx/appcompat/view/menu/d$a;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/d;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/d;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/d$a;->a:Landroidx/appcompat/view/menu/d;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/d$a;->a:Landroidx/appcompat/view/menu/d;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/d;->isShowing()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4f

    .line 9
    iget-object v0, p0, Landroidx/appcompat/view/menu/d$a;->a:Landroidx/appcompat/view/menu/d;

    .line 11
    iget-object v0, v0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_4f

    .line 19
    iget-object v0, p0, Landroidx/appcompat/view/menu/d$a;->a:Landroidx/appcompat/view/menu/d;

    .line 21
    iget-object v0, v0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroidx/appcompat/view/menu/d$d;

    .line 30
    iget-object v0, v0, Landroidx/appcompat/view/menu/d$d;->a:Landroidx/appcompat/widget/m0;

    .line 32
    iget-boolean v0, v0, Landroidx/appcompat/widget/k0;->A:Z

    .line 34
    if-nez v0, :cond_4f

    .line 36
    iget-object v0, p0, Landroidx/appcompat/view/menu/d$a;->a:Landroidx/appcompat/view/menu/d;

    .line 38
    iget-object v0, v0, Landroidx/appcompat/view/menu/d;->p:Landroid/view/View;

    .line 40
    if-eqz v0, :cond_4a

    .line 42
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_30

    .line 48
    goto :goto_4a

    .line 49
    :cond_30
    iget-object v0, p0, Landroidx/appcompat/view/menu/d$a;->a:Landroidx/appcompat/view/menu/d;

    .line 51
    iget-object v0, v0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object v0

    .line 57
    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_4f

    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Landroidx/appcompat/view/menu/d$d;

    .line 69
    iget-object v1, v1, Landroidx/appcompat/view/menu/d$d;->a:Landroidx/appcompat/widget/m0;

    .line 71
    invoke-virtual {v1}, Landroidx/appcompat/widget/k0;->show()V

    .line 74
    goto :goto_38

    .line 75
    :cond_4a
    :goto_4a
    iget-object v0, p0, Landroidx/appcompat/view/menu/d$a;->a:Landroidx/appcompat/view/menu/d;

    .line 77
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/d;->dismiss()V

    .line 80
    :cond_4f
    return-void
.end method
