.class public Lcom/android/fileexplorer/activity/ServerControlPreference;
.super Lcom/android/fileexplorer/activity/BaseActivity;
.source "ServerControlPreference.java"


# static fields
.field public static final ANONYMOUS_LOGIN:Ljava/lang/String; = "anonymous_login"

.field public static final ANONYMOUS_LOGIN_NEW:Ljava/lang/String; = "anonymous_login_new"

.field public static final CHARSET_PREF:Ljava/lang/String; = "pref_charset"

.field public static final STAY_AWAKE:Ljava/lang/String; = "stayAwake"


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

    if-nez p1, :cond_1c

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-static {p1, p1}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object p1

    const v0, 0x1020002

    new-instance v1, Lcom/android/fileexplorer/fragment/ServerControlFragment;

    invoke-direct {v1}, Lcom/android/fileexplorer/fragment/ServerControlFragment;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/fragment/app/a;->d()I

    :cond_1c
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_e

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_e
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method
