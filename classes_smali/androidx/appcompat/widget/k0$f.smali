.class public final Landroidx/appcompat/widget/k0$f;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/k0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/k0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/k0$f;->a:Landroidx/appcompat/widget/k0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 8
    move-result v0

    .line 9
    float-to-int v0, v0

    .line 10
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 13
    move-result p2

    .line 14
    float-to-int p2, p2

    .line 15
    if-nez p1, :cond_40

    .line 17
    iget-object v1, p0, Landroidx/appcompat/widget/k0$f;->a:Landroidx/appcompat/widget/k0;

    .line 19
    iget-object v1, v1, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 21
    if-eqz v1, :cond_40

    .line 23
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_40

    .line 29
    if-ltz v0, :cond_40

    .line 31
    iget-object v1, p0, Landroidx/appcompat/widget/k0$f;->a:Landroidx/appcompat/widget/k0;

    .line 33
    iget-object v1, v1, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 35
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getWidth()I

    .line 38
    move-result v1

    .line 39
    if-ge v0, v1, :cond_40

    .line 41
    if-ltz p2, :cond_40

    .line 43
    iget-object v0, p0, Landroidx/appcompat/widget/k0$f;->a:Landroidx/appcompat/widget/k0;

    .line 45
    iget-object v0, v0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 47
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    .line 50
    move-result v0

    .line 51
    if-ge p2, v0, :cond_40

    .line 53
    iget-object p1, p0, Landroidx/appcompat/widget/k0$f;->a:Landroidx/appcompat/widget/k0;

    .line 55
    iget-object p2, p1, Landroidx/appcompat/widget/k0;->x:Landroid/os/Handler;

    .line 57
    iget-object p1, p1, Landroidx/appcompat/widget/k0;->r:Landroidx/appcompat/widget/k0$g;

    .line 59
    const-wide/16 v0, 0xfa

    .line 61
    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 64
    goto :goto_4c

    .line 65
    :cond_40
    const/4 p2, 0x1

    .line 66
    if-ne p1, p2, :cond_4c

    .line 68
    iget-object p1, p0, Landroidx/appcompat/widget/k0$f;->a:Landroidx/appcompat/widget/k0;

    .line 70
    iget-object p2, p1, Landroidx/appcompat/widget/k0;->x:Landroid/os/Handler;

    .line 72
    iget-object p1, p1, Landroidx/appcompat/widget/k0;->r:Landroidx/appcompat/widget/k0$g;

    .line 74
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 77
    :cond_4c
    :goto_4c
    const/4 p1, 0x0

    .line 78
    return p1
.end method
