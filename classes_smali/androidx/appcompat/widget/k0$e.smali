.class public final Landroidx/appcompat/widget/k0$e;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/k0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/k0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/k0$e;->a:Landroidx/appcompat/widget/k0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .registers 5

    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4

    .line 1
    const/4 p1, 0x1

    .line 2
    if-ne p2, p1, :cond_2c

    .line 4
    iget-object p2, p0, Landroidx/appcompat/widget/k0$e;->a:Landroidx/appcompat/widget/k0;

    .line 6
    iget-object p2, p2, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 8
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    .line 11
    move-result p2

    .line 12
    const/4 v0, 0x2

    .line 13
    if-ne p2, v0, :cond_f

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 p1, 0x0

    .line 17
    :goto_10
    if-nez p1, :cond_2c

    .line 19
    iget-object p1, p0, Landroidx/appcompat/widget/k0$e;->a:Landroidx/appcompat/widget/k0;

    .line 21
    iget-object p1, p1, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 23
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_2c

    .line 29
    iget-object p1, p0, Landroidx/appcompat/widget/k0$e;->a:Landroidx/appcompat/widget/k0;

    .line 31
    iget-object p2, p1, Landroidx/appcompat/widget/k0;->x:Landroid/os/Handler;

    .line 33
    iget-object p1, p1, Landroidx/appcompat/widget/k0;->r:Landroidx/appcompat/widget/k0$g;

    .line 35
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 38
    iget-object p1, p0, Landroidx/appcompat/widget/k0$e;->a:Landroidx/appcompat/widget/k0;

    .line 40
    iget-object p1, p1, Landroidx/appcompat/widget/k0;->r:Landroidx/appcompat/widget/k0$g;

    .line 42
    invoke-virtual {p1}, Landroidx/appcompat/widget/k0$g;->run()V

    .line 45
    :cond_2c
    return-void
.end method
