.class public Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SettingActivity.java"

# interfaces
.implements Landroidx/preference/Preference$c;
.implements Landroidx/preference/Preference$d;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/activity/SettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuSettingsFragment"
.end annotation


# static fields
.field private static final CANCEL_MI_DRIVE:Ljava/lang/String; = "cancel_mi_drive"

.field private static final CLOUD_DRIVE_SETTINGS:Ljava/lang/String; = "cloud_drive_settings"

.field private static final HIDE_CLOUD_DRIVE_FILES:Ljava/lang/String; = "hide_cloud_drive_files"

.field private static final INIT_COUNTDOWN:I = 0xa

.field private static final KEY_CANCEL_APP:Ljava/lang/String; = "cancel_mi_drive"

.field private static final KEY_EXTEND_SERVICE_SETTING:Ljava/lang/String; = "extend_service_setting"

.field private static final KEY_HIDE_CAMERA_AND_SCREENSHOTS:Ljava/lang/String; = "hide_camera_and_screenshots"

.field private static final KEY_HIDE_CLOUD_DRIVE_FILES:Ljava/lang/String; = "hide_cloud_drive_files"

.field private static final KEY_PERMISSION_DESCRIPTION:Ljava/lang/String; = "permission_description"

.field private static final KEY_PRIVACY_POLICY:Ljava/lang/String; = "privacy_policy"

.field private static final KEY_PRIVACY_RECALL:Ljava/lang/String; = "privacy_recall"

.field private static final KEY_RESTORE_ICON:Ljava/lang/String; = "restore_icon"

.field private static final KEY_USE_MOBILE_DATA_UPDATE:Ljava/lang/String; = "use_mobile_data_update"

.field private static final KILL_SELF_PROCESS_DELAY:I = 0xa

.field private static final MSG_NEXT_STEP_INTERNAL:I = 0x3e8

.field private static final MSG_NEXT_STEP_WHAT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "MenuSettingActivity"


# instance fields
.field private mAutoNextStepTime:I

.field private mCancelAppPreference:Landroidx/preference/Preference;

.field private mExtendServicePreference:Landroidx/preference/Preference;

.field private final mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mHideCameraAndScreenshotsPreference:Landroidx/preference/CheckBoxPreference;

.field private mHideCloudDriveFilesPreference:Landroidx/preference/CheckBoxPreference;

.field private mPermissionDescriptionPreference:Landroidx/preference/Preference;

.field private mPrivacyPolicyPreference:Landroidx/preference/Preference;

.field private mPrivacyRecallPreference:Landroidx/preference/Preference;

.field private mRestoreLauncherIcon:Landroidx/preference/Preference;

.field private mShowHideFilePreference:Landroidx/preference/CheckBoxPreference;

.field private mUseEncryptPrefererence:Landroidx/preference/CheckBoxPreference;

.field private mUseMobileDataUpdatePrefererence:Landroidx/preference/CheckBoxPreference;

.field private withdraw_dialog:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    .line 4
    new-instance v0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment$1;

    .line 6
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment$1;-><init>(Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;)V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mHandler:Landroid/os/Handler;

    .line 11
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mAutoNextStepTime:I

    .line 3
    return p0
.end method

.method public static synthetic access$006(Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;)I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mAutoNextStepTime:I

    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mAutoNextStepTime:I

    .line 7
    return v0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;)Lmiuix/appcompat/app/AlertDialog;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->withdraw_dialog:Lmiuix/appcompat/app/AlertDialog;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;)Landroid/os/Handler;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mHandler:Landroid/os/Handler;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;Landroid/content/DialogInterface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->lambda$showRecallDialog$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;Landroid/content/DialogInterface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->lambda$showRecallDialog$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private exit()V
    .registers 5

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 3
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 6
    new-instance v1, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment$2;

    .line 8
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment$2;-><init>(Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;)V

    .line 11
    const-wide/16 v2, 0xa

    .line 13
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16
    return-void
.end method

