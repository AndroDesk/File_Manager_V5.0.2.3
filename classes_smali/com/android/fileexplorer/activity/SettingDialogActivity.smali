.class public Lcom/android/fileexplorer/activity/SettingDialogActivity;
.super Lcom/android/fileexplorer/activity/BaseActivity;
.source "SettingDialogActivity.java"


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
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    .line 3
    if-nez v0, :cond_8

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 9
    :cond_8
    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    const p1, 0x7f0d0026

    .line 15
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    new-instance v0, Landroidx/fragment/app/a;

    .line 27
    invoke-direct {v0, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 30
    const p1, 0x7f0a0101

    .line 33
    new-instance v1, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;

    .line 35
    invoke-direct {v1}, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;-><init>()V

    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {v0, p1, v1, v2}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Landroidx/fragment/app/a;->d()I

    .line 45
    const p1, 0x7f0a020e

    .line 48
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 51
    move-result-object p1

    .line 52
    new-instance v0, Lcom/android/fileexplorer/activity/SettingDialogActivity$1;

    .line 54
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/activity/SettingDialogActivity$1;-><init>(Lcom/android/fileexplorer/activity/SettingDialogActivity;)V

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
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
