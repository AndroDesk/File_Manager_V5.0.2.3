.class Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;
.super Ljava/lang/Object;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;
.implements Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContextMenuCallback"
.end annotation


# instance fields
.field private mSubMenuHelper:Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

.field public final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;


# direct methods
.method private constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getRootMenu()Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 4
    move-result-object v0

    .line 5
    if-eq v0, p1, :cond_9

    .line 7
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;->onCloseSubMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 10
    :cond_9
    if-eqz p2, :cond_2c

    .line 12
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 14
    invoke-static {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Landroid/view/Window$Callback;

    .line 17
    move-result-object p2

    .line 18
    if-eqz p2, :cond_1d

    .line 20
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 22
    invoke-static {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Landroid/view/Window$Callback;

    .line 25
    move-result-object p2

    .line 26
    const/4 v0, 0x6

    .line 27
    invoke-interface {p2, v0, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 30
    :cond_1d
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 32
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->access$800(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    .line 35
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;->mSubMenuHelper:Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

    .line 37
    if-eqz p1, :cond_2c

    .line 39
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->dismiss()V

    .line 42
    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;->mSubMenuHelper:Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

    .line 45
    :cond_2c
    return-void
.end method

.method public onCloseSubMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 3
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Landroid/view/Window$Callback;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_16

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 11
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Landroid/view/Window$Callback;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x6

    .line 16
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getRootMenu()Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 19
    move-result-object p1

    .line 20
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 23
    :cond_16
    return-void
.end method

.method public onMenuItemSelected(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 3
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Landroid/view/Window$Callback;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_14

    .line 9
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 11
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Landroid/view/Window$Callback;

    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x6

    .line 16
    invoke-interface {p1, v0, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_14
    const/4 p1, 0x0

    .line 22
    return p1
.end method

.method public onMenuModeChange(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .registers 2

    return-void
.end method

.method public onOpenSubMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z
    .registers 3

    .line 1
    if-nez p1, :cond_4

    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_4
    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setCallback(Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;)V

    .line 8
    new-instance v0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

    .line 10
    invoke-direct {v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;-><init>(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 13
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;->mSubMenuHelper:Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    .line 19
    const/4 p1, 0x1

    .line 20
    return p1
.end method
