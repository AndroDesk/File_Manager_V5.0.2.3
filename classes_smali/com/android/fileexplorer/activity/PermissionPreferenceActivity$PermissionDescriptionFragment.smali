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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;->updatePermissionItems()V

    return-void
.end method

.method private getMeta(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v1, "com.lbe.security.miui"

    const/16 v2, 0x80

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "miui.supportGetPermissionState"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_16

    return p1

    :catch_16
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method private permissionStatusController(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/PermissionUtils;->getPermissionStatus(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_14

    if-eqz p1, :cond_14

    const/4 v0, 0x1

    if-eq p1, v0, :cond_14

    const/4 v0, 0x2

    if-eq p1, v0, :cond_14

    goto :goto_1b

    :cond_14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/PermissionUtils;->startNewAppPermsManager(Landroid/content/Context;)V

    :goto_1b
    return-void
.end method

.method private updatePermissionItems()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;->prefPermissionStorage:Lmiuix/preference/TextPreference;

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->STORAGE()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;->setPermissionText(Lmiuix/preference/TextPreference;[Ljava/lang/String;)V

    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->isNotSupportMidrive()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;->prefPermissionAccount:Lmiuix/preference/TextPreference;

    const-string v1, "android.permission.GET_ACCOUNTS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;->setPermissionText(Lmiuix/preference/TextPreference;[Ljava/lang/String;)V

    :cond_1a
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f140005

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    const-string p1, "pref_permission_manage_key_storage"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;->prefPermissionStorage:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string p1, "pref_permission_manage_key_account"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;->prefPermissionAccount:Lmiuix/preference/TextPreference;

    iget-object p1, p0, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;->prefPermissionStorage:Lmiuix/preference/TextPreference;

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    move-result v0

    if-eqz v0, :cond_2c

    const v0, 0x7f110351

    goto :goto_2f

    :cond_2c
    const v0, 0x7f110350

    :goto_2f
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;->prefPermissionStorage:Lmiuix/preference/TextPreference;

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    move-result v0

    if-eqz v0, :cond_3e

    const v0, 0x7f11034f

    goto :goto_41

    :cond_3e
    const v0, 0x7f1100da

    :goto_41
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;->prefPermissionAccount:Lmiuix/preference/TextPreference;

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    move-result v0

    if-eqz v0, :cond_50

    const v0, 0x7f110347

    goto :goto_53

    :cond_50
    const v0, 0x7f110346

    :goto_53
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;->prefPermissionAccount:Lmiuix/preference/TextPreference;

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    move-result v0

    if-eqz v0, :cond_62

    const v0, 0x7f110345

    goto :goto_65

    :cond_62
    const v0, 0x7f110344

    :goto_65
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;->prefPermissionAccount:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;->updatePermissionItems()V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3

    const-string p1, "PermissionSettingsFragment"

    const-string p2, "onCreatePreferences"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    const-string v0, "PermissionSettingsFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroyView()V
    .registers 3

    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onDestroyView()V

    const-string v0, "PermissionSettingsFragment"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onExtraPaddingChanged(I)V
    .registers 2

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    const/4 p1, 0x1

    return p1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 4

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "pref_permission_manage_key_storage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_20

    const-string v0, "pref_permission_manage_key_account"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    const/4 p1, 0x0

    return p1

    :cond_1a
    const-string p1, "android.permission.GET_ACCOUNTS"

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;->permissionStatusController(Ljava/lang/String;)V

    return v1

    :cond_20
    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;->permissionStatusController(Ljava/lang/String;)V

    return v1
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment$1;-><init>(Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lmiuix/preference/PreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setPermissionText(Lmiuix/preference/TextPreference;[Ljava/lang/String;)V
    .registers 9

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2b

    aget-object v4, p2, v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;->getMeta(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eq v5, v3, :cond_2c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_28

    goto :goto_2c

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2b
    move v1, v3

    :cond_2c
    :goto_2c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz v1, :cond_36

    const v0, 0x7f110368

    goto :goto_3d

    :cond_36
    const v0, 0x7f182efc

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    :goto_3d
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method