.method private synthetic lambda$showRecallDialog$0(Landroid/content/DialogInterface;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->withdraw_dialog:Lmiuix/appcompat/app/AlertDialog;

    .line 3
    const/4 v0, -0x2

    .line 4
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 12
    return-void
.end method

.method private synthetic lambda$showRecallDialog$1(Landroid/content/DialogInterface;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mHandler:Landroid/os/Handler;

    .line 3
    const/16 v0, 0x64

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    return-void
.end method

.method private onOperationShowSysFiles(Z)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "onOperationShowSysFiles: isShow = "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    const-string v0, "MenuSettingActivity"

    .line 20
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 26
    move-result-object p1

    .line 27
    const/4 v0, 0x1

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-static {v0, v1, v0, p1}, La/a;->z(ZZZLorg/greenrobot/eventbus/EventBus;)V

    .line 32
    return-void
.end method

.method private showMiDriveRevokeOrLogoutPage(Z)V
    .registers 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    move-result-object v1

    .line 7
    const-class v2, Lcom/android/cloud/activity/RevokeOrLogoutActivity;

    .line 9
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    const-string v1, "extra_is_recall_privacy"

    .line 14
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 17
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 20
    return-void
.end method

.method private showRecallDialog()V
    .registers 5

    .line 1
    const/16 v0, 0xa

    .line 3
    iput v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mAutoNextStepTime:I

    .line 5
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 14
    const v1, 0x7f11048a

    .line 17
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 24
    const v1, 0x7f11048b

    .line 27
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 34
    const v1, 0x7f110050

    .line 37
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    const v2, 0x7f110489

    .line 53
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v2, "("

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget v2, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mAutoNextStepTime:I

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    const-string v2, "s)"

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 82
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 85
    move-result-object v0

    .line 86
    iput-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->withdraw_dialog:Lmiuix/appcompat/app/AlertDialog;

    .line 88
    new-instance v1, Lcom/android/fileexplorer/activity/a;

    .line 90
    const/4 v2, 0x1

    .line 91
    invoke-direct {v1, p0, v2}, Lcom/android/fileexplorer/activity/a;-><init>(Lmiuix/preference/PreferenceFragment;I)V

    .line 94
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 97
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->withdraw_dialog:Lmiuix/appcompat/app/AlertDialog;

    .line 99
    new-instance v1, Lcom/android/fileexplorer/activity/b;

    .line 101
    invoke-direct {v1, p0, v2}, Lcom/android/fileexplorer/activity/b;-><init>(Lmiuix/preference/PreferenceFragment;I)V

    .line 104
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 107
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->withdraw_dialog:Lmiuix/appcompat/app/AlertDialog;

    .line 109
    const/4 v1, 0x0

    .line 110
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 113
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->withdraw_dialog:Lmiuix/appcompat/app/AlertDialog;

    .line 115
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 118
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mHandler:Landroid/os/Handler;

    .line 120
    const/16 v1, 0x64

    .line 122
    const-wide/16 v2, 0x3e8

    .line 124
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 127
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    const/4 p1, -0x2

    .line 2
    if-ne p2, p1, :cond_a

    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-static {p1}, Lcom/android/fileexplorer/model/SettingManager;->setPrivacySwitch(Z)V

    .line 8
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->exit()V

    .line 11
    :cond_a
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const p1, 0x7f140006

    .line 7
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    .line 10
    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->closeMiDriveTab()Z

    .line 13
    move-result p1

    .line 14
    const-string v0, "cancel_mi_drive"

    .line 16
    const-string v1, "hide_cloud_drive_files"

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz p1, :cond_2b

    .line 21
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 28
    const-string p1, "cloud_drive_settings"

    .line 30
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 37
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 44
    :cond_2b
    const-string p1, "use_encrypt"

    .line 46
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Landroidx/preference/CheckBoxPreference;

    .line 52
    iput-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mUseEncryptPrefererence:Landroidx/preference/CheckBoxPreference;

    .line 54
    const-string p1, "use_mobile_data_update"

    .line 56
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Landroidx/preference/CheckBoxPreference;

    .line 62
    iput-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mUseMobileDataUpdatePrefererence:Landroidx/preference/CheckBoxPreference;

    .line 64
    const-string p1, "hide_camera_and_screenshots"

    .line 66
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Landroidx/preference/CheckBoxPreference;

    .line 72
    iput-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mHideCameraAndScreenshotsPreference:Landroidx/preference/CheckBoxPreference;

    .line 74
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Landroidx/preference/CheckBoxPreference;

    .line 80
    iput-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mHideCloudDriveFilesPreference:Landroidx/preference/CheckBoxPreference;

    .line 82
    const-string p1, "restore_icon"

    .line 84
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 87
    move-result-object p1

    .line 88
    iput-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mRestoreLauncherIcon:Landroidx/preference/Preference;

    .line 90
    const-string p1, "show_hide_file"

    .line 92
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Landroidx/preference/CheckBoxPreference;

    .line 98
    iput-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mShowHideFilePreference:Landroidx/preference/CheckBoxPreference;

    .line 100
    const-string p1, "privacy_policy"

    .line 102
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 105
    move-result-object p1

    .line 106
    iput-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mPrivacyPolicyPreference:Landroidx/preference/Preference;

    .line 108
    const-string p1, "permission_description"

    .line 110
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 113
    move-result-object p1

    .line 114
    iput-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mPermissionDescriptionPreference:Landroidx/preference/Preference;

    .line 116
    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mUseEncryptPrefererence:Landroidx/preference/CheckBoxPreference;

    .line 118
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    .line 121
    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mUseMobileDataUpdatePrefererence:Landroidx/preference/CheckBoxPreference;

    .line 123
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    .line 126
    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mShowHideFilePreference:Landroidx/preference/CheckBoxPreference;

    .line 128
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    .line 131
    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mHideCameraAndScreenshotsPreference:Landroidx/preference/CheckBoxPreference;

    .line 133
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    .line 136
    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mHideCloudDriveFilesPreference:Landroidx/preference/CheckBoxPreference;

    .line 138
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    .line 141
    const-string p1, "privacy_recall"

    .line 143
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 146
    move-result-object p1

    .line 147
    iput-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mPrivacyRecallPreference:Landroidx/preference/Preference;

    .line 149
    const-string p1, "extend_service_setting"

    .line 151
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 154
    move-result-object p1

    .line 155
    iput-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mExtendServicePreference:Landroidx/preference/Preference;

    .line 157
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 160
    move-result-object p1

    .line 161
    iput-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mCancelAppPreference:Landroidx/preference/Preference;

    .line 163
    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mRestoreLauncherIcon:Landroidx/preference/Preference;

    .line 165
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    .line 168
    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mPrivacyPolicyPreference:Landroidx/preference/Preference;

    .line 170
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    .line 173
    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mRestoreLauncherIcon:Landroidx/preference/Preference;

    .line 175
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 178
    move-result-object v0

    .line 179
    invoke-static {v0}, Lcom/android/fileexplorer/util/MiHomeUtils;->isFileExplorerHidden(Landroid/content/Context;)Z

    .line 182
    move-result v0

    .line 183
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 186
    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mHideCloudDriveFilesPreference:Landroidx/preference/CheckBoxPreference;

    .line 188
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    .line 191
    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mPrivacyRecallPreference:Landroidx/preference/Preference;

    .line 193
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    .line 196
    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mCancelAppPreference:Landroidx/preference/Preference;

    .line 198
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    .line 201
    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mExtendServicePreference:Landroidx/preference/Preference;

    .line 203
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    .line 206
    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mExtendServicePreference:Landroidx/preference/Preference;

    .line 208
    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->isNotSupportMidrive()Z

    .line 211
    move-result v0

    .line 212
    const/4 v1, 0x1

    .line 213
    xor-int/2addr v0, v1

    .line 214
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 217
    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mHideCameraAndScreenshotsPreference:Landroidx/preference/CheckBoxPreference;

    .line 219
    invoke-static {}, Lcom/android/fileexplorer/util/SettingsUtils;->isRecentHideCameraAndScreenShots()Z

    .line 222
    move-result v0

    .line 223
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 226
    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mPermissionDescriptionPreference:Landroidx/preference/Preference;

    .line 228
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    .line 231
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isSupportPermissionDesc()Z

    .line 234
    move-result p1

    .line 235
    if-eqz p1, :cond_f2

    .line 237
    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mPermissionDescriptionPreference:Landroidx/preference/Preference;

    .line 239
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 242
    goto :goto_f7

    .line 243
    :cond_f2
    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mPermissionDescriptionPreference:Landroidx/preference/Preference;

    .line 245
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 248
    :goto_f7
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mHandler:Landroid/os/Handler;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10
    return-void
.end method

.method public onExtraPaddingChanged(I)V
    .registers 2

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mShowHideFilePreference:Landroidx/preference/CheckBoxPreference;

    .line 3
    if-ne v0, p1, :cond_e

    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11
    move-result v0

    .line 12
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->onOperationShowSysFiles(Z)V

    .line 15
    :cond_e
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mHideCloudDriveFilesPreference:Landroidx/preference/CheckBoxPreference;

    .line 17
    if-ne v0, p1, :cond_24

    .line 19
    move-object v0, p2

    .line 20
    check-cast v0, Ljava/lang/Boolean;

    .line 22
    invoke-static {v0}, Lcom/android/fileexplorer/util/SettingsUtils;->setRecentHideCloudFiles(Ljava/lang/Boolean;)V

    .line 25
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Lcom/fileexplorer/commonlibrary/event/RecentHideChangeEvent;

    .line 31
    invoke-direct {v1}, Lcom/fileexplorer/commonlibrary/event/RecentHideChangeEvent;-><init>()V

    .line 34
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 37
    :cond_24
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mUseEncryptPrefererence:Landroidx/preference/CheckBoxPreference;

    .line 39
    const/4 v1, 0x1

    .line 40
    if-ne v0, p1, :cond_2c

    .line 42
    invoke-static {v1}, Lcom/android/fileexplorer/model/SettingManager;->setShowEncrypt(Z)V

    .line 45
    :cond_2c
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mUseMobileDataUpdatePrefererence:Landroidx/preference/CheckBoxPreference;

    .line 47
    if-ne v0, p1, :cond_42

    .line 49
    move-object v0, p2

    .line 50
    check-cast v0, Ljava/lang/Boolean;

    .line 52
    invoke-static {v0}, Lcom/android/fileexplorer/util/SettingsUtils;->setCloudUseMobileDataUpdate(Ljava/lang/Boolean;)V

    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 62
    move-result v0

    .line 63
    xor-int/2addr v0, v1

    .line 64
    invoke-static {v2, v0}, Lcom/micloud/midrive/helper/SyncConfigHelper;->setTransferWithFreeNetwork(Landroid/content/Context;Z)V

    .line 67
    :cond_42
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mHideCameraAndScreenshotsPreference:Landroidx/preference/CheckBoxPreference;

    .line 69
    if-ne v0, p1, :cond_57

    .line 71
    check-cast p2, Ljava/lang/Boolean;

    .line 73
    invoke-static {p2}, Lcom/android/fileexplorer/util/SettingsUtils;->setRecentHideCameraAndScreenShots(Ljava/lang/Boolean;)V

    .line 76
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 79
    move-result-object p1

    .line 80
    new-instance p2, Lcom/fileexplorer/commonlibrary/event/RecentHideChangeEvent;

    .line 82
    invoke-direct {p2}, Lcom/fileexplorer/commonlibrary/event/RecentHideChangeEvent;-><init>()V

    .line 85
    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 88
    :cond_57
    return v1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mPrivacyPolicyPreference:Landroidx/preference/Preference;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, p1, :cond_d

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->openPrivatePolicy(Landroid/app/Activity;)V

    .line 13
    return v1

    .line 14
    :cond_d
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mRestoreLauncherIcon:Landroidx/preference/Preference;

    .line 16
    if-ne v0, p1, :cond_26

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lcom/android/fileexplorer/util/MiHomeUtils;->restoreFileExplorer(Landroid/content/Context;)V

    .line 25
    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mRestoreLauncherIcon:Landroidx/preference/Preference;

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/android/fileexplorer/util/MiHomeUtils;->isFileExplorerHidden(Landroid/content/Context;)Z

    .line 34
    move-result v0

    .line 35
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 38
    return v1

    .line 39
    :cond_26
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mPrivacyRecallPreference:Landroidx/preference/Preference;

    .line 41
    if-ne v0, p1, :cond_3c

    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDriveOpen(Landroid/content/Context;)Z

    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_38

    .line 53
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->showMiDriveRevokeOrLogoutPage(Z)V

    .line 56
    goto :goto_3b

    .line 57
    :cond_38
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->showRecallDialog()V

    .line 60
    :goto_3b
    return v1

    .line 61
    :cond_3c
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mExtendServicePreference:Landroidx/preference/Preference;

    .line 63
    if-ne v0, p1, :cond_53

    .line 65
    new-instance p1, Landroid/content/Intent;

    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 70
    move-result-object v0

    .line 71
    const-class v2, Lcom/android/fileexplorer/activity/ExtendServiceActivity;

    .line 73
    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 83
    return v1

    .line 84
    :cond_53
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mCancelAppPreference:Landroidx/preference/Preference;

    .line 86
    const/4 v2, 0x0

    .line 87
    if-ne v0, p1, :cond_5c

    .line 89
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->showMiDriveRevokeOrLogoutPage(Z)V

    .line 92
    return v1

    .line 93
    :cond_5c
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mPermissionDescriptionPreference:Landroidx/preference/Preference;

    .line 95
    if-ne v0, p1, :cond_73

    .line 97
    new-instance p1, Landroid/content/Intent;

    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 102
    move-result-object v0

    .line 103
    const-class v2, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity;

    .line 105
    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 115
    return v1

    .line 116
    :cond_73
    return v2
.end method

.method public onResume()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mCancelAppPreference:Landroidx/preference/Preference;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDriveOpen(Landroid/content/Context;)Z

    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 17
    const-string v0, "hide_cloud_drive_files"

    .line 19
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 22
    move-result-object v0

    .line 23
    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->closeMiDriveTab()Z

    .line 26
    move-result v1

    .line 27
    xor-int/lit8 v1, v1, 0x1

    .line 29
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 32
    const-string v0, "cloud_drive_settings"

    .line 34
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 37
    move-result-object v0

    .line 38
    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->closeMiDriveTab()Z

    .line 41
    move-result v1

    .line 42
    xor-int/lit8 v1, v1, 0x1

    .line 44
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 47
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStart()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mRestoreLauncherIcon:Landroidx/preference/Preference;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/android/fileexplorer/util/MiHomeUtils;->isFileExplorerHidden(Landroid/content/Context;)Z

    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 17
    return-void
.end method
