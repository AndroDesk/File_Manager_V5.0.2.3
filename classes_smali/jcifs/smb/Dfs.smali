.class public Ljcifs/smb/Dfs;
.super Ljava/lang/Object;
.source "Dfs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/smb/Dfs$CacheEntry;
    }
.end annotation


# static fields
.field public static final DISABLED:Z

.field public static FALSE_ENTRY:Ljcifs/smb/Dfs$CacheEntry;

.field public static final TTL:J

.field public static log:Ljcifs/util/LogStream;

.field public static final strictView:Z


# instance fields
.field public _domains:Ljcifs/smb/Dfs$CacheEntry;

.field public referrals:Ljcifs/smb/Dfs$CacheEntry;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 1
    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Ljcifs/smb/Dfs;->log:Ljcifs/util/LogStream;

    .line 7
    const-string v0, "jcifs.smb.client.dfs.strictView"

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {v0, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    .line 13
    move-result v0

    .line 14
    sput-boolean v0, Ljcifs/smb/Dfs;->strictView:Z

    .line 16
    const-string v0, "jcifs.smb.client.dfs.ttl"

    .line 18
    const-wide/16 v2, 0x12c

    .line 20
    invoke-static {v0, v2, v3}, Ljcifs/Config;->getLong(Ljava/lang/String;J)J

    .line 23
    move-result-wide v2

    .line 24
    sput-wide v2, Ljcifs/smb/Dfs;->TTL:J

    .line 26
    const-string v0, "jcifs.smb.client.dfs.disabled"

    .line 28
    invoke-static {v0, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    .line 31
    move-result v0

    .line 32
    sput-boolean v0, Ljcifs/smb/Dfs;->DISABLED:Z

    .line 34
    new-instance v0, Ljcifs/smb/Dfs$CacheEntry;

    .line 36
    const-wide/16 v1, 0x0

    .line 38
    invoke-direct {v0, v1, v2}, Ljcifs/smb/Dfs$CacheEntry;-><init>(J)V

    .line 41
    sput-object v0, Ljcifs/smb/Dfs;->FALSE_ENTRY:Ljcifs/smb/Dfs$CacheEntry;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    .line 7
    iput-object v0, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    .line 9
    return-void
.end method


# virtual methods
.method public getDc(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbTransport;
    .registers 9

    .line 1
    sget-boolean v0, Ljcifs/smb/Dfs;->DISABLED:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 6
    return-object v1

    .line 7
    :cond_6
    const/4 v0, 0x1

    .line 8
    :try_start_7
    invoke-static {p1, v0}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;

    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static {v2, v3}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    .line 16
    move-result-object v2

    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    const-string v5, "\\"

    .line 21
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v2, p2, p1, v0}, Ljcifs/smb/SmbTransport;->getDfsReferrals(Ljcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)Ljcifs/smb/DfsReferral;

    .line 34
    move-result-object p1
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_22} :catch_37

    .line 35
    if-eqz p1, :cond_4e

    .line 37
    move-object p2, p1

    .line 38
    :goto_25
    :try_start_25
    iget-object v0, p2, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    .line 40
    invoke-static {v0}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;)Ljcifs/UniAddress;

    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0, v3}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    .line 47
    move-result-object p1
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2f} :catch_30

    .line 48
    return-object p1

    .line 49
    :catch_30
    move-exception v0

    .line 50
    :try_start_31
    iget-object p2, p2, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    .line 52
    if-eq p2, p1, :cond_36

    .line 54
    goto :goto_25

    .line 55
    :cond_36
    throw v0
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_37} :catch_37

    .line 56
    :catch_37
    move-exception p1

    .line 57
    sget p2, Ljcifs/util/LogStream;->level:I

    .line 59
    const/4 v0, 0x3

    .line 60
    if-lt p2, v0, :cond_42

    .line 62
    sget-object p2, Ljcifs/smb/Dfs;->log:Ljcifs/util/LogStream;

    .line 64
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 67
    :cond_42
    sget-boolean p2, Ljcifs/smb/Dfs;->strictView:Z

    .line 69
    if-eqz p2, :cond_4e

    .line 71
    instance-of p2, p1, Ljcifs/smb/SmbAuthException;

    .line 73
    if-nez p2, :cond_4b

    .line 75
    goto :goto_4e

    .line 76
    :cond_4b
    check-cast p1, Ljcifs/smb/SmbAuthException;

    .line 78
    throw p1

    .line 79
    :cond_4e
    :goto_4e
    return-object v1
