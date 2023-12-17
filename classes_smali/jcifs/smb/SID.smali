.class public Ljcifs/smb/SID;
.super Ljcifs/dcerpc/rpc$sid_t;
.source "SID.java"


# static fields
.field public static CREATOR_OWNER:Ljcifs/smb/SID; = null

.field public static EVERYONE:Ljcifs/smb/SID; = null

.field public static final SID_FLAG_RESOLVE_SIDS:I = 0x1

.field public static final SID_TYPE_ALIAS:I = 0x4

.field public static final SID_TYPE_DELETED:I = 0x6

.field public static final SID_TYPE_DOMAIN:I = 0x3

.field public static final SID_TYPE_DOM_GRP:I = 0x2

.field public static final SID_TYPE_INVALID:I = 0x7

.field public static final SID_TYPE_NAMES:[Ljava/lang/String;

.field public static final SID_TYPE_UNKNOWN:I = 0x8

.field public static final SID_TYPE_USER:I = 0x1

.field public static final SID_TYPE_USE_NONE:I = 0x0

.field public static final SID_TYPE_WKN_GRP:I = 0x5

.field public static SYSTEM:Ljcifs/smb/SID;

.field public static sid_cache:Ljava/util/Map;


# instance fields
.field public acctName:Ljava/lang/String;

.field public domainName:Ljava/lang/String;

.field public origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

.field public origin_server:Ljava/lang/String;

.field public type:I


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    .line 1
    const-string v0, "0"

    .line 3
    const-string v1, "User"

    .line 5
    const-string v2, "Domain group"

    .line 7
    const-string v3, "Domain"

    .line 9
    const-string v4, "Local group"

    .line 11
    const-string v5, "Builtin group"

    .line 13
    const-string v6, "Deleted"

    .line 15
    const-string v7, "Invalid"

    .line 17
    const-string v8, "Unknown"

    .line 19
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Ljcifs/smb/SID;->SID_TYPE_NAMES:[Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    .line 26
    sput-object v0, Ljcifs/smb/SID;->EVERYONE:Ljcifs/smb/SID;

    .line 28
    sput-object v0, Ljcifs/smb/SID;->CREATOR_OWNER:Ljcifs/smb/SID;

    .line 30
    sput-object v0, Ljcifs/smb/SID;->SYSTEM:Ljcifs/smb/SID;

    .line 32
    :try_start_1f
    new-instance v0, Ljcifs/smb/SID;

    .line 34
    const-string v1, "S-1-1-0"

    .line 36
    invoke-direct {v0, v1}, Ljcifs/smb/SID;-><init>(Ljava/lang/String;)V

    .line 39
    sput-object v0, Ljcifs/smb/SID;->EVERYONE:Ljcifs/smb/SID;

    .line 41
    new-instance v0, Ljcifs/smb/SID;

    .line 43
    const-string v1, "S-1-3-0"

    .line 45
    invoke-direct {v0, v1}, Ljcifs/smb/SID;-><init>(Ljava/lang/String;)V

    .line 48
    sput-object v0, Ljcifs/smb/SID;->CREATOR_OWNER:Ljcifs/smb/SID;

    .line 50
    new-instance v0, Ljcifs/smb/SID;

    .line 52
    const-string v1, "S-1-5-18"

    .line 54
    invoke-direct {v0, v1}, Ljcifs/smb/SID;-><init>(Ljava/lang/String;)V

    .line 57
    sput-object v0, Ljcifs/smb/SID;->SYSTEM:Ljcifs/smb/SID;
    :try_end_3a
    .catch Ljcifs/smb/SmbException; {:try_start_1f .. :try_end_3a} :catch_3a

    .line 59
    :catch_3a
    new-instance v0, Ljava/util/HashMap;

    .line 61
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    sput-object v0, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 8

    .line 15
    invoke-direct {p0}, Ljcifs/dcerpc/rpc$sid_t;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 20
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "-"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_92

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 22
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p1

    iput-byte p1, p0, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    .line 23
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    const-string v1, "0x"

    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    const/4 v1, 0x2

    .line 25
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    goto :goto_4c

    .line 26
    :cond_48
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    :goto_4c
    const/4 p1, 0x6

    new-array p1, p1, [B

    .line 27
    iput-object p1, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    const/4 p1, 0x5

    :goto_52
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_82

    .line 28
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    if-lez p1, :cond_81

    .line 29
    new-array p1, p1, [I

    iput-object p1, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    const/4 p1, 0x0

    .line 30
    :goto_66
    iget-byte v1, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    if-lt p1, v1, :cond_6b

    goto :goto_81

    .line 31
    :cond_6b
    iget-object v1, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int v2, v2

    aput v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_66

    :cond_81
    :goto_81
    return-void

    .line 32
    :cond_82
    iget-object v3, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    const-wide/16 v4, 0x100

    rem-long v4, v1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, p1

    const/16 v3, 0x8

    shr-long/2addr v1, v3

    add-int/lit8 p1, p1, -0x1

    goto :goto_52

    .line 33
    :cond_92
    new-instance v0, Ljcifs/smb/SmbException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad textual SID format: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljcifs/dcerpc/rpc$sid_t;ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    .line 46
    invoke-direct {p0}, Ljcifs/dcerpc/rpc$sid_t;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 51
    iget-byte v0, p1, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    iput-byte v0, p0, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    .line 52
    iget-byte v0, p1, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    iput-byte v0, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    .line 53
    iget-object v1, p1, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    iput-object v1, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    .line 54
    iget-object v1, p1, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    iput-object v1, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    .line 55
    iput p2, p0, Ljcifs/smb/SID;->type:I

    .line 56
    iput-object p3, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    if-eqz p5, :cond_3e

    add-int/lit8 v0, v0, -0x1

    int-to-byte p2, v0

    .line 58
    iput-byte p2, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    .line 59
    new-array p2, p2, [I

    iput-object p2, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    const/4 p2, 0x0

    .line 60
    :goto_2e
    iget-byte p3, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    if-lt p2, p3, :cond_33

    goto :goto_3e

    .line 61
    :cond_33
    iget-object p3, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    iget-object p4, p1, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    aget p4, p4, p2

    aput p4, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2e

    :cond_3e
    :goto_3e
    return-void
.end method

.method public constructor <init>(Ljcifs/smb/SID;I)V
    .registers 6

    .line 34
    invoke-direct {p0}, Ljcifs/dcerpc/rpc$sid_t;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 39
    iget-byte v0, p1, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    iput-byte v0, p0, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    .line 40
    iget-object v0, p1, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    iput-object v0, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    .line 41
    iget-byte v0, p1, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    .line 42
    new-array v0, v0, [I

    iput-object v0, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    const/4 v0, 0x0

    .line 43
    :goto_20
    iget-byte v1, p1, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    if-lt v0, v1, :cond_29

    .line 44
    iget-object p1, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    aput p2, p1, v0

    return-void

    .line 45
    :cond_29
    iget-object v1, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    iget-object v2, p1, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    aget v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_20
.end method

.method public constructor <init>([BI)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljcifs/dcerpc/rpc$sid_t;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    add-int/lit8 v0, p2, 0x1

    .line 6
    aget-byte p2, p1, p2

    iput-byte p2, p0, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    add-int/lit8 p2, v0, 0x1

    .line 7
    aget-byte v0, p1, v0

    iput-byte v0, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    const/4 v0, 0x6

    new-array v1, v0, [B

    .line 8
    iput-object v1, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    const/4 v2, 0x0

    .line 9
    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    .line 10
    iget-byte v0, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    const/16 v1, 0x64

    if-gt v0, v1, :cond_3e

    .line 11
    new-array v0, v0, [I

    iput-object v0, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    .line 12
    :goto_2c
    iget-byte v0, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    if-lt v2, v0, :cond_31

    return-void

    .line 13
    :cond_31
    iget-object v0, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v1

    aput v1, v0, v2

    add-int/lit8 p2, p2, 0x4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 14
    :cond_3e
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid SID sub_authority_count"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getGroupMemberSids0(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/SamrDomainHandle;Ljcifs/smb/SID;II)[Ljcifs/smb/SID;
    .registers 15

    .line 1
    new-instance p2, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;

    .line 3
    invoke-direct {p2}, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;-><init>()V

    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_6
    new-instance v1, Ljcifs/dcerpc/msrpc/SamrAliasHandle;

    .line 9
    const v2, 0x2000c

    .line 12
    invoke-direct {v1, p0, p1, v2, p3}, Ljcifs/dcerpc/msrpc/SamrAliasHandle;-><init>(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/SamrDomainHandle;II)V
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_60

    .line 15
    :try_start_e
    new-instance p1, Ljcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;

    .line 17
    invoke-direct {p1, v1, p2}, Ljcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;-><init>(Ljcifs/dcerpc/msrpc/SamrAliasHandle;Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;)V

    .line 20
    invoke-virtual {p0, p1}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    .line 23
    iget p2, p1, Ljcifs/dcerpc/msrpc/samr$SamrGetMembersInAlias;->retval:I

    .line 25
    const/4 p3, 0x0

    .line 26
    if-nez p2, :cond_55

    .line 28
    iget-object p2, p1, Ljcifs/dcerpc/msrpc/samr$SamrGetMembersInAlias;->sids:Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;

    .line 30
    iget p2, p2, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;->num_sids:I

    .line 32
    new-array v0, p2, [Ljcifs/smb/SID;

    .line 34
    invoke-virtual {p0}, Ljcifs/dcerpc/DcerpcHandle;->getServer()Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {p0}, Ljcifs/dcerpc/DcerpcHandle;->getPrincipal()Ljava/security/Principal;

    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Ljcifs/smb/NtlmPasswordAuthentication;

    .line 44
    :goto_2b
    if-lt p3, p2, :cond_3a

    .line 46
    if-lez p2, :cond_36

    .line 48
    and-int/lit8 p1, p4, 0x1

    .line 50
    if-eqz p1, :cond_36

    .line 52
    invoke-static {v2, p0, v0}, Ljcifs/smb/SID;->resolveSids(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;)V
    :try_end_36
    .catchall {:try_start_e .. :try_end_36} :catchall_5d

    .line 55
    :cond_36
    invoke-virtual {v1}, Ljcifs/dcerpc/msrpc/SamrAliasHandle;->close()V

    .line 58
    return-object v0

    .line 59
    :cond_3a
    :try_start_3a
    new-instance v9, Ljcifs/smb/SID;

    .line 61
    iget-object v3, p1, Ljcifs/dcerpc/msrpc/samr$SamrGetMembersInAlias;->sids:Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;

    .line 63
    iget-object v3, v3, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;->sids:[Ljcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;

    .line 65
    aget-object v3, v3, p3

    .line 67
    iget-object v4, v3, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;->sid:Ljcifs/dcerpc/rpc$sid_t;

    .line 69
    const/4 v5, 0x0

    .line 70
    const/4 v6, 0x0

    .line 71
    const/4 v7, 0x0

    .line 72
    const/4 v8, 0x0

    .line 73
    move-object v3, v9

    .line 74
    invoke-direct/range {v3 .. v8}, Ljcifs/smb/SID;-><init>(Ljcifs/dcerpc/rpc$sid_t;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 77
    aput-object v9, v0, p3

    .line 79
    iput-object v2, v9, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    .line 81
    iput-object p0, v9, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 83
    add-int/lit8 p3, p3, 0x1

    .line 85
    goto :goto_2b

    .line 86
    :cond_55
    new-instance p0, Ljcifs/smb/SmbException;

    .line 88
    iget p1, p1, Ljcifs/dcerpc/msrpc/samr$SamrGetMembersInAlias;->retval:I

    .line 90
    invoke-direct {p0, p1, p3}, Ljcifs/smb/SmbException;-><init>(IZ)V

    .line 93
    throw p0
    :try_end_5d
    .catchall {:try_start_3a .. :try_end_5d} :catchall_5d

    .line 94
    :catchall_5d
    move-exception p0

    .line 95
    move-object v0, v1

    .line 96
    goto :goto_61

    .line 97
    :catchall_60
    move-exception p0

    .line 98
    :goto_61
    if-eqz v0, :cond_66

    .line 100
    invoke-virtual {v0}, Ljcifs/dcerpc/msrpc/SamrAliasHandle;->close()V

    .line 103
    :cond_66
    throw p0
.end method

.method public static getLocalGroupsMap(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;I)Ljava/util/Map;
    .registers 15

    .line 1
    invoke-static {p0, p1}, Ljcifs/smb/SID;->getServerSid(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SID;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;

    .line 7
    invoke-direct {v1}, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;-><init>()V

    .line 10
    sget-object v2, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    .line 12
    monitor-enter v2

    .line 13
    const/4 v3, 0x0

    .line 14
    :try_start_d
    new-instance v4, Ljava/lang/StringBuilder;

    .line 16
    const-string v5, "ncacn_np:"

    .line 18
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string v5, "[\\PIPE\\samr]"

    .line 26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v4

    .line 33
    invoke-static {v4, p1}, Ljcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;

    .line 36
    move-result-object p1
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_b7

    .line 37
    :try_start_24
    new-instance v4, Ljcifs/dcerpc/msrpc/SamrPolicyHandle;

    .line 39
    const/high16 v5, 0x2000000

    .line 41
    invoke-direct {v4, p1, p0, v5}, Ljcifs/dcerpc/msrpc/SamrPolicyHandle;-><init>(Ljcifs/dcerpc/DcerpcHandle;Ljava/lang/String;I)V
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_b2

    .line 44
    :try_start_2b
    new-instance p0, Ljcifs/dcerpc/msrpc/SamrDomainHandle;

    .line 46
    invoke-direct {p0, p1, v4, v5, v0}, Ljcifs/dcerpc/msrpc/SamrDomainHandle;-><init>(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/SamrPolicyHandle;ILjcifs/dcerpc/rpc$sid_t;)V
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_af

    .line 49
    :try_start_30
    new-instance v3, Ljcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain;

    .line 51
    const v5, 0xffff

    .line 54
    invoke-direct {v3, p0, v5, v1}, Ljcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain;-><init>(Ljcifs/dcerpc/msrpc/SamrDomainHandle;ILjcifs/dcerpc/msrpc/samr$SamrSamArray;)V

    .line 57
    invoke-virtual {p1, v3}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    .line 60
    iget v1, v3, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->retval:I

    .line 62
    const/4 v5, 0x0

    .line 63
    if-nez v1, :cond_a5

    .line 65
    new-instance v1, Ljava/util/HashMap;

    .line 67
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 70
    move v6, v5

    .line 71
    :goto_46
    iget-object v7, v3, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->sam:Ljcifs/dcerpc/msrpc/samr$SamrSamArray;

    .line 73
    iget v8, v7, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;->count:I
    :try_end_4a
    .catchall {:try_start_30 .. :try_end_4a} :catchall_ad

    .line 75
    if-lt v6, v8, :cond_57

    .line 77
    :try_start_4c
    invoke-virtual {p0}, Ljcifs/dcerpc/msrpc/SamrDomainHandle;->close()V

    .line 80
    invoke-virtual {v4}, Ljcifs/dcerpc/msrpc/SamrPolicyHandle;->close()V

    .line 83
    invoke-virtual {p1}, Ljcifs/dcerpc/DcerpcHandle;->close()V

    .line 86
    monitor-exit v2
    :try_end_56
    .catchall {:try_start_4c .. :try_end_56} :catchall_ca

    .line 87
    return-object v1

    .line 88
    :cond_57
    :try_start_57
    iget-object v7, v7, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;->entries:[Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;

    .line 90
    aget-object v7, v7, v6

    .line 92
    iget v8, v7, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->idx:I

    .line 94
    invoke-static {p1, p0, v0, v8, p2}, Ljcifs/smb/SID;->getGroupMemberSids0(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/SamrDomainHandle;Ljcifs/smb/SID;II)[Ljcifs/smb/SID;

    .line 97
    move-result-object v8

    .line 98
    new-instance v9, Ljcifs/smb/SID;

    .line 100
    iget v10, v7, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->idx:I

    .line 102
    invoke-direct {v9, v0, v10}, Ljcifs/smb/SID;-><init>(Ljcifs/smb/SID;I)V

    .line 105
    const/4 v10, 0x4

    .line 106
    iput v10, v9, Ljcifs/smb/SID;->type:I

    .line 108
    invoke-virtual {v0}, Ljcifs/smb/SID;->getDomainName()Ljava/lang/String;

    .line 111
    move-result-object v10

    .line 112
    iput-object v10, v9, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    .line 114
    new-instance v10, Ljcifs/dcerpc/UnicodeString;

    .line 116
    iget-object v7, v7, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 118
    invoke-direct {v10, v7, v5}, Ljcifs/dcerpc/UnicodeString;-><init>(Ljcifs/dcerpc/rpc$unicode_string;Z)V

    .line 121
    invoke-virtual {v10}, Ljcifs/dcerpc/UnicodeString;->toString()Ljava/lang/String;

    .line 124
    move-result-object v7

    .line 125
    iput-object v7, v9, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    .line 127
    move v7, v5

    .line 128
    :goto_7f
    array-length v10, v8

    .line 129
    if-lt v7, v10, :cond_85

    .line 131
    add-int/lit8 v6, v6, 0x1

    .line 133
    goto :goto_46

    .line 134
    :cond_85
    aget-object v10, v8, v7

    .line 136
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    move-result-object v10

    .line 140
    check-cast v10, Ljava/util/ArrayList;

    .line 142
    if-nez v10, :cond_99

    .line 144
    new-instance v10, Ljava/util/ArrayList;

    .line 146
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 149
    aget-object v11, v8, v7

    .line 151
    invoke-virtual {v1, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_99
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 157
    move-result v11

    .line 158
    if-nez v11, :cond_a2

    .line 160
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_a2
    add-int/lit8 v7, v7, 0x1

    .line 165
    goto :goto_7f

    .line 166
    :cond_a5
    new-instance p2, Ljcifs/smb/SmbException;

    .line 168
    iget v0, v3, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->retval:I

    .line 170
    invoke-direct {p2, v0, v5}, Ljcifs/smb/SmbException;-><init>(IZ)V

    .line 173
    throw p2
    :try_end_ad
    .catchall {:try_start_57 .. :try_end_ad} :catchall_ad

    .line 174
    :catchall_ad
    move-exception p2

    .line 175
    goto :goto_b5

    .line 176
    :catchall_af
    move-exception p2

    .line 177
    move-object p0, v3

    .line 178
    goto :goto_b5

    .line 179
    :catchall_b2
    move-exception p2

    .line 180
    move-object p0, v3

    .line 181
    move-object v4, p0

    .line 182
    :goto_b5
    move-object v3, p1

    .line 183
    goto :goto_ba

    .line 184
    :catchall_b7
    move-exception p2

    .line 185
    move-object p0, v3

    .line 186
    move-object v4, p0

    .line 187
    :goto_ba
    if-eqz v3, :cond_c9

    .line 189
    if-eqz v4, :cond_c6

    .line 191
    if-eqz p0, :cond_c3

    .line 193
    :try_start_c0
    invoke-virtual {p0}, Ljcifs/dcerpc/msrpc/SamrDomainHandle;->close()V

    .line 196
    :cond_c3
    invoke-virtual {v4}, Ljcifs/dcerpc/msrpc/SamrPolicyHandle;->close()V

    .line 199
    :cond_c6
    invoke-virtual {v3}, Ljcifs/dcerpc/DcerpcHandle;->close()V

    .line 202
    :cond_c9
    throw p2

    .line 203
    :catchall_ca
    move-exception p0

    .line 204
    monitor-exit v2
    :try_end_cc
    .catchall {:try_start_c0 .. :try_end_cc} :catchall_ca

    .line 205
    throw p0
.end method

.method public static getServerSid(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SID;
    .registers 13

    .line 1
    new-instance v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;

    .line 3
    invoke-direct {v0}, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;-><init>()V

    .line 6
    sget-object v1, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    .line 8
    monitor-enter v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    const-string v4, "ncacn_np:"

    .line 14
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string p0, "[\\PIPE\\lsarpc]"

    .line 22
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0, p1}, Ljcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;

    .line 32
    move-result-object p0
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_60

    .line 33
    :try_start_20
    new-instance p1, Ljcifs/dcerpc/msrpc/LsaPolicyHandle;

    .line 35
    const/4 v3, 0x1

    .line 36
    invoke-direct {p1, p0, v2, v3}, Ljcifs/dcerpc/msrpc/LsaPolicyHandle;-><init>(Ljcifs/dcerpc/DcerpcHandle;Ljava/lang/String;I)V
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_5c

    .line 39
    :try_start_26
    new-instance v2, Ljcifs/dcerpc/msrpc/MsrpcQueryInformationPolicy;

    .line 41
    const/4 v3, 0x5

    .line 42
    invoke-direct {v2, p1, v3, v0}, Ljcifs/dcerpc/msrpc/MsrpcQueryInformationPolicy;-><init>(Ljcifs/dcerpc/msrpc/LsaPolicyHandle;SLjcifs/dcerpc/ndr/NdrObject;)V

    .line 45
    invoke-virtual {p0, v2}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    .line 48
    iget v3, v2, Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;->retval:I

    .line 50
    const/4 v4, 0x0

    .line 51
    if-nez v3, :cond_52

    .line 53
    new-instance v2, Ljcifs/smb/SID;

    .line 55
    iget-object v6, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    .line 57
    const/4 v7, 0x3

    .line 58
    new-instance v3, Ljcifs/dcerpc/UnicodeString;

    .line 60
    iget-object v0, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 62
    invoke-direct {v3, v0, v4}, Ljcifs/dcerpc/UnicodeString;-><init>(Ljcifs/dcerpc/rpc$unicode_string;Z)V

    .line 65
    invoke-virtual {v3}, Ljcifs/dcerpc/UnicodeString;->toString()Ljava/lang/String;

    .line 68
    move-result-object v8

    .line 69
    const/4 v9, 0x0

    .line 70
    const/4 v10, 0x0

    .line 71
    move-object v5, v2

    .line 72
    invoke-direct/range {v5 .. v10}, Ljcifs/smb/SID;-><init>(Ljcifs/dcerpc/rpc$sid_t;ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_4a
    .catchall {:try_start_26 .. :try_end_4a} :catchall_5a

    .line 75
    :try_start_4a
    invoke-virtual {p1}, Ljcifs/dcerpc/msrpc/LsaPolicyHandle;->close()V

    .line 78
    invoke-virtual {p0}, Ljcifs/dcerpc/DcerpcHandle;->close()V

    .line 81
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_6d

    .line 82
    return-object v2

    .line 83
    :cond_52
    :try_start_52
    new-instance v0, Ljcifs/smb/SmbException;

    .line 85
    iget v2, v2, Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;->retval:I

    .line 87
    invoke-direct {v0, v2, v4}, Ljcifs/smb/SmbException;-><init>(IZ)V

    .line 90
    throw v0
    :try_end_5a
    .catchall {:try_start_52 .. :try_end_5a} :catchall_5a

    .line 91
    :catchall_5a
    move-exception v0

    .line 92
    goto :goto_5e

    .line 93
    :catchall_5c
    move-exception v0

    .line 94
    move-object p1, v2

    .line 95
    :goto_5e
    move-object v2, p0

    .line 96
    goto :goto_62

    .line 97
    :catchall_60
    move-exception v0

    .line 98
    move-object p1, v2

    .line 99
    :goto_62
    if-eqz v2, :cond_6c

    .line 101
    if-eqz p1, :cond_69

    .line 103
    :try_start_66
    invoke-virtual {p1}, Ljcifs/dcerpc/msrpc/LsaPolicyHandle;->close()V

    .line 106
    :cond_69
    invoke-virtual {v2}, Ljcifs/dcerpc/DcerpcHandle;->close()V

    .line 109
    :cond_6c
    throw v0

    .line 110
    :catchall_6d
    move-exception p0

    .line 111
    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_66 .. :try_end_6f} :catchall_6d

    .line 112
    throw p0
.end method

.method public static resolveSids(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;)V
    .registers 10

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    sget-object v1, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    monitor-enter v1

    const/4 v2, 0x0

    move v3, v2

    .line 30
    :goto_b
    :try_start_b
    array-length v4, p2

    if-lt v3, v4, :cond_2f

    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2d

    new-array p2, v2, [Ljcifs/smb/SID;

    .line 32
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljcifs/smb/SID;

    .line 33
    invoke-static {p0, p1, p2}, Ljcifs/smb/SID;->resolveSids0(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;)V

    .line 34
    :goto_1f
    array-length p0, p2

    if-lt v2, p0, :cond_23

    goto :goto_2d

    .line 35
    :cond_23
    sget-object p0, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    aget-object p1, p2, v2

    invoke-interface {p0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 36
    :cond_2d
    :goto_2d
    monitor-exit v1

    return-void

    .line 37
    :cond_2f
    sget-object v4, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    aget-object v5, p2, v3

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljcifs/smb/SID;

    if-eqz v4, :cond_4a

    .line 38
    aget-object v5, p2, v3

    iget v6, v4, Ljcifs/smb/SID;->type:I

    iput v6, v5, Ljcifs/smb/SID;->type:I

    .line 39
    iget-object v6, v4, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    iput-object v6, v5, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    .line 40
    iget-object v4, v4, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    iput-object v4, v5, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    goto :goto_4f

    .line 41
    :cond_4a
    aget-object v4, p2, v3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :catchall_52
    move-exception p0

    .line 42
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_b .. :try_end_54} :catchall_52

    throw p0
.end method

.method public static resolveSids(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;II)V
    .registers 12

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    sget-object v1, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    monitor-enter v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-lt v3, p4, :cond_2e

    .line 16
    :try_start_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2c

    new-array p2, v2, [Ljcifs/smb/SID;

    .line 17
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljcifs/smb/SID;

    .line 18
    invoke-static {p0, p1, p2}, Ljcifs/smb/SID;->resolveSids0(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;)V

    .line 19
    :goto_1e
    array-length p0, p2

    if-lt v2, p0, :cond_22

    goto :goto_2c

    .line 20
    :cond_22
    sget-object p0, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    aget-object p1, p2, v2

    invoke-interface {p0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 21
    :cond_2c
    :goto_2c
    monitor-exit v1

    return-void

    .line 22
    :cond_2e
    sget-object v4, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    add-int v5, p3, v3

    aget-object v6, p2, v5

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljcifs/smb/SID;

    if-eqz v4, :cond_4b

    .line 23
    aget-object v5, p2, v5

    iget v6, v4, Ljcifs/smb/SID;->type:I

    iput v6, v5, Ljcifs/smb/SID;->type:I

    .line 24
    iget-object v6, v4, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    iput-object v6, v5, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    .line 25
    iget-object v4, v4, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    iput-object v4, v5, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    goto :goto_50

    .line 26
    :cond_4b
    aget-object v4, p2, v5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :catchall_53
    move-exception p0

    .line 27
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_d .. :try_end_55} :catchall_53

    throw p0
.end method

.method public static resolveSids(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/LsaPolicyHandle;[Ljcifs/smb/SID;)V
    .registers 9

    .line 1
    new-instance v0, Ljcifs/dcerpc/msrpc/MsrpcLookupSids;

    invoke-direct {v0, p1, p2}, Ljcifs/dcerpc/msrpc/MsrpcLookupSids;-><init>(Ljcifs/dcerpc/msrpc/LsaPolicyHandle;[Ljcifs/smb/SID;)V

    .line 2
    invoke-virtual {p0, v0}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    .line 3
    iget p0, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->retval:I

    const p1, -0x3fffff8d  # -2.0000274f

    const/4 v1, 0x0

    if-eq p0, p1, :cond_1f

    if-eqz p0, :cond_1f

    const/16 p1, 0x107

    if-ne p0, p1, :cond_17

    goto :goto_1f

    .line 4
    :cond_17
    new-instance p0, Ljcifs/smb/SmbException;

    iget p1, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->retval:I

    invoke-direct {p0, p1, v1}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw p0

    :cond_1f
    :goto_1f
    move p0, v1

    .line 5
    :goto_20
    array-length p1, p2

    if-lt p0, p1, :cond_24

    return-void

    .line 6
    :cond_24
    aget-object p1, p2, p0

    iget-object v2, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->names:Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;

    iget-object v2, v2, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->names:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    aget-object v2, v2, p0

    iget-short v3, v2, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->sid_type:S

    iput v3, p1, Ljcifs/smb/SID;->type:I

    const/4 v4, 0x0

    .line 7
    iput-object v4, p1, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    const/4 v5, 0x1

    if-eq v3, v5, :cond_43

    const/4 v5, 0x2

    if-eq v3, v5, :cond_43

    const/4 v5, 0x3

    if-eq v3, v5, :cond_43

    const/4 v5, 0x4

    if-eq v3, v5, :cond_43

    const/4 v5, 0x5

    if-eq v3, v5, :cond_43

    goto :goto_58

    .line 8
    :cond_43
    iget v2, v2, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->sid_index:I

    .line 9
    iget-object v3, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->domains:Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;

    iget-object v3, v3, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->domains:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;

    aget-object v2, v3, v2

    iget-object v2, v2, Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 10
    new-instance v3, Ljcifs/dcerpc/UnicodeString;

    invoke-direct {v3, v2, v1}, Ljcifs/dcerpc/UnicodeString;-><init>(Ljcifs/dcerpc/rpc$unicode_string;Z)V

    invoke-virtual {v3}, Ljcifs/dcerpc/UnicodeString;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    .line 11
    :goto_58
    aget-object p1, p2, p0

    new-instance v2, Ljcifs/dcerpc/UnicodeString;

    iget-object v3, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->names:Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;

    iget-object v3, v3, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->names:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    aget-object v3, v3, p0

    iget-object v3, v3, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->name:Ljcifs/dcerpc/rpc$unicode_string;

    invoke-direct {v2, v3, v1}, Ljcifs/dcerpc/UnicodeString;-><init>(Ljcifs/dcerpc/rpc$unicode_string;Z)V

    invoke-virtual {v2}, Ljcifs/dcerpc/UnicodeString;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    .line 12
    aget-object p1, p2, p0

    iput-object v4, p1, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    .line 13
    iput-object v4, p1, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    add-int/lit8 p0, p0, 0x1

    goto :goto_20
.end method

.method public static resolveSids0(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;)V
    .registers 8

    .line 1
    sget-object v0, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    const-string v3, "ncacn_np:"

    .line 9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v3, "[\\PIPE\\lsarpc]"

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    invoke-static {v2, p1}, Ljcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;

    .line 27
    move-result-object p1
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_5a

    .line 28
    const/16 v2, 0x2e

    .line 30
    :try_start_1d
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    .line 33
    move-result v2

    .line 34
    if-lez v2, :cond_32

    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 40
    move-result v4

    .line 41
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_32

    .line 47
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 51
    :cond_32
    new-instance v2, Ljcifs/dcerpc/msrpc/LsaPolicyHandle;

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    .line 55
    const-string v4, "\\\\"

    .line 57
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 67
    const/16 v3, 0x800

    .line 69
    invoke-direct {v2, p1, p0, v3}, Ljcifs/dcerpc/msrpc/LsaPolicyHandle;-><init>(Ljcifs/dcerpc/DcerpcHandle;Ljava/lang/String;I)V
    :try_end_47
    .catchall {:try_start_1d .. :try_end_47} :catchall_56

    .line 72
    :try_start_47
    invoke-static {p1, v2, p2}, Ljcifs/smb/SID;->resolveSids(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/LsaPolicyHandle;[Ljcifs/smb/SID;)V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_54

    .line 75
    if-eqz p1, :cond_52

    .line 77
    :try_start_4c
    invoke-virtual {v2}, Ljcifs/dcerpc/msrpc/LsaPolicyHandle;->close()V

    .line 80
    invoke-virtual {p1}, Ljcifs/dcerpc/DcerpcHandle;->close()V

    .line 83
    :cond_52
    monitor-exit v0

    .line 84
    return-void

    .line 85
    :catchall_54
    move-exception p0

    .line 86
    goto :goto_58

    .line 87
    :catchall_56
    move-exception p0

    .line 88
    move-object v2, v1

    .line 89
    :goto_58
    move-object v1, p1

    .line 90
    goto :goto_5c

    .line 91
    :catchall_5a
    move-exception p0

    .line 92
    move-object v2, v1

    .line 93
    :goto_5c
    if-eqz v1, :cond_66

    .line 95
    if-eqz v2, :cond_63

    .line 97
    invoke-virtual {v2}, Ljcifs/dcerpc/msrpc/LsaPolicyHandle;->close()V

    .line 100
    :cond_63
    invoke-virtual {v1}, Ljcifs/dcerpc/DcerpcHandle;->close()V

    .line 103
    :cond_66
    throw p0

    .line 104
    :catchall_67
    move-exception p0

    .line 105
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_4c .. :try_end_69} :catchall_67

    .line 106
    throw p0
.end method

.method public static toByteArray(Ljcifs/dcerpc/rpc$sid_t;)[B
    .registers 7

    .line 1
    iget-byte v0, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    .line 3
    mul-int/lit8 v1, v0, 0x4

    .line 5
    const/16 v2, 0x8

    .line 7
    add-int/2addr v1, v2

    .line 8
    new-array v1, v1, [B

    .line 10
    iget-byte v3, p0, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    .line 12
    const/4 v4, 0x0

    .line 13
    aput-byte v3, v1, v4

    .line 15
    const/4 v3, 0x1

    .line 16
    aput-byte v0, v1, v3

    .line 18
    iget-object v0, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    .line 20
    const/4 v3, 0x2

    .line 21
    const/4 v5, 0x6

    .line 22
    invoke-static {v0, v4, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    :goto_18
    iget-byte v0, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    .line 27
    if-lt v4, v0, :cond_1d

    .line 29
    return-object v1

    .line 30
    :cond_1d
    iget-object v0, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    .line 32
    aget v0, v0, v4

    .line 34
    invoke-static {v0, v1, v2}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    .line 37
    add-int/lit8 v2, v2, 0x4

    .line 39
    add-int/lit8 v4, v4, 0x1

    .line 41
    goto :goto_18
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    .line 1
    instance-of v0, p1, Ljcifs/smb/SID;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3c

    .line 6
    check-cast p1, Ljcifs/smb/SID;

    .line 8
    const/4 v0, 0x1

    .line 9
    if-ne p1, p0, :cond_b

    .line 11
    return v0

    .line 12
    :cond_b
    iget-byte v2, p1, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    .line 14
    iget-byte v3, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    .line 16
    if-ne v2, v3, :cond_3c

    .line 18
    :goto_11
    add-int/lit8 v2, v3, -0x1

    .line 20
    if-gtz v3, :cond_2f

    .line 22
    move v2, v1

    .line 23
    :goto_16
    const/4 v3, 0x6

    .line 24
    if-lt v2, v3, :cond_21

    .line 26
    iget-byte p1, p1, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    .line 28
    iget-byte v2, p0, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    .line 30
    if-ne p1, v2, :cond_20

    .line 32
    return v0

    .line 33
    :cond_20
    return v1

    .line 34
    :cond_21
    iget-object v3, p1, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    .line 36
    aget-byte v3, v3, v2

    .line 38
    iget-object v4, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    .line 40
    aget-byte v4, v4, v2

    .line 42
    if-eq v3, v4, :cond_2c

    .line 44
    return v1

    .line 45
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    .line 47
    goto :goto_16

    .line 48
    :cond_2f
    iget-object v3, p1, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    .line 50
    aget v3, v3, v2

    .line 52
    iget-object v4, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    .line 54
    aget v4, v4, v2

    .line 56
    if-eq v3, v4, :cond_3a

    .line 58
    return v1

    .line 59
    :cond_3a
    move v3, v2

    .line 60
    goto :goto_11

    .line 61
    :cond_3c
    return v1
.end method

.method public getAccountName()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {p0}, Ljcifs/smb/SID;->resolveWeak()V

    .line 8
    :cond_7
    iget v0, p0, Ljcifs/smb/SID;->type:I

    .line 10
    const/16 v1, 0x8

    .line 12
    if-ne v0, v1, :cond_22

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    iget-object v1, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    .line 21
    iget-byte v2, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    .line 23
    add-int/lit8 v2, v2, -0x1

    .line 25
    aget v1, v1, v2

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :cond_22
    const/4 v1, 0x3

    .line 36
    if-ne v0, v1, :cond_28

    .line 38
    const-string v0, ""

    .line 40
    return-object v0

    .line 41
    :cond_28
    iget-object v0, p0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    .line 43
    return-object v0
.end method

.method public getDomainName()Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {p0}, Ljcifs/smb/SID;->resolveWeak()V

    .line 8
    :cond_7
    iget v0, p0, Ljcifs/smb/SID;->type:I

    .line 10
    const/16 v1, 0x8

    .line 12
    if-ne v0, v1, :cond_26

    .line 14
    invoke-virtual {p0}, Ljcifs/smb/SID;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 22
    move-result v2

    .line 23
    invoke-virtual {p0}, Ljcifs/smb/SID;->getAccountName()Ljava/lang/String;

    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 30
    move-result v3

    .line 31
    sub-int/2addr v2, v3

    .line 32
    add-int/lit8 v2, v2, -0x1

    .line 34
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    return-object v0

    .line 39
    :cond_26
    iget-object v0, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    .line 41
    return-object v0
.end method

.method public getDomainSid()Ljcifs/smb/SID;
    .registers 8

    .line 1
    new-instance v6, Ljcifs/smb/SID;

    .line 3
    iget-object v3, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Ljcifs/smb/SID;->getType()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x3

    .line 10
    if-eq v0, v1, :cond_d

    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    :goto_e
    move v5, v0

    .line 16
    const/4 v2, 0x3

    .line 17
    const/4 v4, 0x0

    .line 18
    move-object v0, v6

    .line 19
    move-object v1, p0

    .line 20
    invoke-direct/range {v0 .. v5}, Ljcifs/smb/SID;-><init>(Ljcifs/dcerpc/rpc$sid_t;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 23
    return-object v6
.end method

.method public getGroupMemberSids(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;I)[Ljcifs/smb/SID;
    .registers 9

    .line 1
    iget v0, p0, Ljcifs/smb/SID;->type:I

    .line 3
    const/4 v1, 0x2

    .line 4
    if-eq v0, v1, :cond_c

    .line 6
    const/4 v1, 0x4

    .line 7
    if-eq v0, v1, :cond_c

    .line 9
    const/4 p1, 0x0

    .line 10
    new-array p1, p1, [Ljcifs/smb/SID;

    .line 12
    return-object p1

    .line 13
    :cond_c
    invoke-virtual {p0}, Ljcifs/smb/SID;->getDomainSid()Ljcifs/smb/SID;

    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    .line 19
    monitor-enter v1

    .line 20
    const/4 v2, 0x0

    .line 21
    :try_start_14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    const-string v4, "ncacn_np:"

    .line 25
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string v4, "[\\PIPE\\samr]"

    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v3

    .line 40
    invoke-static {v3, p2}, Ljcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;

    .line 43
    move-result-object p2
    :try_end_2b
    .catchall {:try_start_14 .. :try_end_2b} :catchall_58

    .line 44
    :try_start_2b
    new-instance v3, Ljcifs/dcerpc/msrpc/SamrPolicyHandle;

    .line 46
    const/16 v4, 0x30

    .line 48
    invoke-direct {v3, p2, p1, v4}, Ljcifs/dcerpc/msrpc/SamrPolicyHandle;-><init>(Ljcifs/dcerpc/DcerpcHandle;Ljava/lang/String;I)V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_53

    .line 51
    :try_start_32
    new-instance p1, Ljcifs/dcerpc/msrpc/SamrDomainHandle;

    .line 53
    const/16 v4, 0x200

    .line 55
    invoke-direct {p1, p2, v3, v4, v0}, Ljcifs/dcerpc/msrpc/SamrDomainHandle;-><init>(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/SamrPolicyHandle;ILjcifs/dcerpc/rpc$sid_t;)V
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_50

    .line 58
    :try_start_39
    invoke-virtual {p0}, Ljcifs/smb/SID;->getRid()I

    .line 61
    move-result v2

    .line 62
    invoke-static {p2, p1, v0, v2, p3}, Ljcifs/smb/SID;->getGroupMemberSids0(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/SamrDomainHandle;Ljcifs/smb/SID;II)[Ljcifs/smb/SID;

    .line 65
    move-result-object p3
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_4e

    .line 66
    if-eqz p2, :cond_4c

    .line 68
    :try_start_43
    invoke-virtual {p1}, Ljcifs/dcerpc/msrpc/SamrDomainHandle;->close()V

    .line 71
    invoke-virtual {v3}, Ljcifs/dcerpc/msrpc/SamrPolicyHandle;->close()V

    .line 74
    invoke-virtual {p2}, Ljcifs/dcerpc/DcerpcHandle;->close()V

    .line 77
    :cond_4c
    monitor-exit v1

    .line 78
    return-object p3

    .line 79
    :catchall_4e
    move-exception p3

    .line 80
    goto :goto_56

    .line 81
    :catchall_50
    move-exception p3

    .line 82
    move-object p1, v2

    .line 83
    goto :goto_56

    .line 84
    :catchall_53
    move-exception p3

    .line 85
    move-object p1, v2

    .line 86
    move-object v3, p1

    .line 87
    :goto_56
    move-object v2, p2

    .line 88
    goto :goto_5b

    .line 89
    :catchall_58
    move-exception p3

    .line 90
    move-object p1, v2

    .line 91
    move-object v3, p1

    .line 92
    :goto_5b
    if-eqz v2, :cond_6a

    .line 94
    if-eqz v3, :cond_67

    .line 96
    if-eqz p1, :cond_64

    .line 98
    invoke-virtual {p1}, Ljcifs/dcerpc/msrpc/SamrDomainHandle;->close()V

    .line 101
    :cond_64
    invoke-virtual {v3}, Ljcifs/dcerpc/msrpc/SamrPolicyHandle;->close()V

    .line 104
    :cond_67
    invoke-virtual {v2}, Ljcifs/dcerpc/DcerpcHandle;->close()V

    .line 107
    :cond_6a
    throw p3

    .line 108
    :catchall_6b
    move-exception p1

    .line 109
    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_43 .. :try_end_6d} :catchall_6b

    .line 110
    throw p1
.end method

.method public getRid()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljcifs/smb/SID;->getType()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-eq v0, v1, :cond_10

    .line 8
    iget-object v0, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    .line 10
    iget-byte v1, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    .line 12
    add-int/lit8 v1, v1, -0x1

    .line 14
    aget v0, v0, v1

    .line 16
    return v0

    .line 17
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 19
    const-string v1, "This SID is a domain sid"

    .line 21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    throw v0
.end method

.method public getType()I
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {p0}, Ljcifs/smb/SID;->resolveWeak()V

    .line 8
    :cond_7
    iget v0, p0, Ljcifs/smb/SID;->type:I

    .line 10
    return v0
.end method

.method public getTypeText()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {p0}, Ljcifs/smb/SID;->resolveWeak()V

    .line 8
    :cond_7
    sget-object v0, Ljcifs/smb/SID;->SID_TYPE_NAMES:[Ljava/lang/String;

    .line 10
    iget v1, p0, Ljcifs/smb/SID;->type:I

    .line 12
    aget-object v0, v0, v1

    .line 14
    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 1
    iget-object v0, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    .line 3
    const/4 v1, 0x5

    .line 4
    aget-byte v0, v0, v1

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_6
    iget-byte v2, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    .line 9
    if-lt v1, v2, :cond_b

    .line 11
    return v0

    .line 12
    :cond_b
    const v2, 0x1003f

    .line 15
    iget-object v3, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    .line 17
    aget v3, v3, v1

    .line 19
    mul-int/2addr v3, v2

    .line 20
    add-int/2addr v0, v3

    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 23
    goto :goto_6
.end method

.method public resolve(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljcifs/smb/SID;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 7
    invoke-static {p1, p2, v0}, Ljcifs/smb/SID;->resolveSids(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;)V

    .line 10
    return-void
.end method

.method public resolveWeak()V
    .registers 4

    .line 1
    iget-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_15

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_5
    iget-object v2, p0, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 8
    invoke-virtual {p0, v0, v2}, Ljcifs/smb/SID;->resolve(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_11
    .catchall {:try_start_5 .. :try_end_a} :catchall_b

    .line 11
    goto :goto_11

    .line 12
    :catchall_b
    move-exception v0

    .line 13
    iput-object v1, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 17
    throw v0

    .line 18
    :catch_11
    :goto_11
    iput-object v1, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 22
    :cond_15
    return-void
.end method

.method public toDisplayString()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {p0}, Ljcifs/smb/SID;->resolveWeak()V

    .line 8
    :cond_7
    iget-object v0, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    .line 10
    if-eqz v0, :cond_45

    .line 12
    iget v1, p0, Ljcifs/smb/SID;->type:I

    .line 14
    const/4 v2, 0x3

    .line 15
    if-ne v1, v2, :cond_11

    .line 17
    goto :goto_44

    .line 18
    :cond_11
    const/4 v2, 0x5

    .line 19
    if-eq v1, v2, :cond_37

    .line 21
    const-string v1, "BUILTIN"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1d

    .line 29
    goto :goto_37

    .line 30
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    iget-object v1, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    .line 34
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    const-string v1, "\\"

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v1, p0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    goto :goto_44

    .line 56
    :cond_37
    :goto_37
    iget v0, p0, Ljcifs/smb/SID;->type:I

    .line 58
    const/16 v1, 0x8

    .line 60
    if-ne v0, v1, :cond_42

    .line 62
    invoke-virtual {p0}, Ljcifs/smb/SID;->toString()Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    goto :goto_44

    .line 67
    :cond_42
    iget-object v0, p0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    .line 69
    :goto_44
    return-object v0

    .line 70
    :cond_45
    invoke-virtual {p0}, Ljcifs/smb/SID;->toString()Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 14

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "S-"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-byte v1, p0, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    .line 10
    and-int/lit16 v1, v1, 0xff

    .line 12
    const-string v2, "-"

    .line 14
    invoke-static {v0, v1, v2}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    .line 20
    const/4 v3, 0x0

    .line 21
    aget-byte v4, v1, v3

    .line 23
    if-nez v4, :cond_46

    .line 25
    const/4 v4, 0x1

    .line 26
    aget-byte v1, v1, v4

    .line 28
    if-eqz v1, :cond_1e

    .line 30
    goto :goto_46

    .line 31
    :cond_1e
    const/4 v1, 0x5

    .line 32
    const-wide/16 v5, 0x0

    .line 34
    move-wide v7, v5

    .line 35
    :goto_22
    if-gt v1, v4, :cond_35

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    goto :goto_6f

    .line 54
    :cond_35
    iget-object v9, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    .line 56
    aget-byte v9, v9, v1

    .line 58
    int-to-long v9, v9

    .line 59
    const-wide/16 v11, 0xff

    .line 61
    and-long/2addr v9, v11

    .line 62
    long-to-int v11, v5

    .line 63
    shl-long/2addr v9, v11

    .line 64
    add-long/2addr v7, v9

    .line 65
    const-wide/16 v9, 0x8

    .line 67
    add-long/2addr v5, v9

    .line 68
    add-int/lit8 v1, v1, -0x1

    .line 70
    goto :goto_22

    .line 71
    :cond_46
    :goto_46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    const-string v0, "0x"

    .line 82
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    move-result-object v0

    .line 95
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    .line 100
    const/4 v4, 0x6

    .line 101
    invoke-static {v0, v3, v4}, Ljcifs/util/Hexdump;->toHexString([BII)Ljava/lang/String;

    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object v0

    .line 112
    :goto_6f
    iget-byte v1, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    .line 114
    if-lt v3, v1, :cond_74

    .line 116
    return-object v0

    .line 117
    :cond_74
    new-instance v1, Ljava/lang/StringBuilder;

    .line 119
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 122
    move-result-object v0

    .line 123
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v0, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    .line 131
    aget v0, v0, v3

    .line 133
    int-to-long v4, v0

    .line 134
    const-wide v6, 0xffffffffL

    .line 139
    and-long/2addr v4, v6

    .line 140
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object v0

    .line 147
    add-int/lit8 v3, v3, 0x1

    .line 149
    goto :goto_6f
.end method
