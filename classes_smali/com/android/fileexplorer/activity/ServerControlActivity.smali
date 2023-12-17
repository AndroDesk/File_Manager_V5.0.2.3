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

    const-class v0, Lcom/android/fileexplorer/activity/ServerControlActivity;

    const-string v0, "ServerControlActivity"

    sput-object v0, Lcom/android/fileexplorer/activity/ServerControlActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/BaseActivity;-><init>()V

    new-instance v0, Lcom/android/fileexplorer/activity/ServerControlActivity$3;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/activity/ServerControlActivity$3;-><init>(Lcom/android/fileexplorer/activity/ServerControlActivity;)V

    iput-object v0, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->mConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/fileexplorer/activity/ServerControlActivity$4;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/activity/ServerControlActivity$4;-><init>(Lcom/android/fileexplorer/activity/ServerControlActivity;)V

    iput-object v0, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->wifiReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/activity/ServerControlActivity;)Lcom/android/fileexplorer/service/FTPServerService;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->mFtpService:Lcom/android/fileexplorer/service/FTPServerService;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/android/fileexplorer/activity/ServerControlActivity;Lcom/android/fileexplorer/service/FTPServerService;)Lcom/android/fileexplorer/service/FTPServerService;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->mFtpService:Lcom/android/fileexplorer/service/FTPServerService;

    return-object p1
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/activity/ServerControlActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/activity/ServerControlActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ServerControlActivity;->startFTPService()V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/activity/ServerControlActivity;Lcom/android/fileexplorer/model/StorageInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/ServerControlActivity;->runService(Lcom/android/fileexplorer/model/StorageInfo;)V

    return-void
.end method

