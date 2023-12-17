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

    .line 1
    invoke-static {}, Ljcifs/Config;->getLocalHost()Ljava/net/InetAddress;

    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Ljcifs/smb/SmbConstants;->LADDR:Ljava/net/InetAddress;

    .line 7
    const-string v0, "jcifs.smb.client.lport"

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    .line 13
    move-result v0

    .line 14
    sput v0, Ljcifs/smb/SmbConstants;->LPORT:I

    .line 16
    const-string v0, "jcifs.smb.client.maxMpxCount"

    .line 18
    const/16 v2, 0xa

    .line 20
    invoke-static {v0, v2}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    .line 23
    move-result v0

    .line 24
    sput v0, Ljcifs/smb/SmbConstants;->MAX_MPX_COUNT:I

    .line 26
    const-string v0, "jcifs.smb.client.snd_buf_size"

    .line 28
    const/16 v2, 0x4104

    .line 30
    invoke-static {v0, v2}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    .line 33
    move-result v0

    .line 34
    sput v0, Ljcifs/smb/SmbConstants;->SND_BUF_SIZE:I

    .line 36
    const-string v0, "jcifs.smb.client.rcv_buf_size"

    .line 38
    const v2, 0xec00

    .line 41
    invoke-static {v0, v2}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    .line 44
    move-result v0

    .line 45
    sput v0, Ljcifs/smb/SmbConstants;->RCV_BUF_SIZE:I

    .line 47
    const-string v0, "jcifs.smb.client.useUnicode"

    .line 49
    const/4 v2, 0x1

    .line 50
    invoke-static {v0, v2}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    .line 53
    move-result v3

    .line 54
    sput-boolean v3, Ljcifs/smb/SmbConstants;->USE_UNICODE:Z

    .line 56
    invoke-static {v0, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    .line 59
    move-result v0

    .line 60
    sput-boolean v0, Ljcifs/smb/SmbConstants;->FORCE_UNICODE:Z

    .line 62
    const-string v0, "jcifs.smb.client.useNtStatus"

    .line 64
    invoke-static {v0, v2}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    .line 67
    move-result v0

    .line 68
    sput-boolean v0, Ljcifs/smb/SmbConstants;->USE_NTSTATUS:Z

    .line 70
    const-string v4, "jcifs.smb.client.signingPreferred"

    .line 72
    invoke-static {v4, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    .line 75
    move-result v4

    .line 76
    sput-boolean v4, Ljcifs/smb/SmbConstants;->SIGNPREF:Z

    .line 78
    const-string v5, "jcifs.smb.client.useNTSmbs"

    .line 80
    invoke-static {v5, v2}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    .line 83
    move-result v5

    .line 84
    sput-boolean v5, Ljcifs/smb/SmbConstants;->USE_NTSMBS:Z

    .line 86
    const-string v6, "jcifs.smb.client.useExtendedSecurity"

    .line 88
    invoke-static {v6, v2}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    .line 91
    move-result v6

    .line 92
    sput-boolean v6, Ljcifs/smb/SmbConstants;->USE_EXTSEC:Z

    .line 94
    const-string v7, "jcifs.netbios.hostname"

    .line 96
    const/4 v8, 0x0

    .line 97
    invoke-static {v7, v8}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    move-result-object v7

    .line 101
    sput-object v7, Ljcifs/smb/SmbConstants;->NETBIOS_HOSTNAME:Ljava/lang/String;

    .line 103
    const-string v7, "jcifs.smb.lmCompatibility"

    .line 105
    const/4 v9, 0x3

    .line 106
    invoke-static {v7, v9}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    .line 109
    move-result v7

    .line 110
    sput v7, Ljcifs/smb/SmbConstants;->LM_COMPATIBILITY:I

    .line 112
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 115
    move-result-wide v10

    .line 116
    const-wide/high16 v12, 0x40f0000000000000L  # 65536.0

    .line 118
    mul-double/2addr v10, v12

    .line 119
    double-to-int v7, v10

    .line 120
    sput v7, Ljcifs/smb/SmbConstants;->PID:I

    .line 122
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 125
    move-result-object v7

    .line 126
    sput-object v7, Ljcifs/smb/SmbConstants;->TZ:Ljava/util/TimeZone;

    .line 128
    const-string v7, "jcifs.smb.client.useBatching"

    .line 130
    invoke-static {v7, v2}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    .line 133
    move-result v2

    .line 134
    sput-boolean v2, Ljcifs/smb/SmbConstants;->USE_BATCHING:Z

    .line 136
    sget-object v2, Ljcifs/Config;->DEFAULT_OEM_ENCODING:Ljava/lang/String;

    .line 138
    const-string v7, "jcifs.encoding"

    .line 140
    invoke-static {v7, v2}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    move-result-object v2

    .line 144
    sput-object v2, Ljcifs/smb/SmbConstants;->OEM_ENCODING:Ljava/lang/String;

    .line 146
    if-eqz v6, :cond_96

    .line 148
    const/16 v2, 0x800

    .line 150
    goto :goto_97

    .line 151
    :cond_96
    move v2, v1

    .line 152
    :goto_97
    or-int/2addr v2, v9

    .line 153
    const/4 v6, 0x4

    .line 154
    if-eqz v4, :cond_9d

    .line 156
    move v4, v6

    .line 157
    goto :goto_9e

    .line 158
    :cond_9d
    move v4, v1

    .line 159
    :goto_9e
    or-int/2addr v2, v4

    .line 160
    if-eqz v0, :cond_a4

    .line 162
    const/16 v4, 0x4000

    .line 164
    goto :goto_a5

    .line 165
    :cond_a4
    move v4, v1

    .line 166
    :goto_a5
    or-int/2addr v2, v4

    .line 167
    if-eqz v3, :cond_ac

    .line 169
    const v4, 0x8000

    .line 172
    goto :goto_ad

    .line 173
    :cond_ac
    move v4, v1

    .line 174
    :goto_ad
    or-int/2addr v2, v4

    .line 175
    sput v2, Ljcifs/smb/SmbConstants;->DEFAULT_FLAGS2:I

    .line 177
    if-eqz v5, :cond_b5

    .line 179
    const/16 v4, 0x10

    .line 181
    goto :goto_b6

    .line 182
    :cond_b5
    move v4, v1

    .line 183
    :goto_b6
    if-eqz v0, :cond_bb

    .line 185
    const/16 v0, 0x40

    .line 187
    goto :goto_bc

    .line 188
    :cond_bb
    move v0, v1

    .line 189
    :goto_bc
    or-int/2addr v0, v4

    .line 190
    if-eqz v3, :cond_c0

    .line 192
    goto :goto_c1

    .line 193
    :cond_c0
    move v6, v1

    .line 194
    :goto_c1
    or-int/2addr v0, v6

    .line 195
    or-int/lit16 v0, v0, 0x1000

    .line 197
    sput v0, Ljcifs/smb/SmbConstants;->DEFAULT_CAPABILITIES:I

    .line 199
    const-string v3, "jcifs.smb.client.flags2"

    .line 201
    invoke-static {v3, v2}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    .line 204
    move-result v2

    .line 205
    sput v2, Ljcifs/smb/SmbConstants;->FLAGS2:I

    .line 207
    const-string v2, "jcifs.smb.client.capabilities"

    .line 209
    invoke-static {v2, v0}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    .line 212
    move-result v0

    .line 213
    sput v0, Ljcifs/smb/SmbConstants;->CAPABILITIES:I

    .line 215
    const-string v0, "jcifs.smb.client.tcpNoDelay"

    .line 217
    invoke-static {v0, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    .line 220
    move-result v0

    .line 221
    sput-boolean v0, Ljcifs/smb/SmbConstants;->TCP_NODELAY:Z

    .line 223
    const/16 v0, 0x7530

    .line 225
    const-string v2, "jcifs.smb.client.responseTimeout"

    .line 227
    invoke-static {v2, v0}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    .line 230
    move-result v0

    .line 231
    sput v0, Ljcifs/smb/SmbConstants;->RESPONSE_TIMEOUT:I

    .line 233
    new-instance v0, Ljava/util/LinkedList;

    .line 235
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 238
    sput-object v0, Ljcifs/smb/SmbConstants;->CONNECTIONS:Ljava/util/LinkedList;

    .line 240
    const/16 v0, 0xfa

    .line 242
    const-string v2, "jcifs.smb.client.ssnLimit"

    .line 244
    invoke-static {v2, v0}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    .line 247
    move-result v0

    .line 248
    sput v0, Ljcifs/smb/SmbConstants;->SSN_LIMIT:I

    .line 250
    const-string v0, "jcifs.smb.client.soTimeout"

    .line 252
    const v2, 0x88b8

    .line 255
    invoke-static {v0, v2}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    .line 258
    move-result v0

    .line 259
    sput v0, Ljcifs/smb/SmbConstants;->SO_TIMEOUT:I

    .line 261
    const-string v0, "jcifs.smb.client.connTimeout"

    .line 263
    invoke-static {v0, v2}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    .line 266
    move-result v0

    .line 267
    sput v0, Ljcifs/smb/SmbConstants;->CONN_TIMEOUT:I

    .line 269
    const-string v0, "os.name"

    .line 271
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 274
    move-result-object v0

    .line 275
    const-string v2, "jcifs.smb.client.nativeOs"

    .line 277
    invoke-static {v2, v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 280
    move-result-object v0

    .line 281
    sput-object v0, Ljcifs/smb/SmbConstants;->NATIVE_OS:Ljava/lang/String;

    .line 283
    const-string v0, "jcifs.smb.client.nativeLanMan"

    .line 285
    const-string v2, "jCIFS"

    .line 287
    invoke-static {v0, v2}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 290
    move-result-object v0

    .line 291
    sput-object v0, Ljcifs/smb/SmbConstants;->NATIVE_LANMAN:Ljava/lang/String;

    .line 293
    new-instance v0, Ljcifs/smb/SmbTransport;

    .line 295
    invoke-direct {v0, v8, v1, v8, v1}, Ljcifs/smb/SmbTransport;-><init>(Ljcifs/UniAddress;ILjava/net/InetAddress;I)V

    .line 298
    sput-object v0, Ljcifs/smb/SmbConstants;->NULL_TRANSPORT:Ljcifs/smb/SmbTransport;

    .line 300
    return-void
.end method