.end method

.method public getReferral(Ljcifs/smb/SmbTransport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;
    .registers 9

    .line 1
    const-string v0, "\\"

    .line 3
    sget-boolean v1, Ljcifs/smb/Dfs;->DISABLED:Z

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_8

    .line 8
    return-object v2

    .line 9
    :cond_8
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p2

    .line 27
    if-eqz p4, :cond_2c

    .line 29
    new-instance p3, Ljava/lang/StringBuilder;

    .line 31
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    move-result-object p2

    .line 35
    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p2

    .line 45
    :cond_2c
    const/4 p3, 0x0

    .line 46
    invoke-virtual {p1, p5, p2, p3}, Ljcifs/smb/SmbTransport;->getDfsReferrals(Ljcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)Ljcifs/smb/DfsReferral;

    .line 49
    move-result-object p1
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_31} :catch_34

    .line 50
    if-eqz p1, :cond_4b

    .line 52
    return-object p1

    .line 53
    :catch_34
    move-exception p1

    .line 54
    sget p2, Ljcifs/util/LogStream;->level:I

    .line 56
    const/4 p3, 0x4

    .line 57
    if-lt p2, p3, :cond_3f

    .line 59
    sget-object p2, Ljcifs/smb/Dfs;->log:Ljcifs/util/LogStream;

    .line 61
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 64
    :cond_3f
    sget-boolean p2, Ljcifs/smb/Dfs;->strictView:Z

    .line 66
    if-eqz p2, :cond_4b

    .line 68
    instance-of p2, p1, Ljcifs/smb/SmbAuthException;

    .line 70
    if-nez p2, :cond_48

    .line 72
    goto :goto_4b

    .line 73
    :cond_48
    check-cast p1, Ljcifs/smb/SmbAuthException;

    .line 75
    throw p1

    .line 76
    :cond_4b
    :goto_4b
    return-object v2
.end method

.method public getTrustedDomains(Ljcifs/smb/NtlmPasswordAuthentication;)Ljava/util/HashMap;
    .registers 10

    .line 1
    sget-boolean v0, Ljcifs/smb/Dfs;->DISABLED:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_74

    .line 6
    iget-object v0, p1, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    .line 8
    const-string v2, "?"

    .line 10
    if-ne v0, v2, :cond_c

    .line 12
    goto :goto_74

    .line 13
    :cond_c
    iget-object v0, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    .line 15
    if-eqz v0, :cond_1e

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    move-result-wide v2

    .line 21
    iget-object v0, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    .line 23
    iget-wide v4, v0, Ljcifs/smb/Dfs$CacheEntry;->expiration:J

    .line 25
    cmp-long v0, v2, v4

    .line 27
    if-lez v0, :cond_1e

    .line 29
    iput-object v1, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    .line 31
    :cond_1e
    iget-object v0, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    .line 33
    if-eqz v0, :cond_25

    .line 35
    iget-object p1, v0, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    .line 37
    return-object p1

    .line 38
    :cond_25
    :try_start_25
    iget-object v0, p1, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-static {v0, v2}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;

    .line 44
    move-result-object v0

    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-static {v0, v2}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    .line 49
    move-result-object v0

    .line 50
    new-instance v3, Ljcifs/smb/Dfs$CacheEntry;

    .line 52
    sget-wide v4, Ljcifs/smb/Dfs;->TTL:J

    .line 54
    const-wide/16 v6, 0xa

    .line 56
    mul-long/2addr v4, v6

    .line 57
    invoke-direct {v3, v4, v5}, Ljcifs/smb/Dfs$CacheEntry;-><init>(J)V

    .line 60
    const-string v4, ""

    .line 62
    invoke-virtual {v0, p1, v4, v2}, Ljcifs/smb/SmbTransport;->getDfsReferrals(Ljcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)Ljcifs/smb/DfsReferral;

    .line 65
    move-result-object p1

    .line 66
    if-eqz p1, :cond_74

    .line 68
    move-object v0, p1

    .line 69
    :cond_44
    iget-object v2, v0, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    .line 71
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 74
    move-result-object v2

    .line 75
    iget-object v4, v3, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    .line 77
    new-instance v5, Ljava/util/HashMap;

    .line 79
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 82
    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, v0, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    .line 87
    if-ne v0, p1, :cond_44

    .line 89
    iput-object v3, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    .line 91
    iget-object p1, v3, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_5c} :catch_5d

    .line 93
    return-object p1

    .line 94
    :catch_5d
    move-exception p1

    .line 95
    sget v0, Ljcifs/util/LogStream;->level:I

    .line 97
    const/4 v2, 0x3

    .line 98
    if-lt v0, v2, :cond_68

    .line 100
    sget-object v0, Ljcifs/smb/Dfs;->log:Ljcifs/util/LogStream;

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 105
    :cond_68
    sget-boolean v0, Ljcifs/smb/Dfs;->strictView:Z

    .line 107
    if-eqz v0, :cond_74

    .line 109
    instance-of v0, p1, Ljcifs/smb/SmbAuthException;

    .line 111
    if-nez v0, :cond_71

    .line 113
    goto :goto_74

    .line 114
    :cond_71
    check-cast p1, Ljcifs/smb/SmbAuthException;

    .line 116
    throw p1

    .line 117
    :cond_74
    :goto_74
    return-object v1
