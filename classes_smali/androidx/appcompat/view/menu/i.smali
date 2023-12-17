.class public final Landroidx/appcompat/view/menu/i;
.super Ljava/lang/Object;
.source "MenuDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroidx/appcompat/view/menu/n$a;


# instance fields
.field public a:Landroidx/appcompat/view/menu/h;

.field public b:Landroidx/appcompat/app/f;

.field public c:Landroidx/appcompat/view/menu/f;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/h;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/h;

    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/h;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 1
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/h;

    .line 3
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->c:Landroidx/appcompat/view/menu/f;

    .line 5
    iget-object v1, v0, Landroidx/appcompat/view/menu/f;->g:Landroidx/appcompat/view/menu/f$a;

    .line 7
    if-nez v1, :cond_f

    .line 9
    new-instance v1, Landroidx/appcompat/view/menu/f$a;

    .line 11
    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/f$a;-><init>(Landroidx/appcompat/view/menu/f;)V

    .line 14
    iput-object v1, v0, Landroidx/appcompat/view/menu/f;->g:Landroidx/appcompat/view/menu/f$a;

    .line 16
    :cond_f
    iget-object v0, v0, Landroidx/appcompat/view/menu/f;->g:Landroidx/appcompat/view/menu/f$a;

    .line 18
    invoke-virtual {v0, p2}, Landroidx/appcompat/view/menu/f$a;->c(I)Landroidx/appcompat/view/menu/j;

    .line 21
    move-result-object p2

    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/view/menu/h;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 26
    return-void
.end method

.method public final onCloseMenu(Landroidx/appcompat/view/menu/h;Z)V
    .registers 3

    .line 1
    if-nez p2, :cond_6

    .line 3
    iget-object p2, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/h;

    .line 5
    if-ne p1, p2, :cond_d

    .line 7
    :cond_6
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->b:Landroidx/appcompat/app/f;

    .line 9
    if-eqz p1, :cond_d

    .line 11
    invoke-virtual {p1}, Landroidx/appcompat/app/q;->dismiss()V

    .line 14
    :cond_d
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    .line 1
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->c:Landroidx/appcompat/view/menu/f;

    .line 3
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/h;

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/menu/f;->onCloseMenu(Landroidx/appcompat/view/menu/h;Z)V

    .line 9
    return-void
.end method

.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 1
    const/16 v0, 0x52

    .line 3
    if-eq p2, v0, :cond_7

    .line 5
    const/4 v0, 0x4

    .line 6
    if-ne p2, v0, :cond_5b

    .line 8
    :cond_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-nez v0, :cond_2c

    .line 15
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2c

    .line 21
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->b:Landroidx/appcompat/app/f;

    .line 23
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_5b

    .line 29
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_5b

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_5b

    .line 41
    invoke-virtual {p1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 44
    return v1

    .line 45
    :cond_2c
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 48
    move-result v0

    .line 49
    if-ne v0, v1, :cond_5b

    .line 51
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_5b

    .line 57
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->b:Landroidx/appcompat/app/f;

    .line 59
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_5b

    .line 65
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_5b

    .line 71
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_5b

    .line 77
    invoke-virtual {v0, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_5b

    .line 83
    iget-object p2, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/h;

    .line 85
    invoke-virtual {p2, v1}, Landroidx/appcompat/view/menu/h;->close(Z)V

    .line 88
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 91
    return v1

    .line 92
    :cond_5b
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/h;

    .line 94
    const/4 v0, 0x0

    .line 95
    invoke-virtual {p1, p2, p3, v0}, Landroidx/appcompat/view/menu/h;->performShortcut(ILandroid/view/KeyEvent;I)Z

    .line 98
    move-result p1

    .line 99
    return p1
.end method
