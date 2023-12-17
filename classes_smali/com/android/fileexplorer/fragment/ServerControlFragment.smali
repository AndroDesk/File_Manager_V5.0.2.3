.class public Lcom/android/fileexplorer/fragment/ServerControlFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "ServerControlFragment.java"

# interfaces
.implements Landroidx/preference/Preference$c;
.implements Landroidx/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/fragment/ServerControlFragment$OnAccountCallback;
    }
.end annotation


# static fields
.field public static final ANONYMOUS_LOGIN:Ljava/lang/String; = "anonymous_login"

.field public static final ANONYMOUS_LOGIN_NEW:Ljava/lang/String; = "anonymous_login_new"

.field public static final CHARSET_PREF:Ljava/lang/String; = "pref_charset"

.field private static final PREF_ACCOUNT_PREF:Ljava/lang/String; = "pref_ftp_account"

.field private static final PREF_BIG5_KEY:Ljava/lang/String; = "pref_charset_big5"

.field private static final PREF_GBK_KEY:Ljava/lang/String; = "pref_charset_gbk"

.field private static final PREF_PORT_NUMBER:Ljava/lang/String; = "portNum"

.field private static final PREF_UTF8_KEY:Ljava/lang/String; = "pref_charset_utf8"

.field private static final TAG:Ljava/lang/String; = "ServerControlFragment"


# instance fields
.field private mAccountPreference:Landroidx/preference/Preference;

.field private mAnonymousLoginPref:Landroidx/preference/CheckBoxPreference;

.field private mBig5Pref:Lmiuix/preference/RadioButtonPreference;

.field private mGBKPref:Lmiuix/preference/RadioButtonPreference;

.field private mOnAccountCallback:Lcom/android/fileexplorer/fragment/ServerControlFragment$OnAccountCallback;

.field private mPortNumPref:Landroidx/preference/EditTextPreference;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mUTF8Pref:Lmiuix/preference/RadioButtonPreference;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/fileexplorer/fragment/ServerControlFragment$OnAccountCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/fileexplorer/fragment/ServerControlFragment$OnAccountCallback;-><init>(Lcom/android/fileexplorer/fragment/ServerControlFragment;Lcom/android/fileexplorer/fragment/ServerControlFragment$1;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mOnAccountCallback:Lcom/android/fileexplorer/fragment/ServerControlFragment$OnAccountCallback;

    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/ServerControlFragment;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/ServerControlFragment;->handleOnAccountSet(Z)V

    return-void
.end method

.method private handleOnAccountSet(Z)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnAccountSet, newValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServerControlFragment"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mAnonymousLoginPref:Landroidx/preference/CheckBoxPreference;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    xor-int/lit8 p1, p1, 0x1

    const-string v1, "anonymous_login_new"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private showWarningDialog()V
    .registers 4

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1101c2

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1101c1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/fragment/ServerControlFragment$2;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/ServerControlFragment$2;-><init>(Lcom/android/fileexplorer/fragment/ServerControlFragment;)V

    const v2, 0x7f1100eb

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/fragment/ServerControlFragment$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/ServerControlFragment$1;-><init>(Lcom/android/fileexplorer/fragment/ServerControlFragment;)V

    const v2, 0x7f110050

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f140009

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string p1, "pref_charset_utf8"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/RadioButtonPreference;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mUTF8Pref:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string p1, "pref_charset_gbk"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/RadioButtonPreference;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mGBKPref:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string p1, "pref_charset_big5"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/RadioButtonPreference;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mBig5Pref:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v0, Lorg/swiftp/Defaults;->SESSION_ENCODING:Ljava/lang/String;

    const-string v1, "pref_charset"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_53

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mUTF8Pref:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_66

    :cond_53
    const-string v0, "big5"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_61

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mBig5Pref:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_66

    :cond_61
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mGBKPref:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_66
    const-string p1, "portNum"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mPortNumPref:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mPortNumPref:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mPortNumPref:Landroidx/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/16 v2, 0x849

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string p1, "anonymous_login"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mAnonymousLoginPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mAnonymousLoginPref.isChecked = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mAnonymousLoginPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ServerControlFragment"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mAnonymousLoginPref:Landroidx/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "anonymous_login_new"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const-string p1, "pref_ftp_account"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mAccountPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

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
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mPortNumPref:Landroidx/preference/EditTextPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_29

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->checkPortNumPattern(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_22

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mPortNumPref:Landroidx/preference/EditTextPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return v2

    :cond_22
    const p1, 0x7f110365

    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    return v1

    :cond_29
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mAnonymousLoginPref:Landroidx/preference/CheckBoxPreference;

    if-ne v0, p1, :cond_6d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPreferenceChange newValue = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ServerControlFragment"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_64

    invoke-static {}, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil;->isAccountValid()Z

    move-result p1

    if-eqz p1, :cond_55

    invoke-direct {p0, v2}, Lcom/android/fileexplorer/fragment/ServerControlFragment;->handleOnAccountSet(Z)V

    goto :goto_6c

    :cond_55
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mOnAccountCallback:Lcom/android/fileexplorer/fragment/ServerControlFragment$OnAccountCallback;

    invoke-virtual {p1, v2}, Lcom/android/fileexplorer/fragment/ServerControlFragment$OnAccountCallback;->setHandleAccountSet(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mOnAccountCallback:Lcom/android/fileexplorer/fragment/ServerControlFragment$OnAccountCallback;

    invoke-static {p1, p2}, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil;->showInputFTPAccountDialog(Landroid/content/Context;Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$OnAccountChangeListener;)V

    goto :goto_6c

    :cond_64
    const-string p1, "onPreferenceChange mAnonymousLoginPref , is true"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/ServerControlFragment;->showWarningDialog()V

    :goto_6c
    return v2

    :cond_6d
    return v1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mUTF8Pref:Lmiuix/preference/RadioButtonPreference;

    const-string v2, "pref_charset"

    const/4 v3, 0x1

    if-ne p1, v1, :cond_17

    const-string p1, "UTF-8"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v3

    :cond_17
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mGBKPref:Lmiuix/preference/RadioButtonPreference;

    if-ne p1, v1, :cond_25

    const-string p1, "GBK"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v3

    :cond_25
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mBig5Pref:Lmiuix/preference/RadioButtonPreference;

    if-ne p1, v1, :cond_33

    const-string p1, "big5"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v3

    :cond_33
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mPortNumPref:Landroidx/preference/EditTextPreference;

    if-ne p1, v0, :cond_43

    invoke-virtual {v0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    return v3

    :cond_43
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pref_ftp_account"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5e

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mOnAccountCallback:Lcom/android/fileexplorer/fragment/ServerControlFragment$OnAccountCallback;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/fragment/ServerControlFragment$OnAccountCallback;->setHandleAccountSet(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mOnAccountCallback:Lcom/android/fileexplorer/fragment/ServerControlFragment$OnAccountCallback;

    invoke-static {p1, v1}, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil;->showInputFTPAccountDialog(Landroid/content/Context;Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$OnAccountChangeListener;)V

    :cond_5e
    return v0
.end method
