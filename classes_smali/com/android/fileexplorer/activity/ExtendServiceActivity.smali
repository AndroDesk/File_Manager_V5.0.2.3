.class public Lcom/android/fileexplorer/activity/ExtendServiceActivity;
.super Lcom/android/fileexplorer/activity/BaseActivity;
.source "ExtendServiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;
    }
.end annotation


# static fields
.field private static final KEY_EXTEND_SERVICE:Ljava/lang/String; = "extend_service"


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
    if-nez v0, :cond_a

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 11
    :cond_a
    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 17
    move-result-object p1

    .line 18
    const/high16 v0, 0x4000000

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 26
    move-result-object p1

    .line 27
    const/high16 v0, 0x8000000

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    new-instance v0, Landroidx/fragment/app/a;

    .line 41
    invoke-direct {v0, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 44
    const p1, 0x1020002

    .line 47
    new-instance v1, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;

    .line 49
    invoke-direct {v1}, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;-><init>()V

    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-virtual {v0, p1, v1, v2}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Landroidx/fragment/app/a;->d()I

    .line 59
    return-void
.end method
