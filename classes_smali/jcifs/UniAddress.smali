.class public Ljcifs/UniAddress;
.super Ljava/lang/Object;
.source "UniAddress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/UniAddress$QueryThread;,
        Ljcifs/UniAddress$Sem;
    }
.end annotation


# static fields
.field private static final RESOLVER_BCAST:I = 0x1

.field private static final RESOLVER_DNS:I = 0x2

.field private static final RESOLVER_LMHOSTS:I = 0x3

.field private static final RESOLVER_WINS:I

.field private static baddr:Ljava/net/InetAddress;

.field private static log:Ljcifs/util/LogStream;

.field private static resolveOrder:[I


# instance fields
.field public addr:Ljava/lang/Object;

.field public calledName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 12

    .line 1
    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Ljcifs/UniAddress;->log:Ljcifs/util/LogStream;

    .line 7
    const-string v0, "jcifs.resolveOrder"

    .line 9
    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    .line 16
    move-result-object v1

    .line 17
    :try_start_10
    const-string v2, "jcifs.netbios.baddr"

    .line 19
    const-string v3, "255.255.255.255"

    .line 21
    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 24
    move-result-object v3

    .line 25
    invoke-static {v2, v3}, Ljcifs/Config;->getInetAddress(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    .line 28
    move-result-object v2

    .line 29
    sput-object v2, Ljcifs/UniAddress;->baddr:Ljava/net/InetAddress;
    :try_end_1e
    .catch Ljava/net/UnknownHostException; {:try_start_10 .. :try_end_1e} :catch_1e

    .line 31
    :catch_1e
    const/4 v2, 0x4

    .line 32
    const/4 v3, 0x2

    .line 33
    const/4 v4, 0x3

    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x1

    .line 36
    if-eqz v0, :cond_a9

    .line 38
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 41
    move-result v7

    .line 42
    if-nez v7, :cond_2d

    .line 44
    goto/16 :goto_a9

    .line 46
    :cond_2d
    new-array v7, v2, [I

    .line 48
    new-instance v8, Ljava/util/StringTokenizer;

    .line 50
    const-string v2, ","

    .line 52
    invoke-direct {v8, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    move v0, v5

    .line 56
    :cond_37
    :goto_37
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_46

    .line 62
    new-array v1, v0, [I

    .line 64
    sput-object v1, Ljcifs/UniAddress;->resolveOrder:[I

    .line 66
    invoke-static {v7, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    goto/16 :goto_c2

    .line 71
    :cond_46
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 78
    move-result-object v2

    .line 79
    const-string v9, "LMHOSTS"

    .line 81
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 84
    move-result v9

    .line 85
    if-eqz v9, :cond_5c

    .line 87
    add-int/lit8 v2, v0, 0x1

    .line 89
    aput v4, v7, v0

    .line 91
    :goto_5a
    move v0, v2

    .line 92
    goto :goto_37

    .line 93
    :cond_5c
    const-string v9, "WINS"

    .line 95
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 98
    move-result v9

    .line 99
    if-eqz v9, :cond_77

    .line 101
    if-nez v1, :cond_72

    .line 103
    sget v2, Ljcifs/util/LogStream;->level:I

    .line 105
    if-le v2, v6, :cond_37

    .line 107
    sget-object v2, Ljcifs/UniAddress;->log:Ljcifs/util/LogStream;

    .line 109
    const-string v9, "UniAddress resolveOrder specifies WINS however the jcifs.netbios.wins property has not been set"

    .line 111
    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    goto :goto_37

    .line 115
    :cond_72
    add-int/lit8 v2, v0, 0x1

    .line 117
    aput v5, v7, v0

    .line 119
    goto :goto_5a

    .line 120
    :cond_77
    const-string v9, "BCAST"

    .line 122
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 125
    move-result v9

    .line 126
    if-eqz v9, :cond_84

    .line 128
    add-int/lit8 v2, v0, 0x1

    .line 130
    aput v6, v7, v0

    .line 132
    goto :goto_5a

    .line 133
    :cond_84
    const-string v9, "DNS"

    .line 135
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 138
    move-result v9

    .line 139
    if-eqz v9, :cond_91

    .line 141
    add-int/lit8 v2, v0, 0x1

    .line 143
    aput v3, v7, v0

    .line 145
    goto :goto_5a

    .line 146
    :cond_91
    sget v9, Ljcifs/util/LogStream;->level:I

    .line 148
    if-le v9, v6, :cond_37

    .line 150
    sget-object v9, Ljcifs/UniAddress;->log:Ljcifs/util/LogStream;

    .line 152
    new-instance v10, Ljava/lang/StringBuilder;

    .line 154
    const-string v11, "unknown resolver method: "

    .line 156
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {v9, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 169
    goto :goto_37

    .line 170
    :cond_a9
    :goto_a9
    if-nez v1, :cond_b6

    .line 172
    new-array v0, v4, [I

    .line 174
    sput-object v0, Ljcifs/UniAddress;->resolveOrder:[I

    .line 176
    aput v4, v0, v5

    .line 178
    aput v3, v0, v6

    .line 180
    aput v6, v0, v3

    .line 182
    goto :goto_c2

    .line 183
    :cond_b6
    new-array v0, v2, [I

    .line 185
    sput-object v0, Ljcifs/UniAddress;->resolveOrder:[I

    .line 187
    aput v4, v0, v5

    .line 189
    aput v5, v0, v6

    .line 191
    aput v3, v0, v3

    .line 193
    aput v6, v0, v4

    .line 195
    :goto_c2
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    if-eqz p1, :cond_8

    .line 6
    iput-object p1, p0, Ljcifs/UniAddress;->addr:Ljava/lang/Object;

    .line 8
    return-void

    .line 9
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 14
    throw p1
.end method

.method public static getAllByName(Ljava/lang/String;Z)[Ljcifs/UniAddress;
    .registers 10

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "getAllByName: "

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 20
    if-eqz p0, :cond_c3

    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_c3

    .line 28
    invoke-static {p0}, Ljcifs/UniAddress;->isDotQuadIP(Ljava/lang/String;)Z

    .line 31
    move-result v0

    .line 32
    const/4 v1, 0x0

    .line 33
    const/4 v2, 0x1

    .line 34
    if-eqz v0, :cond_31

    .line 36
    new-array p1, v2, [Ljcifs/UniAddress;

    .line 38
    new-instance v0, Ljcifs/UniAddress;

    .line 40
    invoke-static {p0}, Ljcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;)Ljcifs/netbios/NbtAddress;

    .line 43
    move-result-object p0

    .line 44
    invoke-direct {v0, p0}, Ljcifs/UniAddress;-><init>(Ljava/lang/Object;)V

    .line 47
    aput-object v0, p1, v1

    .line 49
    return-object p1

    .line 50
    :cond_31
    move v0, v1

    .line 51
    :goto_32
    sget-object v3, Ljcifs/UniAddress;->resolveOrder:[I

    .line 53
    array-length v4, v3

    .line 54
    if-ge v0, v4, :cond_bd

    .line 56
    :try_start_37
    aget v3, v3, v0

    .line 58
    const/4 v4, 0x0

    .line 59
    const/16 v5, 0x20

    .line 61
    const/16 v6, 0xf

    .line 63
    if-eqz v3, :cond_91

    .line 65
    if-eq v3, v2, :cond_7a

    .line 67
    const/4 v4, 0x2

    .line 68
    if-eq v3, v4, :cond_56

    .line 70
    const/4 v4, 0x3

    .line 71
    if-ne v3, v4, :cond_50

    .line 73
    invoke-static {p0}, Ljcifs/netbios/Lmhosts;->getByName(Ljava/lang/String;)Ljcifs/netbios/NbtAddress;

    .line 76
    move-result-object v3

    .line 77
    if-nez v3, :cond_af

    .line 79
    goto/16 :goto_b9

    .line 81
    :cond_50
    new-instance v3, Ljava/net/UnknownHostException;

    .line 83
    invoke-direct {v3, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 86
    throw v3

    .line 87
    :cond_56
    invoke-static {p0}, Ljcifs/UniAddress;->isAllDigits(Ljava/lang/String;)Z

    .line 90
    move-result v3

    .line 91
    if-nez v3, :cond_74

    .line 93
    invoke-static {p0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    .line 96
    move-result-object v3

    .line 97
    array-length v4, v3

    .line 98
    new-array v4, v4, [Ljcifs/UniAddress;

    .line 100
    move v5, v1

    .line 101
    :goto_64
    array-length v6, v3

    .line 102
    if-lt v5, v6, :cond_68

    .line 104
    return-object v4

    .line 105
    :cond_68
    new-instance v6, Ljcifs/UniAddress;

    .line 107
    aget-object v7, v3, v5

    .line 109
    invoke-direct {v6, v7}, Ljcifs/UniAddress;-><init>(Ljava/lang/Object;)V

    .line 112
    aput-object v6, v4, v5

    .line 114
    add-int/lit8 v5, v5, 0x1

    .line 116
    goto :goto_64

    .line 117
    :cond_74
    new-instance v3, Ljava/net/UnknownHostException;

    .line 119
    invoke-direct {v3, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 122
    throw v3

    .line 123
    :cond_7a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 126
    move-result v3

    .line 127
    if-le v3, v6, :cond_81

    .line 129
    goto :goto_b9

    .line 130
    :cond_81
    if-eqz p1, :cond_8a

    .line 132
    sget-object v3, Ljcifs/UniAddress;->baddr:Ljava/net/InetAddress;

    .line 134
    invoke-static {p0, v3}, Ljcifs/UniAddress;->lookupServerOrWorkgroup(Ljava/lang/String;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;

    .line 137
    move-result-object v3

    .line 138
    goto :goto_af

    .line 139
    :cond_8a
    sget-object v3, Ljcifs/UniAddress;->baddr:Ljava/net/InetAddress;

    .line 141
    invoke-static {p0, v5, v4, v3}, Ljcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;

    .line 144
    move-result-object v3

    .line 145
    goto :goto_af

    .line 146
    :cond_91
    const-string v3, "\u0001\u0002__MSBROWSE__\u0002"

    .line 148
    if-eq p0, v3, :cond_b9

    .line 150
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 153
    move-result v3

    .line 154
    if-le v3, v6, :cond_9c

    .line 156
    goto :goto_b9

    .line 157
    :cond_9c
    if-eqz p1, :cond_a7

    .line 159
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    .line 162
    move-result-object v3

    .line 163
    invoke-static {p0, v3}, Ljcifs/UniAddress;->lookupServerOrWorkgroup(Ljava/lang/String;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;

    .line 166
    move-result-object v3

    .line 167
    goto :goto_af

    .line 168
    :cond_a7
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    .line 171
    move-result-object v3

    .line 172
    invoke-static {p0, v5, v4, v3}, Ljcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;

    .line 175
    move-result-object v3

    .line 176
    :cond_af
    :goto_af
    new-array v4, v2, [Ljcifs/UniAddress;

    .line 178
    new-instance v5, Ljcifs/UniAddress;

    .line 180
    invoke-direct {v5, v3}, Ljcifs/UniAddress;-><init>(Ljava/lang/Object;)V

    .line 183
    aput-object v5, v4, v1
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_b8} :catch_b9

    .line 185
    return-object v4

    .line 186
    :catch_b9
    :cond_b9
    :goto_b9
    add-int/lit8 v0, v0, 0x1

    .line 188
    goto/16 :goto_32

    .line 190
    :cond_bd
    new-instance p1, Ljava/net/UnknownHostException;

    .line 192
    invoke-direct {p1, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 195
    throw p1

    .line 196
    :cond_c3
    new-instance p0, Ljava/net/UnknownHostException;

    .line 198
    invoke-direct {p0}, Ljava/net/UnknownHostException;-><init>()V

    .line 201
    throw p0
.end method

.method public static getByName(Ljava/lang/String;)Ljcifs/UniAddress;
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;

    move-result-object p0

    return-object p0
.end method

.method public static getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;
    .registers 2

    .line 2
    invoke-static {p0, p1}, Ljcifs/UniAddress;->getAllByName(Ljava/lang/String;Z)[Ljcifs/UniAddress;

    move-result-object p0

    const/4 p1, 0x0

    .line 3
    aget-object p0, p0, p1

    return-object p0
.end method

.method public static isAllDigits(Ljava/lang/String;)Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    move-result v2

    .line 7
    if-lt v1, v2, :cond_a

    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_a
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 14
    move-result v2

    .line 15
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_15

    .line 21
    return v0

    .line 22
    :cond_15
    add-int/lit8 v1, v1, 0x1

    .line 24
    goto :goto_2
.end method

.method public static isDotQuadIP(Ljava/lang/String;)Z
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 5
    move-result v1

    .line 6
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_38

    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 15
    move-result v1

    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 19
    move-result-object p0

    .line 20
    move v2, v0

    .line 21
    move v3, v2

    .line 22
    :goto_15
    if-ge v2, v1, :cond_38

    .line 24
    add-int/lit8 v4, v2, 0x1

    .line 26
    aget-char v2, p0, v2

    .line 28
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_22

    .line 34
    goto :goto_38

    .line 35
    :cond_22
    if-ne v4, v1, :cond_29

    .line 37
    const/4 v2, 0x3

    .line 38
    if-ne v3, v2, :cond_29

    .line 40
    const/4 p0, 0x1

    .line 41
    return p0

    .line 42
    :cond_29
    if-ge v4, v1, :cond_36

    .line 44
    aget-char v2, p0, v4

    .line 46
    const/16 v5, 0x2e

    .line 48
    if-ne v2, v5, :cond_36

    .line 50
    add-int/lit8 v3, v3, 0x1

    .line 52
    add-int/lit8 v2, v4, 0x1

    .line 54
    goto :goto_15

    .line 55
    :cond_36
    move v2, v4

    .line 56
    goto :goto_15

    .line 57
    :cond_38
    :goto_38
    return v0
.end method

.method public static lookupServerOrWorkgroup(Ljava/lang/String;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;
    .registers 11

    .line 1
    new-instance v6, Ljcifs/UniAddress$Sem;

    .line 3
    const/4 v0, 0x2

    .line 4
    invoke-direct {v6, v0}, Ljcifs/UniAddress$Sem;-><init>(I)V

    .line 7
    invoke-static {p1}, Ljcifs/netbios/NbtAddress;->isWINS(Ljava/net/InetAddress;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_f

    .line 13
    const/16 v0, 0x1b

    .line 15
    goto :goto_11

    .line 16
    :cond_f
    const/16 v0, 0x1d

    .line 18
    :goto_11
    move v3, v0

    .line 19
    new-instance v7, Ljcifs/UniAddress$QueryThread;

    .line 21
    const/4 v4, 0x0

    .line 22
    move-object v0, v7

    .line 23
    move-object v1, v6

    .line 24
    move-object v2, p0

    .line 25
    move-object v5, p1

    .line 26
    invoke-direct/range {v0 .. v5}, Ljcifs/UniAddress$QueryThread;-><init>(Ljcifs/UniAddress$Sem;Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)V

    .line 29
    new-instance v8, Ljcifs/UniAddress$QueryThread;

    .line 31
    const/16 v3, 0x20

    .line 33
    move-object v0, v8

    .line 34
    invoke-direct/range {v0 .. v5}, Ljcifs/UniAddress$QueryThread;-><init>(Ljcifs/UniAddress$Sem;Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)V

    .line 37
    const/4 p1, 0x1

    .line 38
    invoke-virtual {v7, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 41
    invoke-virtual {v8, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 44
    :try_start_2b
    monitor-enter v6
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2c} :catch_54

    .line 45
    :try_start_2c
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 48
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 51
    :goto_32
    iget p1, v6, Ljcifs/UniAddress$Sem;->count:I

    .line 53
    if-lez p1, :cond_43

    .line 55
    iget-object p1, v7, Ljcifs/UniAddress$QueryThread;->ans:Ljcifs/netbios/NbtAddress;

    .line 57
    if-nez p1, :cond_43

    .line 59
    iget-object p1, v8, Ljcifs/UniAddress$QueryThread;->ans:Ljcifs/netbios/NbtAddress;

    .line 61
    if-eqz p1, :cond_3f

    .line 63
    goto :goto_43

    .line 64
    :cond_3f
    invoke-virtual {v6}, Ljava/lang/Object;->wait()V

    .line 67
    goto :goto_32

    .line 68
    :cond_43
    :goto_43
    monitor-exit v6
    :try_end_44
    .catchall {:try_start_2c .. :try_end_44} :catchall_51

    .line 69
    iget-object p0, v7, Ljcifs/UniAddress$QueryThread;->ans:Ljcifs/netbios/NbtAddress;

    .line 71
    if-eqz p0, :cond_49

    .line 73
    return-object p0

    .line 74
    :cond_49
    iget-object p0, v8, Ljcifs/UniAddress$QueryThread;->ans:Ljcifs/netbios/NbtAddress;

    .line 76
    if-eqz p0, :cond_4e

    .line 78
    return-object p0

    .line 79
    :cond_4e
    iget-object p0, v7, Ljcifs/UniAddress$QueryThread;->uhe:Ljava/net/UnknownHostException;

    .line 81
    throw p0

    .line 82
    :catchall_51
    move-exception p1

    .line 83
    :try_start_52
    monitor-exit v6
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    .line 84
    :try_start_53
    throw p1
    :try_end_54
    .catch Ljava/lang/InterruptedException; {:try_start_53 .. :try_end_54} :catch_54

    .line 85
    :catch_54
    new-instance p1, Ljava/net/UnknownHostException;

    .line 87
    invoke-direct {p1, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 90
    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Ljcifs/UniAddress;

    .line 3
    if-eqz v0, :cond_12

    .line 5
    iget-object v0, p0, Ljcifs/UniAddress;->addr:Ljava/lang/Object;

    .line 7
    check-cast p1, Ljcifs/UniAddress;

    .line 9
    iget-object p1, p1, Ljcifs/UniAddress;->addr:Ljava/lang/Object;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_12

    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_12
    const/4 p1, 0x0

    .line 20
    return p1
.end method

.method public firstCalledName()Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Ljcifs/UniAddress;->addr:Ljava/lang/Object;

    .line 3
    instance-of v1, v0, Ljcifs/netbios/NbtAddress;

    .line 5
    if-eqz v1, :cond_d

    .line 7
    check-cast v0, Ljcifs/netbios/NbtAddress;

    .line 9
    invoke-virtual {v0}, Ljcifs/netbios/NbtAddress;->firstCalledName()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_d
    check-cast v0, Ljava/net/InetAddress;

    .line 16
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Ljcifs/UniAddress;->calledName:Ljava/lang/String;

    .line 22
    invoke-static {v0}, Ljcifs/UniAddress;->isDotQuadIP(Ljava/lang/String;)Z

    .line 25
    move-result v0

    .line 26
    const-string v1, "*SMBSERVER     "

    .line 28
    if-eqz v0, :cond_20

    .line 30
    iput-object v1, p0, Ljcifs/UniAddress;->calledName:Ljava/lang/String;

    .line 32
    goto :goto_50

    .line 33
    :cond_20
    iget-object v0, p0, Ljcifs/UniAddress;->calledName:Ljava/lang/String;

    .line 35
    const/16 v2, 0x2e

    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    .line 40
    move-result v0

    .line 41
    const/4 v2, 0x1

    .line 42
    const/16 v3, 0xf

    .line 44
    if-le v0, v2, :cond_3d

    .line 46
    if-ge v0, v3, :cond_3d

    .line 48
    iget-object v1, p0, Ljcifs/UniAddress;->calledName:Ljava/lang/String;

    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Ljcifs/UniAddress;->calledName:Ljava/lang/String;

    .line 61
    goto :goto_50

    .line 62
    :cond_3d
    iget-object v0, p0, Ljcifs/UniAddress;->calledName:Ljava/lang/String;

    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 67
    move-result v0

    .line 68
    if-le v0, v3, :cond_48

    .line 70
    iput-object v1, p0, Ljcifs/UniAddress;->calledName:Ljava/lang/String;

    .line 72
    goto :goto_50

    .line 73
    :cond_48
    iget-object v0, p0, Ljcifs/UniAddress;->calledName:Ljava/lang/String;

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p0, Ljcifs/UniAddress;->calledName:Ljava/lang/String;

    .line 81
    :goto_50
    iget-object v0, p0, Ljcifs/UniAddress;->calledName:Ljava/lang/String;

    .line 83
    return-object v0
.end method

.method public getAddress()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/UniAddress;->addr:Ljava/lang/Object;

    .line 3
    return-object v0
.end method

.method public getHostAddress()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Ljcifs/UniAddress;->addr:Ljava/lang/Object;

    .line 3
    instance-of v1, v0, Ljcifs/netbios/NbtAddress;

    .line 5
    if-eqz v1, :cond_d

    .line 7
    check-cast v0, Ljcifs/netbios/NbtAddress;

    .line 9
    invoke-virtual {v0}, Ljcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_d
    check-cast v0, Ljava/net/InetAddress;

    .line 16
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Ljcifs/UniAddress;->addr:Ljava/lang/Object;

    .line 3
    instance-of v1, v0, Ljcifs/netbios/NbtAddress;

    .line 5
    if-eqz v1, :cond_d

    .line 7
    check-cast v0, Ljcifs/netbios/NbtAddress;

    .line 9
    invoke-virtual {v0}, Ljcifs/netbios/NbtAddress;->getHostName()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_d
    check-cast v0, Ljava/net/InetAddress;

    .line 16
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/UniAddress;->addr:Ljava/lang/Object;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public nextCalledName()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Ljcifs/UniAddress;->addr:Ljava/lang/Object;

    .line 3
    instance-of v1, v0, Ljcifs/netbios/NbtAddress;

    .line 5
    if-eqz v1, :cond_d

    .line 7
    check-cast v0, Ljcifs/netbios/NbtAddress;

    .line 9
    invoke-virtual {v0}, Ljcifs/netbios/NbtAddress;->nextCalledName()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_d
    iget-object v0, p0, Ljcifs/UniAddress;->calledName:Ljava/lang/String;

    .line 16
    const-string v1, "*SMBSERVER     "

    .line 18
    if-eq v0, v1, :cond_16

    .line 20
    iput-object v1, p0, Ljcifs/UniAddress;->calledName:Ljava/lang/String;

    .line 22
    return-object v1

    .line 23
    :cond_16
    const/4 v0, 0x0

    .line 24
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/UniAddress;->addr:Ljava/lang/Object;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
