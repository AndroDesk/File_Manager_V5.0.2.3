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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/k0;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/k0$e;->a:Landroidx/appcompat/widget/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .registers 5

    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4

    const/4 p1, 0x1

    if-ne p2, p1, :cond_2c

    iget-object p2, p0, Landroidx/appcompat/widget/k0$e;->a:Landroidx/appcompat/widget/k0;

    iget-object p2, p2, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_f

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    if-nez p1, :cond_2c

    iget-object p1, p0, Landroidx/appcompat/widget/k0$e;->a:Landroidx/appcompat/widget/k0;

    iget-object p1, p1, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2c

    iget-object p1, p0, Landroidx/appcompat/widget/k0$e;->a:Landroidx/appcompat/widget/k0;

    iget-object p2, p1, Landroidx/appcompat/widget/k0;->x:Landroid/os/Handler;

    iget-object p1, p1, Landroidx/appcompat/widget/k0;->r:Landroidx/appcompat/widget/k0$g;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Landroidx/appcompat/widget/k0$e;->a:Landroidx/appcompat/widget/k0;

    iget-object p1, p1, Landroidx/appcompat/widget/k0;->r:Landroidx/appcompat/widget/k0$g;

    invoke-virtual {p1}, Landroidx/appcompat/widget/k0$g;->run()V

    :cond_2c
    return-void
.end method
