.class public Lcom/android/fileexplorer/activity/ServerControlActivity;
.super Lcom/android/fileexplorer/activity/BaseActivity;
.source "ServerControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private instructionText:Landroid/widget/TextView;

.field private instructionTextPre:Landroid/widget/TextView;

.field private ipText:Landroid/widget/TextView;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mFtpService:Lcom/android/fileexplorer/service/FTPServerService;

.field private mSettingButton:Landroid/widget/ImageButton;

.field private startStopButton:Landroid/view/View;

.field private wifiReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lcom/android/fileexplorer/activity/ServerControlActivity;

    .line 3
    const-string v0, "ServerControlActivity"

    .line 5
    sput-object v0, Lcom/android/fileexplorer/activity/ServerControlActivity;->TAG:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/BaseActivity;-><init>()V

    .line 4
    new-instance v0, Lcom/android/fileexplorer/activity/ServerControlActivity$3;

    .line 6
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/activity/ServerControlActivity$3;-><init>(Lcom/android/fileexplorer/activity/ServerControlActivity;)V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 11
    new-instance v0, Lcom/android/fileexplorer/activity/ServerControlActivity$4;

    .line 13
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/activity/ServerControlActivity$4;-><init>(Lcom/android/fileexplorer/activity/ServerControlActivity;)V

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->wifiReceiver:Landroid/content/BroadcastReceiver;

    .line 18
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/activity/ServerControlActivity;)Lcom/android/fileexplorer/service/FTPServerService;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->mFtpService:Lcom/android/fileexplorer/service/FTPServerService;

    .line 3
    return-object p0
.end method

.method public static synthetic access$002(Lcom/android/fileexplorer/activity/ServerControlActivity;Lcom/android/fileexplorer/service/FTPServerService;)Lcom/android/fileexplorer/service/FTPServerService;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->mFtpService:Lcom/android/fileexplorer/service/FTPServerService;

    .line 3
    return-object p1
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/activity/ServerControlActivity;->TAG:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/activity/ServerControlActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ServerControlActivity;->startFTPService()V

    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/activity/ServerControlActivity;Lcom/android/fileexplorer/model/StorageInfo;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/ServerControlActivity;->runService(Lcom/android/fileexplorer/model/StorageInfo;)V

    .line 4
    return-void
.end method

.method private initActionBar()V
    .registers 3

    .line 1
    new-instance v0, Landroid/widget/ImageButton;

    .line 3
    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->mSettingButton:Landroid/widget/ImageButton;

    .line 8
    const v1, 0x7f0801dc

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->mSettingButton:Landroid/widget/ImageButton;

    .line 16
    const v1, 0x7f1103c6

    .line 19
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 26
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_24

    .line 32
    iget-object v1, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->mSettingButton:Landroid/widget/ImageButton;

    .line 34
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    .line 37
    :cond_24
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->mSettingButton:Landroid/widget/ImageButton;

    .line 39
    new-instance v1, Lcom/android/fileexplorer/activity/ServerControlActivity$2;

    .line 41
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/activity/ServerControlActivity$2;-><init>(Lcom/android/fileexplorer/activity/ServerControlActivity;)V

    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void
.end method

.method private isAnonymousLogin()Z
    .registers 6

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "anonymous_login"

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 15
    move-result v3

    .line 16
    const-string v4, "anonymous_login_new"

    .line 18
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 21
    move-result v2

    .line 22
    if-eq v3, v2, :cond_22

    .line 24
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 35
    :cond_22
    return v2
.end method

