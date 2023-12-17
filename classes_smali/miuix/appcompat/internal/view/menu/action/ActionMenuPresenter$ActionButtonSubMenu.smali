.class Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ActionButtonSubMenu;
.super Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionButtonSubMenu"
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ActionButtonSubMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 3
    invoke-direct {p0, p2}, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;-><init>(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 6
    iget-object p2, p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mPopupPresenterCallback:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupPresenterCallback;

    .line 8
    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->setCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V

    .line 11
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->onDismiss(Landroid/content/DialogInterface;)V

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ActionButtonSubMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->access$1702(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ActionButtonSubMenu;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ActionButtonSubMenu;

    .line 10
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ActionButtonSubMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 12
    const/4 v0, 0x0

    .line 13
    iput v0, p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 15
    return-void
.end method
