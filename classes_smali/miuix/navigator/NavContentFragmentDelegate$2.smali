.class Lmiuix/navigator/NavContentFragmentDelegate$2;
.super Ljava/lang/Object;
.source "NavContentFragmentDelegate.java"

# interfaces
.implements Lmiuix/view/SearchActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/navigator/NavContentFragmentDelegate;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/navigator/NavContentFragmentDelegate;

.field public final synthetic val$callback:Landroid/view/ActionMode$Callback;


# direct methods
.method public constructor <init>(Lmiuix/navigator/NavContentFragmentDelegate;Landroid/view/ActionMode$Callback;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/navigator/NavContentFragmentDelegate$2;->this$0:Lmiuix/navigator/NavContentFragmentDelegate;

    .line 3
    iput-object p2, p0, Lmiuix/navigator/NavContentFragmentDelegate$2;->val$callback:Landroid/view/ActionMode$Callback;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavContentFragmentDelegate$2;->val$callback:Landroid/view/ActionMode$Callback;

    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lmiuix/view/SearchActionMode;

    .line 4
    new-instance v1, Lmiuix/navigator/NavContentFragmentDelegate$2$1;

    .line 6
    invoke-direct {v1, p0}, Lmiuix/navigator/NavContentFragmentDelegate$2$1;-><init>(Lmiuix/navigator/NavContentFragmentDelegate$2;)V

    .line 9
    invoke-interface {v0, v1}, Lmiuix/view/SearchActionMode;->addAnimationListener(Lmiuix/view/ActionModeAnimationListener;)V

    .line 12
    iget-object v0, p0, Lmiuix/navigator/NavContentFragmentDelegate$2;->val$callback:Landroid/view/ActionMode$Callback;

    .line 14
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavContentFragmentDelegate$2;->this$0:Lmiuix/navigator/NavContentFragmentDelegate;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lmiuix/navigator/NavContentFragmentDelegate;->access$102(Lmiuix/navigator/NavContentFragmentDelegate;Lmiuix/view/SearchActionMode$Callback;)Lmiuix/view/SearchActionMode$Callback;

    .line 7
    iget-object v0, p0, Lmiuix/navigator/NavContentFragmentDelegate$2;->this$0:Lmiuix/navigator/NavContentFragmentDelegate;

    .line 9
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorFragmentDelegate;->getNavigator()Lmiuix/navigator/SubNavigator;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->showBottomTab()V

    .line 20
    iget-object v0, p0, Lmiuix/navigator/NavContentFragmentDelegate$2;->val$callback:Landroid/view/ActionMode$Callback;

    .line 22
    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 25
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavContentFragmentDelegate$2;->val$callback:Landroid/view/ActionMode$Callback;

    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method
