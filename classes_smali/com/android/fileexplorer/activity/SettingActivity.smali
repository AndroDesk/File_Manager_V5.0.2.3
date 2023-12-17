.class public Lcom/android/fileexplorer/activity/SettingActivity;
.super Lcom/android/fileexplorer/activity/BaseActivity;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;
    }
.end annotation


# static fields
.field public static final KEY_SHOW_HIDE:Ljava/lang/String; = "show_hide_file"

.field public static final KEY_USE_ENCRYPT:Ljava/lang/String; = "use_encrypt"


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
    invoke-static {p0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_b

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 11
    goto :goto_1d

    .line 12
    :cond_b
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 15
    move-result-object v0

    .line 16
    const/high16 v1, 0x4000000

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 24
    move-result-object v0

    .line 25
    const/high16 v1, 0x8000000

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 30
    :goto_1d
    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1, p1}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    .line 40
    move-result-object p1

    .line 41
    const v0, 0x1020002

    .line 44
    new-instance v1, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;

    .line 46
    invoke-direct {v1}, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;-><init>()V

    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-virtual {p1, v0, v1, v2}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Landroidx/fragment/app/a;->d()I

    .line 56
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    const v1, 0x102002c

    .line 8
    if-ne v0, v1, :cond_e

    .line 10
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_e
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 18
    move-result p1

    .line 19
    return p1
.end method
