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
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    .line 4
    new-instance v0, Lcom/android/fileexplorer/fragment/ServerControlFragment$OnAccountCallback;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/android/fileexplorer/fragment/ServerControlFragment$OnAccountCallback;-><init>(Lcom/android/fileexplorer/fragment/ServerControlFragment;Lcom/android/fileexplorer/fragment/ServerControlFragment$1;)V

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mOnAccountCallback:Lcom/android/fileexplorer/fragment/ServerControlFragment$OnAccountCallback;

    .line 12
    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/ServerControlFragment;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/ServerControlFragment;->handleOnAccountSet(Z)V

    .line 4
    return-void
.end method

.method private handleOnAccountSet(Z)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "handleOnAccountSet, newValue = "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "ServerControlFragment"

    .line 20
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mAnonymousLoginPref:Landroidx/preference/CheckBoxPreference;

    .line 25
    xor-int/lit8 v1, p1, 0x1

    .line 27
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 30
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 32
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 35
    move-result-object v0

    .line 36
    xor-int/lit8 p1, p1, 0x1

    .line 38
    const-string v1, "anonymous_login_new"

    .line 40
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 43
    move-result-object p1

    .line 44
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 47
    return-void
.end method

.method private showWarningDialog()V
    .registers 4

    .line 1
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10
    const v1, 0x7f1101c2

    .line 13
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 16
    move-result-object v0

    .line 17
    const v1, 0x1010355

    .line 20
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 23
    move-result-object v0

    .line 24
    const v1, 0x7f1101c1

    .line 27
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Lcom/android/fileexplorer/fragment/ServerControlFragment$2;

    .line 33
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/ServerControlFragment$2;-><init>(Lcom/android/fileexplorer/fragment/ServerControlFragment;)V

    .line 36
    const v2, 0x7f1100eb

    .line 39
    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 42
    move-result-object v0

    .line 43
    new-instance v1, Lcom/android/fileexplorer/fragment/ServerControlFragment$1;

    .line 45
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/ServerControlFragment$1;-><init>(Lcom/android/fileexplorer/fragment/ServerControlFragment;)V

    .line 48
    const v2, 0x7f110050

    .line 51
    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 54
    move-result-object v0

    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 67
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const p1, 0x7f140009

    .line 7
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 20
    const-string p1, "pref_charset_utf8"

    .line 22
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lmiuix/preference/RadioButtonPreference;

    .line 28
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mUTF8Pref:Lmiuix/preference/RadioButtonPreference;

    .line 30
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    .line 33
    const-string p1, "pref_charset_gbk"

    .line 35
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lmiuix/preference/RadioButtonPreference;

    .line 41
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mGBKPref:Lmiuix/preference/RadioButtonPreference;

    .line 43
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    .line 46
    const-string p1, "pref_charset_big5"

    .line 48
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lmiuix/preference/RadioButtonPreference;

    .line 54
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mBig5Pref:Lmiuix/preference/RadioButtonPreference;

    .line 56
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    .line 59
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 61
    sget-object v0, Lorg/swiftp/Defaults;->SESSION_ENCODING:Ljava/lang/String;

    .line 63
    const-string v1, "pref_charset"

    .line 65
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    const-string v0, "UTF-8"

    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v0

    .line 75
    const/4 v1, 0x1

    .line 76
    if-eqz v0, :cond_53

    .line 78
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mUTF8Pref:Lmiuix/preference/RadioButtonPreference;

    .line 80
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 83
    goto :goto_66

    .line 84
    :cond_53
    const-string v0, "big5"

    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_61

    .line 92
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mBig5Pref:Lmiuix/preference/RadioButtonPreference;

    .line 94
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 97
    goto :goto_66

    .line 98
    :cond_61
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mGBKPref:Lmiuix/preference/RadioButtonPreference;

    .line 100
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 103
    :goto_66
    const-string p1, "portNum"

    .line 105
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Landroidx/preference/EditTextPreference;

    .line 111
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mPortNumPref:Landroidx/preference/EditTextPreference;

    .line 113
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    .line 116
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mPortNumPref:Landroidx/preference/EditTextPreference;

    .line 118
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    .line 121
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mPortNumPref:Landroidx/preference/EditTextPreference;

    .line 123
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 125
    const/16 v2, 0x849

    .line 127
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 130
    move-result-object v2

    .line 131
    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 138
    const-string p1, "anonymous_login"

    .line 140
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 143
    move-result-object p1

    .line 144
    check-cast p1, Landroidx/preference/CheckBoxPreference;

    .line 146
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mAnonymousLoginPref:Landroidx/preference/CheckBoxPreference;

    .line 148
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    .line 151
    new-instance p1, Ljava/lang/StringBuilder;

    .line 153
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    const-string v0, "mAnonymousLoginPref.isChecked = "

    .line 158
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mAnonymousLoginPref:Landroidx/preference/CheckBoxPreference;

    .line 163
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    .line 166
    move-result v0

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    move-result-object p1

    .line 174
    const-string v0, "ServerControlFragment"

    .line 176
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mAnonymousLoginPref:Landroidx/preference/CheckBoxPreference;

    .line 181
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 183
    const/4 v1, 0x0

    .line 184
    const-string v2, "anonymous_login_new"

    .line 186
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 189
    move-result v0

    .line 190
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 193
    const-string p1, "pref_ftp_account"

    .line 195
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 198
    move-result-object p1

    .line 199
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mAccountPreference:Landroidx/preference/Preference;

    .line 201
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    .line 204
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mPortNumPref:Landroidx/preference/EditTextPreference;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne p1, v0, :cond_29

    .line 7
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->checkPortNumPattern(Ljava/lang/String;)Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_22

    .line 17
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mPortNumPref:Landroidx/preference/EditTextPreference;

    .line 19
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    move-result-object p2

    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 26
    move-result p2

    .line 27
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 34
    return v2

    .line 35
    :cond_22
    const p1, 0x7f110365

    .line 38
    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 41
    return v1

    .line 42
    :cond_29
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mAnonymousLoginPref:Landroidx/preference/CheckBoxPreference;

    .line 44
    if-ne v0, p1, :cond_6d

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    const-string v0, "onPreferenceChange newValue = "

    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    const-string v0, "ServerControlFragment"

    .line 65
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    check-cast p2, Ljava/lang/Boolean;

    .line 70
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_64

    .line 76
    invoke-static {}, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil;->isAccountValid()Z

    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_55

    .line 82
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/fragment/ServerControlFragment;->handleOnAccountSet(Z)V

    .line 85
    goto :goto_6c

    .line 86
    :cond_55
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mOnAccountCallback:Lcom/android/fileexplorer/fragment/ServerControlFragment$OnAccountCallback;

    .line 88
    invoke-virtual {p1, v2}, Lcom/android/fileexplorer/fragment/ServerControlFragment$OnAccountCallback;->setHandleAccountSet(Z)V

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 94
    move-result-object p1

    .line 95
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mOnAccountCallback:Lcom/android/fileexplorer/fragment/ServerControlFragment$OnAccountCallback;

    .line 97
    invoke-static {p1, p2}, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil;->showInputFTPAccountDialog(Landroid/content/Context;Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$OnAccountChangeListener;)V

    .line 100
    goto :goto_6c

    .line 101
    :cond_64
    const-string p1, "onPreferenceChange mAnonymousLoginPref , is true"

    .line 103
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/ServerControlFragment;->showWarningDialog()V

    .line 109
    :goto_6c
    return v2

    .line 110
    :cond_6d
    return v1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mUTF8Pref:Lmiuix/preference/RadioButtonPreference;

    .line 9
    const-string v2, "pref_charset"

    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne p1, v1, :cond_17

    .line 14
    const-string p1, "UTF-8"

    .line 16
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 23
    return v3

    .line 24
    :cond_17
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mGBKPref:Lmiuix/preference/RadioButtonPreference;

    .line 26
    if-ne p1, v1, :cond_25

    .line 28
    const-string p1, "GBK"

    .line 30
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 33
    move-result-object p1

    .line 34
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 37
    return v3

    .line 38
    :cond_25
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mBig5Pref:Lmiuix/preference/RadioButtonPreference;

    .line 40
    if-ne p1, v1, :cond_33

    .line 42
    const-string p1, "big5"

    .line 44
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47
    move-result-object p1

    .line 48
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 51
    return v3

    .line 52
    :cond_33
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mPortNumPref:Landroidx/preference/EditTextPreference;

    .line 54
    if-ne p1, v0, :cond_43

    .line 56
    invoke-virtual {v0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    .line 59
    move-result-object p1

    .line 60
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {v0, p1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 67
    return v3

    .line 68
    :cond_43
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    const-string v0, "pref_ftp_account"

    .line 74
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 77
    move-result p1

    .line 78
    const/4 v0, 0x0

    .line 79
    if-eqz p1, :cond_5e

    .line 81
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mOnAccountCallback:Lcom/android/fileexplorer/fragment/ServerControlFragment$OnAccountCallback;

    .line 83
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/fragment/ServerControlFragment$OnAccountCallback;->setHandleAccountSet(Z)V

    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 89
    move-result-object p1

    .line 90
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment;->mOnAccountCallback:Lcom/android/fileexplorer/fragment/ServerControlFragment$OnAccountCallback;

    .line 92
    invoke-static {p1, v1}, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil;->showInputFTPAccountDialog(Landroid/content/Context;Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$OnAccountChangeListener;)V

    .line 95
    :cond_5e
    return v0
.end method
