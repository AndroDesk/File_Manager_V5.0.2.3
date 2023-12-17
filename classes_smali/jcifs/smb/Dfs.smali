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

    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/smb/Dfs;->log:Ljcifs/util/LogStream;

    const-string v0, "jcifs.smb.client.dfs.strictView"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/Dfs;->strictView:Z

    const-string v0, "jcifs.smb.client.dfs.ttl"

    const-wide/16 v2, 0x12c

    invoke-static {v0, v2, v3}, Ljcifs/Config;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Ljcifs/smb/Dfs;->TTL:J

    const-string v0, "jcifs.smb.client.dfs.disabled"

    invoke-static {v0, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/Dfs;->DISABLED:Z

    new-instance v0, Ljcifs/smb/Dfs$CacheEntry;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljcifs/smb/Dfs$CacheEntry;-><init>(J)V

    sput-object v0, Ljcifs/smb/Dfs;->FALSE_ENTRY:Ljcifs/smb/Dfs$CacheEntry;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    iput-object v0, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    return-void
.end method


# virtual methods
.method public getDc(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbTransport;
    .registers 9

    sget-boolean v0, Ljcifs/smb/Dfs;->DISABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    :cond_6
    const/4 v0, 0x1

    :try_start_7
    invoke-static {p1, v0}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\\"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p2, p1, v0}, Ljcifs/smb/SmbTransport;->getDfsReferrals(Ljcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)Ljcifs/smb/DfsReferral;

    move-result-object p1
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_22} :catch_37

    if-eqz p1, :cond_4e

    move-object p2, p1

    :goto_25
    :try_start_25
    iget-object v0, p2, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    invoke-static {v0}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;)Ljcifs/UniAddress;

    move-result-object v0

    invoke-static {v0, v3}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    move-result-object p1
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2f} :catch_30

    return-object p1

    :catch_30
    move-exception v0

    :try_start_31
    iget-object p2, p2, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    if-eq p2, p1, :cond_36

    goto :goto_25

    :cond_36
    throw v0
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_37} :catch_37

    :catch_37
    move-exception p1

    sget p2, Ljcifs/util/LogStream;->level:I

    const/4 v0, 0x3

    if-lt p2, v0, :cond_42

    sget-object p2, Ljcifs/smb/Dfs;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_42
    sget-boolean p2, Ljcifs/smb/Dfs;->strictView:Z

    if-eqz p2, :cond_4e

    instance-of p2, p1, Ljcifs/smb/SmbAuthException;

    if-nez p2, :cond_4b

    goto :goto_4e

    :cond_4b
    check-cast p1, Ljcifs/smb/SmbAuthException;

    throw p1

    :cond_4e
    :goto_4e
    return-object v1
.end method

.method public getReferral(Ljcifs/smb/SmbTransport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;
    .registers 9

    const-string v0, "\\"

    sget-boolean v1, Ljcifs/smb/Dfs;->DISABLED:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    return-object v2

    :cond_8
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p4, :cond_2c

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_2c
    const/4 p3, 0x0

    invoke-virtual {p1, p5, p2, p3}, Ljcifs/smb/SmbTransport;->getDfsReferrals(Ljcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)Ljcifs/smb/DfsReferral;

    move-result-object p1
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_31} :catch_34

    if-eqz p1, :cond_4b

    return-object p1

    :catch_34
    move-exception p1

    sget p2, Ljcifs/util/LogStream;->level:I

    const/4 p3, 0x4

    if-lt p2, p3, :cond_3f

    sget-object p2, Ljcifs/smb/Dfs;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_3f
    sget-boolean p2, Ljcifs/smb/Dfs;->strictView:Z

    if-eqz p2, :cond_4b

    instance-of p2, p1, Ljcifs/smb/SmbAuthException;

    if-nez p2, :cond_48

    goto :goto_4b

    :cond_48
    check-cast p1, Ljcifs/smb/SmbAuthException;

    throw p1

    :cond_4b
    :goto_4b
    return-object v2
