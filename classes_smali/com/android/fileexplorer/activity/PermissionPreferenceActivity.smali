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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "permission_fragment"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;

    iput-object p1, p0, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity;->mFragment:Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;

    if-nez p1, :cond_29

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-static {p1, p1}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object p1

    const v1, 0x1020002

    new-instance v2, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;

    invoke-direct {v2}, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;-><init>()V

    invoke-virtual {p1, v1, v2, v0}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/fragment/app/a;->d()I

    :cond_29
    return-void
.end method

.method public onPause()V
    .registers 1

    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onResume()V

    return-void
.end method
