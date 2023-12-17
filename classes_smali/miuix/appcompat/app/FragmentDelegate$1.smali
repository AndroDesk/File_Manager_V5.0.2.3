.class Lmiuix/appcompat/app/FragmentDelegate$1;
.super Lmiuix/appcompat/internal/view/SimpleWindowCallback;
.source "FragmentDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/FragmentDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/app/FragmentDelegate;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/FragmentDelegate;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate$1;->this$0:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/SimpleWindowCallback;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate$1;->this$0:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-static {v0}, Lmiuix/appcompat/app/FragmentDelegate;->access$000(Lmiuix/appcompat/app/FragmentDelegate;)Landroidx/fragment/app/Fragment;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/appcompat/app/IFragment;

    .line 9
    invoke-interface {v0, p1}, Lmiuix/appcompat/app/IFragment;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 12
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate$1;->this$0:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-static {v0}, Lmiuix/appcompat/app/FragmentDelegate;->access$000(Lmiuix/appcompat/app/FragmentDelegate;)Landroidx/fragment/app/Fragment;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/appcompat/app/IFragment;

    .line 9
    invoke-interface {v0, p1}, Lmiuix/appcompat/app/IFragment;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 12
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate$1;->this$0:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/app/FragmentDelegate;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate$1;->this$0:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/app/FragmentDelegate;->onPanelClosed(ILandroid/view/Menu;)V

    .line 6
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate$1;->this$0:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
