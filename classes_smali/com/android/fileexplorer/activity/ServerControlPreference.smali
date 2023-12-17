.class public Lcom/android/fileexplorer/activity/ServerControlPreference;
.super Lcom/android/fileexplorer/activity/BaseActivity;
.source "ServerControlPreference.java"


# static fields
.field public static final ANONYMOUS_LOGIN:Ljava/lang/String; = "anonymous_login"

.field public static final ANONYMOUS_LOGIN_NEW:Ljava/lang/String; = "anonymous_login_new"

.field public static final CHARSET_PREF:Ljava/lang/String; = "pref_charset"

.field public static final STAY_AWAKE:Ljava/lang/String; = "stayAwake"


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
    if-nez p1, :cond_1c

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1, p1}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    .line 13
    move-result-object p1

    .line 14
    const v0, 0x1020002

    .line 17
    new-instance v1, Lcom/android/fileexplorer/fragment/ServerControlFragment;

    .line 19
    invoke-direct {v1}, Lcom/android/fileexplorer/fragment/ServerControlFragment;-><init>()V

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {p1, v0, v1, v2}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Landroidx/fragment/app/a;->d()I

    .line 29
    :cond_1c
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
    if-eq v0, v1, :cond_e

    .line 10
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_e
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 18
    const/4 p1, 0x1

    .line 19
    return p1
.end method
