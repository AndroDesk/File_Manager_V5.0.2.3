.class public Lorg/swiftp/CmdPASS;
.super Lorg/swiftp/FtpCmd;
.source "CmdPASS.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private input:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lorg/swiftp/CmdPASS;

    .line 3
    const-string v0, "CmdPASS"

    .line 5
    sput-object v0, Lorg/swiftp/CmdPASS;->TAG:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;)V

    .line 4
    iput-object p2, p0, Lorg/swiftp/CmdPASS;->input:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 1
    sget-object v0, Lorg/swiftp/CmdPASS;->TAG:Ljava/lang/String;

    .line 3
    const-string v1, "Executing PASS"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lorg/swiftp/Globals;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 15
    move-result-object v1

    .line 16
    const-string v2, "anonymous_login"

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 22
    move-result v2

    .line 23
    const-string v4, "230 Access granted\r\n"

    .line 25
    const/4 v5, 0x1

    .line 26
    if-eqz v2, :cond_27

    .line 28
    iget-object v0, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 30
    invoke-virtual {v0, v4}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 35
    invoke-virtual {v0, v5}, Lorg/swiftp/SessionThread;->authAttempt(Z)V

    .line 38
    goto/16 :goto_b1

    .line 40
    :cond_27
    iget-object v2, p0, Lorg/swiftp/CmdPASS;->input:Ljava/lang/String;

    .line 42
    invoke-static {v2, v5}, Lorg/swiftp/FtpCmd;->getParameter(Ljava/lang/String;Z)Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 46
    iget-object v6, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 48
    iget-object v6, v6, Lorg/swiftp/SessionThread;->account:Lorg/swiftp/Account;

    .line 50
    invoke-virtual {v6}, Lorg/swiftp/Account;->getUsername()Ljava/lang/String;

    .line 53
    move-result-object v6

    .line 54
    if-nez v6, :cond_3f

    .line 56
    iget-object v0, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 58
    const-string v1, "503 Must send USER first\r\n"

    .line 60
    invoke-virtual {v0, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 63
    return-void

    .line 64
    :cond_3f
    invoke-static {}, Lorg/swiftp/Globals;->getContext()Landroid/content/Context;

    .line 67
    move-result-object v7

    .line 68
    if-nez v7, :cond_4a

    .line 70
    const-string v7, "No global context in PASS\r\n"

    .line 72
    invoke-static {v0, v7}, Lcom/android/fileexplorer/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_4a
    const-string v7, "username"

    .line 77
    const/4 v8, 0x0

    .line 78
    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    move-result-object v7

    .line 82
    const-string v9, "password"

    .line 84
    invoke-interface {v1, v9, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    move-result-object v1

    .line 88
    if-eqz v7, :cond_a5

    .line 90
    if-nez v1, :cond_5c

    .line 92
    goto :goto_a5

    .line 93
    :cond_5c
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result v6

    .line 97
    if-eqz v6, :cond_8c

    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_8c

    .line 105
    iget-object v1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 107
    invoke-virtual {v1, v4}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    .line 112
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    const-string v2, "User "

    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string v2, " password verified"

    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object v1

    .line 132
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 137
    invoke-virtual {v0, v5}, Lorg/swiftp/SessionThread;->authAttempt(Z)V

    .line 140
    goto :goto_b1

    .line 141
    :cond_8c
    const-wide/16 v0, 0x3e8

    .line 143
    :try_start_8e
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_91
    .catch Ljava/lang/InterruptedException; {:try_start_8e .. :try_end_91} :catch_91

    .line 146
    :catch_91
    sget-object v0, Lorg/swiftp/CmdPASS;->TAG:Ljava/lang/String;

    .line 148
    const-string v1, "Failed authentication"

    .line 150
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 155
    const-string v1, "530 Login incorrect.\r\n"

    .line 157
    invoke-virtual {v0, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 162
    invoke-virtual {v0, v3}, Lorg/swiftp/SessionThread;->authAttempt(Z)V

    .line 165
    goto :goto_b1

    .line 166
    :cond_a5
    :goto_a5
    const-string v1, "Username or password misconfigured"

    .line 168
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 173
    const-string v1, "500 Internal error during authentication"

    .line 175
    invoke-virtual {v0, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 178
    :goto_b1
    return-void
.end method