.end method

.method public declared-synchronized insert(Ljava/lang/String;Ljcifs/smb/DfsReferral;)V
    .registers 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    sget-boolean v0, Ljcifs/smb/Dfs;->DISABLED:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_7f

    .line 4
    if-eqz v0, :cond_7

    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_7
    const/16 v0, 0x5c

    .line 10
    const/4 v1, 0x1

    .line 11
    :try_start_a
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    .line 14
    move-result v2

    .line 15
    add-int/lit8 v3, v2, 0x1

    .line 17
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(II)I

    .line 20
    move-result v4

    .line 21
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    iget v4, p2, Ljcifs/smb/DfsReferral;->pathConsumed:I

    .line 31
    const/4 v5, 0x0

    .line 32
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 43
    move-result v4

    .line 44
    :goto_2b
    if-le v4, v1, :cond_39

    .line 46
    add-int/lit8 v6, v4, -0x1

    .line 48
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    .line 51
    move-result v6

    .line 52
    if-eq v6, v0, :cond_36

    .line 54
    goto :goto_39

    .line 55
    :cond_36
    add-int/lit8 v4, v4, -0x1

    .line 57
    goto :goto_2b

    .line 58
    :cond_39
    :goto_39
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 61
    move-result v0

    .line 62
    if-ge v4, v0, :cond_43

    .line 64
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    :cond_43
    iget v0, p2, Ljcifs/smb/DfsReferral;->pathConsumed:I

    .line 70
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 73
    move-result v2

    .line 74
    add-int/2addr v2, v1

    .line 75
    add-int/2addr v2, v1

    .line 76
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 79
    move-result v1

    .line 80
    add-int/2addr v2, v1

    .line 81
    sub-int/2addr v0, v2

    .line 82
    iput v0, p2, Ljcifs/smb/DfsReferral;->pathConsumed:I

    .line 84
    iget-object v0, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    .line 86
    if-eqz v0, :cond_69

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 91
    move-result-wide v0

    .line 92
    const-wide/16 v2, 0x2710

    .line 94
    add-long/2addr v0, v2

    .line 95
    iget-object v2, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    .line 97
    iget-wide v2, v2, Ljcifs/smb/Dfs$CacheEntry;->expiration:J

    .line 99
    cmp-long v0, v0, v2

    .line 101
    if-lez v0, :cond_69

    .line 103
    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    .line 106
    :cond_69
    iget-object v0, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    .line 108
    if-nez v0, :cond_76

    .line 110
    new-instance v0, Ljcifs/smb/Dfs$CacheEntry;

    .line 112
    const-wide/16 v1, 0x0

    .line 114
    invoke-direct {v0, v1, v2}, Ljcifs/smb/Dfs$CacheEntry;-><init>(J)V

    .line 117
    iput-object v0, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    .line 119
    :cond_76
    iget-object v0, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    .line 121
    iget-object v0, v0, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    .line 123
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7d
    .catchall {:try_start_a .. :try_end_7d} :catchall_7f

    .line 126
    monitor-exit p0

    .line 127
    return-void

    .line 128
    :catchall_7f
    move-exception p1

    .line 129
    monitor-exit p0

    .line 130
    throw p1
