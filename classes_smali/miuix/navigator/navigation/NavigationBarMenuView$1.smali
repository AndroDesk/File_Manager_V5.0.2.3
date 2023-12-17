.class Lmiuix/navigator/navigation/NavigationBarMenuView$1;
.super Ljava/lang/Object;
.source "NavigationBarMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/navigator/navigation/NavigationBarMenuView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/navigator/navigation/NavigationBarMenuView;


# direct methods
.method public constructor <init>(Lmiuix/navigator/navigation/NavigationBarMenuView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView$1;->this$0:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1
    check-cast p1, Lmiuix/navigator/navigation/NavigationBarItemView;

    .line 3
    invoke-virtual {p1}, Lmiuix/navigator/navigation/NavigationBarItemView;->getItemData()Lmiuix/appcompat/view/menu/MenuItemImpl;

    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarMenuView$1;->this$0:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 9
    invoke-static {v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->access$100(Lmiuix/navigator/navigation/NavigationBarMenuView;)Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lmiuix/navigator/navigation/NavigationBarMenuView$1;->this$0:Lmiuix/navigator/navigation/NavigationBarMenuView;

    .line 15
    invoke-static {v1}, Lmiuix/navigator/navigation/NavigationBarMenuView;->access$000(Lmiuix/navigator/navigation/NavigationBarMenuView;)Lmiuix/navigator/navigation/NavigationBarPresenter;

    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, p1, v1, v2}, Lmiuix/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Lmiuix/appcompat/view/menu/MenuPresenter;I)Z

    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1d

    .line 26
    const/4 v0, 0x1

    .line 27
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 30
    :cond_1d
    return-void
.end method
