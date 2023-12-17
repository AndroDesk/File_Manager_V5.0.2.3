.class Lmiuix/navigator/NavigatorImpl$1;
.super Ljava/lang/Object;
.source "NavigatorImpl.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/navigator/NavigatorImpl;->startContentActionMode(Lmiuix/appcompat/app/Fragment;Landroid/view/ActionMode$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/navigator/NavigatorImpl;

.field public final synthetic val$callback:Landroid/view/ActionMode$Callback;


# direct methods
.method public constructor <init>(Lmiuix/navigator/NavigatorImpl;Landroid/view/ActionMode$Callback;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/navigator/NavigatorImpl$1;->this$0:Lmiuix/navigator/NavigatorImpl;

    .line 3
    iput-object p2, p0, Lmiuix/navigator/NavigatorImpl$1;->val$callback:Landroid/view/ActionMode$Callback;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl$1;->val$callback:Landroid/view/ActionMode$Callback;

    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl$1;->val$callback:Landroid/view/ActionMode$Callback;

    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl$1;->this$0:Lmiuix/navigator/NavigatorImpl;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lmiuix/navigator/NavigatorImpl;->access$002(Lmiuix/navigator/NavigatorImpl;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    .line 7
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl$1;->this$0:Lmiuix/navigator/NavigatorImpl;

    .line 9
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->showBottomTab()V

    .line 12
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl$1;->val$callback:Landroid/view/ActionMode$Callback;

    .line 14
    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 17
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl$1;->val$callback:Landroid/view/ActionMode$Callback;

    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method
