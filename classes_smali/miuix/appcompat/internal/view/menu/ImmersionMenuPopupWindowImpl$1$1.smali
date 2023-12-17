.class Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1$1;
.super Ljava/lang/Object;
.source "ImmersionMenuPopupWindowImpl.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1;

.field public final synthetic val$subMenu:Landroid/view/SubMenu;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1;Landroid/view/SubMenu;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1$1;->this$1:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1;

    .line 3
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1$1;->val$subMenu:Landroid/view/SubMenu;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1$1;->this$1:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1;

    .line 3
    iget-object v0, v0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1;->this$0:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lmiuix/internal/widget/ListPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1$1;->this$1:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1;

    .line 11
    iget-object v0, v0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1;->this$0:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;

    .line 13
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1$1;->val$subMenu:Landroid/view/SubMenu;

    .line 15
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->update(Landroid/view/Menu;)V

    .line 18
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1$1;->this$1:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1;

    .line 20
    iget-object v0, v0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1;->this$0:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;

    .line 22
    invoke-static {v0}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->access$100(Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;)Landroid/view/View;

    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1$1;->this$1:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1;

    .line 28
    iget-object v2, v2, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1;->this$0:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;

    .line 30
    invoke-static {v2}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->access$200(Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;)Landroid/view/ViewGroup;

    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v0, v1, v2}, Lmiuix/internal/widget/ListPopup;->fastShow(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 37
    return-void
.end method
