.class public Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;
.super Ljava/lang/Object;
.source "MenuDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;


# instance fields
.field private mDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field public mPresenter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

.field private mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 6
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 11
    :cond_a
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mPresenter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p2}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 19
    return-void
.end method

.method public onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .registers 4

    .line 1
    if-nez p2, :cond_6

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 5
    if-ne p1, v0, :cond_9

    .line 7
    :cond_6
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->dismiss()V

    .line 10
    :cond_9
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    .line 12
    if-eqz v0, :cond_10

    .line 14
    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    .line 17
    :cond_10
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mPresenter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    .line 9
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
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
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mDialog:Lmiuix/appcompat/app/AlertDialog;

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
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mDialog:Lmiuix/appcompat/app/AlertDialog;

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
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 85
    invoke-virtual {p2, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->closeInternal(Z)V

    .line 88
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 91
    return v1

    .line 92
    :cond_5b
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 94
    const/4 v0, 0x0

    .line 95
    invoke-virtual {p1, p2, p3, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    .line 98
    move-result p1

    .line 99
    return p1
.end method

.method public onOpenSubMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-interface {v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_c

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    :goto_d
    return p1
.end method

.method public setPresenterCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    .line 3
    return-void
.end method

.method public show(Landroid/os/IBinder;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 3
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 12
    new-instance v2, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    .line 14
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v3

    .line 18
    sget v4, Lmiuix/appcompat/R$layout;->miuix_appcompat_list_menu_item_layout:I

    .line 20
    invoke-direct {v2, v3, v4}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;-><init>(Landroid/content/Context;I)V

    .line 23
    iput-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mPresenter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    .line 25
    invoke-virtual {v2, p0}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->setCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V

    .line 28
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 30
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mPresenter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    .line 32
    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    .line 35
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mPresenter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    .line 37
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 44
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getHeaderView()Landroid/view/View;

    .line 47
    move-result-object v2

    .line 48
    if-eqz v2, :cond_35

    .line 50
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 53
    goto :goto_44

    .line 54
    :cond_35
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getHeaderIcon()Landroid/graphics/drawable/Drawable;

    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 69
    :goto_44
    const/high16 v0, 0x1040000

    .line 71
    const/4 v2, 0x0

    .line 72
    invoke-virtual {v1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 75
    invoke-virtual {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 78
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 81
    move-result-object v0

    .line 82
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 84
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 87
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 89
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 96
    move-result-object v0

    .line 97
    const/16 v1, 0x3eb

    .line 99
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 101
    if-eqz p1, :cond_68

    .line 103
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 105
    :cond_68
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 107
    const/high16 v1, 0x20000

    .line 109
    or-int/2addr p1, v1

    .line 110
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 112
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 114
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 117
    return-void
.end method
