.class Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupPresenterCallback;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PopupPresenterCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;


# direct methods
.method private constructor <init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupPresenterCallback;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupPresenterCallback;-><init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .registers 3

    .line 1
    instance-of p2, p1, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    .line 3
    if-eqz p2, :cond_c

    .line 5
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getRootMenu()Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 8
    move-result-object p1

    .line 9
    const/4 p2, 0x0

    .line 10
    invoke-static {p1, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->access$1800(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    .line 13
    :cond_c
    return-void
.end method

.method public onOpenSubMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupPresenterCallback;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 7
    check-cast p1, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    .line 9
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 16
    move-result p1

    .line 17
    iput p1, v1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 19
    return v0
.end method
