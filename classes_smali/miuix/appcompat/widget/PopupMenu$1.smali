.class Lmiuix/appcompat/widget/PopupMenu$1;
.super Lmiuix/internal/widget/PopupMenuWindow;
.source "PopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/widget/PopupMenu;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/widget/PopupMenu;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/widget/PopupMenu$1;->this$0:Lmiuix/appcompat/widget/PopupMenu;

    .line 3
    invoke-direct {p0, p2}, Lmiuix/internal/widget/PopupMenuWindow;-><init>(Landroid/content/Context;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/PopupMenu$1;->this$0:Lmiuix/appcompat/widget/PopupMenu;

    .line 3
    invoke-static {v0}, Lmiuix/appcompat/widget/PopupMenu;->access$100(Lmiuix/appcompat/widget/PopupMenu;)Lmiuix/appcompat/widget/PopupMenu$OnDismissListener;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_13

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/widget/PopupMenu$1;->this$0:Lmiuix/appcompat/widget/PopupMenu;

    .line 11
    invoke-static {v0}, Lmiuix/appcompat/widget/PopupMenu;->access$100(Lmiuix/appcompat/widget/PopupMenu;)Lmiuix/appcompat/widget/PopupMenu$OnDismissListener;

    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lmiuix/appcompat/widget/PopupMenu$1;->this$0:Lmiuix/appcompat/widget/PopupMenu;

    .line 17
    invoke-interface {v0, v1}, Lmiuix/appcompat/widget/PopupMenu$OnDismissListener;->onDismiss(Lmiuix/appcompat/widget/PopupMenu;)V

    .line 20
    :cond_13
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/PopupMenu$1;->this$0:Lmiuix/appcompat/widget/PopupMenu;

    .line 3
    invoke-static {v0}, Lmiuix/appcompat/widget/PopupMenu;->access$000(Lmiuix/appcompat/widget/PopupMenu;)Lmiuix/appcompat/widget/PopupMenu$OnMenuItemClickListener;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_11

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/widget/PopupMenu$1;->this$0:Lmiuix/appcompat/widget/PopupMenu;

    .line 11
    invoke-static {v0}, Lmiuix/appcompat/widget/PopupMenu;->access$000(Lmiuix/appcompat/widget/PopupMenu;)Lmiuix/appcompat/widget/PopupMenu$OnMenuItemClickListener;

    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lmiuix/appcompat/widget/PopupMenu$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    .line 18
    :cond_11
    return-void
.end method
