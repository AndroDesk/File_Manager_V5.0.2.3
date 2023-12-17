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

.field private static final INIT_COUNTDOWN:I

.field private static final KEY_CANCEL_APP:Ljava/lang/String; = "cancel_mi_drive"

.field private static final KEY_EXTEND_SERVICE_SETTING:Ljava/lang/String; = "extend_service_setting"

.field private static final KEY_HIDE_CAMERA_AND_SCREENSHOTS:Ljava/lang/String; = "hide_camera_and_screenshots"

.field private static final KEY_HIDE_CLOUD_DRIVE_FILES:Ljava/lang/String; = "hide_cloud_drive_files"

.field private static final KEY_PERMISSION_DESCRIPTION:Ljava/lang/String; = "permission_description"

.field private static final KEY_PRIVACY_POLICY:Ljava/lang/String; = "privacy_policy"

.field private static final KEY_PRIVACY_RECALL:Ljava/lang/String; = "privacy_recall"

.field private static final KEY_RESTORE_ICON:Ljava/lang/String; = "restore_icon"

.field private static final KEY_USE_MOBILE_DATA_UPDATE:Ljava/lang/String; = "use_mobile_data_update"

.field private static final KILL_SELF_PROCESS_DELAY:I

.field private static final MSG_NEXT_STEP_INTERNAL:I

.field private static final MSG_NEXT_STEP_WHAT:I

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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d9c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->INIT_COUNTDOWN:I

    const v0, 0x92d9c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->KILL_SELF_PROCESS_DELAY:I

    const v0, 0x92e7e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->MSG_NEXT_STEP_INTERNAL:I

    const v0, 0x92df2

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->MSG_NEXT_STEP_WHAT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment$1;-><init>(Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;)V

    iput-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mAutoNextStepTime:I

    return p0
.end method