.method private runService(Lcom/android/fileexplorer/model/StorageInfo;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isMounted()Z

    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/activity/ServerControlActivity;->warnIfNoExternalStorage(Z)V

    .line 8
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isMounted()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_2d

    .line 14
    new-instance v0, Ljava/io/File;

    .line 16
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_1d

    .line 29
    return-void

    .line 30
    :cond_1d
    invoke-static {v0}, Lorg/swiftp/Globals;->setChrootDir(Ljava/io/File;)V

    .line 33
    new-instance p1, Landroid/content/Intent;

    .line 35
    const-class v0, Lcom/android/fileexplorer/service/FTPServerService;

    .line 37
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 46
    :cond_2d
    return-void
.end method

.method private showInputFTPAccountDialog()V
    .registers 2

    .line 1
    new-instance v0, Lcom/android/fileexplorer/activity/ServerControlActivity$5;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/activity/ServerControlActivity$5;-><init>(Lcom/android/fileexplorer/activity/ServerControlActivity;)V

    .line 6
    invoke-static {p0, v0}, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil;->showInputFTPAccountDialog(Landroid/content/Context;Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$OnAccountChangeListener;)V

    .line 9
    return-void
.end method

.method private startFTPService()V
    .registers 6

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getMountVolumeList()Ljava/util/ArrayList;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_f

    .line 15
    return-void

    .line 16
    :cond_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x1

    .line 22
    if-gt v1, v3, :cond_21

    .line 24
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/android/fileexplorer/model/StorageInfo;

    .line 30
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/activity/ServerControlActivity;->runService(Lcom/android/fileexplorer/model/StorageInfo;)V

    .line 33
    return-void

    .line 34
    :cond_21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 37
    move-result v1

    .line 38
    new-array v1, v1, [Ljava/lang/String;

    .line 40
    :goto_27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 43
    move-result v3

    .line 44
    if-ge v2, v3, :cond_4f

    .line 46
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Lcom/android/fileexplorer/model/StorageInfo;

    .line 52
    invoke-virtual {v3}, Lcom/android/fileexplorer/model/StorageInfo;->getDescription()Ljava/lang/String;

    .line 55
    move-result-object v4

    .line 56
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_46

    .line 62
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v4, v3}, Lcom/android/fileexplorer/model/StorageHelper;->getVolumeDescription(Lcom/android/fileexplorer/model/StorageInfo;)Ljava/lang/String;

    .line 69
    move-result-object v3

    .line 70
    goto :goto_4a

    .line 71
    :cond_46
    invoke-virtual {v3}, Lcom/android/fileexplorer/model/StorageInfo;->getDescription()Ljava/lang/String;

    .line 74
    move-result-object v3

    .line 75
    :goto_4a
    aput-object v3, v1, v2

    .line 77
    add-int/lit8 v2, v2, 0x1

    .line 79
    goto :goto_27

    .line 80
    :cond_4f
    new-instance v2, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 82
    invoke-direct {v2, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 85
    const v3, 0x7f1103c2

    .line 88
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 95
    move-result-object v2

    .line 96
    new-instance v3, Lcom/android/fileexplorer/activity/ServerControlActivity$7;

    .line 98
    invoke-direct {v3, p0, v0}, Lcom/android/fileexplorer/activity/ServerControlActivity$7;-><init>(Lcom/android/fileexplorer/activity/ServerControlActivity;Ljava/util/ArrayList;)V

    .line 101
    invoke-virtual {v2, v1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 104
    move-result-object v0

    .line 105
    const v1, 0x7f110050

    .line 108
    new-instance v2, Lcom/android/fileexplorer/activity/ServerControlActivity$6;

    .line 110
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/activity/ServerControlActivity$6;-><init>(Lcom/android/fileexplorer/activity/ServerControlActivity;)V

    .line 113
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 124
    return-void
.end method

.method private unbindServiceCheck()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->mFtpService:Lcom/android/fileexplorer/service/FTPServerService;

    .line 3
    if-eqz v0, :cond_28

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/service/FTPServerService;->isRunning()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_28

    .line 11
    :try_start_a
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_f} :catch_11

    .line 16
    const/4 v0, 0x1

    .line 17
    return v0

    .line 18
    :catch_11
    move-exception v0

    .line 19
    sget-object v1, Lcom/android/fileexplorer/activity/ServerControlActivity;->TAG:Ljava/lang/String;

    .line 21
    const-string v2, "unbindServiceCheck error: "

    .line 23
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_28
    const/4 v0, 0x0

    .line 42
    return v0
.end method

.method private updateUi()V
    .registers 10

    .line 1
    sget-object v0, Lcom/android/fileexplorer/activity/ServerControlActivity;->TAG:Ljava/lang/String;

    .line 3
    const-string v1, "Updating UI"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    move-result-object v1

    .line 12
    const-string v2, "wifi"

    .line 14
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 20
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x1

    .line 25
    const/4 v3, 0x0

    .line 26
    if-eqz v1, :cond_23

    .line 28
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_23

    .line 34
    move v1, v2

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    move v1, v3

    .line 37
    :goto_24
    const v4, 0x7f0a04b2

    .line 40
    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Landroid/widget/ImageView;

    .line 46
    const v5, 0x7f080233

    .line 49
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    invoke-virtual {v4, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 55
    iget-object v4, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->mFtpService:Lcom/android/fileexplorer/service/FTPServerService;

    .line 57
    if-eqz v4, :cond_41

    .line 59
    invoke-virtual {v4}, Lcom/android/fileexplorer/service/FTPServerService;->isRunning()Z

    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_41

    .line 65
    goto :goto_42

    .line 66
    :cond_41
    move v2, v3

    .line 67
    :goto_42
    if-eqz v2, :cond_94

    .line 69
    const-string v4, "updateUi: server is running"

    .line 71
    invoke-static {v0, v4}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->mFtpService:Lcom/android/fileexplorer/service/FTPServerService;

    .line 76
    invoke-virtual {v0}, Lcom/android/fileexplorer/service/FTPServerService;->getWifiIp()Ljava/net/InetAddress;

    .line 79
    move-result-object v0

    .line 80
    const-string v4, ""

    .line 82
    if-eqz v0, :cond_8c

    .line 84
    const-string v5, ":"

    .line 86
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    move-result-object v5

    .line 90
    iget-object v6, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->mFtpService:Lcom/android/fileexplorer/service/FTPServerService;

    .line 92
    invoke-virtual {v6}, Lcom/android/fileexplorer/service/FTPServerService;->getPort()I

    .line 95
    move-result v6

    .line 96
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object v5

    .line 103
    iget-object v6, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->ipText:Landroid/widget/TextView;

    .line 105
    const-string v7, "ftp://"

    .line 107
    invoke-static {v7}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    move-result-object v7

    .line 111
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->mFtpService:Lcom/android/fileexplorer/service/FTPServerService;

    .line 120
    invoke-virtual {v0}, Lcom/android/fileexplorer/service/FTPServerService;->getPort()I

    .line 123
    move-result v0

    .line 124
    const/16 v8, 0x15

    .line 126
    if-ne v0, v8, :cond_80

    .line 128
    goto :goto_81

    .line 129
    :cond_80
    move-object v4, v5

    .line 130
    :goto_81
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    goto :goto_94

    .line 141
    :cond_8c
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ServerControlActivity;->unbindServiceCheck()Z

    .line 144
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->ipText:Landroid/widget/TextView;

    .line 146
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :cond_94
    :goto_94
    const v0, 0x7f0a03dd

    .line 152
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 155
    move-result-object v0

    .line 156
    check-cast v0, Landroid/widget/TextView;

    .line 158
    iget-object v4, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->startStopButton:Landroid/view/View;

    .line 160
    invoke-virtual {v4, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 163
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 166
    if-eqz v1, :cond_c7

    .line 168
    if-eqz v2, :cond_ad

    .line 170
    const v1, 0x7f1103ff

    .line 173
    goto :goto_b0

    .line 174
    :cond_ad
    const v1, 0x7f1103f8

    .line 177
    :goto_b0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 180
    if-eqz v2, :cond_b9

    .line 182
    const v1, 0x7f080232

    .line 185
    goto :goto_bc

    .line 186
    :cond_b9
    const v1, 0x7f080231

    .line 189
    :goto_bc
    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 192
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->mSettingButton:Landroid/widget/ImageButton;

    .line 194
    xor-int/lit8 v1, v2, 0x1

    .line 196
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 199
    goto :goto_d3

    .line 200
    :cond_c7
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ServerControlActivity;->unbindServiceCheck()Z

    .line 203
    const v1, 0x7f1102d6

    .line 206
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 209
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 212
    :goto_d3
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->ipText:Landroid/widget/TextView;

    .line 214
    const/16 v1, 0x8

    .line 216
    if-eqz v2, :cond_db

    .line 218
    move v4, v3

    .line 219
    goto :goto_dc

    .line 220
    :cond_db
    move v4, v1

    .line 221
    :goto_dc
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->ipText:Landroid/widget/TextView;

    .line 226
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 229
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->instructionText:Landroid/widget/TextView;

    .line 231
    if-eqz v2, :cond_ea

    .line 233
    move v4, v3

    .line 234
    goto :goto_eb

    .line 235
    :cond_ea
    move v4, v1

    .line 236
    :goto_eb
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->instructionTextPre:Landroid/widget/TextView;

    .line 241
    if-eqz v2, :cond_f3

    .line 243
    goto :goto_f4

    .line 244
    :cond_f3
    move v1, v3

    .line 245
    :goto_f4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 248
    invoke-static {}, Lorg/swiftp/Globals;->getLastError()Ljava/lang/String;

    .line 251
    move-result-object v0

    .line 252
    if-eqz v0, :cond_10c

    .line 254
    invoke-static {}, Lorg/swiftp/Globals;->getLastError()Ljava/lang/String;

    .line 257
    move-result-object v0

    .line 258
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 261
    move-result-object v0

    .line 262
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 265
    const/4 v0, 0x0

    .line 266
    invoke-static {v0}, Lorg/swiftp/Globals;->setLastError(Ljava/lang/String;)V

    .line 269
    :cond_10c
    return-void
.end method

.method private warnIfNoExternalStorage(Z)V
    .registers 4

    .line 1
    if-nez p1, :cond_1a

    .line 3
    sget-object p1, Lcom/android/fileexplorer/activity/ServerControlActivity;->TAG:Ljava/lang/String;

    .line 5
    const-string v0, "Warning due to storage state "

    .line 7
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const p1, 0x7f110406

    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 17
    move-result-object p1

    .line 18
    const/16 v0, 0x11

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p1, v0, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 24
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 27
    :cond_1a
    return-void
.end method


# virtual methods
.method public getSettings()Landroid/content/SharedPreferences;
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/service/FTPServerService;->getSettings()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    goto :goto_c

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    .line 12
    move-result-object v0

    .line 13
    :goto_c
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    const v0, 0x7f0a03dc

    .line 8
    if-eq p1, v0, :cond_1a

    .line 10
    const v0, 0x7f0a04b1

    .line 13
    if-eq p1, v0, :cond_f

    .line 15
    goto :goto_38

    .line 16
    :cond_f
    new-instance p1, Landroid/content/Intent;

    .line 18
    const-string v0, "android.settings.WIFI_SETTINGS"

    .line 20
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 26
    goto :goto_38

    .line 27
    :cond_1a
    const/4 p1, 0x0

    .line 28
    invoke-static {p1}, Lorg/swiftp/Globals;->setLastError(Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ServerControlActivity;->unbindServiceCheck()Z

    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_25

    .line 37
    return-void

    .line 38
    :cond_25
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ServerControlActivity;->isAnonymousLogin()Z

    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_35

    .line 44
    invoke-static {}, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil;->hasFTPAccount()Z

    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_35

    .line 50
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ServerControlActivity;->showInputFTPAccountDialog()V

    .line 53
    return-void

    .line 54
    :cond_35
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ServerControlActivity;->startFTPService()V

    .line 57
    :goto_38
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    const p1, 0x7f0a0227

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/widget/LinearLayout;

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 19
    invoke-static {p0}, Lcom/android/fileexplorer/util/AppUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1c

    .line 25
    const v1, 0x7f070247

    .line 28
    goto :goto_1f

    .line 29
    :cond_1c
    const v1, 0x7f070782

    .line 32
    :goto_1f
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 35
    move-result v1

    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

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
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ServerControlActivity;->initActionBar()V

    .line 17
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 24
    const p1, 0x7f0d01c7

    .line 27
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 30
    const p1, 0x7f0a0203

    .line 33
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Landroid/widget/TextView;

    .line 39
    iput-object p1, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->ipText:Landroid/widget/TextView;

    .line 41
    const p1, 0x7f0a01ff

    .line 44
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Landroid/widget/TextView;

    .line 50
    iput-object p1, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->instructionText:Landroid/widget/TextView;

    .line 52
    const p1, 0x7f0a0200

    .line 55
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Landroid/widget/TextView;

    .line 61
    iput-object p1, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->instructionTextPre:Landroid/widget/TextView;

    .line 63
    sget-boolean v0, Lcom/android/fileexplorer/model/Build;->IS_TABLET:Z

    .line 65
    if-eqz v0, :cond_46

    .line 67
    const v0, 0x7f1101fc

    .line 70
    goto :goto_49

    .line 71
    :cond_46
    const v0, 0x7f1101fd

    .line 74
    :goto_49
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 77
    const p1, 0x7f0a03dc

    .line 80
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 83
    move-result-object p1

    .line 84
    iput-object p1, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->startStopButton:Landroid/view/View;

    .line 86
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const p1, 0x7f0a04b1

    .line 92
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 95
    move-result-object p1

    .line 96
    new-instance v0, Lcom/android/fileexplorer/activity/ServerControlActivity$1;

    .line 98
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/activity/ServerControlActivity$1;-><init>(Lcom/android/fileexplorer/activity/ServerControlActivity;)V

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    sget-object p1, Lcom/android/fileexplorer/activity/ServerControlActivity;->TAG:Ljava/lang/String;

    .line 106
    const-string v0, "Registered for wifi updates"

    .line 108
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance p1, Landroid/content/IntentFilter;

    .line 113
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 116
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 118
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 123
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->wifiReceiver:Landroid/content/BroadcastReceiver;

    .line 128
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ServerControlActivity;->unbindServiceCheck()Z

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->wifiReceiver:Landroid/content/BroadcastReceiver;

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 16
    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onDestroy()V

    .line 19
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    const v1, 0x102002c

    .line 8
    if-ne v0, v1, :cond_e

    .line 10
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_e
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public onResume()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onResume()V

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ServerControlActivity;->updateUi()V

    .line 7
    return-void
.end method

.method public onStart()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onStart()V

    .line 4
    return-void
.end method

.method public onUpdateFTPUI(Lcom/android/fileexplorer/event/UpdateFTPUIEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ServerControlActivity;->updateUi()V

    .line 4
    return-void
.end method