.method private initActionBar()V
    .registers 3

    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->mSettingButton:Landroid/widget/ImageButton;

    const v1, 0x7f0801dc

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->mSettingButton:Landroid/widget/ImageButton;

    const v1, 0x7f1103c6

    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->mSettingButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    :cond_24
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->mSettingButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/fileexplorer/activity/ServerControlActivity$2;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/activity/ServerControlActivity$2;-><init>(Lcom/android/fileexplorer/activity/ServerControlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isAnonymousLogin()Z
    .registers 6

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "anonymous_login"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "anonymous_login_new"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eq v3, v2, :cond_22

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_22
    return v2
.end method

.method private runService(Lcom/android/fileexplorer/model/StorageInfo;)V
    .registers 4

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isMounted()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/activity/ServerControlActivity;->warnIfNoExternalStorage(Z)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isMounted()Z

    move-result v0

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_1d

    return-void

    :cond_1d
    invoke-static {v0}, Lorg/swiftp/Globals;->setChrootDir(Ljava/io/File;)V

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/fileexplorer/service/FTPServerService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_2d
    return-void
.end method

.method private showInputFTPAccountDialog()V
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/activity/ServerControlActivity$5;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/activity/ServerControlActivity$5;-><init>(Lcom/android/fileexplorer/activity/ServerControlActivity;)V

    invoke-static {p0, v0}, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil;->showInputFTPAccountDialog(Landroid/content/Context;Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$OnAccountChangeListener;)V

    return-void
.end method

.method private startFTPService()V
    .registers 6

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getMountVolumeList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    return-void

    :cond_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/StorageInfo;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/activity/ServerControlActivity;->runService(Lcom/android/fileexplorer/model/StorageInfo;)V

    return-void

    :cond_21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    :goto_27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4f

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {v3}, Lcom/android/fileexplorer/model/StorageInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/fileexplorer/model/StorageHelper;->getVolumeDescription(Lcom/android/fileexplorer/model/StorageInfo;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4a

    :cond_46
    invoke-virtual {v3}, Lcom/android/fileexplorer/model/StorageInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    :goto_4a
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_4f
    new-instance v2, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f182e54

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/fileexplorer/activity/ServerControlActivity$7;

    invoke-direct {v3, p0, v0}, Lcom/android/fileexplorer/activity/ServerControlActivity$7;-><init>(Lcom/android/fileexplorer/activity/ServerControlActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110050

    new-instance v2, Lcom/android/fileexplorer/activity/ServerControlActivity$6;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/activity/ServerControlActivity$6;-><init>(Lcom/android/fileexplorer/activity/ServerControlActivity;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private unbindServiceCheck()Z
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->mFtpService:Lcom/android/fileexplorer/service/FTPServerService;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/android/fileexplorer/service/FTPServerService;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_28

    :try_start_a
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_f} :catch_11

    const/4 v0, 0x1

    return v0

    :catch_11
    move-exception v0

    sget-object v1, Lcom/android/fileexplorer/activity/ServerControlActivity;->TAG:Ljava/lang/String;

    const-string v2, "unbindServiceCheck error: "

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method private updateUi()V
    .registers 10

    sget-object v0, Lcom/android/fileexplorer/activity/ServerControlActivity;->TAG:Ljava/lang/String;

    const-string v1, "Updating UI"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    if-eqz v1, :cond_23

    move v1, v2

    goto :goto_24

    :cond_23
    move v1, v3

    :goto_24
    const v4, 0x7f032924

    invoke-static {v4}, Lnp/NPFog;->d(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f080233

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->mFtpService:Lcom/android/fileexplorer/service/FTPServerService;

    if-eqz v4, :cond_45

    invoke-virtual {v4}, Lcom/android/fileexplorer/service/FTPServerService;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_45

    goto :goto_46

    :cond_45
    move v2, v3

    :goto_46
    if-eqz v2, :cond_98

    const-string v4, "updateUi: server is running"

    invoke-static {v0, v4}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->mFtpService:Lcom/android/fileexplorer/service/FTPServerService;

    invoke-virtual {v0}, Lcom/android/fileexplorer/service/FTPServerService;->getWifiIp()Ljava/net/InetAddress;

    move-result-object v0

    const-string v4, ""

    if-eqz v0, :cond_90

    const-string v5, ":"

    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->mFtpService:Lcom/android/fileexplorer/service/FTPServerService;

    invoke-virtual {v6}, Lcom/android/fileexplorer/service/FTPServerService;->getPort()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->ipText:Landroid/widget/TextView;

    const-string v7, "ftp://"

    invoke-static {v7}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->mFtpService:Lcom/android/fileexplorer/service/FTPServerService;

    invoke-virtual {v0}, Lcom/android/fileexplorer/service/FTPServerService;->getPort()I

    move-result v0

    const/16 v8, 0x15

    if-ne v0, v8, :cond_84

    goto :goto_85

    :cond_84
    move-object v4, v5

    :goto_85
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_98

    :cond_90
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ServerControlActivity;->unbindServiceCheck()Z

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->ipText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_98
    :goto_98
    const v0, 0x7f032e4b

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->startStopButton:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz v1, :cond_cf

    if-eqz v2, :cond_b5

    const v1, 0x7f1103ff

    goto :goto_b8

    :cond_b5
    const v1, 0x7f1103f8

    :goto_b8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    if-eqz v2, :cond_c1

    const v1, 0x7f080232

    goto :goto_c4

    :cond_c1
    const v1, 0x7f080231

    :goto_c4
    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->mSettingButton:Landroid/widget/ImageButton;

    xor-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_db

    :cond_cf
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ServerControlActivity;->unbindServiceCheck()Z

    const v1, 0x7f1102d6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :goto_db
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->ipText:Landroid/widget/TextView;

    const/16 v1, 0x8

    if-eqz v2, :cond_e3

    move v4, v3

    goto :goto_e4

    :cond_e3
    move v4, v1

    :goto_e4
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->ipText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->instructionText:Landroid/widget/TextView;

    if-eqz v2, :cond_f2

    move v4, v3

    goto :goto_f3

    :cond_f2
    move v4, v1

    :goto_f3
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->instructionTextPre:Landroid/widget/TextView;

    if-eqz v2, :cond_fb

    goto :goto_fc

    :cond_fb
    move v1, v3

    :goto_fc
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lorg/swiftp/Globals;->getLastError()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_114

    invoke-static {}, Lorg/swiftp/Globals;->getLastError()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/swiftp/Globals;->setLastError(Ljava/lang/String;)V

    :cond_114
    return-void
.end method

.method private warnIfNoExternalStorage(Z)V
    .registers 4

    if-nez p1, :cond_1a

    sget-object p1, Lcom/android/fileexplorer/activity/ServerControlActivity;->TAG:Ljava/lang/String;

    const-string v0, "Warning due to storage state "

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f110406

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1a
    return-void
.end method


# virtual methods
.method public getSettings()Landroid/content/SharedPreferences;
    .registers 2

    invoke-static {}, Lcom/android/fileexplorer/service/FTPServerService;->getSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_7

    goto :goto_c

    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a03dc

    if-eq p1, v0, :cond_1a

    const v0, 0x7f0a04b1

    if-eq p1, v0, :cond_f

    goto :goto_38

    :cond_f
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.WIFI_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_38

    :cond_1a
    const/4 p1, 0x0

    invoke-static {p1}, Lorg/swiftp/Globals;->setLastError(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ServerControlActivity;->unbindServiceCheck()Z

    move-result p1

    if-eqz p1, :cond_25

    return-void

    :cond_25
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ServerControlActivity;->isAnonymousLogin()Z

    move-result p1

    if-nez p1, :cond_35

    invoke-static {}, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil;->hasFTPAccount()Z

    move-result p1

    if-nez p1, :cond_35

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ServerControlActivity;->showInputFTPAccountDialog()V

    return-void

    :cond_35
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ServerControlActivity;->startFTPService()V

    :goto_38
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const p1, 0x7f032fb1

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0}, Lcom/android/fileexplorer/util/AppUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_20

    const v1, 0x7f070247

    goto :goto_23

    :cond_20
    const v1, 0x7f070782

    :goto_23
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-static {p0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_a
    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ServerControlActivity;->initActionBar()V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    const p1, 0x7f042c51

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f032f95

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->ipText:Landroid/widget/TextView;

    const p1, 0x7f032c69

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->instructionText:Landroid/widget/TextView;

    const p1, 0x7f032f96

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->instructionTextPre:Landroid/widget/TextView;

    sget-boolean v0, Lcom/android/fileexplorer/model/Build;->IS_TABLET:Z

    if-eqz v0, :cond_56

    const v0, 0x7f1101fc

    goto :goto_59

    :cond_56
    const v0, 0x7f1101fd

    :goto_59
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f032e4a

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->startStopButton:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f032927

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/fileexplorer/activity/ServerControlActivity$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/activity/ServerControlActivity$1;-><init>(Lcom/android/fileexplorer/activity/ServerControlActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p1, Lcom/android/fileexplorer/activity/ServerControlActivity;->TAG:Ljava/lang/String;

    const-string v0, "Registered for wifi updates"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->wifiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ServerControlActivity;->unbindServiceCheck()Z

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ServerControlActivity;->wifiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    const/4 p1, 0x1

    return p1

    :cond_e
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onResume()V

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ServerControlActivity;->updateUi()V

    return-void
.end method

.method public onStart()V
    .registers 1

    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onStart()V

    return-void
.end method

.method public onUpdateFTPUI(Lcom/android/fileexplorer/event/UpdateFTPUIEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ServerControlActivity;->updateUi()V

    return-void
.end method
