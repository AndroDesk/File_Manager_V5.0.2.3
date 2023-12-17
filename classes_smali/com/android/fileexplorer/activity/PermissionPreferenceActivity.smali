.class public Lcom/android/fileexplorer/activity/PermissionPreferenceActivity;
.super Lcom/android/fileexplorer/activity/BaseActivity;
.source "PermissionPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;
    }
.end annotation


# static fields
.field private static final KEY_PERMISSION_FRAGMENT:Ljava/lang/String; = "permission_fragment"


# instance fields
.field private mFragment:Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/BaseActivity;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 7
    move-result-object p1

    .line 8
    const-string v0, "permission_fragment"

    .line 10
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;

    .line 16
    iput-object p1, p0, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity;->mFragment:Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;

    .line 18
    if-nez p1, :cond_29

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1, p1}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    .line 27
    move-result-object p1

    .line 28
    const v1, 0x1020002

    .line 31
    new-instance v2, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;

    .line 33
    invoke-direct {v2}, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;-><init>()V

    .line 36
    invoke-virtual {p1, v1, v2, v0}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Landroidx/fragment/app/a;->d()I

    .line 42
    :cond_29
    return-void
.end method

.method public onPause()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onPause()V

    .line 4
    return-void
.end method

.method public onResume()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onResume()V

    .line 4
    return-void
.end method
