.class Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter$PopupSubMenu;
.super Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;
.source "EndActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PopupSubMenu"
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .registers 6

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter$PopupSubMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;

    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 6
    iget-object p1, p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mPopupPresenterCallback:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupPresenterCallback;

    .line 8
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->setCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V

    .line 11
    sget p1, Lmiuix/appcompat/R$layout;->miuix_appcompat_overflow_popup_menu_item_layout:I

    .line 13
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->setMenuItemLayout(I)V

    .line 16
    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->dismiss(Z)V

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter$PopupSubMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;

    .line 6
    iget-object p1, p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 8
    if-eqz p1, :cond_d

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 14
    :cond_d
    return-void
.end method

.method public onDismiss()V
    .registers 2

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->onDismiss()V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter$PopupSubMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;

    .line 6
    invoke-static {v0}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;->access$000(Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->close()V

    .line 13
    return-void
.end method