.end method

.method public getTrustedDomains(Ljcifs/smb/NtlmPasswordAuthentication;)Ljava/util/HashMap;
    .registers 10

    sget-boolean v0, Ljcifs/smb/Dfs;->DISABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_74

    iget-object v0, p1, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    const-string v2, "?"

    if-ne v0, v2, :cond_c

    goto :goto_74

    :cond_c
    iget-object v0, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    if-eqz v0, :cond_1e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    iget-wide v4, v0, Ljcifs/smb/Dfs$CacheEntry;->expiration:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1e

    iput-object v1, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    :cond_1e
    iget-object v0, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    if-eqz v0, :cond_25

    iget-object p1, v0, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    return-object p1

    :cond_25
    :try_start_25
    iget-object v0, p1, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    move-result-object v0

    new-instance v3, Ljcifs/smb/Dfs$CacheEntry;

    sget-wide v4, Ljcifs/smb/Dfs;->TTL:J

    const-wide/16 v6, 0xa

    mul-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljcifs/smb/Dfs$CacheEntry;-><init>(J)V

    const-string v4, ""

    invoke-virtual {v0, p1, v4, v2}, Ljcifs/smb/SmbTransport;->getDfsReferrals(Ljcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)Ljcifs/smb/DfsReferral;

    move-result-object p1

    if-eqz p1, :cond_74

    move-object v0, p1

    :cond_44
    iget-object v2, v0, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v3, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    if-ne v0, p1, :cond_44

    iput-object v3, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    iget-object p1, v3, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_5c} :catch_5d

    return-object p1

    :catch_5d
    move-exception p1

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_68

    sget-object v0, Ljcifs/smb/Dfs;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_68
    sget-boolean v0, Ljcifs/smb/Dfs;->strictView:Z

    if-eqz v0, :cond_74

    instance-of v0, p1, Ljcifs/smb/SmbAuthException;

    if-nez v0, :cond_71

    goto :goto_74

    :cond_71
    check-cast p1, Ljcifs/smb/SmbAuthException;

    throw p1

    :cond_74
    :goto_74
    return-object v1
.end method

