.class public Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "ExtendServiceActivity.java"

# interfaces
.implements Landroidx/preference/Preference$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/activity/ExtendServiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtendSeviceSettingFragment"
.end annotation


# static fields
.field private static final INIT_COUNTDOWN:I = 0xa

.field private static final MSG_NEXT_STEP_INTERNAL:I = 0x3e8

.field private static final MSG_NEXT_STEP_WHAT:I = 0x64


# instance fields
.field private confirmStopDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mAutoNextStepTime:I

.field private mCurrentIsOpen:Z

.field private mExtendServicePref:Landroidx/preference/CheckBoxPreference;

.field private final mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->mCurrentIsOpen:Z

    .line 7
    new-instance v0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment$1;

    .line 9
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment$1;-><init>(Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;)V

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->mHandler:Landroid/os/Handler;

    .line 14
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;)Lmiuix/appcompat/app/AlertDialog;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->confirmStopDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->mAutoNextStepTime:I

    .line 3
    return p0
.end method

.method public static synthetic access$106(Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;)I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->mAutoNextStepTime:I

    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->mAutoNextStepTime:I

    .line 7
    return v0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;)Landroid/os/Handler;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->mHandler:Landroid/os/Handler;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;Ljava/lang/Boolean;Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->lambda$showConfirmStopDialog$1(Ljava/lang/Boolean;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c(Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->lambda$showConfirmStopDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic d(Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;Landroid/content/DialogInterface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->lambda$showConfirmStopDialog$3(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;Landroid/content/DialogInterface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->lambda$showConfirmStopDialog$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private extendSeviceChange(Ljava/lang/Boolean;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p1, :cond_10

    .line 8
    invoke-static {v0}, Lcom/android/fileexplorer/model/SettingActivitySpHelper;->setExtendOpen(Z)V

    .line 11
    iput-boolean v0, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->mCurrentIsOpen:Z

    .line 13
    invoke-static {}, Lcom/android/fileexplorer/util/FileExplorerActivityManager;->restartBySystemApi()V

    .line 16
    goto :goto_1b

    .line 17
    :cond_10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 23
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 25
    invoke-direct {p0, p1, v1}, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->showConfirmStopDialog(Lcom/android/fileexplorer/activity/BaseActivity;Ljava/lang/Boolean;)V

    .line 28
    :goto_1b
    return v0
.end method

.method private synthetic lambda$showConfirmStopDialog$0(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->mExtendServicePref:Landroidx/preference/CheckBoxPreference;

    .line 3
    const/4 p2, 0x1

    .line 4
    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 7
    return-void
.end method

.method private synthetic lambda$showConfirmStopDialog$1(Ljava/lang/Boolean;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p2

    .line 5
    invoke-static {p2}, Lcom/android/fileexplorer/model/SettingActivitySpHelper;->setExtendOpen(Z)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11
    move-result p2

    .line 12
    iput-boolean p2, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->mCurrentIsOpen:Z

    .line 14
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_1e

    .line 20
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    .line 23
    move-result-object p1

    .line 24
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p1, p2}, Lcom/android/cloud/CloudDriveManager;->clearCloudData(Landroid/content/Context;)V

    .line 31
    :cond_1e
    invoke-static {}, Lcom/android/fileexplorer/util/FileExplorerActivityManager;->restartBySystemApi()V

    .line 34
    return-void
.end method

.method private synthetic lambda$showConfirmStopDialog$2(Landroid/content/DialogInterface;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->confirmStopDialog:Lmiuix/appcompat/app/AlertDialog;

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

.method private synthetic lambda$showConfirmStopDialog$3(Landroid/content/DialogInterface;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->mHandler:Landroid/os/Handler;

    .line 3
    const/16 v0, 0x64

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    return-void
.end method

.method private showConfirmStopDialog(Lcom/android/fileexplorer/activity/BaseActivity;Ljava/lang/Boolean;)V
    .registers 6

    .line 1
    const/16 p1, 0xa

    .line 3
    iput p1, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->mAutoNextStepTime:I

    .line 5
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    move-result-object v0

    .line 11
    invoke-direct {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 14
    const v0, 0x7f1103fe

    .line 17
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 20
    const v0, 0x7f1103fd

    .line 23
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 26
    new-instance v0, Lcom/android/cloud/fragment/b;

    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-direct {v0, p0, v1}, Lcom/android/cloud/fragment/b;-><init>(Ljava/lang/Object;I)V

    .line 32
    const v1, 0x7f110050

    .line 35
    invoke-virtual {p1, v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    const v1, 0x7f1103fc

    .line 46
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v1, "("

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget v1, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->mAutoNextStepTime:I

    .line 60
    const-string v2, "s)"

    .line 62
    invoke-static {v0, v1, v2}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    new-instance v1, Lcom/android/cloud/a;

    .line 68
    const/4 v2, 0x3

    .line 69
    invoke-direct {v1, v2, p0, p2}, Lcom/android/cloud/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 75
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 78
    move-result-object p1

    .line 79
    iput-object p1, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->confirmStopDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 81
    new-instance p2, Lcom/android/fileexplorer/activity/a;

    .line 83
    const/4 v0, 0x0

    .line 84
    invoke-direct {p2, p0, v0}, Lcom/android/fileexplorer/activity/a;-><init>(Lmiuix/preference/PreferenceFragment;I)V

    .line 87
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 90
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->confirmStopDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 92
    new-instance p2, Lcom/android/fileexplorer/activity/b;

    .line 94
    invoke-direct {p2, p0, v0}, Lcom/android/fileexplorer/activity/b;-><init>(Lmiuix/preference/PreferenceFragment;I)V

    .line 97
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 100
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->confirmStopDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 102
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 105
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->confirmStopDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 107
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 110
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->mHandler:Landroid/os/Handler;

    .line 112
    const/16 p2, 0x64

    .line 114
    const-wide/16 v0, 0x3e8

    .line 116
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 119
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    iget-boolean p1, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->mCurrentIsOpen:Z

    .line 6
    invoke-static {p1}, Lcom/android/fileexplorer/model/SettingActivitySpHelper;->setExtendOpen(Z)V

    .line 9
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/high16 p1, 0x7f140000

    .line 6
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    .line 9
    const-string p1, "extend_service"

    .line 11
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroidx/preference/CheckBoxPreference;

    .line 17
    iput-object p1, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->mExtendServicePref:Landroidx/preference/CheckBoxPreference;

    .line 19
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    .line 22
    invoke-static {}, Lcom/android/fileexplorer/model/SettingActivitySpHelper;->getExtendOpen()Z

    .line 25
    move-result p1

    .line 26
    iput-boolean p1, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->mCurrentIsOpen:Z

    .line 28
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->mExtendServicePref:Landroidx/preference/CheckBoxPreference;

    .line 30
    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 33
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onExtraPaddingChanged(I)V
    .registers 2

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "extend_service"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_13

    .line 13
    check-cast p2, Ljava/lang/Boolean;

    .line 15
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->extendSeviceChange(Ljava/lang/Boolean;)Z

    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_13
    const/4 p1, 0x0

    .line 21
    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    iget-boolean p1, p0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->mCurrentIsOpen:Z

    .line 6
    invoke-static {p1}, Lcom/android/fileexplorer/model/SettingActivitySpHelper;->setExtendOpen(Z)V

    .line 9
    return-void
.end method
