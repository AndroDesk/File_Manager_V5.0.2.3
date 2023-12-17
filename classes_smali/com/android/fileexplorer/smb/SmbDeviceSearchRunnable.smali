.class Lcom/android/fileexplorer/smb/SmbDeviceSearchRunnable;
.super Ljava/lang/Object;
.source "SmbDeviceSearchRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final SMB_DEVICE_SEARCH_DONE_WHAT:I = 0x3e8

.field public static final SMB_DEVICE_SEARCH_MESSAGE_KEY:Ljava/lang/String; = "searched_smb"

.field private static final TAG:Ljava/lang/String; = "SmbDeviceSearchRunnable"


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchRunnable;->mHandler:Landroid/os/Handler;

    .line 6
    return-void
.end method

.method private getDomainIp(Ljcifs/smb/SmbFile;)Ljava/lang/String;
    .registers 7

    .line 1
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-gt v0, v1, :cond_d

    .line 13
    return-object v2

    .line 14
    :cond_d
    :try_start_d
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 25
    move-result p1

    .line 26
    sub-int/2addr p1, v1

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    const/16 v0, 0x1d

    .line 34
    invoke-static {p1, v0, v2, v2}, Ljcifs/netbios/NbtAddress;->getAllByName(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)[Ljcifs/netbios/NbtAddress;

    .line 37
    move-result-object p1

    .line 38
    array-length v0, p1

    .line 39
    :goto_26
    if-ge v1, v0, :cond_40

    .line 41
    aget-object v3, p1, v1

    .line 43
    invoke-virtual {v3}, Ljcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    .line 46
    move-result-object v4

    .line 47
    invoke-direct {p0, v4}, Lcom/android/fileexplorer/smb/SmbDeviceSearchRunnable;->isValidIp(Ljava/lang/String;)Z

    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_39

    .line 53
    invoke-virtual {v3}, Ljcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    .line 56
    move-result-object p1
    :try_end_38
    .catch Ljava/net/UnknownHostException; {:try_start_d .. :try_end_38} :catch_3c

    .line 57
    return-object p1

    .line 58
    :cond_39
    add-int/lit8 v1, v1, 0x1

    .line 60
    goto :goto_26

    .line 61
    :catch_3c
    move-exception p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    :cond_40
    return-object v2
.end method

.method private getIp(Ljcifs/smb/SmbFile;)Ljava/lang/String;
    .registers 7

    .line 1
    const-string v0, "get ip for "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "SmbDeviceSearchRunnable"

    .line 20
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const/4 v0, 0x0

    .line 24
    :try_start_17
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-static {p1, v1, v0, v0}, Ljcifs/netbios/NbtAddress;->getAllByName(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)[Ljcifs/netbios/NbtAddress;

    .line 32
    move-result-object p1

    .line 33
    if-nez p1, :cond_23

    .line 35
    return-object v0

    .line 36
    :cond_23
    array-length v2, p1

    .line 37
    :goto_24
    if-ge v1, v2, :cond_3e

    .line 39
    aget-object v3, p1, v1

    .line 41
    invoke-virtual {v3}, Ljcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    .line 44
    move-result-object v4

    .line 45
    invoke-direct {p0, v4}, Lcom/android/fileexplorer/smb/SmbDeviceSearchRunnable;->isValidIp(Ljava/lang/String;)Z

    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_37

    .line 51
    invoke-virtual {v3}, Ljcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    .line 54
    move-result-object p1
    :try_end_36
    .catch Ljava/net/UnknownHostException; {:try_start_17 .. :try_end_36} :catch_3a

    .line 55
    return-object p1

    .line 56
    :cond_37
    add-int/lit8 v1, v1, 0x1

    .line 58
    goto :goto_24

    .line 59
    :catch_3a
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    :cond_3e
    return-object v0
.end method

.method private getLocalIP()Ljava/lang/String;
    .registers 5

    .line 1
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    .line 4
    move-result-object v0

    .line 5
    :cond_4
    if-eqz v0, :cond_43

    .line 7
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_43

    .line 13
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/net/NetworkInterface;

    .line 19
    if-eqz v1, :cond_4

    .line 21
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_4

    .line 27
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    const-string v3, "wlan"

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_4

    .line 39
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    .line 42
    move-result-object v1

    .line 43
    :cond_2a
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_4

    .line 49
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ljava/net/InetAddress;

    .line 55
    instance-of v3, v2, Ljava/net/Inet4Address;

    .line 57
    if-eqz v3, :cond_2a

    .line 59
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 62
    move-result-object v0
    :try_end_3e
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_3e} :catch_3f

    .line 63
    return-object v0

    .line 64
    :catch_3f
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    :cond_43
    const/4 v0, 0x0

    .line 69
    return-object v0
.end method

.method private getWorkgroupByName(Ljava/lang/String;)[Ljcifs/netbios/NbtAddress;
    .registers 4

    .line 1
    const/16 v0, 0x1d

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_3
    invoke-static {p1, v0, v1, v1}, Ljcifs/netbios/NbtAddress;->getAllByName(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)[Ljcifs/netbios/NbtAddress;

    .line 7
    move-result-object p1
    :try_end_7
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_7} :catch_8

    .line 8
    return-object p1

    .line 9
    :catch_8
    return-object v1
.end method

.method private isValidIp(Ljava/lang/String;)Z
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/smb/SmbDeviceSearchRunnable;->getLocalIP()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    const-string v2, "\\."

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    aget-object v3, v0, v1

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string v3, "."

    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const/4 v3, 0x1

    .line 31
    aget-object v0, v0, v3

    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_34

    .line 46
    invoke-static {p1}, Lcom/android/fileexplorer/smb/SmbDeviceSearchRunnable;->testIp(Ljava/lang/String;)Z

    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_34

    .line 52
    move v1, v3

    .line 53
    :cond_34
    return v1
.end method

.method private listDomain(Ljcifs/netbios/NbtAddress;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljcifs/netbios/NbtAddress;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :try_start_5
    new-instance v1, Ljcifs/smb/SmbFile;

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    const-string v3, "smb://"

    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p1}, Ljcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    sget-object v2, Ljcifs/smb/NtlmPasswordAuthentication;->ANONYMOUS:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 31
    invoke-direct {v1, p1, v2}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V

    .line 34
    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->listDomain()Ljava/util/ArrayList;

    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object p1

    .line 42
    :goto_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_67

    .line 48
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Ljcifs/smb/SmbFile;

    .line 54
    const-string v2, "SmbDeviceSearchRunnable"

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    const-string v4, "find domain: "

    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v3

    .line 77
    invoke-static {v2, v3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/smb/SmbDeviceSearchRunnable;->getDomainIp(Ljcifs/smb/SmbFile;)Ljava/lang/String;

    .line 83
    move-result-object v1

    .line 84
    if-nez v1, :cond_56

    .line 86
    goto :goto_29

    .line 87
    :cond_56
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/smb/SmbDeviceSearchRunnable;->listServer(Ljava/lang/String;)Ljava/util/List;

    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_5d
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5d} :catch_63
    .catch Ljcifs/smb/SmbException; {:try_start_5 .. :try_end_5d} :catch_5e

    .line 94
    goto :goto_29

    .line 95
    :catch_5e
    move-exception p1

    .line 96
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 99
    goto :goto_67

    .line 100
    :catch_63
    move-exception p1

    .line 101
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 104
    :cond_67
    :goto_67
    return-object v0
.end method

.method private listServer(Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "/"

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    :try_start_7
    new-instance v2, Ljcifs/smb/SmbFile;

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    const-string v4, "Smb://"

    .line 17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    const/4 v3, 0x2

    .line 28
    sget-object v4, Ljcifs/smb/NtlmPasswordAuthentication;->ANONYMOUS:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 30
    invoke-direct {v2, p1, v3, v4}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;ILjcifs/smb/NtlmPasswordAuthentication;)V

    .line 33
    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->listFiles()[Ljcifs/smb/SmbFile;

    .line 36
    move-result-object p1

    .line 37
    array-length v2, p1

    .line 38
    const/4 v3, 0x0

    .line 39
    move v4, v3

    .line 40
    :goto_27
    if-ge v4, v2, :cond_8a

    .line 42
    aget-object v5, p1, v4

    .line 44
    invoke-direct {p0, v5}, Lcom/android/fileexplorer/smb/SmbDeviceSearchRunnable;->getIp(Ljcifs/smb/SmbFile;)Ljava/lang/String;

    .line 47
    move-result-object v6

    .line 48
    invoke-virtual {v5}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    .line 51
    move-result-object v5

    .line 52
    if-eqz v6, :cond_68

    .line 54
    if-eqz v5, :cond_68

    .line 56
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 59
    move-result v7

    .line 60
    const/4 v8, 0x1

    .line 61
    if-le v7, v8, :cond_68

    .line 63
    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 66
    move-result v7

    .line 67
    if-eqz v7, :cond_4d

    .line 69
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 72
    move-result v7

    .line 73
    sub-int/2addr v7, v8

    .line 74
    invoke-virtual {v5, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 77
    move-result-object v5

    .line 78
    :cond_4d
    new-instance v7, Ljava/lang/StringBuilder;

    .line 80
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v5, ":://"

    .line 88
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object v5

    .line 101
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    goto :goto_7e

    .line 105
    :cond_68
    const-string v6, "SmbDeviceSearchRunnable"

    .line 107
    new-instance v7, Ljava/lang/StringBuilder;

    .line 109
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    const-string v8, "Fail to get ip for "

    .line 114
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object v5

    .line 124
    invoke-static {v6, v5}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7e
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7e} :catch_86
    .catch Ljcifs/smb/SmbException; {:try_start_7 .. :try_end_7e} :catch_81

    .line 127
    :goto_7e
    add-int/lit8 v4, v4, 0x1

    .line 129
    goto :goto_27

    .line 130
    :catch_81
    move-exception p1

    .line 131
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 134
    goto :goto_8a

    .line 135
    :catch_86
    move-exception p1

    .line 136
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 139
    :cond_8a
    :goto_8a
    return-object v1
.end method

.method private static testIp(Ljava/lang/String;)Z
    .registers 6

    .line 1
    const-string v0, "SmbDeviceSearchRunnable"

    .line 3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    const-string v4, "ping -c 1 "

    .line 15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 28
    move-result-object p0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    const-string v3, "p.waitFor(): "

    .line 36
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    .line 42
    move-result v3

    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_64

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    const-string v3, "p exitValue: "

    .line 66
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I

    .line 72
    move-result v3

    .line 73
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v1

    .line 80
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I

    .line 86
    move-result p0

    .line 87
    if-ne p0, v2, :cond_64

    .line 89
    const-string p0, "test ip failed"

    .line 91
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_5d} :catch_60

    .line 94
    const/4 p0, 0x0

    .line 95
    move v2, p0

    .line 96
    goto :goto_64

    .line 97
    :catch_60
    move-exception p0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 101
    :cond_64
    :goto_64
    return v2
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 1
    const-string v0, "searched_smb"

    .line 3
    const-string v1, "SmbDeviceSearchRunnable"

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    const/16 v3, 0x3e8

    .line 12
    :try_start_b
    const-string v4, "start"

    .line 14
    invoke-static {v1, v4}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Lcom/android/fileexplorer/smb/SmbDeviceSearchRunnable;->getLocalIP()Ljava/lang/String;

    .line 20
    move-result-object v4

    .line 21
    if-eqz v4, :cond_1b

    .line 23
    const-string v5, "jcifs.smb.client.laddr"

    .line 25
    invoke-static {v5, v4}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    :cond_1b
    const-string v4, "jcifs.netbios.retryCount"

    .line 30
    const-string v5, "2"

    .line 32
    invoke-static {v4, v5}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    const-string v4, "jcifs.netbios.retryTimeout"

    .line 37
    const-string v5, "2000"

    .line 39
    invoke-static {v4, v5}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    const-string v4, "jcifs.resolveOrder"

    .line 44
    const-string v5, "BCAST,LMHOSTS,WINS,DNS"

    .line 46
    invoke-static {v4, v5}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    const-string v4, "begin to search!"

    .line 51
    invoke-static {v1, v4}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v4, "WORKGROUP"

    .line 56
    invoke-direct {p0, v4}, Lcom/android/fileexplorer/smb/SmbDeviceSearchRunnable;->getWorkgroupByName(Ljava/lang/String;)[Ljcifs/netbios/NbtAddress;

    .line 59
    move-result-object v4

    .line 60
    if-nez v4, :cond_66

    .line 62
    const-string v4, "Fail to find workgroup WORKGROUP"

    .line 64
    invoke-static {v1, v4}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v4, "MSHOME"

    .line 69
    invoke-direct {p0, v4}, Lcom/android/fileexplorer/smb/SmbDeviceSearchRunnable;->getWorkgroupByName(Ljava/lang/String;)[Ljcifs/netbios/NbtAddress;

    .line 72
    move-result-object v4

    .line 73
    if-nez v4, :cond_66

    .line 75
    const-string v4, "Fail to find workgroup MSHOME"

    .line 77
    invoke-static {v1, v4}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_4f} :catch_bf
    .catchall {:try_start_b .. :try_end_4f} :catchall_bd

    .line 80
    iget-object v1, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchRunnable;->mHandler:Landroid/os/Handler;

    .line 82
    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 85
    move-result-object v1

    .line 86
    new-instance v3, Landroid/os/Bundle;

    .line 88
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 91
    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 94
    invoke-virtual {v1, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 97
    iget-object v0, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchRunnable;->mHandler:Landroid/os/Handler;

    .line 99
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 102
    return-void

    .line 103
    :cond_66
    :try_start_66
    array-length v5, v4

    .line 104
    const/4 v6, 0x0

    .line 105
    :goto_68
    if-ge v6, v5, :cond_b1

    .line 107
    aget-object v7, v4, v6

    .line 109
    invoke-virtual {v7}, Ljcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    .line 112
    move-result-object v8

    .line 113
    invoke-direct {p0, v8}, Lcom/android/fileexplorer/smb/SmbDeviceSearchRunnable;->isValidIp(Ljava/lang/String;)Z

    .line 116
    move-result v8

    .line 117
    if-eqz v8, :cond_ae

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    .line 121
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    const-string v5, "try to list all domains: "

    .line 126
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v7}, Ljcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    .line 132
    move-result-object v5

    .line 133
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object v4

    .line 140
    invoke-static {v1, v4}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-direct {p0, v7}, Lcom/android/fileexplorer/smb/SmbDeviceSearchRunnable;->listDomain(Ljcifs/netbios/NbtAddress;)Ljava/util/List;

    .line 146
    move-result-object v4

    .line 147
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    .line 152
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    const-string v5, "finish to list all domains: "

    .line 157
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v7}, Ljcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    .line 163
    move-result-object v5

    .line 164
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    move-result-object v4

    .line 171
    invoke-static {v1, v4}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_ad} :catch_bf
    .catchall {:try_start_66 .. :try_end_ad} :catchall_bd

    .line 174
    goto :goto_b1

    .line 175
    :cond_ae
    add-int/lit8 v6, v6, 0x1

    .line 177
    goto :goto_68

    .line 178
    :cond_b1
    :goto_b1
    iget-object v1, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchRunnable;->mHandler:Landroid/os/Handler;

    .line 180
    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 183
    move-result-object v1

    .line 184
    new-instance v3, Landroid/os/Bundle;

    .line 186
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 189
    goto :goto_e3

    .line 190
    :catchall_bd
    move-exception v1

    .line 191
    goto :goto_ef

    .line 192
    :catch_bf
    move-exception v4

    .line 193
    :try_start_c0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 195
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    const-string v6, "error: "

    .line 200
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 206
    move-result-object v4

    .line 207
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    move-result-object v4

    .line 214
    invoke-static {v1, v4}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d8
    .catchall {:try_start_c0 .. :try_end_d8} :catchall_bd

    .line 217
    iget-object v1, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchRunnable;->mHandler:Landroid/os/Handler;

    .line 219
    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 222
    move-result-object v1

    .line 223
    new-instance v3, Landroid/os/Bundle;

    .line 225
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 228
    :goto_e3
    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 231
    invoke-virtual {v1, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 234
    iget-object v0, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchRunnable;->mHandler:Landroid/os/Handler;

    .line 236
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 239
    return-void

    .line 240
    :goto_ef
    iget-object v4, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchRunnable;->mHandler:Landroid/os/Handler;

    .line 242
    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 245
    move-result-object v3

    .line 246
    new-instance v4, Landroid/os/Bundle;

    .line 248
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 251
    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 254
    invoke-virtual {v3, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 257
    iget-object v0, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchRunnable;->mHandler:Landroid/os/Handler;

    .line 259
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 262
    throw v1
.end method
