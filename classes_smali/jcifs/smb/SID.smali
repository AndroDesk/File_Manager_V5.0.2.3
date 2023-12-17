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

    const-string v0, "0"

    const-string v1, "User"

    const-string v2, "Domain group"

    const-string v3, "Domain"

    const-string v4, "Local group"

    const-string v5, "Builtin group"

    const-string v6, "Deleted"

    const-string v7, "Invalid"

    const-string v8, "Unknown"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/SID;->SID_TYPE_NAMES:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Ljcifs/smb/SID;->EVERYONE:Ljcifs/smb/SID;

    sput-object v0, Ljcifs/smb/SID;->CREATOR_OWNER:Ljcifs/smb/SID;

    sput-object v0, Ljcifs/smb/SID;->SYSTEM:Ljcifs/smb/SID;

    :try_start_1f
    new-instance v0, Ljcifs/smb/SID;

    const-string v1, "S-1-1-0"

    invoke-direct {v0, v1}, Ljcifs/smb/SID;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljcifs/smb/SID;->EVERYONE:Ljcifs/smb/SID;

    new-instance v0, Ljcifs/smb/SID;

    const-string v1, "S-1-3-0"

    invoke-direct {v0, v1}, Ljcifs/smb/SID;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljcifs/smb/SID;->CREATOR_OWNER:Ljcifs/smb/SID;

    new-instance v0, Ljcifs/smb/SID;

    const-string v1, "S-1-5-18"

    invoke-direct {v0, v1}, Ljcifs/smb/SID;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljcifs/smb/SID;->SYSTEM:Ljcifs/smb/SID;
    :try_end_3a
    .catch Ljcifs/smb/SmbException; {:try_start_1f .. :try_end_3a} :catch_3a

    :catch_3a
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljcifs/dcerpc/rpc$sid_t;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "-"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p1

    iput-byte p1, p0, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    const-string v1, "0x"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    goto :goto_4c

    :cond_48
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    :goto_4c
    const/4 p1, 0x6

    new-array p1, p1, [B

    iput-object p1, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    const/4 p1, 0x5

    :goto_52
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_82

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    if-lez p1, :cond_81

    new-array p1, p1, [I

    iput-object p1, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    const/4 p1, 0x0

    :goto_66
    iget-byte v1, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    if-lt p1, v1, :cond_6b

    goto :goto_81

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

    invoke-direct {p0}, Ljcifs/dcerpc/rpc$sid_t;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-byte v0, p1, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    iput-byte v0, p0, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    iget-byte v0, p1, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    iput-byte v0, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    iget-object v1, p1, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    iput-object v1, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    iget-object v1, p1, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    iput-object v1, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    iput p2, p0, Ljcifs/smb/SID;->type:I

    iput-object p3, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    iput-object p4, p0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    if-eqz p5, :cond_3e

    add-int/lit8 v0, v0, -0x1

    int-to-byte p2, v0

    iput-byte p2, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    new-array p2, p2, [I

    iput-object p2, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    const/4 p2, 0x0

    :goto_2e
    iget-byte p3, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    if-lt p2, p3, :cond_33

    goto :goto_3e

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

    invoke-direct {p0}, Ljcifs/dcerpc/rpc$sid_t;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-byte v0, p1, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    iput-byte v0, p0, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    iget-object v0, p1, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    iput-object v0, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    iget-byte v0, p1, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    new-array v0, v0, [I

    iput-object v0, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    const/4 v0, 0x0

    :goto_20
    iget-byte v1, p1, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    if-lt v0, v1, :cond_29

    iget-object p1, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    aput p2, p1, v0

    return-void

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

    invoke-direct {p0}, Ljcifs/dcerpc/rpc$sid_t;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    iput-byte p2, p0, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p1, v0

    iput-byte v0, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    const/4 v0, 0x6

    new-array v1, v0, [B

    iput-object v1, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    iget-byte v0, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    const/16 v1, 0x64

    if-gt v0, v1, :cond_3e

    new-array v0, v0, [I

    iput-object v0, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    :goto_2c
    iget-byte v0, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    if-lt v2, v0, :cond_31

    return-void

    :cond_31
    iget-object v0, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v1

    aput v1, v0, v2

    add-int/lit8 p2, p2, 0x4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_3e
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid SID sub_authority_count"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getGroupMemberSids0(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/SamrDomainHandle;Ljcifs/smb/SID;II)[Ljcifs/smb/SID;
    .registers 15

    new-instance p2, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;

    invoke-direct {p2}, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;-><init>()V

    const/4 v0, 0x0

    :try_start_6
    new-instance v1, Ljcifs/dcerpc/msrpc/SamrAliasHandle;

    const v2, 0x2000c

    invoke-direct {v1, p0, p1, v2, p3}, Ljcifs/dcerpc/msrpc/SamrAliasHandle;-><init>(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/SamrDomainHandle;II)V
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_60

    :try_start_e
    new-instance p1, Ljcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;

    invoke-direct {p1, v1, p2}, Ljcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;-><init>(Ljcifs/dcerpc/msrpc/SamrAliasHandle;Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;)V

    invoke-virtual {p0, p1}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    iget p2, p1, Ljcifs/dcerpc/msrpc/samr$SamrGetMembersInAlias;->retval:I

    const/4 p3, 0x0

    if-nez p2, :cond_55

    iget-object p2, p1, Ljcifs/dcerpc/msrpc/samr$SamrGetMembersInAlias;->sids:Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;

    iget p2, p2, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;->num_sids:I

    new-array v0, p2, [Ljcifs/smb/SID;

    invoke-virtual {p0}, Ljcifs/dcerpc/DcerpcHandle;->getServer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljcifs/dcerpc/DcerpcHandle;->getPrincipal()Ljava/security/Principal;

    move-result-object p0

    check-cast p0, Ljcifs/smb/NtlmPasswordAuthentication;

    :goto_2b
    if-lt p3, p2, :cond_3a

    if-lez p2, :cond_36

    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_36

    invoke-static {v2, p0, v0}, Ljcifs/smb/SID;->resolveSids(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;)V
    :try_end_36
    .catchall {:try_start_e .. :try_end_36} :catchall_5d

    :cond_36
    invoke-virtual {v1}, Ljcifs/dcerpc/msrpc/SamrAliasHandle;->close()V

    return-object v0

    :cond_3a
    :try_start_3a
    new-instance v9, Ljcifs/smb/SID;

    iget-object v3, p1, Ljcifs/dcerpc/msrpc/samr$SamrGetMembersInAlias;->sids:Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;

    iget-object v3, v3, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;->sids:[Ljcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;

    aget-object v3, v3, p3

    iget-object v4, v3, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;->sid:Ljcifs/dcerpc/rpc$sid_t;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Ljcifs/smb/SID;-><init>(Ljcifs/dcerpc/rpc$sid_t;ILjava/lang/String;Ljava/lang/String;Z)V

    aput-object v9, v0, p3

    iput-object v2, v9, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    iput-object p0, v9, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    add-int/lit8 p3, p3, 0x1

    goto :goto_2b

    :cond_55
    new-instance p0, Ljcifs/smb/SmbException;

    iget p1, p1, Ljcifs/dcerpc/msrpc/samr$SamrGetMembersInAlias;->retval:I

    invoke-direct {p0, p1, p3}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw p0
    :try_end_5d
    .catchall {:try_start_3a .. :try_end_5d} :catchall_5d

    :catchall_5d
    move-exception p0

    move-object v0, v1

    goto :goto_61

    :catchall_60
    move-exception p0

    :goto_61
    if-eqz v0, :cond_66

    invoke-virtual {v0}, Ljcifs/dcerpc/msrpc/SamrAliasHandle;->close()V

    :cond_66
    throw p0
.end method

.method public static getLocalGroupsMap(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;I)Ljava/util/Map;
    .registers 15

    invoke-static {p0, p1}, Ljcifs/smb/SID;->getServerSid(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SID;

    move-result-object v0

    new-instance v1, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;

    invoke-direct {v1}, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;-><init>()V

    sget-object v2, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_d
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ncacn_np:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "[\\PIPE\\samr]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Ljcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;

    move-result-object p1
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_b7

    :try_start_24
    new-instance v4, Ljcifs/dcerpc/msrpc/SamrPolicyHandle;

    const/high16 v5, 0x2000000

    invoke-direct {v4, p1, p0, v5}, Ljcifs/dcerpc/msrpc/SamrPolicyHandle;-><init>(Ljcifs/dcerpc/DcerpcHandle;Ljava/lang/String;I)V
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_b2

    :try_start_2b
    new-instance p0, Ljcifs/dcerpc/msrpc/SamrDomainHandle;

    invoke-direct {p0, p1, v4, v5, v0}, Ljcifs/dcerpc/msrpc/SamrDomainHandle;-><init>(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/SamrPolicyHandle;ILjcifs/dcerpc/rpc$sid_t;)V
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_af

    :try_start_30
    new-instance v3, Ljcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain;

    const v5, 0xffff

    invoke-direct {v3, p0, v5, v1}, Ljcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain;-><init>(Ljcifs/dcerpc/msrpc/SamrDomainHandle;ILjcifs/dcerpc/msrpc/samr$SamrSamArray;)V

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    iget v1, v3, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->retval:I

    const/4 v5, 0x0

    if-nez v1, :cond_a5

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move v6, v5

    :goto_46
    iget-object v7, v3, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->sam:Ljcifs/dcerpc/msrpc/samr$SamrSamArray;

    iget v8, v7, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;->count:I
    :try_end_4a
    .catchall {:try_start_30 .. :try_end_4a} :catchall_ad

    if-lt v6, v8, :cond_57

    :try_start_4c
    invoke-virtual {p0}, Ljcifs/dcerpc/msrpc/SamrDomainHandle;->close()V

    invoke-virtual {v4}, Ljcifs/dcerpc/msrpc/SamrPolicyHandle;->close()V

    invoke-virtual {p1}, Ljcifs/dcerpc/DcerpcHandle;->close()V

    monitor-exit v2
    :try_end_56
    .catchall {:try_start_4c .. :try_end_56} :catchall_ca

    return-object v1

    :cond_57
    :try_start_57
    iget-object v7, v7, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;->entries:[Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;

    aget-object v7, v7, v6

    iget v8, v7, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->idx:I

    invoke-static {p1, p0, v0, v8, p2}, Ljcifs/smb/SID;->getGroupMemberSids0(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/SamrDomainHandle;Ljcifs/smb/SID;II)[Ljcifs/smb/SID;

    move-result-object v8

    new-instance v9, Ljcifs/smb/SID;

    iget v10, v7, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->idx:I

    invoke-direct {v9, v0, v10}, Ljcifs/smb/SID;-><init>(Ljcifs/smb/SID;I)V

    const/4 v10, 0x4

    iput v10, v9, Ljcifs/smb/SID;->type:I

    invoke-virtual {v0}, Ljcifs/smb/SID;->getDomainName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    new-instance v10, Ljcifs/dcerpc/UnicodeString;

    iget-object v7, v7, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->name:Ljcifs/dcerpc/rpc$unicode_string;

    invoke-direct {v10, v7, v5}, Ljcifs/dcerpc/UnicodeString;-><init>(Ljcifs/dcerpc/rpc$unicode_string;Z)V

    invoke-virtual {v10}, Ljcifs/dcerpc/UnicodeString;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v9, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    move v7, v5

    :goto_7f
    array-length v10, v8

    if-lt v7, v10, :cond_85

    add-int/lit8 v6, v6, 0x1

    goto :goto_46

    :cond_85
    aget-object v10, v8, v7

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    if-nez v10, :cond_99

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    aget-object v11, v8, v7

    invoke-virtual {v1, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_99
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a2

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a2
    add-int/lit8 v7, v7, 0x1

    goto :goto_7f

    :cond_a5
    new-instance p2, Ljcifs/smb/SmbException;

    iget v0, v3, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->retval:I

    invoke-direct {p2, v0, v5}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw p2
    :try_end_ad
    .catchall {:try_start_57 .. :try_end_ad} :catchall_ad

    :catchall_ad
    move-exception p2

    goto :goto_b5

    :catchall_af
    move-exception p2

    move-object p0, v3

    goto :goto_b5

    :catchall_b2
    move-exception p2

    move-object p0, v3

    move-object v4, p0

    :goto_b5
    move-object v3, p1

    goto :goto_ba

    :catchall_b7
    move-exception p2

    move-object p0, v3

    move-object v4, p0

    :goto_ba
    if-eqz v3, :cond_c9

    if-eqz v4, :cond_c6

    if-eqz p0, :cond_c3

    :try_start_c0
    invoke-virtual {p0}, Ljcifs/dcerpc/msrpc/SamrDomainHandle;->close()V

    :cond_c3
    invoke-virtual {v4}, Ljcifs/dcerpc/msrpc/SamrPolicyHandle;->close()V

    :cond_c6
    invoke-virtual {v3}, Ljcifs/dcerpc/DcerpcHandle;->close()V

    :cond_c9
    throw p2

    :catchall_ca
    move-exception p0

    monitor-exit v2
    :try_end_cc
    .catchall {:try_start_c0 .. :try_end_cc} :catchall_ca

    throw p0
.end method

.method public static getServerSid(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SID;
    .registers 13

    new-instance v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;

    invoke-direct {v0}, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;-><init>()V

    sget-object v1, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_9
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ncacn_np:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "[\\PIPE\\lsarpc]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Ljcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;

    move-result-object p0
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_60

    :try_start_20
    new-instance p1, Ljcifs/dcerpc/msrpc/LsaPolicyHandle;

    const/4 v3, 0x1

    invoke-direct {p1, p0, v2, v3}, Ljcifs/dcerpc/msrpc/LsaPolicyHandle;-><init>(Ljcifs/dcerpc/DcerpcHandle;Ljava/lang/String;I)V
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_5c

    :try_start_26
    new-instance v2, Ljcifs/dcerpc/msrpc/MsrpcQueryInformationPolicy;

    const/4 v3, 0x5

    invoke-direct {v2, p1, v3, v0}, Ljcifs/dcerpc/msrpc/MsrpcQueryInformationPolicy;-><init>(Ljcifs/dcerpc/msrpc/LsaPolicyHandle;SLjcifs/dcerpc/ndr/NdrObject;)V

    invoke-virtual {p0, v2}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    iget v3, v2, Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;->retval:I

    const/4 v4, 0x0

    if-nez v3, :cond_52

    new-instance v2, Ljcifs/smb/SID;

    iget-object v6, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    const/4 v7, 0x3

    new-instance v3, Ljcifs/dcerpc/UnicodeString;

    iget-object v0, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    invoke-direct {v3, v0, v4}, Ljcifs/dcerpc/UnicodeString;-><init>(Ljcifs/dcerpc/rpc$unicode_string;Z)V

    invoke-virtual {v3}, Ljcifs/dcerpc/UnicodeString;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Ljcifs/smb/SID;-><init>(Ljcifs/dcerpc/rpc$sid_t;ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_4a
    .catchall {:try_start_26 .. :try_end_4a} :catchall_5a

    :try_start_4a
    invoke-virtual {p1}, Ljcifs/dcerpc/msrpc/LsaPolicyHandle;->close()V

    invoke-virtual {p0}, Ljcifs/dcerpc/DcerpcHandle;->close()V

    monitor-exit v1
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_6d

    return-object v2

    :cond_52
    :try_start_52
    new-instance v0, Ljcifs/smb/SmbException;

    iget v2, v2, Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;->retval:I

    invoke-direct {v0, v2, v4}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v0
    :try_end_5a
    .catchall {:try_start_52 .. :try_end_5a} :catchall_5a

    :catchall_5a
    move-exception v0

    goto :goto_5e

    :catchall_5c
    move-exception v0

    move-object p1, v2

    :goto_5e
    move-object v2, p0

    goto :goto_62

    :catchall_60
    move-exception v0

    move-object p1, v2

    :goto_62
    if-eqz v2, :cond_6c

    if-eqz p1, :cond_69

    :try_start_66
    invoke-virtual {p1}, Ljcifs/dcerpc/msrpc/LsaPolicyHandle;->close()V

    :cond_69
    invoke-virtual {v2}, Ljcifs/dcerpc/DcerpcHandle;->close()V

    :cond_6c
    throw v0

    :catchall_6d
    move-exception p0

    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_66 .. :try_end_6f} :catchall_6d

    throw p0
.end method

.method public static resolveSids(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;)V
    .registers 10

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v1, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    monitor-enter v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    :try_start_b
    array-length v4, p2

    if-lt v3, v4, :cond_2f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2d

    new-array p2, v2, [Ljcifs/smb/SID;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljcifs/smb/SID;

    invoke-static {p0, p1, p2}, Ljcifs/smb/SID;->resolveSids0(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;)V

    :goto_1f
    array-length p0, p2

    if-lt v2, p0, :cond_23

    goto :goto_2d

    :cond_23
    sget-object p0, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    aget-object p1, p2, v2

    invoke-interface {p0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_2d
    :goto_2d
    monitor-exit v1

    return-void

    :cond_2f
    sget-object v4, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    aget-object v5, p2, v3

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljcifs/smb/SID;

    if-eqz v4, :cond_4a

    aget-object v5, p2, v3

    iget v6, v4, Ljcifs/smb/SID;->type:I

    iput v6, v5, Ljcifs/smb/SID;->type:I

    iget-object v6, v4, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    iput-object v6, v5, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    iget-object v4, v4, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    iput-object v4, v5, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    goto :goto_4f

    :cond_4a
    aget-object v4, p2, v3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :catchall_52
    move-exception p0

    monitor-exit v1
    :try_end_54
    .catchall {:try_start_b .. :try_end_54} :catchall_52

    throw p0
.end method

.method public static resolveSids(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;II)V
    .registers 12

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v1, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    monitor-enter v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-lt v3, p4, :cond_2e

    :try_start_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2c

    new-array p2, v2, [Ljcifs/smb/SID;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljcifs/smb/SID;

    invoke-static {p0, p1, p2}, Ljcifs/smb/SID;->resolveSids0(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;)V

    :goto_1e
    array-length p0, p2

    if-lt v2, p0, :cond_22

    goto :goto_2c

    :cond_22
    sget-object p0, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    aget-object p1, p2, v2

    invoke-interface {p0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_2c
    :goto_2c
    monitor-exit v1

    return-void

    :cond_2e
    sget-object v4, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    add-int v5, p3, v3

    aget-object v6, p2, v5

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljcifs/smb/SID;

    if-eqz v4, :cond_4b

    aget-object v5, p2, v5

    iget v6, v4, Ljcifs/smb/SID;->type:I

    iput v6, v5, Ljcifs/smb/SID;->type:I

    iget-object v6, v4, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    iput-object v6, v5, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    iget-object v4, v4, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    iput-object v4, v5, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    goto :goto_50

    :cond_4b
    aget-object v4, p2, v5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :catchall_53
    move-exception p0

    monitor-exit v1
    :try_end_55
    .catchall {:try_start_d .. :try_end_55} :catchall_53

    throw p0
.end method

.method public static resolveSids(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/LsaPolicyHandle;[Ljcifs/smb/SID;)V
    .registers 9

    new-instance v0, Ljcifs/dcerpc/msrpc/MsrpcLookupSids;

    invoke-direct {v0, p1, p2}, Ljcifs/dcerpc/msrpc/MsrpcLookupSids;-><init>(Ljcifs/dcerpc/msrpc/LsaPolicyHandle;[Ljcifs/smb/SID;)V

    invoke-virtual {p0, v0}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    iget p0, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->retval:I

    const p1, -0x3fffff8d  # -2.0000274f

    const/4 v1, 0x0

    if-eq p0, p1, :cond_1f

    if-eqz p0, :cond_1f

    const/16 p1, 0x107

    if-ne p0, p1, :cond_17

    goto :goto_1f

    :cond_17
    new-instance p0, Ljcifs/smb/SmbException;

    iget p1, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->retval:I

    invoke-direct {p0, p1, v1}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw p0

    :cond_1f
    :goto_1f
    move p0, v1

    :goto_20
    array-length p1, p2

    if-lt p0, p1, :cond_24

    return-void

    :cond_24
    aget-object p1, p2, p0

    iget-object v2, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->names:Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;

    iget-object v2, v2, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->names:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    aget-object v2, v2, p0

    iget-short v3, v2, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->sid_type:S

    iput v3, p1, Ljcifs/smb/SID;->type:I

    const/4 v4, 0x0

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

    :cond_43
    iget v2, v2, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->sid_index:I

    iget-object v3, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->domains:Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;

    iget-object v3, v3, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->domains:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;

    aget-object v2, v3, v2

    iget-object v2, v2, Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;->name:Ljcifs/dcerpc/rpc$unicode_string;

    new-instance v3, Ljcifs/dcerpc/UnicodeString;

    invoke-direct {v3, v2, v1}, Ljcifs/dcerpc/UnicodeString;-><init>(Ljcifs/dcerpc/rpc$unicode_string;Z)V

    invoke-virtual {v3}, Ljcifs/dcerpc/UnicodeString;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

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

    aget-object p1, p2, p0

    iput-object v4, p1, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    iput-object v4, p1, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    add-int/lit8 p0, p0, 0x1

    goto :goto_20
.end method

.method public static resolveSids0(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;)V
    .registers 8

    sget-object v0, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ncacn_np:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "[\\PIPE\\lsarpc]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Ljcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;

    move-result-object p1
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_5a

    const/16 v2, 0x2e

    :try_start_1d
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_32

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_32

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_32
    new-instance v2, Ljcifs/dcerpc/msrpc/LsaPolicyHandle;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\\\\"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v3, 0x800

    invoke-direct {v2, p1, p0, v3}, Ljcifs/dcerpc/msrpc/LsaPolicyHandle;-><init>(Ljcifs/dcerpc/DcerpcHandle;Ljava/lang/String;I)V
    :try_end_47
    .catchall {:try_start_1d .. :try_end_47} :catchall_56

    :try_start_47
    invoke-static {p1, v2, p2}, Ljcifs/smb/SID;->resolveSids(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/LsaPolicyHandle;[Ljcifs/smb/SID;)V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_54

    if-eqz p1, :cond_52

    :try_start_4c
    invoke-virtual {v2}, Ljcifs/dcerpc/msrpc/LsaPolicyHandle;->close()V

    invoke-virtual {p1}, Ljcifs/dcerpc/DcerpcHandle;->close()V

    :cond_52
    monitor-exit v0

    return-void

    :catchall_54
    move-exception p0

    goto :goto_58

    :catchall_56
    move-exception p0

    move-object v2, v1

    :goto_58
    move-object v1, p1

    goto :goto_5c

    :catchall_5a
    move-exception p0

    move-object v2, v1

    :goto_5c
    if-eqz v1, :cond_66

    if-eqz v2, :cond_63

    invoke-virtual {v2}, Ljcifs/dcerpc/msrpc/LsaPolicyHandle;->close()V

    :cond_63
    invoke-virtual {v1}, Ljcifs/dcerpc/DcerpcHandle;->close()V

    :cond_66
    throw p0

    :catchall_67
    move-exception p0

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_4c .. :try_end_69} :catchall_67

    throw p0
.end method

.method public static toByteArray(Ljcifs/dcerpc/rpc$sid_t;)[B
    .registers 7

    iget-byte v0, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    mul-int/lit8 v1, v0, 0x4

    const/16 v2, 0x8

    add-int/2addr v1, v2

    new-array v1, v1, [B

    iget-byte v3, p0, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    const/4 v4, 0x0

    aput-byte v3, v1, v4

    const/4 v3, 0x1

    aput-byte v0, v1, v3

    iget-object v0, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    const/4 v3, 0x2

    const/4 v5, 0x6

    invoke-static {v0, v4, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_18
    iget-byte v0, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    if-lt v4, v0, :cond_1d

    return-object v1

    :cond_1d
    iget-object v0, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    aget v0, v0, v4

    invoke-static {v0, v1, v2}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v4, v4, 0x1

    goto :goto_18
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    instance-of v0, p1, Ljcifs/smb/SID;

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    check-cast p1, Ljcifs/smb/SID;

    const/4 v0, 0x1

    if-ne p1, p0, :cond_b

    return v0

    :cond_b
    iget-byte v2, p1, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    iget-byte v3, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    if-ne v2, v3, :cond_3c

    :goto_11
    add-int/lit8 v2, v3, -0x1

    if-gtz v3, :cond_2f

    move v2, v1

    :goto_16
    const/4 v3, 0x6

    if-lt v2, v3, :cond_21

    iget-byte p1, p1, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    iget-byte v2, p0, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    if-ne p1, v2, :cond_20

    return v0

    :cond_20
    return v1

    :cond_21
    iget-object v3, p1, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    aget-byte v3, v3, v2

    iget-object v4, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    aget-byte v4, v4, v2

    if-eq v3, v4, :cond_2c

    return v1

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_2f
    iget-object v3, p1, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    aget v3, v3, v2

    iget-object v4, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    aget v4, v4, v2

    if-eq v3, v4, :cond_3a

    return v1

    :cond_3a
    move v3, v2

    goto :goto_11

    :cond_3c
    return v1
.end method

.method public getAccountName()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Ljcifs/smb/SID;->resolveWeak()V

    :cond_7
    iget v0, p0, Ljcifs/smb/SID;->type:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    iget-byte v2, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_22
    const/4 v1, 0x3

    if-ne v0, v1, :cond_28

    const-string v0, ""

    return-object v0

    :cond_28
    iget-object v0, p0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    return-object v0
.end method

.method public getDomainName()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Ljcifs/smb/SID;->resolveWeak()V

    :cond_7
    iget v0, p0, Ljcifs/smb/SID;->type:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_26

    invoke-virtual {p0}, Ljcifs/smb/SID;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Ljcifs/smb/SID;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_26
    iget-object v0, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    return-object v0
.end method

.method public getDomainSid()Ljcifs/smb/SID;
    .registers 8

    new-instance v6, Ljcifs/smb/SID;

    iget-object v3, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    invoke-virtual {p0}, Ljcifs/smb/SID;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    move v5, v0

    const/4 v2, 0x3

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ljcifs/smb/SID;-><init>(Ljcifs/dcerpc/rpc$sid_t;ILjava/lang/String;Ljava/lang/String;Z)V

    return-object v6
.end method

.method public getGroupMemberSids(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;I)[Ljcifs/smb/SID;
    .registers 9

    iget v0, p0, Ljcifs/smb/SID;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    const/4 v1, 0x4

    if-eq v0, v1, :cond_c

    const/4 p1, 0x0

    new-array p1, p1, [Ljcifs/smb/SID;

    return-object p1

    :cond_c
    invoke-virtual {p0}, Ljcifs/smb/SID;->getDomainSid()Ljcifs/smb/SID;

    move-result-object v0

    sget-object v1, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_14
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ncacn_np:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "[\\PIPE\\samr]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Ljcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;

    move-result-object p2
    :try_end_2b
    .catchall {:try_start_14 .. :try_end_2b} :catchall_58

    :try_start_2b
    new-instance v3, Ljcifs/dcerpc/msrpc/SamrPolicyHandle;

    const/16 v4, 0x30

    invoke-direct {v3, p2, p1, v4}, Ljcifs/dcerpc/msrpc/SamrPolicyHandle;-><init>(Ljcifs/dcerpc/DcerpcHandle;Ljava/lang/String;I)V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_53

    :try_start_32
    new-instance p1, Ljcifs/dcerpc/msrpc/SamrDomainHandle;

    const/16 v4, 0x200

    invoke-direct {p1, p2, v3, v4, v0}, Ljcifs/dcerpc/msrpc/SamrDomainHandle;-><init>(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/SamrPolicyHandle;ILjcifs/dcerpc/rpc$sid_t;)V
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_50

    :try_start_39
    invoke-virtual {p0}, Ljcifs/smb/SID;->getRid()I

    move-result v2

    invoke-static {p2, p1, v0, v2, p3}, Ljcifs/smb/SID;->getGroupMemberSids0(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/SamrDomainHandle;Ljcifs/smb/SID;II)[Ljcifs/smb/SID;

    move-result-object p3
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_4e

    if-eqz p2, :cond_4c

    :try_start_43
    invoke-virtual {p1}, Ljcifs/dcerpc/msrpc/SamrDomainHandle;->close()V

    invoke-virtual {v3}, Ljcifs/dcerpc/msrpc/SamrPolicyHandle;->close()V

    invoke-virtual {p2}, Ljcifs/dcerpc/DcerpcHandle;->close()V

    :cond_4c
    monitor-exit v1

    return-object p3

    :catchall_4e
    move-exception p3

    goto :goto_56

    :catchall_50
    move-exception p3

    move-object p1, v2

    goto :goto_56

    :catchall_53
    move-exception p3

    move-object p1, v2

    move-object v3, p1

    :goto_56
    move-object v2, p2

    goto :goto_5b

    :catchall_58
    move-exception p3

    move-object p1, v2

    move-object v3, p1

    :goto_5b
    if-eqz v2, :cond_6a

    if-eqz v3, :cond_67

    if-eqz p1, :cond_64

    invoke-virtual {p1}, Ljcifs/dcerpc/msrpc/SamrDomainHandle;->close()V

    :cond_64
    invoke-virtual {v3}, Ljcifs/dcerpc/msrpc/SamrPolicyHandle;->close()V

    :cond_67
    invoke-virtual {v2}, Ljcifs/dcerpc/DcerpcHandle;->close()V

    :cond_6a
    throw p3

    :catchall_6b
    move-exception p1

    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_43 .. :try_end_6d} :catchall_6b

    throw p1
.end method

.method public getRid()I
    .registers 3

    invoke-virtual {p0}, Ljcifs/smb/SID;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    iget-byte v1, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This SID is a domain sid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType()I
    .registers 2

    iget-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Ljcifs/smb/SID;->resolveWeak()V

    :cond_7
    iget v0, p0, Ljcifs/smb/SID;->type:I

    return v0
.end method

.method public getTypeText()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Ljcifs/smb/SID;->resolveWeak()V

    :cond_7
    sget-object v0, Ljcifs/smb/SID;->SID_TYPE_NAMES:[Ljava/lang/String;

    iget v1, p0, Ljcifs/smb/SID;->type:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    iget-object v0, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    const/4 v1, 0x0

    :goto_6
    iget-byte v2, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    if-lt v1, v2, :cond_b

    return v0

    :cond_b
    const v2, 0x1003f

    iget-object v3, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    aget v3, v3, v1

    mul-int/2addr v3, v2

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public resolve(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljcifs/smb/SID;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, p2, v0}, Ljcifs/smb/SID;->resolveSids(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;)V

    return-void
.end method

.method public resolveWeak()V
    .registers 4

    iget-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    if-eqz v0, :cond_15

    const/4 v1, 0x0

    :try_start_5
    iget-object v2, p0, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {p0, v0, v2}, Ljcifs/smb/SID;->resolve(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_11
    .catchall {:try_start_5 .. :try_end_a} :catchall_b

    goto :goto_11

    :catchall_b
    move-exception v0

    iput-object v1, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    iput-object v1, p0, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    throw v0

    :catch_11
    :goto_11
    iput-object v1, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    iput-object v1, p0, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    :cond_15
    return-void
.end method

.method public toDisplayString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Ljcifs/smb/SID;->resolveWeak()V

    :cond_7
    iget-object v0, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    if-eqz v0, :cond_45

    iget v1, p0, Ljcifs/smb/SID;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_11

    goto :goto_44

    :cond_11
    const/4 v2, 0x5

    if-eq v1, v2, :cond_37

    const-string v1, "BUILTIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_37

    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_44

    :cond_37
    :goto_37
    iget v0, p0, Ljcifs/smb/SID;->type:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_42

    invoke-virtual {p0}, Ljcifs/smb/SID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_44

    :cond_42
    iget-object v0, p0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    :goto_44
    return-object v0

    :cond_45
    invoke-virtual {p0}, Ljcifs/smb/SID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 14

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "S-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, p0, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    and-int/lit16 v1, v1, 0xff

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    const/4 v3, 0x0

    aget-byte v4, v1, v3

    if-nez v4, :cond_46

    const/4 v4, 0x1

    aget-byte v1, v1, v4

    if-eqz v1, :cond_1e

    goto :goto_46

    :cond_1e
    const/4 v1, 0x5

    const-wide/16 v5, 0x0

    move-wide v7, v5

    :goto_22
    if-gt v1, v4, :cond_35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6f

    :cond_35
    iget-object v9, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    aget-byte v9, v9, v1

    int-to-long v9, v9

    const-wide/16 v11, 0xff

    and-long/2addr v9, v11

    long-to-int v11, v5

    shl-long/2addr v9, v11

    add-long/2addr v7, v9

    const-wide/16 v9, 0x8

    add-long/2addr v5, v9

    add-int/lit8 v1, v1, -0x1

    goto :goto_22

    :cond_46
    :goto_46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "0x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    const/4 v4, 0x6

    invoke-static {v0, v3, v4}, Ljcifs/util/Hexdump;->toHexString([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6f
    iget-byte v1, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    if-lt v3, v1, :cond_74

    return-object v0

    :cond_74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    aget v0, v0, v3

    int-to-long v4, v0

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_6f
.end method
