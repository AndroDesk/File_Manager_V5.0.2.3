.class abstract Lorg/swiftp/FtpCmd;
.super Ljava/lang/Object;
.source "FtpCmd.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public sessionThread:Lorg/swiftp/SessionThread;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/swiftp/FtpCmd;

    const-string v0, "FtpCmd"

    sput-object v0, Lorg/swiftp/FtpCmd;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/swiftp/SessionThread;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    return-void
.end method

.method public static dispatchCommand(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .registers 6

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    const-string v3, "502 Command not recognized\r\n"

    if-ge v1, v2, :cond_17

    sget-object p1, Lorg/swiftp/FtpCmd;->TAG:Ljava/lang/String;

    const-string v0, "No strings parsed"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    return-void

    :cond_17
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_2b

    sget-object p1, Lorg/swiftp/FtpCmd;->TAG:Ljava/lang/String;

    const-string v0, "Invalid command verb"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    return-void

    :cond_2b
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lorg/swiftp/FtpCmd;->getCmd(Ljava/lang/String;Lorg/swiftp/SessionThread;Ljava/lang/String;)Lorg/swiftp/FtpCmd;

    move-result-object p1

    if-nez p1, :cond_53

    sget-object p1, Lorg/swiftp/FtpCmd;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring unrecognized FTP verb: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    goto :goto_87

    :cond_53
    invoke-virtual {p0}, Lorg/swiftp/SessionThread;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_84

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/swiftp/CmdUSER;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_84

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/swiftp/CmdPASS;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_84

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/swiftp/CmdUSER;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    goto :goto_84

    :cond_7e
    const-string p1, "530 Login first with USER and PASS\r\n"

    invoke-virtual {p0, p1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    goto :goto_87

    :cond_84
    :goto_84
    invoke-virtual {p1}, Lorg/swiftp/FtpCmd;->run()V

    :goto_87
    return-void
.end method

.method private static getCmd(Ljava/lang/String;Lorg/swiftp/SessionThread;Ljava/lang/String;)Lorg/swiftp/FtpCmd;
    .registers 4

    const-string v0, "SYST"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance p0, Lorg/swiftp/CmdSYST;

    invoke-direct {p0, p1}, Lorg/swiftp/CmdSYST;-><init>(Lorg/swiftp/SessionThread;)V

    return-object p0

    :cond_e
    const-string v0, "USER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance p0, Lorg/swiftp/CmdUSER;

    invoke-direct {p0, p1, p2}, Lorg/swiftp/CmdUSER;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    return-object p0

    :cond_1c
    const-string v0, "PASS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    new-instance p0, Lorg/swiftp/CmdPASS;

    invoke-direct {p0, p1, p2}, Lorg/swiftp/CmdPASS;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    return-object p0

    :cond_2a
    const-string v0, "TYPE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    new-instance p0, Lorg/swiftp/CmdTYPE;

    invoke-direct {p0, p1, p2}, Lorg/swiftp/CmdTYPE;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    return-object p0

    :cond_38
    const-string v0, "CWD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    new-instance p0, Lorg/swiftp/CmdCWD;

    invoke-direct {p0, p1, p2}, Lorg/swiftp/CmdCWD;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    return-object p0

    :cond_46
    const-string v0, "PWD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    new-instance p0, Lorg/swiftp/CmdPWD;

    invoke-direct {p0, p1}, Lorg/swiftp/CmdPWD;-><init>(Lorg/swiftp/SessionThread;)V

    return-object p0

    :cond_54
    const-string v0, "LIST"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    new-instance p0, Lorg/swiftp/CmdLIST;

    invoke-direct {p0, p1, p2}, Lorg/swiftp/CmdLIST;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    return-object p0

    :cond_62
    const-string v0, "PASV"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    new-instance p0, Lorg/swiftp/CmdPASV;

    invoke-direct {p0, p1}, Lorg/swiftp/CmdPASV;-><init>(Lorg/swiftp/SessionThread;)V

    return-object p0

    :cond_70
    const-string v0, "RETR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    new-instance p0, Lorg/swiftp/CmdRETR;

    invoke-direct {p0, p1, p2}, Lorg/swiftp/CmdRETR;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    return-object p0

    :cond_7e
    const-string v0, "NLST"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    new-instance p0, Lorg/swiftp/CmdNLST;

    invoke-direct {p0, p1, p2}, Lorg/swiftp/CmdNLST;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    return-object p0

    :cond_8c
    const-string v0, "NOOP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    new-instance p0, Lorg/swiftp/CmdNOOP;

    invoke-direct {p0, p1}, Lorg/swiftp/CmdNOOP;-><init>(Lorg/swiftp/SessionThread;)V

    return-object p0

    :cond_9a
    const-string v0, "STOR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    new-instance p0, Lorg/swiftp/CmdSTOR;

    invoke-direct {p0, p1, p2}, Lorg/swiftp/CmdSTOR;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    return-object p0

    :cond_a8
    const-string v0, "DELE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    new-instance p0, Lorg/swiftp/CmdDELE;

    invoke-direct {p0, p1, p2}, Lorg/swiftp/CmdDELE;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    return-object p0

    :cond_b6
    const-string v0, "RNFR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    new-instance p0, Lorg/swiftp/CmdRNFR;

    invoke-direct {p0, p1, p2}, Lorg/swiftp/CmdRNFR;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    return-object p0

    :cond_c4
    const-string v0, "RNTO"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    new-instance p0, Lorg/swiftp/CmdRNTO;

    invoke-direct {p0, p1, p2}, Lorg/swiftp/CmdRNTO;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    return-object p0

    :cond_d2
    const-string v0, "RMD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e0

    new-instance p0, Lorg/swiftp/CmdRMD;

    invoke-direct {p0, p1, p2}, Lorg/swiftp/CmdRMD;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    return-object p0

    :cond_e0
    const-string v0, "MKD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ee

    new-instance p0, Lorg/swiftp/CmdMKD;

    invoke-direct {p0, p1, p2}, Lorg/swiftp/CmdMKD;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    return-object p0

    :cond_ee
    const-string v0, "OPTS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fc

    new-instance p0, Lorg/swiftp/CmdOPTS;

    invoke-direct {p0, p1, p2}, Lorg/swiftp/CmdOPTS;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    return-object p0

    :cond_fc
    const-string v0, "PORT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10a

    new-instance p0, Lorg/swiftp/CmdPORT;

    invoke-direct {p0, p1, p2}, Lorg/swiftp/CmdPORT;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    return-object p0

    :cond_10a
    const-string v0, "QUIT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_118

    new-instance p0, Lorg/swiftp/CmdQUIT;

    invoke-direct {p0, p1}, Lorg/swiftp/CmdQUIT;-><init>(Lorg/swiftp/SessionThread;)V

    return-object p0

    :cond_118
    const-string v0, "FEAT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_126

    new-instance p0, Lorg/swiftp/CmdFEAT;

    invoke-direct {p0, p1}, Lorg/swiftp/CmdFEAT;-><init>(Lorg/swiftp/SessionThread;)V

    return-object p0

    :cond_126
    const-string v0, "SIZE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_134

    new-instance p0, Lorg/swiftp/CmdSIZE;

    invoke-direct {p0, p1, p2}, Lorg/swiftp/CmdSIZE;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    return-object p0

    :cond_134
    const-string v0, "CDUP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_142

    new-instance p0, Lorg/swiftp/CmdCDUP;

    invoke-direct {p0, p1}, Lorg/swiftp/CmdCDUP;-><init>(Lorg/swiftp/SessionThread;)V

    return-object p0

    :cond_142
    const-string v0, "APPE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_150

    new-instance p0, Lorg/swiftp/CmdAPPE;

    invoke-direct {p0, p1, p2}, Lorg/swiftp/CmdAPPE;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    return-object p0

    :cond_150
    const-string v0, "XCUP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15e

    new-instance p0, Lorg/swiftp/CmdCDUP;

    invoke-direct {p0, p1}, Lorg/swiftp/CmdCDUP;-><init>(Lorg/swiftp/SessionThread;)V

    return-object p0

    :cond_15e
    const-string v0, "XPWD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16c

    new-instance p0, Lorg/swiftp/CmdPWD;

    invoke-direct {p0, p1}, Lorg/swiftp/CmdPWD;-><init>(Lorg/swiftp/SessionThread;)V

    return-object p0

    :cond_16c
    const-string v0, "XMKD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17a

    new-instance p0, Lorg/swiftp/CmdMKD;

    invoke-direct {p0, p1, p2}, Lorg/swiftp/CmdMKD;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    return-object p0

    :cond_17a
    const-string v0, "XRMD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_188

    new-instance p0, Lorg/swiftp/CmdRMD;

    invoke-direct {p0, p1, p2}, Lorg/swiftp/CmdRMD;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    return-object p0

    :cond_188
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/swiftp/FtpCmd;->getParameter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getParameter(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    return-object v0

    :cond_f
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\\s+$"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p1, :cond_33

    sget-object p1, Lorg/swiftp/FtpCmd;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parsed argument: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    return-object p0
.end method

.method public static inputPathToChrootedFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_13

    invoke-static {}, Lorg/swiftp/Globals;->getChrootDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_13

    return-object v1

    :catch_13
    :cond_13
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract run()V
.end method

.method public violatesChroot(Ljava/io/File;)Z
    .registers 8

    invoke-static {}, Lorg/swiftp/Globals;->getChrootDir()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_5
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_43

    sget-object v3, Lorg/swiftp/FtpCmd;->TAG:Ljava/lang/String;

    const-string v4, "Path violated folder restriction, denying"

    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chroot: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_42} :catch_45

    return v1

    :cond_43
    const/4 p1, 0x0

    return p1

    :catch_45
    move-exception v0

    sget-object v2, Lorg/swiftp/FtpCmd;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Path canonicalization problem: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "When checking file: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
