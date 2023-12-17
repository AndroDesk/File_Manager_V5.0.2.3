.class Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1;
.super Ljava/lang/Object;
.source "ImmersionMenuPopupWindowImpl.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;-><init>(Lmiuix/appcompat/app/ActionBarDelegateImpl;Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1;->this$0:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1;->this$0:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;

    .line 3
    invoke-static {p1}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->access$000(Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;)Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1, p3}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;->getItem(I)Landroid/view/MenuItem;

    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1}, Landroid/view/MenuItem;->hasSubMenu()Z

    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_1f

    .line 17
    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    .line 20
    move-result-object p1

    .line 21
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1;->this$0:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;

    .line 23
    new-instance p3, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1$1;

    .line 25
    invoke-direct {p3, p0, p1}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1$1;-><init>(Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1;Landroid/view/SubMenu;)V

    .line 28
    invoke-virtual {p2, p3}, Lmiuix/internal/widget/ListPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 31
    goto :goto_29

    .line 32
    :cond_1f
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1;->this$0:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;

    .line 34
    invoke-static {p2}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->access$300(Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;)Lmiuix/appcompat/app/ActionBarDelegateImpl;

    .line 37
    move-result-object p2

    .line 38
    const/4 p3, 0x0

    .line 39
    invoke-virtual {p2, p3, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 42
    :goto_29
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1;->this$0:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;

    .line 44
    const/4 p2, 0x1

    .line 45
    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->dismiss(Z)V

    .line 48
    return-void
.end method
