.class interface abstract Ljcifs/smb/SmbConstants;
.super Ljava/lang/Object;
.source "SmbConstants.java"


# static fields
.field public static final ATTR_ARCHIVE:I = 0x20

.field public static final ATTR_COMPRESSED:I = 0x800

.field public static final ATTR_DIRECTORY:I = 0x10

.field public static final ATTR_HIDDEN:I = 0x2

.field public static final ATTR_NORMAL:I = 0x80

.field public static final ATTR_READONLY:I = 0x1

.field public static final ATTR_SYSTEM:I = 0x4

.field public static final ATTR_TEMPORARY:I = 0x100

.field public static final ATTR_VOLUME:I = 0x8

.field public static final CAPABILITIES:I

.field public static final CAP_DFS:I = 0x1000

.field public static final CAP_EXTENDED_SECURITY:I = -0x80000000

.field public static final CAP_LARGE_FILES:I = 0x8

.field public static final CAP_LEVEL_II_OPLOCKS:I = 0x80

.field public static final CAP_LOCK_AND_READ:I = 0x100

.field public static final CAP_MPX_MODE:I = 0x2

.field public static final CAP_NONE:I = 0x0

.field public static final CAP_NT_FIND:I = 0x200

.field public static final CAP_NT_SMBS:I = 0x10

.field public static final CAP_RAW_MODE:I = 0x1

.field public static final CAP_RPC_REMOTE_APIS:I = 0x20

.field public static final CAP_STATUS32:I = 0x40

.field public static final CAP_UNICODE:I = 0x4

.field public static final CMD_OFFSET:I = 0x4

.field public static final CONNECTIONS:Ljava/util/LinkedList;

.field public static final CONN_TIMEOUT:I

.field public static final DEFAULT_CAPABILITIES:I

.field public static final DEFAULT_CONN_TIMEOUT:I = 0x88b8

.field public static final DEFAULT_FLAGS2:I

.field public static final DEFAULT_MAX_MPX_COUNT:I = 0xa

.field public static final DEFAULT_PORT:I = 0x1bd

.field public static final DEFAULT_RCV_BUF_SIZE:I = 0xec00

.field public static final DEFAULT_RESPONSE_TIMEOUT:I = 0x7530

.field public static final DEFAULT_SND_BUF_SIZE:I = 0x4104

.field public static final DEFAULT_SO_TIMEOUT:I = 0x88b8

.field public static final DEFAULT_SSN_LIMIT:I = 0xfa

.field public static final DELETE:I = 0x10000

.field public static final ERROR_CODE_OFFSET:I = 0x5

.field public static final FILE_APPEND_DATA:I = 0x4

.field public static final FILE_DELETE:I = 0x40

.field public static final FILE_EXECUTE:I = 0x20

.field public static final FILE_READ_ATTRIBUTES:I = 0x80

.field public static final FILE_READ_DATA:I = 0x1

.field public static final FILE_READ_EA:I = 0x8

.field public static final FILE_WRITE_ATTRIBUTES:I = 0x100

.field public static final FILE_WRITE_DATA:I = 0x2

.field public static final FILE_WRITE_EA:I = 0x10

.field public static final FLAGS2:I

.field public static final FLAGS2_EXTENDED_ATTRIBUTES:I = 0x2

.field public static final FLAGS2_EXTENDED_SECURITY_NEGOTIATION:I = 0x800

.field public static final FLAGS2_LONG_FILENAMES:I = 0x1

.field public static final FLAGS2_NONE:I = 0x0

.field public static final FLAGS2_PERMIT_READ_IF_EXECUTE_PERM:I = 0x2000

.field public static final FLAGS2_RESOLVE_PATHS_IN_DFS:I = 0x1000

.field public static final FLAGS2_SECURITY_SIGNATURES:I = 0x4

.field public static final FLAGS2_STATUS32:I = 0x4000

.field public static final FLAGS2_UNICODE:I = 0x8000

.field public static final FLAGS_COPY_SOURCE_MODE_ASCII:I = 0x8

.field public static final FLAGS_COPY_TARGET_MODE_ASCII:I = 0x4

.field public static final FLAGS_LOCK_AND_READ_WRITE_AND_UNLOCK:I = 0x1

.field public static final FLAGS_NONE:I = 0x0

.field public static final FLAGS_NOTIFY_OF_MODIFY_ACTION:I = 0x40

.field public static final FLAGS_OFFSET:I = 0x9

.field public static final FLAGS_OPLOCK_REQUESTED_OR_GRANTED:I = 0x20

.field public static final FLAGS_PATH_NAMES_CANONICALIZED:I = 0x10

.field public static final FLAGS_PATH_NAMES_CASELESS:I = 0x8

.field public static final FLAGS_RECEIVE_BUFFER_POSTED:I = 0x2

