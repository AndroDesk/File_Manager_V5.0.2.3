.class public Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "PermissionPreferenceActivity.java"

# interfaces
.implements Landroidx/preference/Preference$c;
.implements Landroidx/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/activity/PermissionPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionDescriptionFragment"
.end annotation


# static fields
.field private static final PREFERENCE_PERMISSION_MANAGE_KEY_ACCOUNT:Ljava/lang/String; = "pref_permission_manage_key_account"

.field private static final PREFERENCE_PERMISSION_MANAGE_KEY_STORAGE:Ljava/lang/String; = "pref_permission_manage_key_storage"

.field private static final TAG:Ljava/lang/String; = "PermissionSettingsFragment"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private prefPermissionAccount:Lmiuix/preference/TextPreference;

.field private prefPermissionStorage:Lmiuix/preference/TextPreference;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 6
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;->mHandler:Landroid/os/Handler;

    .line 11
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;->updatePermissionItems()V

    .line 4
    return-void
.end method

.method private getMeta(Landroid/content/Context;)Z
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 5
    move-result-object p1

    .line 6
    const-string v1, "com.lbe.security.miui"

    .line 8
    const/16 v2, 0x80

    .line 10
    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 13
    move-result-object p1

    .line 14
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 16
    const-string v1, "miui.supportGetPermissionState"

    .line 18
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 21
    move-result p1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_16

    .line 22
    return p1

    .line 23
    :catch_16
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    return v0
.end method

.method private permissionStatusController(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/PermissionUtils;->getPermissionStatus(Landroid/content/Context;Ljava/lang/String;)I

    .line 8
    move-result p1

    .line 9
    const/4 v0, -0x1

    .line 10
    if-eq p1, v0, :cond_14

    .line 12
    if-eqz p1, :cond_14

    .line 14
    const/4 v0, 0x1

    .line 15
    if-eq p1, v0, :cond_14

    .line 17
    const/4 v0, 0x2

    .line 18
    if-eq p1, v0, :cond_14

    .line 20
    goto :goto_1b

    .line 21
    :cond_14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Lcom/android/fileexplorer/util/PermissionUtils;->startNewAppPermsManager(Landroid/content/Context;)V

    .line 28
    :goto_1b
    return-void
.end method

.method private updatePermissionItems()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;->prefPermissionStorage:Lmiuix/preference/TextPreference;

    .line 3
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->STORAGE()[Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;->setPermissionText(Lmiuix/preference/TextPreference;[Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->isNotSupportMidrive()Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1a

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;->prefPermissionAccount:Lmiuix/preference/TextPreference;

    .line 18
    const-string v1, "android.permission.GET_ACCOUNTS"

    .line 20
    filled-new-array {v1}, [Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p0, v0, v1}, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;->setPermissionText(Lmiuix/preference/TextPreference;[Ljava/lang/String;)V

    .line 27
    :cond_1a
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const p1, 0x7f140005

    .line 7
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    .line 10
    const-string p1, "pref_permission_manage_key_storage"

    .line 12
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lmiuix/preference/TextPreference;

    .line 18
    iput-object p1, p0, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;->prefPermissionStorage:Lmiuix/preference/TextPreference;

    .line 20
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    .line 23
    const-string p1, "pref_permission_manage_key_account"

    .line 25
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lmiuix/preference/TextPreference;

    .line 31
    iput-object p1, p0, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;->prefPermissionAccount:Lmiuix/preference/TextPreference;

    .line 33
    iget-object p1, p0, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;->prefPermissionStorage:Lmiuix/preference/TextPreference;

    .line 35
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2c

    .line 41
    const v0, 0x7f110351

    .line 44
    goto :goto_2f

    .line 45
    :cond_2c
    const v0, 0x7f110350

    .line 48
    :goto_2f
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 51
    iget-object p1, p0, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;->prefPermissionStorage:Lmiuix/preference/TextPreference;

    .line 53
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3e

    .line 59
    const v0, 0x7f11034f

    .line 62
    goto :goto_41

    .line 63
    :cond_3e
    const v0, 0x7f1100da

    .line 66
    :goto_41
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 69
    iget-object p1, p0, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;->prefPermissionAccount:Lmiuix/preference/TextPreference;

    .line 71
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_50

    .line 77
    const v0, 0x7f110347

    .line 80
    goto :goto_53

    .line 81
    :cond_50
    const v0, 0x7f110346

    .line 84
    :goto_53
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 87
    iget-object p1, p0, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;->prefPermissionAccount:Lmiuix/preference/TextPreference;

    .line 89
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_62

    .line 95
    const v0, 0x7f110345

    .line 98
    goto :goto_65

    .line 99
    :cond_62
    const v0, 0x7f110344

    .line 102
    :goto_65
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 105
    iget-object p1, p0, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;->prefPermissionAccount:Lmiuix/preference/TextPreference;

    .line 107
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    .line 110
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;->updatePermissionItems()V

    .line 113
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3

    .line 1
    const-string p1, "PermissionSettingsFragment"

    .line 3
    const-string p2, "onCreatePreferences"

    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 4
    const-string v0, "PermissionSettingsFragment"

    .line 6
    const-string v1, "onDestroy"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .line 1
    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onDestroyView()V

    .line 4
    const-string v0, "PermissionSettingsFragment"

    .line 6
    const-string v1, "onDestroyView"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    return-void
.end method

.method public onExtraPaddingChanged(I)V
    .registers 2

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    const/4 p1, 0x1

    .line 5
    return p1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-string v0, "pref_permission_manage_key_storage"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-nez v0, :cond_20

    .line 17
    const-string v0, "pref_permission_manage_key_account"

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_1a

    .line 25
    const/4 p1, 0x0

    .line 26
    return p1

    .line 27
    :cond_1a
    const-string p1, "android.permission.GET_ACCOUNTS"

    .line 29
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;->permissionStatusController(Ljava/lang/String;)V

    .line 32
    return v1

    .line 33
    :cond_20
    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 35
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;->permissionStatusController(Ljava/lang/String;)V

    .line 38
    return v1
.end method

.method public onResume()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;->mHandler:Landroid/os/Handler;

    .line 6
    new-instance v1, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment$1;

    .line 8
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment$1;-><init>(Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;)V

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lmiuix/preference/PreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public setPermissionText(Lmiuix/preference/TextPreference;[Ljava/lang/String;)V
    .registers 9

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_3
    const/4 v3, 0x1

    .line 5
    if-ge v2, v0, :cond_2b

    .line 7
    aget-object v4, p2, v2

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v5

    .line 13
    invoke-direct {p0, v5}, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;->getMeta(Landroid/content/Context;)Z

    .line 16
    move-result v5

    .line 17
    if-eqz v5, :cond_28

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 22
    move-result-object v5

    .line 23
    invoke-static {v5, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 26
    move-result v5

    .line 27
    if-eq v5, v3, :cond_2c

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 32
    move-result-object v3

    .line 33
    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 36
    move-result v3

    .line 37
    const/4 v4, -0x1

    .line 38
    if-ne v3, v4, :cond_28

    .line 40
    goto :goto_2c

    .line 41
    :cond_28
    add-int/lit8 v2, v2, 0x1

    .line 43
    goto :goto_3

    .line 44
    :cond_2b
    move v1, v3

    .line 45
    :cond_2c
    :goto_2c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 48
    move-result-object p2

    .line 49
    if-eqz v1, :cond_36

    .line 51
    const v0, 0x7f110368

    .line 54
    goto :goto_39

    .line 55
    :cond_36
    const v0, 0x7f11036a

    .line 58
    :goto_39
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {p1, p2}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    .line 65
    return-void
.end method
