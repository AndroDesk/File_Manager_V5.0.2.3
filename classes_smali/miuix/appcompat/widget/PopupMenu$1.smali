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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/appcompat/widget/PopupMenu;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lmiuix/appcompat/widget/PopupMenu$1;->this$0:Lmiuix/appcompat/widget/PopupMenu;

    invoke-direct {p0, p2}, Lmiuix/internal/widget/PopupMenuWindow;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 3

    iget-object v0, p0, Lmiuix/appcompat/widget/PopupMenu$1;->this$0:Lmiuix/appcompat/widget/PopupMenu;

    invoke-static {v0}, Lmiuix/appcompat/widget/PopupMenu;->access$100(Lmiuix/appcompat/widget/PopupMenu;)Lmiuix/appcompat/widget/PopupMenu$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lmiuix/appcompat/widget/PopupMenu$1;->this$0:Lmiuix/appcompat/widget/PopupMenu;

    invoke-static {v0}, Lmiuix/appcompat/widget/PopupMenu;->access$100(Lmiuix/appcompat/widget/PopupMenu;)Lmiuix/appcompat/widget/PopupMenu$OnDismissListener;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/widget/PopupMenu$1;->this$0:Lmiuix/appcompat/widget/PopupMenu;

    invoke-interface {v0, v1}, Lmiuix/appcompat/widget/PopupMenu$OnDismissListener;->onDismiss(Lmiuix/appcompat/widget/PopupMenu;)V

    :cond_13
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)V
    .registers 3

    iget-object v0, p0, Lmiuix/appcompat/widget/PopupMenu$1;->this$0:Lmiuix/appcompat/widget/PopupMenu;

    invoke-static {v0}, Lmiuix/appcompat/widget/PopupMenu;->access$000(Lmiuix/appcompat/widget/PopupMenu;)Lmiuix/appcompat/widget/PopupMenu$OnMenuItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lmiuix/appcompat/widget/PopupMenu$1;->this$0:Lmiuix/appcompat/widget/PopupMenu;

    invoke-static {v0}, Lmiuix/appcompat/widget/PopupMenu;->access$000(Lmiuix/appcompat/widget/PopupMenu;)Lmiuix/appcompat/widget/PopupMenu$OnMenuItemClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/appcompat/widget/PopupMenu$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    :cond_11
    return-void
.end method