.field public static final FLAGS_RESPONSE:I = 0x80

.field public static final FLAGS_TARGET_MUST_BE_DIRECTORY:I = 0x2

.field public static final FLAGS_TARGET_MUST_BE_FILE:I = 0x1

.field public static final FLAGS_TREE_COPY:I = 0x20

.field public static final FLAGS_VERIFY_ALL_WRITES:I = 0x10

.field public static final FORCE_UNICODE:Z

.field public static final GENERIC_ALL:I = 0x10000000

.field public static final GENERIC_EXECUTE:I = 0x20000000

.field public static final GENERIC_READ:I = -0x80000000

.field public static final GENERIC_WRITE:I = 0x40000000

.field public static final HEADER_LENGTH:I = 0x20

.field public static final LADDR:Ljava/net/InetAddress;

.field public static final LM_COMPATIBILITY:I

.field public static final LPORT:I

.field public static final MAX_MPX_COUNT:I

.field public static final MILLISECONDS_BETWEEN_1970_AND_1601:J = 0xa9730b66800L

.field public static final NATIVE_LANMAN:Ljava/lang/String;

.field public static final NATIVE_OS:Ljava/lang/String;

.field public static final NETBIOS_HOSTNAME:Ljava/lang/String;

.field public static final NULL_TRANSPORT:Ljcifs/smb/SmbTransport;

.field public static final OEM_ENCODING:Ljava/lang/String;

.field public static final OPEN_FUNCTION_FAIL_IF_EXISTS:I = 0x0

.field public static final OPEN_FUNCTION_OVERWRITE_IF_EXISTS:I = 0x20

.field public static final PID:I

.field public static final RCV_BUF_SIZE:I

.field public static final READ_CONTROL:I = 0x20000

.field public static final RESPONSE_TIMEOUT:I

.field public static final SECURITY_SHARE:I = 0x0

.field public static final SECURITY_USER:I = 0x1

.field public static final SIGNATURE_OFFSET:I = 0xe

.field public static final SIGNPREF:Z

.field public static final SND_BUF_SIZE:I

.field public static final SO_TIMEOUT:I

.field public static final SSN_LIMIT:I

.field public static final SYNCHRONIZE:I = 0x100000

.field public static final TCP_NODELAY:Z

.field public static final TID_OFFSET:I = 0x18

.field public static final TZ:Ljava/util/TimeZone;

.field public static final UNI_ENCODING:Ljava/lang/String; = "UTF-16LE"

.field public static final USE_BATCHING:Z

.field public static final USE_EXTSEC:Z

.field public static final USE_NTSMBS:Z

.field public static final USE_NTSTATUS:Z

.field public static final USE_UNICODE:Z

.field public static final VC_NUMBER:I = 0x1

.field public static final WRITE_DAC:I = 0x40000

.field public static final WRITE_OWNER:I = 0x80000


