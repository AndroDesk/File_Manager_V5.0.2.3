.class public Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil;
.super Ljava/lang/Object;
.source "AccountPreferenceDialogUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$OnAccountChangeListener;
    }
.end annotation


# static fields
.field private static final FTP_CODE_PREF:Ljava/lang/String; = "password"

.field private static final FTP_USERNAME_PREF:Ljava/lang/String; = "username"

.field private static final TAG:Ljava/lang/String; = "AccountPreferenceDialogUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Ljava/lang/String;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil;->checkContainSpecialCharacters(Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static checkContainSpecialCharacters(Ljava/lang/String;)Z
    .registers 2

    .line 1
    if-eqz p0, :cond_a

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_a

    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_a
    const-string v0, "^[a-zA-Z0-9]+$"

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 16
    move-result p0

    .line 17
    xor-int/lit8 p0, p0, 0x1

    .line 19
    return p0
.end method

.method public static checkUserNamePasswordPattern(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1f

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x4

    .line 12
    if-lt v0, v1, :cond_1f

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 17
    move-result v0

    .line 18
    const/16 v1, 0x10

    .line 20
    if-gt v0, v1, :cond_1f

    .line 22
    const-string v0, "^[a-zA-Z0-9]{4,16}$"

    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_1f

    .line 30
    const/4 p0, 0x1

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    const/4 p0, 0x0

    .line 33
    :goto_20
    return p0
.end method

.method public static ftpAccountValid(Landroid/text/Editable;Landroid/text/Editable;)Z
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_22

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_22

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil;->checkUserNamePasswordPattern(Ljava/lang/String;)Z

    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_22

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0}, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil;->checkUserNamePasswordPattern(Ljava/lang/String;)Z

    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_22

    .line 33
    const/4 p0, 0x1

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    const/4 p0, 0x0

    .line 36
    :goto_23
    return p0
.end method

.method public static hasFTPAccount()Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "username"

    .line 11
    const-string v2, ""

    .line 13
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil;->checkUserNamePasswordPattern(Ljava/lang/String;)Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_24

    .line 23
    const-string v1, "password"

    .line 25
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil;->checkUserNamePasswordPattern(Ljava/lang/String;)Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_24

    .line 35
    const/4 v0, 0x1

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    const/4 v0, 0x0

    .line 38
    :goto_25
    return v0
.end method

.method public static isAccountValid()Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "username"

    .line 11
    const-string v2, ""

    .line 13
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil;->checkUserNamePasswordPattern(Ljava/lang/String;)Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_24

    .line 23
    const-string v1, "password"

    .line 25
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil;->checkUserNamePasswordPattern(Ljava/lang/String;)Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_24

    .line 35
    const/4 v0, 0x1

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    const/4 v0, 0x0

    .line 38
    :goto_25
    return v0
.end method

.method public static saveFTPAccount(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "username"

    .line 15
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 18
    const-string p0, "password"

    .line 20
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 23
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 26
    return-void
.end method

.method public static showInputFTPAccountDialog(Landroid/content/Context;Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$OnAccountChangeListener;)V
    .registers 13

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0d0084

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    const v1, 0x7f0a0481

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/widget/EditText;

    .line 22
    const v3, 0x7f0a0303

    .line 25
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Landroid/widget/EditText;

    .line 31
    const v4, 0x7f0a0482

    .line 34
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Landroid/widget/TextView;

    .line 40
    const v5, 0x7f0a0305

    .line 43
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    move-result-object v5

    .line 47
    check-cast v5, Landroid/widget/ImageView;

    .line 49
    const v6, 0x7f0a0032

    .line 52
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object v6

    .line 56
    check-cast v6, Landroid/widget/TextView;

    .line 58
    const/4 v7, 0x2

    .line 59
    new-array v7, v7, [Ljava/lang/Object;

    .line 61
    const/4 v8, 0x4

    .line 62
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object v8

    .line 66
    const/4 v9, 0x0

    .line 67
    aput-object v8, v7, v9

    .line 69
    const/16 v8, 0x10

    .line 71
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    move-result-object v8

    .line 75
    const/4 v10, 0x1

    .line 76
    aput-object v8, v7, v10

    .line 78
    const v8, 0x7f1101bf

    .line 81
    invoke-static {v8, v7}, Lcom/android/fileexplorer/util/ResUtil;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    move-result-object v7

    .line 85
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {v5}, Landroid/view/View;->isSelected()Z

    .line 91
    move-result v6

    .line 92
    if-eqz v6, :cond_61

    .line 94
    const v6, 0x7f11011c

    .line 97
    goto :goto_64

    .line 98
    :cond_61
    const v6, 0x7f11011b

    .line 101
    :goto_64
    invoke-static {v6}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 104
    move-result-object v6

    .line 105
    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 108
    new-instance v6, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$1;

    .line 110
    invoke-direct {v6, v5, v3}, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$1;-><init>(Landroid/widget/ImageView;Landroid/widget/EditText;)V

    .line 113
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 119
    move-result-object v5

    .line 120
    const-string v6, "username"

    .line 122
    const-string v7, ""

    .line 124
    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    move-result-object v5

    .line 128
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 131
    move-result-object v6

    .line 132
    const-string v8, "password"

    .line 134
    invoke-interface {v6, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    move-result-object v6

    .line 138
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 147
    new-instance v5, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$2;

    .line 149
    invoke-direct {v5, v1, v4}, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$2;-><init>(Landroid/widget/EditText;Landroid/widget/TextView;)V

    .line 152
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 155
    new-instance v4, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 157
    invoke-direct {v4, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 160
    const v5, 0x7f1101c9

    .line 163
    invoke-virtual {v4, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 166
    move-result-object v4

    .line 167
    const v5, 0x7f1100eb

    .line 170
    invoke-virtual {v4, v5, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 173
    move-result-object v2

    .line 174
    new-instance v4, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$4;

    .line 176
    invoke-direct {v4}, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$4;-><init>()V

    .line 179
    invoke-virtual {v2, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 182
    move-result-object v2

    .line 183
    const v4, 0x7f110050

    .line 186
    new-instance v5, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$3;

    .line 188
    invoke-direct {v5, p1}, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$3;-><init>(Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$OnAccountChangeListener;)V

    .line 191
    invoke-virtual {v2, v4, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {v2, v9}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 198
    move-result-object v2

    .line 199
    invoke-virtual {v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 202
    move-result-object v2

    .line 203
    invoke-virtual {v2, v0}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 206
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 209
    check-cast p0, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 211
    invoke-static {p0, v10, v1}, Lcom/android/fileexplorer/util/AppUtils;->showSoftInput(Landroid/app/Activity;ZLandroid/widget/EditText;)V

    .line 214
    const/4 p0, -0x1

    .line 215
    invoke-virtual {v2, p0}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 218
    move-result-object p0

    .line 219
    new-instance v0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$5;

    .line 221
    invoke-direct {v0, v1, v3, v2, p1}, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$5;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;Lmiuix/appcompat/app/AlertDialog;Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$OnAccountChangeListener;)V

    .line 224
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    return-void
.end method
