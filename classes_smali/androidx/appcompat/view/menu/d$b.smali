.class public final Landroidx/appcompat/view/menu/d$b;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


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
    iput-object p1, p0, Landroidx/appcompat/view/menu/d$b;->a:Landroidx/appcompat/view/menu/d;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/d$b;->a:Landroidx/appcompat/view/menu/d;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/view/menu/d;->A:Landroid/view/ViewTreeObserver;

    .line 5
    if-eqz v0, :cond_1d

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_14

    .line 13
    iget-object v0, p0, Landroidx/appcompat/view/menu/d$b;->a:Landroidx/appcompat/view/menu/d;

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 18
    move-result-object v1

    .line 19
    iput-object v1, v0, Landroidx/appcompat/view/menu/d;->A:Landroid/view/ViewTreeObserver;

    .line 21
    :cond_14
    iget-object v0, p0, Landroidx/appcompat/view/menu/d$b;->a:Landroidx/appcompat/view/menu/d;

    .line 23
    iget-object v1, v0, Landroidx/appcompat/view/menu/d;->A:Landroid/view/ViewTreeObserver;

    .line 25
    iget-object v0, v0, Landroidx/appcompat/view/menu/d;->j:Landroidx/appcompat/view/menu/d$a;

    .line 27
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 30
    :cond_1d
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 33
    return-void
.end method
