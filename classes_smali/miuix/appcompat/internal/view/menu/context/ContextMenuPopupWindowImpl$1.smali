.class Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl$1;
.super Ljava/lang/Object;
.source "ContextMenuPopupWindowImpl.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/widget/PopupWindow$OnDismissListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl$1;->this$0:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;

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
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl$1;->this$0:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;

    .line 3
    invoke-static {p1}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->access$000(Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;)Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1, p3}, Lmiuix/internal/widget/PopupMenuAdapter;->getItem(I)Landroid/view/MenuItem;

    .line 10
    move-result-object p1

    .line 11
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl$1;->this$0:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;

    .line 13
    invoke-static {p2}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->access$100(Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 16
    move-result-object p2

    .line 17
    const/4 p3, 0x0

    .line 18
    invoke-virtual {p2, p1, p3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 21
    invoke-interface {p1}, Landroid/view/MenuItem;->hasSubMenu()Z

    .line 24
    move-result p2

    .line 25
    if-eqz p2, :cond_28

    .line 27
    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    .line 30
    move-result-object p1

    .line 31
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl$1;->this$0:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;

    .line 33
    new-instance p3, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl$1$1;

    .line 35
    invoke-direct {p3, p0, p1}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl$1$1;-><init>(Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl$1;Landroid/view/SubMenu;)V

    .line 38
    invoke-virtual {p2, p3}, Lmiuix/internal/widget/ListPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 41
    :cond_28
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl$1;->this$0:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;

    .line 43
    invoke-virtual {p1}, Lmiuix/internal/widget/ListPopup;->dismiss()V

    .line 46
    return-void
.end method
