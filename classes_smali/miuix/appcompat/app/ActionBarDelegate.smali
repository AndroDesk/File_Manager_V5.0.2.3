.class interface abstract Lmiuix/appcompat/app/ActionBarDelegate;
.super Ljava/lang/Object;
.source "ActionBarDelegate.java"

# interfaces
.implements Lmiuix/appcompat/app/IContentInsetState;


# virtual methods
.method public abstract createActionBar()Lmiuix/appcompat/app/ActionBar;
.end method

.method public abstract getBottomMenuMode()I
.end method

.method public abstract invalidateOptionsMenu()V
.end method

.method public abstract onActionModeFinished(Landroid/view/ActionMode;)V
.end method

.method public abstract onActionModeStarted(Landroid/view/ActionMode;)V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onCreatePanelMenu(ILandroid/view/Menu;)Z
.end method

.method public abstract onCreatePanelView(I)Landroid/view/View;
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onMenuItemSelected(ILandroid/view/MenuItem;)Z
.end method

.method public abstract onPanelClosed(ILandroid/view/Menu;)V
.end method

.method public abstract onPostResume()V
.end method

.method public abstract onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
.end method

.method public abstract onStop()V
.end method

.method public abstract onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
.end method

.method public abstract registerCoordinateScrollView(Landroid/view/View;)V
.end method

.method public abstract requestWindowFeature(I)Z
.end method

.method public setBottomExtraInset(I)V
    .registers 2

    return-void
.end method

.method public setBottomMenuMode(I)V
    .registers 2

    return-void
.end method

.method public abstract setCorrectNestedScrollMotionEventEnabled(Z)V
.end method

.method public abstract startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
.end method

.method public abstract unregisterCoordinateScrollView(Landroid/view/View;)V
.end method