.method public declared-synchronized insert(Ljava/lang/String;Ljcifs/smb/DfsReferral;)V
    .registers 10

    monitor-enter p0

    :try_start_1
    sget-boolean v0, Ljcifs/smb/Dfs;->DISABLED:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_7f

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    const/16 v0, 0x5c

    const/4 v1, 0x1

    :try_start_a
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget v4, p2, Ljcifs/smb/DfsReferral;->pathConsumed:I

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    :goto_2b
    if-le v4, v1, :cond_39

    add-int/lit8 v6, v4, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v0, :cond_36

    goto :goto_39

    :cond_36
    add-int/lit8 v4, v4, -0x1

    goto :goto_2b

    :cond_39
    :goto_39
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v4, v0, :cond_43

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_43
    iget v0, p2, Ljcifs/smb/DfsReferral;->pathConsumed:I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v2, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v2, v1

    sub-int/2addr v0, v2

    iput v0, p2, Ljcifs/smb/DfsReferral;->pathConsumed:I

    iget-object v0, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    if-eqz v0, :cond_69

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    iget-object v2, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    iget-wide v2, v2, Ljcifs/smb/Dfs$CacheEntry;->expiration:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_69

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    :cond_69
    iget-object v0, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    if-nez v0, :cond_76

    new-instance v0, Ljcifs/smb/Dfs$CacheEntry;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljcifs/smb/Dfs$CacheEntry;-><init>(J)V

    iput-object v0, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    :cond_76
    iget-object v0, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    iget-object v0, v0, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7d
    .catchall {:try_start_a .. :try_end_7d} :catchall_7f

    monitor-exit p0

    return-void

    :catchall_7f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isTrustedDomain(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Z
    .registers 4

    invoke-virtual {p0, p2}, Ljcifs/smb/Dfs;->getTrustedDomains(Ljcifs/smb/NtlmPasswordAuthentication;)Ljava/util/HashMap;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_8

    return v0

    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    return v0
.end method

.method public declared-synchronized resolve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;
    .registers 23

    move-object/from16 v7, p0

    move-object/from16 v0, p3

    move-object/from16 v8, p4

    monitor-enter p0

    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sget-boolean v1, Ljcifs/smb/Dfs;->DISABLED:Z

    const/4 v11, 0x0

    if-nez v1, :cond_1ad

    const-string v1, "IPC$"

    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto/16 :goto_1ad

    :cond_1c
    invoke-virtual {v7, v8}, Ljcifs/smb/Dfs;->getTrustedDomains(Ljcifs/smb/NtlmPasswordAuthentication;)Ljava/util/HashMap;

    move-result-object v1

    const-wide/16 v12, 0x0

    const/4 v14, 0x1

    if-eqz v1, :cond_10c

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/util/HashMap;

    if-eqz v6, :cond_10e

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljcifs/smb/Dfs$CacheEntry;

    if-eqz v1, :cond_49

    iget-wide v2, v1, Ljcifs/smb/Dfs$CacheEntry;->expiration:J

    cmp-long v2, v9, v2

    if-lez v2, :cond_49

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v11

    goto :goto_4a

    :cond_49
    move-object v4, v1

    :goto_4a
    if-nez v4, :cond_ab

    invoke-virtual {v7, v15, v8}, Ljcifs/smb/Dfs;->getDc(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbTransport;

    move-result-object v16
    :try_end_50
    .catchall {:try_start_7 .. :try_end_50} :catchall_1b0

    if-nez v16, :cond_54

    monitor-exit p0

    return-object v11

    :cond_54
    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object v3, v15

    move-object v11, v4

    move-object v4, v5

    move-object/from16 p1, v5

    move-object/from16 v5, p3

    move-object/from16 v17, v6

    move-object/from16 v6, p4

    :try_start_63
    invoke-virtual/range {v1 .. v6}, Ljcifs/smb/Dfs;->getReferral(Ljcifs/smb/SmbTransport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;

    move-result-object v1

    if-eqz v1, :cond_9f

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v14

    add-int/2addr v2, v14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v4, Ljcifs/smb/Dfs$CacheEntry;

    invoke-direct {v4, v12, v13}, Ljcifs/smb/Dfs$CacheEntry;-><init>(J)V

    move-object v3, v1

    :cond_7a
    if-nez v0, :cond_84

    iget-object v5, v4, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    iput-object v5, v3, Ljcifs/smb/DfsReferral;->map:Ljava/util/Map;

    const-string v5, "\\"

    iput-object v5, v3, Ljcifs/smb/DfsReferral;->key:Ljava/lang/String;

    :cond_84
    iget v5, v3, Ljcifs/smb/DfsReferral;->pathConsumed:I

    sub-int/2addr v5, v2

    iput v5, v3, Ljcifs/smb/DfsReferral;->pathConsumed:I

    iget-object v3, v3, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    if-ne v3, v1, :cond_7a

    iget-object v2, v1, Ljcifs/smb/DfsReferral;->key:Ljava/lang/String;

    if-eqz v2, :cond_96

    iget-object v3, v4, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_96
    move-object/from16 v6, p1

    move-object/from16 v5, v17

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v4

    goto :goto_b7

    :cond_9f
    move-object/from16 v6, p1

    move-object/from16 v5, v17

    if-nez v0, :cond_b7

    sget-object v2, Ljcifs/smb/Dfs;->FALSE_ENTRY:Ljcifs/smb/Dfs$CacheEntry;

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b7

    :cond_ab
    move-object v11, v4

    move-object v6, v5

    sget-object v1, Ljcifs/smb/Dfs;->FALSE_ENTRY:Ljcifs/smb/Dfs$CacheEntry;

    if-ne v11, v1, :cond_b4

    const/4 v1, 0x0

    const/4 v11, 0x0

    goto :goto_b5

    :cond_b4
    const/4 v1, 0x0

    :goto_b5
    const/16 v16, 0x0

    :cond_b7
    :goto_b7
    if-eqz v11, :cond_10a

    const-string v5, "\\"

    iget-object v1, v11, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljcifs/smb/DfsReferral;

    if-eqz v1, :cond_d1

    iget-wide v2, v1, Ljcifs/smb/DfsReferral;->expiration:J

    cmp-long v2, v9, v2

    if-lez v2, :cond_d1

    iget-object v1, v11, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    :cond_d1
    if-nez v1, :cond_10a

    if-nez v16, :cond_e0

    invoke-virtual {v7, v15, v8}, Ljcifs/smb/Dfs;->getDc(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbTransport;

    move-result-object v1
    :try_end_d9
    .catchall {:try_start_63 .. :try_end_d9} :catchall_1b0

    if-nez v1, :cond_de

    monitor-exit p0

    :goto_dc
    const/4 v0, 0x0

    return-object v0

    :cond_de
    move-object v2, v1

    goto :goto_e2

    :cond_e0
    move-object/from16 v2, v16

    :goto_e2
    move-object/from16 v1, p0

    move-object v3, v15

    move-object v4, v6

    move-object v12, v5

    move-object/from16 v5, p3

    move-object v13, v6

    move-object/from16 v6, p4

    :try_start_ec
    invoke-virtual/range {v1 .. v6}, Ljcifs/smb/Dfs;->getReferral(Ljcifs/smb/SmbTransport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;

    move-result-object v1

    if-eqz v1, :cond_110

    iget v2, v1, Ljcifs/smb/DfsReferral;->pathConsumed:I

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v14

    add-int/2addr v3, v14

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, v1, Ljcifs/smb/DfsReferral;->pathConsumed:I

    iput-object v12, v1, Ljcifs/smb/DfsReferral;->link:Ljava/lang/String;

    iget-object v2, v11, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    invoke-virtual {v2, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_110

    :cond_10a
    move-object v13, v6

    goto :goto_110

    :cond_10c
    move-object/from16 v15, p1

    :cond_10e
    move-object v13, v2

    const/4 v1, 0x0

    :cond_110
    :goto_110
    if-nez v1, :cond_1ab

    if-eqz v0, :cond_1ab

    iget-object v2, v7, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    if-eqz v2, :cond_121

    iget-wide v2, v2, Ljcifs/smb/Dfs$CacheEntry;->expiration:J

    cmp-long v2, v9, v2

    if-lez v2, :cond_121

    const/4 v2, 0x0

    iput-object v2, v7, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    :cond_121
    iget-object v2, v7, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    if-nez v2, :cond_12e

    new-instance v2, Ljcifs/smb/Dfs$CacheEntry;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljcifs/smb/Dfs$CacheEntry;-><init>(J)V

    iput-object v2, v7, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    :cond_12e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_15c
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v7, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    iget-object v2, v2, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16c
    :goto_16c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_173

    goto :goto_1ab

    :cond_173
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    if-ne v4, v5, :cond_189

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_19e

    :cond_189
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_19e

    invoke-virtual {v3, v6, v0, v6, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_19e

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_19e

    move v6, v14

    :cond_19e
    :goto_19e
    if-eqz v6, :cond_16c

    iget-object v1, v7, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    iget-object v1, v1, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljcifs/smb/DfsReferral;
    :try_end_1aa
    .catchall {:try_start_ec .. :try_end_1aa} :catchall_1b0

    goto :goto_16c

    :cond_1ab
    :goto_1ab
    monitor-exit p0

    return-object v1

    :cond_1ad
    :goto_1ad
    monitor-exit p0

    goto/16 :goto_dc

    :catchall_1b0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