.end method

.method public isTrustedDomain(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Z
    .registers 4

    .line 1
    invoke-virtual {p0, p2}, Ljcifs/smb/Dfs;->getTrustedDomains(Ljcifs/smb/NtlmPasswordAuthentication;)Ljava/util/HashMap;

    .line 4
    move-result-object p2

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p2, :cond_8

    .line 8
    return v0

    .line 9
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_14

    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :cond_14
    return v0
.end method

.method public declared-synchronized resolve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;
    .registers 23

    .line 1
    move-object/from16 v7, p0

    .line 3
    move-object/from16 v0, p3

    .line 5
    move-object/from16 v8, p4

    .line 7
    monitor-enter p0

    .line 8
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    move-result-wide v9

    .line 12
    sget-boolean v1, Ljcifs/smb/Dfs;->DISABLED:Z

    .line 14
    const/4 v11, 0x0

    .line 15
    if-nez v1, :cond_1ad

    .line 17
    const-string v1, "IPC$"

    .line 19
    move-object/from16 v2, p2

    .line 21
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1c

    .line 27
    goto/16 :goto_1ad

    .line 29
    :cond_1c
    invoke-virtual {v7, v8}, Ljcifs/smb/Dfs;->getTrustedDomains(Ljcifs/smb/NtlmPasswordAuthentication;)Ljava/util/HashMap;

    .line 32
    move-result-object v1

    .line 33
    const-wide/16 v12, 0x0

    .line 35
    const/4 v14, 0x1

    .line 36
    if-eqz v1, :cond_10c

    .line 38
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 41
    move-result-object v15

    .line 42
    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 46
    move-object v6, v1

    .line 47
    check-cast v6, Ljava/util/HashMap;

    .line 49
    if-eqz v6, :cond_10e

    .line 51
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Ljcifs/smb/Dfs$CacheEntry;

    .line 61
    if-eqz v1, :cond_49

    .line 63
    iget-wide v2, v1, Ljcifs/smb/Dfs$CacheEntry;->expiration:J

    .line 65
    cmp-long v2, v9, v2

    .line 67
    if-lez v2, :cond_49

    .line 69
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    move-object v4, v11

    .line 73
    goto :goto_4a

    .line 74
    :cond_49
    move-object v4, v1

    .line 75
    :goto_4a
    if-nez v4, :cond_ab

    .line 77
    invoke-virtual {v7, v15, v8}, Ljcifs/smb/Dfs;->getDc(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbTransport;

    .line 80
    move-result-object v16
    :try_end_50
    .catchall {:try_start_7 .. :try_end_50} :catchall_1b0

    .line 81
    if-nez v16, :cond_54

    .line 83
    monitor-exit p0

    .line 84
    return-object v11

    .line 85
    :cond_54
    move-object/from16 v1, p0

    .line 87
    move-object/from16 v2, v16

    .line 89
    move-object v3, v15

    .line 90
    move-object v11, v4

    .line 91
    move-object v4, v5

    .line 92
    move-object/from16 p1, v5

    .line 94
    move-object/from16 v5, p3

    .line 96
    move-object/from16 v17, v6

    .line 98
    move-object/from16 v6, p4

    .line 100
    :try_start_63
    invoke-virtual/range {v1 .. v6}, Ljcifs/smb/Dfs;->getReferral(Ljcifs/smb/SmbTransport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;

    .line 103
    move-result-object v1

    .line 104
    if-eqz v1, :cond_9f

    .line 106
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 109
    move-result v2

    .line 110
    add-int/2addr v2, v14

    .line 111
    add-int/2addr v2, v14

    .line 112
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 115
    move-result v3

    .line 116
    add-int/2addr v2, v3

    .line 117
    new-instance v4, Ljcifs/smb/Dfs$CacheEntry;

    .line 119
    invoke-direct {v4, v12, v13}, Ljcifs/smb/Dfs$CacheEntry;-><init>(J)V

    .line 122
    move-object v3, v1

    .line 123
    :cond_7a
    if-nez v0, :cond_84

    .line 125
    iget-object v5, v4, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    .line 127
    iput-object v5, v3, Ljcifs/smb/DfsReferral;->map:Ljava/util/Map;

    .line 129
    const-string v5, "\\"

    .line 131
    iput-object v5, v3, Ljcifs/smb/DfsReferral;->key:Ljava/lang/String;

    .line 133
    :cond_84
    iget v5, v3, Ljcifs/smb/DfsReferral;->pathConsumed:I

    .line 135
    sub-int/2addr v5, v2

    .line 136
    iput v5, v3, Ljcifs/smb/DfsReferral;->pathConsumed:I

    .line 138
    iget-object v3, v3, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    .line 140
    if-ne v3, v1, :cond_7a

    .line 142
    iget-object v2, v1, Ljcifs/smb/DfsReferral;->key:Ljava/lang/String;

    .line 144
    if-eqz v2, :cond_96

    .line 146
    iget-object v3, v4, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    .line 148
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_96
    move-object/from16 v6, p1

    .line 153
    move-object/from16 v5, v17

    .line 155
    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    move-object v11, v4

    .line 159
    goto :goto_b7

    .line 160
    :cond_9f
    move-object/from16 v6, p1

    .line 162
    move-object/from16 v5, v17

    .line 164
    if-nez v0, :cond_b7

    .line 166
    sget-object v2, Ljcifs/smb/Dfs;->FALSE_ENTRY:Ljcifs/smb/Dfs$CacheEntry;

    .line 168
    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    goto :goto_b7

    .line 172
    :cond_ab
    move-object v11, v4

    .line 173
    move-object v6, v5

    .line 174
    sget-object v1, Ljcifs/smb/Dfs;->FALSE_ENTRY:Ljcifs/smb/Dfs$CacheEntry;

    .line 176
    if-ne v11, v1, :cond_b4

    .line 178
    const/4 v1, 0x0

    .line 179
    const/4 v11, 0x0

    .line 180
    goto :goto_b5

    .line 181
    :cond_b4
    const/4 v1, 0x0

    .line 182
    :goto_b5
    const/16 v16, 0x0

    .line 184
    :cond_b7
    :goto_b7
    if-eqz v11, :cond_10a

    .line 186
    const-string v5, "\\"

    .line 188
    iget-object v1, v11, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    .line 190
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    move-result-object v1

    .line 194
    check-cast v1, Ljcifs/smb/DfsReferral;

    .line 196
    if-eqz v1, :cond_d1

    .line 198
    iget-wide v2, v1, Ljcifs/smb/DfsReferral;->expiration:J

    .line 200
    cmp-long v2, v9, v2

    .line 202
    if-lez v2, :cond_d1

    .line 204
    iget-object v1, v11, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    .line 206
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const/4 v1, 0x0

    .line 210
    :cond_d1
    if-nez v1, :cond_10a

    .line 212
    if-nez v16, :cond_e0

    .line 214
    invoke-virtual {v7, v15, v8}, Ljcifs/smb/Dfs;->getDc(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbTransport;

    .line 217
    move-result-object v1
    :try_end_d9
    .catchall {:try_start_63 .. :try_end_d9} :catchall_1b0

    .line 218
    if-nez v1, :cond_de

    .line 220
    monitor-exit p0

    .line 221
    :goto_dc
    const/4 v0, 0x0

    .line 222
    return-object v0

    .line 223
    :cond_de
    move-object v2, v1

    .line 224
    goto :goto_e2

    .line 225
    :cond_e0
    move-object/from16 v2, v16

    .line 227
    :goto_e2
    move-object/from16 v1, p0

    .line 229
    move-object v3, v15

    .line 230
    move-object v4, v6

    .line 231
    move-object v12, v5

    .line 232
    move-object/from16 v5, p3

    .line 234
    move-object v13, v6

    .line 235
    move-object/from16 v6, p4

    .line 237
    :try_start_ec
    invoke-virtual/range {v1 .. v6}, Ljcifs/smb/Dfs;->getReferral(Ljcifs/smb/SmbTransport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;

    .line 240
    move-result-object v1

    .line 241
    if-eqz v1, :cond_110

    .line 243
    iget v2, v1, Ljcifs/smb/DfsReferral;->pathConsumed:I

    .line 245
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 248
    move-result v3

    .line 249
    add-int/2addr v3, v14

    .line 250
    add-int/2addr v3, v14

    .line 251
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 254
    move-result v4

    .line 255
    add-int/2addr v3, v4

    .line 256
    sub-int/2addr v2, v3

    .line 257
    iput v2, v1, Ljcifs/smb/DfsReferral;->pathConsumed:I

    .line 259
    iput-object v12, v1, Ljcifs/smb/DfsReferral;->link:Ljava/lang/String;

    .line 261
    iget-object v2, v11, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    .line 263
    invoke-virtual {v2, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    goto :goto_110

    .line 267
    :cond_10a
    move-object v13, v6

    .line 268
    goto :goto_110

    .line 269
    :cond_10c
    move-object/from16 v15, p1

    .line 271
    :cond_10e
    move-object v13, v2

    .line 272
    const/4 v1, 0x0

    .line 273
    :cond_110
    :goto_110
    if-nez v1, :cond_1ab

    .line 275
    if-eqz v0, :cond_1ab

    .line 277
    iget-object v2, v7, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    .line 279
    if-eqz v2, :cond_121

    .line 281
    iget-wide v2, v2, Ljcifs/smb/Dfs$CacheEntry;->expiration:J

    .line 283
    cmp-long v2, v9, v2

    .line 285
    if-lez v2, :cond_121

    .line 287
    const/4 v2, 0x0

    .line 288
    iput-object v2, v7, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    .line 290
    :cond_121
    iget-object v2, v7, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    .line 292
    if-nez v2, :cond_12e

    .line 294
    new-instance v2, Ljcifs/smb/Dfs$CacheEntry;

    .line 296
    const-wide/16 v3, 0x0

    .line 298
    invoke-direct {v2, v3, v4}, Ljcifs/smb/Dfs$CacheEntry;-><init>(J)V

    .line 301
    iput-object v2, v7, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    .line 303
    :cond_12e
    new-instance v2, Ljava/lang/StringBuilder;

    .line 305
    const-string v3, "\\"

    .line 307
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const-string v3, "\\"

    .line 315
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    move-result-object v2

    .line 325
    const-string v3, "\\"

    .line 327
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 330
    move-result v3

    .line 331
    if-nez v3, :cond_15c

    .line 333
    new-instance v3, Ljava/lang/StringBuilder;

    .line 335
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 338
    move-result-object v2

    .line 339
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    move-result-object v2

    .line 349
    :cond_15c
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 352
    move-result-object v0

    .line 353
    iget-object v2, v7, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    .line 355
    iget-object v2, v2, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    .line 357
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 360
    move-result-object v2

    .line 361
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 364
    move-result-object v2

    .line 365
    :cond_16c
    :goto_16c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 368
    move-result v3

    .line 369
    if-nez v3, :cond_173

    .line 371
    goto :goto_1ab

    .line 372
    :cond_173
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 375
    move-result-object v3

    .line 376
    check-cast v3, Ljava/lang/String;

    .line 378
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 381
    move-result v4

    .line 382
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 385
    move-result v5

    .line 386
    const/4 v6, 0x0

    .line 387
    if-ne v4, v5, :cond_189

    .line 389
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 392
    move-result v6

    .line 393
    goto :goto_19e

    .line 394
    :cond_189
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 397
    move-result v5

    .line 398
    if-ge v4, v5, :cond_19e

    .line 400
    invoke-virtual {v3, v6, v0, v6, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    .line 403
    move-result v5

    .line 404
    if-eqz v5, :cond_19e

    .line 406
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 409
    move-result v4

    .line 410
    const/16 v5, 0x5c

    .line 412
    if-ne v4, v5, :cond_19e

    .line 414
    move v6, v14

    .line 415
    :cond_19e
    :goto_19e
    if-eqz v6, :cond_16c

    .line 417
    iget-object v1, v7, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    .line 419
    iget-object v1, v1, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    .line 421
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    move-result-object v1

    .line 425
    check-cast v1, Ljcifs/smb/DfsReferral;
    :try_end_1aa
    .catchall {:try_start_ec .. :try_end_1aa} :catchall_1b0

    .line 427
    goto :goto_16c

    .line 428
    :cond_1ab
    :goto_1ab
    monitor-exit p0

    .line 429
    return-object v1

    .line 430
    :cond_1ad
    :goto_1ad
    monitor-exit p0

    .line 431
    goto/16 :goto_dc

    .line 433
    :catchall_1b0
    move-exception v0

    .line 434
    monitor-exit p0

    .line 435
    throw v0
.end method
