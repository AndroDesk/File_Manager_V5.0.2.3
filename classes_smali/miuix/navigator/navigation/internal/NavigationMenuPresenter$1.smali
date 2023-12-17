.class Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$1;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$1;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    check-cast p1, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$1;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    invoke-virtual {p1}, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->getItemData()Lmiuix/appcompat/view/menu/MenuItemImpl;

    move-result-object p1

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$1;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget-object v2, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v0, v3}, Lmiuix/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Lmiuix/appcompat/view/menu/MenuPresenter;I)Z

    move-result v0

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v2

    if-eqz v2, :cond_27

    if-eqz v0, :cond_27

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$1;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget-object v0, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->adapter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Lmiuix/appcompat/view/menu/MenuItemImpl;)V

    goto :goto_28

    :cond_27
    move v1, v3

    :goto_28
    iget-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$1;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-virtual {p1, v3}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    if-eqz v1, :cond_34

    iget-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$1;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-virtual {p1, v3}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    :cond_34
    return-void
.end method