# direct methods
.method public static constructor <clinit>()V
    .registers 14

    invoke-static {}, Ljcifs/Config;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Ljcifs/smb/SmbConstants;->LADDR:Ljava/net/InetAddress;

    const-string v0, "jcifs.smb.client.lport"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbConstants;->LPORT:I

    const-string v0, "jcifs.smb.client.maxMpxCount"

    const/16 v2, 0xa

    invoke-static {v0, v2}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbConstants;->MAX_MPX_COUNT:I

    const-string v0, "jcifs.smb.client.snd_buf_size"

    const/16 v2, 0x4104

    invoke-static {v0, v2}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbConstants;->SND_BUF_SIZE:I

    const-string v0, "jcifs.smb.client.rcv_buf_size"

    const v2, 0xec00

    invoke-static {v0, v2}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbConstants;->RCV_BUF_SIZE:I

    const-string v0, "jcifs.smb.client.useUnicode"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Ljcifs/smb/SmbConstants;->USE_UNICODE:Z

    invoke-static {v0, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/SmbConstants;->FORCE_UNICODE:Z

    const-string v0, "jcifs.smb.client.useNtStatus"

    invoke-static {v0, v2}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/SmbConstants;->USE_NTSTATUS:Z

    const-string v4, "jcifs.smb.client.signingPreferred"

    invoke-static {v4, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Ljcifs/smb/SmbConstants;->SIGNPREF:Z

    const-string v5, "jcifs.smb.client.useNTSmbs"

    invoke-static {v5, v2}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Ljcifs/smb/SmbConstants;->USE_NTSMBS:Z

    const-string v6, "jcifs.smb.client.useExtendedSecurity"

    invoke-static {v6, v2}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    sput-boolean v6, Ljcifs/smb/SmbConstants;->USE_EXTSEC:Z

    const-string v7, "jcifs.netbios.hostname"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Ljcifs/smb/SmbConstants;->NETBIOS_HOSTNAME:Ljava/lang/String;

    const-string v7, "jcifs.smb.lmCompatibility"

    const/4 v9, 0x3

    invoke-static {v7, v9}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v7

    sput v7, Ljcifs/smb/SmbConstants;->LM_COMPATIBILITY:I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    const-wide/high16 v12, 0x40f0000000000000L  # 65536.0

    mul-double/2addr v10, v12

    double-to-int v7, v10

    sput v7, Ljcifs/smb/SmbConstants;->PID:I

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    sput-object v7, Ljcifs/smb/SmbConstants;->TZ:Ljava/util/TimeZone;

    const-string v7, "jcifs.smb.client.useBatching"

    invoke-static {v7, v2}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Ljcifs/smb/SmbConstants;->USE_BATCHING:Z

    sget-object v2, Ljcifs/Config;->DEFAULT_OEM_ENCODING:Ljava/lang/String;

    const-string v7, "jcifs.encoding"

    invoke-static {v7, v2}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Ljcifs/smb/SmbConstants;->OEM_ENCODING:Ljava/lang/String;

    if-eqz v6, :cond_96

    const/16 v2, 0x800

    goto :goto_97

    :cond_96
    move v2, v1

    :goto_97
    or-int/2addr v2, v9

    const/4 v6, 0x4

    if-eqz v4, :cond_9d

    move v4, v6

    goto :goto_9e

    :cond_9d
    move v4, v1

    :goto_9e
    or-int/2addr v2, v4

    if-eqz v0, :cond_a4

    const/16 v4, 0x4000

    goto :goto_a5

    :cond_a4
    move v4, v1

    :goto_a5
    or-int/2addr v2, v4

    if-eqz v3, :cond_ac

    const v4, 0x8000

    goto :goto_ad

    :cond_ac
    move v4, v1

    :goto_ad
    or-int/2addr v2, v4

    sput v2, Ljcifs/smb/SmbConstants;->DEFAULT_FLAGS2:I

    if-eqz v5, :cond_b5

    const/16 v4, 0x10

    goto :goto_b6

    :cond_b5
    move v4, v1

    :goto_b6
    if-eqz v0, :cond_bb

    const/16 v0, 0x40

    goto :goto_bc

    :cond_bb
    move v0, v1

    :goto_bc
    or-int/2addr v0, v4

    if-eqz v3, :cond_c0

    goto :goto_c1

    :cond_c0
    move v6, v1

    :goto_c1
    or-int/2addr v0, v6

    or-int/lit16 v0, v0, 0x1000

    sput v0, Ljcifs/smb/SmbConstants;->DEFAULT_CAPABILITIES:I

    const-string v3, "jcifs.smb.client.flags2"

    invoke-static {v3, v2}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Ljcifs/smb/SmbConstants;->FLAGS2:I

    const-string v2, "jcifs.smb.client.capabilities"

    invoke-static {v2, v0}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbConstants;->CAPABILITIES:I

    const-string v0, "jcifs.smb.client.tcpNoDelay"

    invoke-static {v0, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/SmbConstants;->TCP_NODELAY:Z

    const/16 v0, 0x7530

    const-string v2, "jcifs.smb.client.responseTimeout"

    invoke-static {v2, v0}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbConstants;->RESPONSE_TIMEOUT:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Ljcifs/smb/SmbConstants;->CONNECTIONS:Ljava/util/LinkedList;

    const/16 v0, 0xfa

    const-string v2, "jcifs.smb.client.ssnLimit"

    invoke-static {v2, v0}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbConstants;->SSN_LIMIT:I

    const-string v0, "jcifs.smb.client.soTimeout"

    const v2, 0x88b8

    invoke-static {v0, v2}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbConstants;->SO_TIMEOUT:I

    const-string v0, "jcifs.smb.client.connTimeout"

    invoke-static {v0, v2}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbConstants;->CONN_TIMEOUT:I

    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "jcifs.smb.client.nativeOs"

    invoke-static {v2, v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/SmbConstants;->NATIVE_OS:Ljava/lang/String;

    const-string v0, "jcifs.smb.client.nativeLanMan"

    const-string v2, "jCIFS"

    invoke-static {v0, v2}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/SmbConstants;->NATIVE_LANMAN:Ljava/lang/String;

    new-instance v0, Ljcifs/smb/SmbTransport;

    invoke-direct {v0, v8, v1, v8, v1}, Ljcifs/smb/SmbTransport;-><init>(Ljcifs/UniAddress;ILjava/net/InetAddress;I)V

    sput-object v0, Ljcifs/smb/SmbConstants;->NULL_TRANSPORT:Ljcifs/smb/SmbTransport;

    return-void
.end method
