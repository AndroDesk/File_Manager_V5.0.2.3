.class public Ljcifs/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static DEFAULT_OEM_ENCODING:Ljava/lang/String;

.field private static log:Ljcifs/util/LogStream;

.field private static prp:Ljava/util/Properties;

.field public static socketCount:I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ljava/util/Properties;

    .line 3
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 6
    sput-object v0, Ljcifs/Config;->prp:Ljava/util/Properties;

    .line 8
    const-string v0, "Cp850"

    .line 10
    sput-object v0, Ljcifs/Config;->DEFAULT_OEM_ENCODING:Ljava/lang/String;

    .line 12
    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    .line 18
    :try_start_11
    const-string v0, "jcifs.properties"

    .line 20
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_26

    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x1

    .line 31
    if-le v1, v2, :cond_26

    .line 33
    new-instance v1, Ljava/io/FileInputStream;

    .line 35
    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    const/4 v1, 0x0

    .line 40
    :goto_27
    invoke-static {v1}, Ljcifs/Config;->load(Ljava/io/InputStream;)V

    .line 43
    if-eqz v1, :cond_3a

    .line 45
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_2f} :catch_30

    .line 48
    goto :goto_3a

    .line 49
    :catch_30
    move-exception v0

    .line 50
    sget v1, Ljcifs/util/LogStream;->level:I

    .line 52
    if-lez v1, :cond_3a

    .line 54
    sget-object v1, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 59
    :cond_3a
    :goto_3a
    const-string v0, "jcifs.util.loglevel"

    .line 61
    const/4 v1, -0x1

    .line 62
    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    .line 65
    move-result v0

    .line 66
    if-eq v0, v1, :cond_46

    .line 68
    invoke-static {v0}, Ljcifs/util/LogStream;->setLevel(I)V

    .line 71
    :cond_46
    :try_start_46
    const-string v0, ""

    .line 73
    sget-object v1, Ljcifs/Config;->DEFAULT_OEM_ENCODING:Ljava/lang/String;

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_4d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_46 .. :try_end_4d} :catch_4e

    .line 78
    goto :goto_71

    .line 79
    :catch_4e
    sget v0, Ljcifs/util/LogStream;->level:I

    .line 81
    const/4 v1, 0x2

    .line 82
    if-lt v0, v1, :cond_6d

    .line 84
    sget-object v0, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    .line 88
    const-string v2, "WARNING: The default OEM encoding "

    .line 90
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    sget-object v2, Ljcifs/Config;->DEFAULT_OEM_ENCODING:Ljava/lang/String;

    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v2, " does not appear to be supported by this JRE. The default encoding will be US-ASCII."

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 110
    :cond_6d
    const-string v0, "US-ASCII"

    .line 112
    sput-object v0, Ljcifs/Config;->DEFAULT_OEM_ENCODING:Ljava/lang/String;

    .line 114
    :goto_71
    sget v0, Ljcifs/util/LogStream;->level:I

    .line 116
    const/4 v1, 0x4

    .line 117
    if-lt v0, v1, :cond_7f

    .line 119
    :try_start_76
    sget-object v0, Ljcifs/Config;->prp:Ljava/util/Properties;

    .line 121
    sget-object v1, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    .line 123
    const-string v2, "JCIFS PROPERTIES"

    .line 125
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_7f} :catch_7f

    .line 128
    :catch_7f
    :cond_7f
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 1
    sget-object v0, Ljcifs/Config;->prp:Ljava/util/Properties;

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .registers 2

    .line 1
    invoke-static {p0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_10

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    const-string p1, "true"

    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 17
    :cond_10
    return p1
.end method

.method public static getInetAddress(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .registers 4

    .line 1
    sget-object v0, Ljcifs/Config;->prp:Ljava/util/Properties;

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_1c

    .line 9
    :try_start_8
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 12
    move-result-object p1
    :try_end_c
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_c} :catch_d

    .line 13
    goto :goto_1c

    .line 14
    :catch_d
    move-exception v0

    .line 15
    sget v1, Ljcifs/util/LogStream;->level:I

    .line 17
    if-lez v1, :cond_1c

    .line 19
    sget-object v1, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    .line 21
    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 24
    sget-object p0, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 29
    :cond_1c
    :goto_1c
    return-object p1
.end method

.method public static getInetAddressArray(Ljava/lang/String;Ljava/lang/String;[Ljava/net/InetAddress;)[Ljava/net/InetAddress;
    .registers 7

    .line 1
    invoke-static {p0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_31

    .line 7
    new-instance v0, Ljava/util/StringTokenizer;

    .line 9
    invoke-direct {v0, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    .line 15
    move-result p0

    .line 16
    new-array p1, p0, [Ljava/net/InetAddress;

    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_12
    if-lt v1, p0, :cond_15

    .line 21
    return-object p1

    .line 22
    :cond_15
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    :try_start_19
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 29
    move-result-object v3

    .line 30
    aput-object v3, p1, v1
    :try_end_1f
    .catch Ljava/net/UnknownHostException; {:try_start_19 .. :try_end_1f} :catch_22

    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_12

    .line 35
    :catch_22
    move-exception p0

    .line 36
    sget p1, Ljcifs/util/LogStream;->level:I

    .line 38
    if-lez p1, :cond_31

    .line 40
    sget-object p1, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    .line 42
    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    sget-object p1, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 50
    :cond_31
    return-object p2
.end method

.method public static getInt(Ljava/lang/String;)I
    .registers 2

    .line 5
    sget-object v0, Ljcifs/Config;->prp:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 6
    :try_start_8
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_c} :catch_d

    goto :goto_18

    :catch_d
    move-exception p0

    .line 7
    sget v0, Ljcifs/util/LogStream;->level:I

    if-lez v0, :cond_17

    .line 8
    sget-object v0, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_17
    const/4 p0, -0x1

    :goto_18
    return p0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .registers 3

    .line 1
    sget-object v0, Ljcifs/Config;->prp:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 2
    :try_start_8
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_c} :catch_d

    goto :goto_17

    :catch_d
    move-exception p0

    .line 3
    sget v0, Ljcifs/util/LogStream;->level:I

    if-lez v0, :cond_17

    .line 4
    sget-object v0, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_17
    :goto_17
    return p1
.end method

.method public static getLocalHost()Ljava/net/InetAddress;
    .registers 5

    .line 1
    sget-object v0, Ljcifs/Config;->prp:Ljava/util/Properties;

    .line 3
    const-string v1, "jcifs.smb.client.laddr"

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_2c

    .line 11
    :try_start_a
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 14
    move-result-object v0
    :try_end_e
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_e} :catch_f

    .line 15
    return-object v0

    .line 16
    :catch_f
    move-exception v1

    .line 17
    sget v2, Ljcifs/util/LogStream;->level:I

    .line 19
    if-lez v2, :cond_2c

    .line 21
    sget-object v2, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    const-string v4, "Ignoring jcifs.smb.client.laddr address: "

    .line 27
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 40
    sget-object v0, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 45
    :cond_2c
    const/4 v0, 0x0

    .line 46
    return-object v0
.end method

.method public static getLong(Ljava/lang/String;J)J
    .registers 4

    .line 1
    sget-object v0, Ljcifs/Config;->prp:Ljava/util/Properties;

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_17

    .line 9
    :try_start_8
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 12
    move-result-wide p1
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_c} :catch_d

    .line 13
    goto :goto_17

    .line 14
    :catch_d
    move-exception p0

    .line 15
    sget v0, Ljcifs/util/LogStream;->level:I

    .line 17
    if-lez v0, :cond_17

    .line 19
    sget-object v0, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 24
    :cond_17
    :goto_17
    return-wide p1
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 2
    sget-object v0, Ljcifs/Config;->prp:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Ljcifs/Config;->prp:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static list(Ljava/io/PrintStream;)V
    .registers 2

    .line 1
    sget-object v0, Ljcifs/Config;->prp:Ljava/util/Properties;

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/Properties;->list(Ljava/io/PrintStream;)V

    .line 6
    return-void
.end method

.method public static load(Ljava/io/InputStream;)V
    .registers 2

    .line 1
    if-eqz p0, :cond_7

    .line 3
    sget-object v0, Ljcifs/Config;->prp:Ljava/util/Properties;

    .line 5
    invoke-virtual {v0, p0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 8
    :cond_7
    :try_start_7
    sget-object p0, Ljcifs/Config;->prp:Ljava/util/Properties;

    .line 10
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V
    :try_end_10
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_10} :catch_11

    .line 17
    goto :goto_1d

    .line 18
    :catch_11
    sget p0, Ljcifs/util/LogStream;->level:I

    .line 20
    const/4 v0, 0x1

    .line 21
    if-le p0, v0, :cond_1d

    .line 23
    sget-object p0, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    .line 25
    const-string v0, "SecurityException: jcifs will ignore System properties"

    .line 27
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 30
    :cond_1d
    :goto_1d
    return-void
.end method

.method public static registerSmbURLHandler()V
    .registers 4

    .line 1
    const-string v0, "java.version"

    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "1.1."

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_3d

    .line 15
    const-string v1, "1.2."

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_3d

    .line 23
    const-string v0, "java.protocol.handler.pkgs"

    .line 25
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    const-string v2, "jcifs"

    .line 31
    if-nez v1, :cond_24

    .line 33
    invoke-static {v0, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    goto :goto_3c

    .line 37
    :cond_24
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 40
    move-result v2

    .line 41
    const/4 v3, -0x1

    .line 42
    if-ne v2, v3, :cond_3c

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    const-string v1, "|jcifs"

    .line 51
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    :cond_3c
    :goto_3c
    return-void

    .line 62
    :cond_3d
    new-instance v1, Ljava/lang/RuntimeException;

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    .line 66
    const-string v3, "jcifs-0.7.0b4+ requires Java 1.3 or above. You are running "

    .line 68
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object v0

    .line 78
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 81
    throw v1
.end method

.method public static setProperties(Ljava/util/Properties;)V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/Properties;

    .line 3
    invoke-direct {v0, p0}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    .line 6
    sput-object v0, Ljcifs/Config;->prp:Ljava/util/Properties;

    .line 8
    :try_start_7
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_e} :catch_f

    .line 15
    goto :goto_1b

    .line 16
    :catch_f
    sget p0, Ljcifs/util/LogStream;->level:I

    .line 18
    const/4 v0, 0x1

    .line 19
    if-le p0, v0, :cond_1b

    .line 21
    sget-object p0, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    .line 23
    const-string v0, "SecurityException: jcifs will ignore System properties"

    .line 25
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 28
    :cond_1b
    :goto_1b
    return-void
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 1
    sget-object v0, Ljcifs/Config;->prp:Ljava/util/Properties;

    .line 3
    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static store(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-object v0, Ljcifs/Config;->prp:Ljava/util/Properties;

    .line 3
    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 6
    return-void
.end method