.method public static synthetic access$006(Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;)I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mAutoNextStepTime:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mAutoNextStepTime:I

    return v0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;)Lmiuix/appcompat/app/AlertDialog;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->withdraw_dialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mHandler:Landroid/os/Handler;

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

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment$2;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment$2;-><init>(Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$showRecallDialog$0(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->withdraw_dialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$showRecallDialog$1(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private onOperationShowSysFiles(Z)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOperationShowSysFiles: isShow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MenuSettingActivity"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1, v0, p1}, La/a;->z(ZZZLorg/greenrobot/eventbus/EventBus;)V

    return-void
.end method

.method private showMiDriveRevokeOrLogoutPage(Z)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/android/cloud/activity/RevokeOrLogoutActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_is_recall_privacy"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showRecallDialog()V
    .registers 5

    const/16 v0, 0x1

    iput v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mAutoNextStepTime:I

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f18291c

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f18291d

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f182dc6

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f18291f

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mAutoNextStepTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->withdraw_dialog:Lmiuix/appcompat/app/AlertDialog;

    new-instance v1, Lcom/android/fileexplorer/activity/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/fileexplorer/activity/a;-><init>(Lmiuix/preference/PreferenceFragment;I)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->withdraw_dialog:Lmiuix/appcompat/app/AlertDialog;

    new-instance v1, Lcom/android/fileexplorer/activity/b;

    invoke-direct {v1, p0, v2}, Lcom/android/fileexplorer/activity/b;-><init>(Lmiuix/preference/PreferenceFragment;I)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->withdraw_dialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->withdraw_dialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    const/4 p1, -0x2

    if-ne p2, p1, :cond_a

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/android/fileexplorer/model/SettingManager;->setPrivacySwitch(Z)V

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->exit()V

    :cond_a
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f140006

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->closeMiDriveTab()Z

    move-result p1

    const-string v0, "cancel_mi_drive"

    const-string v1, "hide_cloud_drive_files"

    const/4 v2, 0x0

    if-eqz p1, :cond_2b

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string p1, "cloud_drive_settings"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2b
    const-string p1, "use_encrypt"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mUseEncryptPrefererence:Landroidx/preference/CheckBoxPreference;

    const-string p1, "use_mobile_data_update"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mUseMobileDataUpdatePrefererence:Landroidx/preference/CheckBoxPreference;

    const-string p1, "hide_camera_and_screenshots"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mHideCameraAndScreenshotsPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mHideCloudDriveFilesPreference:Landroidx/preference/CheckBoxPreference;

    const-string p1, "restore_icon"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mRestoreLauncherIcon:Landroidx/preference/Preference;

    const-string p1, "show_hide_file"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mShowHideFilePreference:Landroidx/preference/CheckBoxPreference;

    const-string p1, "privacy_policy"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mPrivacyPolicyPreference:Landroidx/preference/Preference;

    const-string p1, "permission_description"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mPermissionDescriptionPreference:Landroidx/preference/Preference;

    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mUseEncryptPrefererence:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mUseMobileDataUpdatePrefererence:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mShowHideFilePreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mHideCameraAndScreenshotsPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mHideCloudDriveFilesPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    const-string p1, "privacy_recall"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mPrivacyRecallPreference:Landroidx/preference/Preference;

    const-string p1, "extend_service_setting"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mExtendServicePreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mCancelAppPreference:Landroidx/preference/Preference;

    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mRestoreLauncherIcon:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mPrivacyPolicyPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mRestoreLauncherIcon:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/MiHomeUtils;->isFileExplorerHidden(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mHideCloudDriveFilesPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mPrivacyRecallPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mCancelAppPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mExtendServicePreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mExtendServicePreference:Landroidx/preference/Preference;

    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->isNotSupportMidrive()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mHideCameraAndScreenshotsPreference:Landroidx/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/fileexplorer/util/SettingsUtils;->isRecentHideCameraAndScreenShots()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mPermissionDescriptionPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isSupportPermissionDesc()Z

    move-result p1

    if-eqz p1, :cond_f2

    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mPermissionDescriptionPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_f7

    :cond_f2
    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mPermissionDescriptionPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_f7
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onExtraPaddingChanged(I)V
    .registers 2

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mShowHideFilePreference:Landroidx/preference/CheckBoxPreference;

    if-ne v0, p1, :cond_e

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->onOperationShowSysFiles(Z)V

    :cond_e
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mHideCloudDriveFilesPreference:Landroidx/preference/CheckBoxPreference;

    if-ne v0, p1, :cond_24

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/android/fileexplorer/util/SettingsUtils;->setRecentHideCloudFiles(Ljava/lang/Boolean;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/fileexplorer/commonlibrary/event/RecentHideChangeEvent;

    invoke-direct {v1}, Lcom/fileexplorer/commonlibrary/event/RecentHideChangeEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_24
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mUseEncryptPrefererence:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_2c

    invoke-static {v1}, Lcom/android/fileexplorer/model/SettingManager;->setShowEncrypt(Z)V

    :cond_2c
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mUseMobileDataUpdatePrefererence:Landroidx/preference/CheckBoxPreference;

    if-ne v0, p1, :cond_42

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/android/fileexplorer/util/SettingsUtils;->setCloudUseMobileDataUpdate(Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v2, v0}, Lcom/micloud/midrive/helper/SyncConfigHelper;->setTransferWithFreeNetwork(Landroid/content/Context;Z)V

    :cond_42
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mHideCameraAndScreenshotsPreference:Landroidx/preference/CheckBoxPreference;

    if-ne v0, p1, :cond_57

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {p2}, Lcom/android/fileexplorer/util/SettingsUtils;->setRecentHideCameraAndScreenShots(Ljava/lang/Boolean;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/fileexplorer/commonlibrary/event/RecentHideChangeEvent;

    invoke-direct {p2}, Lcom/fileexplorer/commonlibrary/event/RecentHideChangeEvent;-><init>()V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_57
    return v1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mPrivacyPolicyPreference:Landroidx/preference/Preference;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_d

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->openPrivatePolicy(Landroid/app/Activity;)V

    return v1

    :cond_d
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mRestoreLauncherIcon:Landroidx/preference/Preference;

    if-ne v0, p1, :cond_26

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/MiHomeUtils;->restoreFileExplorer(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mRestoreLauncherIcon:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/MiHomeUtils;->isFileExplorerHidden(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return v1

    :cond_26
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mPrivacyRecallPreference:Landroidx/preference/Preference;

    if-ne v0, p1, :cond_3c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDriveOpen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_38

    invoke-direct {p0, v1}, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->showMiDriveRevokeOrLogoutPage(Z)V

    goto :goto_3b

    :cond_38
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->showRecallDialog()V

    :goto_3b
    return v1

    :cond_3c
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mExtendServicePreference:Landroidx/preference/Preference;

    if-ne v0, p1, :cond_53

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v2, Lcom/android/fileexplorer/activity/ExtendServiceActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v1

    :cond_53
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mCancelAppPreference:Landroidx/preference/Preference;

    const/4 v2, 0x0

    if-ne v0, p1, :cond_5c

    invoke-direct {p0, v2}, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->showMiDriveRevokeOrLogoutPage(Z)V

    return v1

    :cond_5c
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mPermissionDescriptionPreference:Landroidx/preference/Preference;

    if-ne v0, p1, :cond_73

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v2, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v1

    :cond_73
    return v2
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mCancelAppPreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDriveOpen(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v0, "hide_cloud_drive_files"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->closeMiDriveTab()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v0, "cloud_drive_settings"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->closeMiDriveTab()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public onStart()V
    .registers 3

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStart()V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->mRestoreLauncherIcon:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/util/MiHomeUtils;->isFileExplorerHidden(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method
