.class public abstract Lcom/android/fileexplorer/BaseMainActivityProxy;
.super Ljava/lang/Object;
.source "BaseMainActivityProxy.java"


# instance fields
.field public mActivity:Lcom/android/fileexplorer/activity/BaseActivity;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissLoading()V
    .registers 1

    return-void
.end method

.method public abstract handleIntent(Landroid/content/Intent;)V
.end method

.method public abstract initView(Landroid/os/Bundle;)V
.end method

.method public abstract onBackPressed()Z
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onCreateOptionsMenu(Landroid/view/Menu;)V
.end method

.method public abstract onDestroyView()V
.end method

.method public abstract onOptionsItemSelected(Landroid/view/MenuItem;)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onPrepareOptionsMenu(Landroid/view/Menu;)V
.end method

.method public abstract onResume()V
.end method

.method public abstract setupContentView()V
.end method

.method public showLoading()V
    .registers 1

    return-void
.end method
