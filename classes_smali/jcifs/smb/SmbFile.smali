.class public Ljcifs/smb/SmbFile;
.super Ljava/net/URLConnection;
.source "SmbFile.java"

# interfaces
.implements Ljcifs/smb/SmbConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/smb/SmbFile$WriterThread;
    }
.end annotation


# static fields
.field public static final ATTR_ARCHIVE:I = 0x20

.field public static final ATTR_COMPRESSED:I = 0x800

.field public static final ATTR_DIRECTORY:I = 0x10

.field public static final ATTR_GET_MASK:I = 0x7fff

.field public static final ATTR_HIDDEN:I = 0x2

.field public static final ATTR_NORMAL:I = 0x80

.field public static final ATTR_READONLY:I = 0x1

.field public static final ATTR_SET_MASK:I = 0x30a7

.field public static final ATTR_SYSTEM:I = 0x4

.field public static final ATTR_TEMPORARY:I = 0x100

.field public static final ATTR_VOLUME:I = 0x8

.field public static final DEFAULT_ATTR_EXPIRATION_PERIOD:I = 0x1388

.field public static final FILE_NO_SHARE:I = 0x0

.field public static final FILE_SHARE_DELETE:I = 0x4

.field public static final FILE_SHARE_READ:I = 0x1

.field public static final FILE_SHARE_WRITE:I = 0x2

.field public static final HASH_DOT:I = 0x2e

.field public static final HASH_DOT_DOT:I = 0x5c0

.field public static final O_APPEND:I = 0x4

.field public static final O_CREAT:I = 0x10

.field public static final O_EXCL:I = 0x20

.field public static final O_RDONLY:I = 0x1

.field public static final O_RDWR:I = 0x3

.field public static final O_TRUNC:I = 0x40

.field public static final O_WRONLY:I = 0x2

.field public static final TYPE_COMM:I = 0x40

.field public static final TYPE_FILESYSTEM:I = 0x1

.field public static final TYPE_NAMED_PIPE:I = 0x10

.field public static final TYPE_PRINTER:I = 0x20

.field public static final TYPE_SERVER:I = 0x4

.field public static final TYPE_SHARE:I = 0x8

.field public static final TYPE_WORKGROUP:I = 0x2

.field public static attrExpirationPeriod:J

.field public static dfs:Ljcifs/smb/Dfs;

.field public static ignoreCopyToException:Z

.field public static log:Ljcifs/util/LogStream;


# instance fields
.field public addressIndex:I

.field public addresses:[Ljcifs/UniAddress;

.field private attrExpiration:J

.field private attributes:I

.field public auth:Ljcifs/smb/NtlmPasswordAuthentication;

.field private blank_resp:Ljcifs/smb/SmbComBlankResponse;

.field private canon:Ljava/lang/String;

.field private createTime:J

.field private dfsReferral:Ljcifs/smb/DfsReferral;

.field public fid:I

.field private isExists:Z

.field private lastModified:J

.field public opened:Z

.field private share:Ljava/lang/String;

.field private shareAccess:I

.field private size:J

.field private sizeExpiration:J

.field public tree:Ljcifs/smb/SmbTree;

.field public tree_num:I

.field public type:I

.field public unc:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    :try_start_6
    sget v0, Ljcifs/Config;->socketCount:I
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_d
    const-wide/16 v0, 0x1388

    const-string v2, "jcifs.smb.client.attrExpirationPeriod"

    invoke-static {v2, v0, v1}, Ljcifs/Config;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    const/4 v0, 0x1

    const-string v1, "jcifs.smb.client.ignoreCopyToException"

    invoke-static {v1, v0}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/SmbFile;->ignoreCopyToException:Z

    new-instance v0, Ljcifs/smb/Dfs;

    invoke-direct {v0}, Ljcifs/smb/Dfs;-><init>()V

    sput-object v0, Ljcifs/smb/SmbFile;->dfs:Ljcifs/smb/Dfs;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/net/URL;

    sget-object v1, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjcifs/smb/NtlmPasswordAuthentication;)V
    .registers 7

    new-instance v0, Ljava/net/URL;

    sget-object v1, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0, p3}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    iput p2, p0, Ljcifs/smb/SmbFile;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/net/URL;

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    const/4 v3, 0x0

    invoke-direct {v1, v3, p1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {v0, v1, p2, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V
    .registers 8

    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/net/URL;

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    const/4 v3, 0x0

    invoke-direct {v1, v3, p1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {v0, v1, p2, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0, p3}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;I)V
    .registers 9

    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/net/URL;

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    const/4 v3, 0x0

    invoke-direct {v1, v3, p1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {v0, v1, p2, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0, p3}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    and-int/lit8 p1, p4, -0x8

    if-nez p1, :cond_17

    iput p4, p0, Ljcifs/smb/SmbFile;->shareAccess:I

    return-void

    :cond_17
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Illegal shareAccess parameter"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V
    .registers 6

    new-instance v0, Ljava/net/URL;

    sget-object v1, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0, p2}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;I)V
    .registers 7

    new-instance v0, Ljava/net/URL;

    sget-object v1, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0, p2}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    and-int/lit8 p1, p3, -0x8

    if-nez p1, :cond_12

    iput p3, p0, Ljcifs/smb/SmbFile;->shareAccess:I

    return-void

    :cond_12
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Illegal shareAccess parameter"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .registers 4

    new-instance v0, Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V
    .registers 4

    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    const/4 v0, 0x7

    iput v0, p0, Ljcifs/smb/SmbFile;->shareAccess:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/SmbFile;->blank_resp:Ljcifs/smb/SmbComBlankResponse;

    iput-object v0, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    iput-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    if-nez p2, :cond_18

    new-instance p2, Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;)V

    :cond_18
    iput-object p2, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljcifs/smb/SmbFile;Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isWorkgroup0()Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/net/URL;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "smb://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, p2, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    goto :goto_26

    :cond_1d
    new-instance v0, Ljava/net/URL;

    iget-object v1, p1, Ljava/net/URLConnection;->url:Ljava/net/URL;

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, p2, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    :goto_26
    iget-object p1, p1, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-direct {p0, v0, p1}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    return-void
.end method

.method public constructor <init>(Ljcifs/smb/SmbFile;Ljava/lang/String;I)V
    .registers 8

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isWorkgroup0()Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/net/URL;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "smb://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, p2, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    goto :goto_26

    :cond_1d
    new-instance v0, Ljava/net/URL;

    iget-object v1, p1, Ljava/net/URLConnection;->url:Ljava/net/URL;

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, p2, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    :goto_26
    iget-object p1, p1, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-direct {p0, v0, p1}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    and-int/lit8 p1, p3, -0x8

    if-nez p1, :cond_32

    iput p3, p0, Ljcifs/smb/SmbFile;->shareAccess:I

    return-void

    :cond_32
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Illegal shareAccess parameter"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljcifs/smb/SmbFile;Ljava/lang/String;IIJJJ)V
    .registers 16

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isWorkgroup0()Z

    move-result v0

    const-string v1, "/"

    if-eqz v0, :cond_22

    new-instance v0, Ljava/net/URL;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "smb://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v2, v1, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    goto :goto_40

    :cond_22
    new-instance v0, Ljava/net/URL;

    iget-object v2, p1, Ljava/net/URLConnection;->url:Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit8 v4, p4, 0x10

    if-lez v4, :cond_34

    goto :goto_36

    :cond_34
    const-string v1, ""

    :goto_36
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    :goto_40
    invoke-direct {p0, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;)V

    iget-object v0, p1, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iput-object v0, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v0, p1, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-eqz v0, :cond_53

    iget-object v0, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iput-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, p1, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    iput-object v0, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    :cond_53
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_66

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_66
    iget-object v0, p1, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    const-string v2, "\\"

    if-nez v0, :cond_6f

    iput-object v2, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    goto :goto_a3

    :cond_6f
    iget-object v0, p1, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x5c

    if-eqz v0, :cond_8c

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    goto :goto_a3

    :cond_8c
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object p1, p1, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    :goto_a3
    iput p3, p0, Ljcifs/smb/SmbFile;->type:I

    iput p4, p0, Ljcifs/smb/SmbFile;->attributes:I

    iput-wide p5, p0, Ljcifs/smb/SmbFile;->createTime:J

    iput-wide p7, p0, Ljcifs/smb/SmbFile;->lastModified:J

    iput-wide p9, p0, Ljcifs/smb/SmbFile;->size:J

    iput-boolean v1, p0, Ljcifs/smb/SmbFile;->isExists:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sget-wide p3, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr p1, p3

    iput-wide p1, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    iput-wide p1, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    return-void
.end method

.method private blank_resp()Ljcifs/smb/SmbComBlankResponse;
    .registers 2

    iget-object v0, p0, Ljcifs/smb/SmbFile;->blank_resp:Ljcifs/smb/SmbComBlankResponse;

    if-nez v0, :cond_b

    new-instance v0, Ljcifs/smb/SmbComBlankResponse;

    invoke-direct {v0}, Ljcifs/smb/SmbComBlankResponse;-><init>()V

    iput-object v0, p0, Ljcifs/smb/SmbFile;->blank_resp:Ljcifs/smb/SmbComBlankResponse;

    :cond_b
    iget-object v0, p0, Ljcifs/smb/SmbFile;->blank_resp:Ljcifs/smb/SmbComBlankResponse;

    return-object v0
.end method

.method private processAces([Ljcifs/smb/ACE;Z)V
    .registers 8

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServerWithDfs()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_29

    array-length p2, p1

    new-array v2, p2, [Ljcifs/smb/SID;

    move v3, v1

    :goto_b
    array-length v4, p1

    if-lt v3, v4, :cond_20

    :goto_e
    if-lt v1, p2, :cond_11

    goto :goto_2c

    :cond_11
    sub-int p1, p2, v1

    const/16 v3, 0x40

    if-le p1, v3, :cond_18

    move p1, v3

    :cond_18
    iget-object v3, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-static {v0, v3, v2, v1, p1}, Ljcifs/smb/SID;->resolveSids(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;II)V

    add-int/lit8 v1, v1, 0x40

    goto :goto_e

    :cond_20
    aget-object v4, p1, v3

    iget-object v4, v4, Ljcifs/smb/ACE;->sid:Ljcifs/smb/SID;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_29
    :goto_29
    array-length p2, p1

    if-lt v1, p2, :cond_2d

    :goto_2c
    return-void

    :cond_2d
    aget-object p2, p1, v1

    iget-object p2, p2, Ljcifs/smb/ACE;->sid:Ljcifs/smb/SID;

    iput-object v0, p2, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    iget-object v2, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iput-object v2, p2, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    add-int/lit8 v1, v1, 0x1

    goto :goto_29
.end method

.method private queryFSInformation(I)J
    .registers 7

    new-instance v0, Ljcifs/smb/Trans2QueryFSInformationResponse;

    invoke-direct {v0, p1}, Ljcifs/smb/Trans2QueryFSInformationResponse;-><init>(I)V

    new-instance v1, Ljcifs/smb/Trans2QueryFSInformation;

    invoke-direct {v1, p1}, Ljcifs/smb/Trans2QueryFSInformation;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    iget p1, p0, Ljcifs/smb/SmbFile;->type:I

    const/16 v1, 0x8

    if-ne p1, v1, :cond_24

    iget-object p1, v0, Ljcifs/smb/Trans2QueryFSInformationResponse;->info:Ljcifs/smb/AllocInfo;

    invoke-interface {p1}, Ljcifs/smb/AllocInfo;->getCapacity()J

    move-result-wide v1

    iput-wide v1, p0, Ljcifs/smb/SmbFile;->size:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    :cond_24
    iget-object p1, v0, Ljcifs/smb/Trans2QueryFSInformationResponse;->info:Ljcifs/smb/AllocInfo;

    invoke-interface {p1}, Ljcifs/smb/AllocInfo;->getFree()J

    move-result-wide v0

    return-wide v0
.end method

.method public static queryLookup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_7
    array-length v3, p0

    if-lt v0, v3, :cond_25

    if-le v1, v2, :cond_23

    new-instance v0, Ljava/lang/String;

    sub-int v3, v1, v2

    invoke-direct {v0, p0, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_23

    add-int/lit8 v1, v1, 0x1

    new-instance p1, Ljava/lang/String;

    array-length v0, p0

    sub-int/2addr v0, v1

    invoke-direct {p1, p0, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    :cond_23
    const/4 p0, 0x0

    return-object p0

    :cond_25
    aget-char v3, p0, v0

    const/16 v4, 0x26

    if-ne v3, v4, :cond_46

    if-le v1, v2, :cond_43

    new-instance v3, Ljava/lang/String;

    sub-int v4, v1, v2

    invoke-direct {v3, p0, v2, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    add-int/lit8 v1, v1, 0x1

    new-instance p1, Ljava/lang/String;

    sub-int/2addr v0, v1

    invoke-direct {p1, p0, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    :cond_43
    add-int/lit8 v2, v0, 0x1

    goto :goto_4b

    :cond_46
    const/16 v4, 0x3d

    if-ne v3, v4, :cond_4b

    move v1, v0

    :cond_4b
    :goto_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method


# virtual methods
.method public canRead()Z
    .registers 3

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    move-result v0

    return v0
.end method

.method public canWrite()Z
    .registers 4

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x10

    if-ne v0, v2, :cond_a

    return v1

    :cond_a
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/2addr v0, v1

    if-nez v0, :cond_16

    return v1

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .registers 3

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbFile;->close(J)V

    return-void
.end method

.method public close(IJ)V
    .registers 7

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_18

    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "close: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_18
    new-instance v0, Ljcifs/smb/SmbComClose;

    invoke-direct {v0, p1, p2, p3}, Ljcifs/smb/SmbComClose;-><init>(IJ)V

    invoke-direct {p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    return-void
.end method

.method public close(J)V
    .registers 4

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isOpen()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget v0, p0, Ljcifs/smb/SmbFile;->fid:I

    invoke-virtual {p0, v0, p1, p2}, Ljcifs/smb/SmbFile;->close(IJ)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ljcifs/smb/SmbFile;->opened:Z

    return-void
.end method

.method public connect()V
    .registers 5

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getFirstAddress()Ljcifs/UniAddress;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "firstAddress: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljcifs/UniAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_25
    :goto_25
    :try_start_25
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->doConnect()V
    :try_end_28
    .catch Ljcifs/smb/SmbAuthException; {:try_start_25 .. :try_end_28} :catch_3c
    .catch Ljcifs/smb/SmbException; {:try_start_25 .. :try_end_28} :catch_29

    return-void

    :catch_29
    move-exception v0

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getNextAddress()Ljcifs/UniAddress;

    move-result-object v1

    if-eqz v1, :cond_3b

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_25

    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_25

    :cond_3b
    throw v0

    :catch_3c
    move-exception v0

    throw v0
.end method

.method public connect0()V
    .registers 4

    const-string v0, "Failed to connect to server"

    :try_start_2
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect()V
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_5} :catch_f
    .catch Ljcifs/smb/SmbException; {:try_start_2 .. :try_end_5} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v1

    new-instance v2, Ljcifs/smb/SmbException;

    invoke-direct {v2, v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_d
    move-exception v0

    throw v0

    :catch_f
    move-exception v1

    new-instance v2, Ljcifs/smb/SmbException;

    invoke-direct {v2, v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public copyTo(Ljcifs/smb/SmbFile;)V
    .registers 16

    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-eqz v0, :cond_a7

    iget-object v0, p1, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-eqz v0, :cond_a7

    new-instance v6, Ljcifs/smb/SmbComReadAndX;

    invoke-direct {v6}, Ljcifs/smb/SmbComReadAndX;-><init>()V

    new-instance v7, Ljcifs/smb/SmbComReadAndXResponse;

    invoke-direct {v7}, Ljcifs/smb/SmbComReadAndXResponse;-><init>()V

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect0()V

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->connect0()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->resolveDfs(Ljcifs/smb/ServerMessageBlock;)V

    :try_start_1c
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v0

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/UniAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v8, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v11, p1, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p1, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-virtual/range {v8 .. v13}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_46

    goto :goto_4e

    :cond_46
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Source and destination paths overlap."

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4e
    .catch Ljava/net/UnknownHostException; {:try_start_1c .. :try_end_4e} :catch_4e

    :catch_4e
    :cond_4e
    :goto_4e
    new-instance v8, Ljcifs/smb/SmbFile$WriterThread;

    invoke-direct {v8, p0}, Ljcifs/smb/SmbFile$WriterThread;-><init>(Ljcifs/smb/SmbFile;)V

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    iget-object v1, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v1, v1, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v1, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v2, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v2, v2, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v2, v2, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget v3, v1, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    iget v4, v2, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    if-ge v3, v4, :cond_6f

    iput v3, v2, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    goto :goto_71

    :cond_6f
    iput v4, v1, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    :goto_71
    iget v2, v1, Ljcifs/smb/SmbTransport;->rcv_buf_size:I

    add-int/lit8 v2, v2, -0x46

    iget v1, v1, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    add-int/lit8 v1, v1, -0x46

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v1, 0x2

    new-array v2, v1, [I

    aput v4, v2, v0

    const/4 v0, 0x0

    aput v1, v2, v0

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [[B

    move-object v1, p0

    move-object v2, p1

    move-object v5, v8

    :try_start_91
    invoke-virtual/range {v1 .. v7}, Ljcifs/smb/SmbFile;->copyTo0(Ljcifs/smb/SmbFile;[[BILjcifs/smb/SmbFile$WriterThread;Ljcifs/smb/SmbComReadAndX;Ljcifs/smb/SmbComReadAndXResponse;)V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_9d

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    invoke-virtual/range {v8 .. v13}, Ljcifs/smb/SmbFile$WriterThread;->write([BILjcifs/smb/SmbFile;J)V

    return-void

    :catchall_9d
    move-exception p1

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    invoke-virtual/range {v8 .. v13}, Ljcifs/smb/SmbFile$WriterThread;->write([BILjcifs/smb/SmbFile;J)V

    throw p1

    :cond_a7
    new-instance p1, Ljcifs/smb/SmbException;

    const-string v0, "Invalid operation for workgroups or servers"

    invoke-direct {p1, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public copyTo0(Ljcifs/smb/SmbFile;[[BILjcifs/smb/SmbFile$WriterThread;Ljcifs/smb/SmbComReadAndX;Ljcifs/smb/SmbComReadAndXResponse;)V
    .registers 33

    move-object/from16 v1, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v11, p6

    iget-wide v2, v1, Ljcifs/smb/SmbFile;->attrExpiration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x0

    if-gez v0, :cond_49

    const/16 v0, 0x11

    iput v0, v1, Ljcifs/smb/SmbFile;->attributes:I

    iput-wide v8, v1, Ljcifs/smb/SmbFile;->createTime:J

    iput-wide v8, v1, Ljcifs/smb/SmbFile;->lastModified:J

    iput-boolean v12, v1, Ljcifs/smb/SmbFile;->isExists:Z

    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x101

    invoke-virtual {v1, v0, v2}, Ljcifs/smb/SmbFile;->queryPath(Ljava/lang/String;I)Ljcifs/smb/Info;

    move-result-object v0

    invoke-interface {v0}, Ljcifs/smb/Info;->getAttributes()I

    move-result v2

    iput v2, v1, Ljcifs/smb/SmbFile;->attributes:I

    invoke-interface {v0}, Ljcifs/smb/Info;->getCreateTime()J

    move-result-wide v2

    iput-wide v2, v1, Ljcifs/smb/SmbFile;->createTime:J

    invoke-interface {v0}, Ljcifs/smb/Info;->getLastWriteTime()J

    move-result-wide v2

    iput-wide v2, v1, Ljcifs/smb/SmbFile;->lastModified:J

    iput-boolean v10, v1, Ljcifs/smb/SmbFile;->isExists:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Ljcifs/smb/SmbFile;->attrExpiration:J

    :cond_49
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_dc

    invoke-virtual/range {p1 .. p1}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v10, :cond_7d

    :try_start_59
    invoke-virtual/range {p1 .. p1}, Ljcifs/smb/SmbFile;->mkdir()V

    iget v3, v1, Ljcifs/smb/SmbFile;->attributes:I

    iget-wide v4, v1, Ljcifs/smb/SmbFile;->createTime:J

    iget-wide v6, v1, Ljcifs/smb/SmbFile;->lastModified:J

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Ljcifs/smb/SmbFile;->setPathInformation(IJJ)V
    :try_end_67
    .catch Ljcifs/smb/SmbException; {:try_start_59 .. :try_end_67} :catch_68

    goto :goto_7d

    :catch_68
    move-exception v0

    invoke-virtual {v0}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v2

    const v3, -0x3fffffde  # -2.000008f

    if-eq v2, v3, :cond_7d

    invoke-virtual {v0}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v2

    const v3, -0x3fffffcb  # -2.0000126f

    if-ne v2, v3, :cond_7c

    goto :goto_7d

    :cond_7c
    throw v0

    :cond_7d
    :goto_7d
    const-string v0, "*"

    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Ljcifs/smb/SmbFile;->listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;

    move-result-object v0

    :goto_86
    :try_start_86
    array-length v2, v0

    if-lt v12, v2, :cond_8b

    goto/16 :goto_198

    :cond_8b
    new-instance v16, Ljcifs/smb/SmbFile;

    aget-object v2, v0, v12

    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object v4

    aget-object v2, v0, v12

    iget v5, v2, Ljcifs/smb/SmbFile;->type:I

    iget v6, v2, Ljcifs/smb/SmbFile;->attributes:I

    iget-wide v7, v2, Ljcifs/smb/SmbFile;->createTime:J

    iget-wide v9, v2, Ljcifs/smb/SmbFile;->lastModified:J

    iget-wide v2, v2, Ljcifs/smb/SmbFile;->size:J

    move-wide/from16 v17, v2

    move-object/from16 v2, v16

    move-object/from16 v3, p1

    move/from16 v19, v12

    move-wide/from16 v11, v17

    invoke-direct/range {v2 .. v12}, Ljcifs/smb/SmbFile;-><init>(Ljcifs/smb/SmbFile;Ljava/lang/String;IIJJJ)V

    aget-object v2, v0, v19

    move-object/from16 v3, v16

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Ljcifs/smb/SmbFile;->copyTo0(Ljcifs/smb/SmbFile;[[BILjcifs/smb/SmbFile$WriterThread;Ljcifs/smb/SmbComReadAndX;Ljcifs/smb/SmbComReadAndXResponse;)V
    :try_end_bd
    .catch Ljava/net/UnknownHostException; {:try_start_86 .. :try_end_bd} :catch_cf
    .catch Ljava/net/MalformedURLException; {:try_start_86 .. :try_end_bd} :catch_c2

    add-int/lit8 v12, v19, 0x1

    move-object/from16 v11, p6

    goto :goto_86

    :catch_c2
    move-exception v0

    new-instance v2, Ljcifs/smb/SmbException;

    iget-object v3, v1, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_cf
    move-exception v0

    new-instance v2, Ljcifs/smb/SmbException;

    iget-object v3, v1, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_dc
    const/16 v0, 0x80

    :try_start_de
    invoke-virtual {v1, v10, v12, v0, v12}, Ljcifs/smb/SmbFile;->open(IIII)V
    :try_end_e1
    .catch Ljcifs/smb/SmbException; {:try_start_de .. :try_end_e1} :catch_186
    .catchall {:try_start_de .. :try_end_e1} :catchall_184

    const/16 v11, 0x102

    const/16 v6, 0x52

    :try_start_e5
    iget v0, v1, Ljcifs/smb/SmbFile;->attributes:I

    invoke-virtual {v13, v6, v11, v0, v12}, Ljcifs/smb/SmbFile;->open(IIII)V
    :try_end_ea
    .catch Ljcifs/smb/SmbAuthException; {:try_start_e5 .. :try_end_ea} :catch_eb
    .catch Ljcifs/smb/SmbException; {:try_start_e5 .. :try_end_ea} :catch_186
    .catchall {:try_start_e5 .. :try_end_ea} :catchall_184

    goto :goto_105

    :catch_eb
    move-exception v0

    :try_start_ec
    iget v2, v13, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_183

    and-int/lit8 v3, v2, -0x2

    const-wide/16 v4, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v2, p1

    move v10, v6

    move-wide/from16 v6, v16

    invoke-virtual/range {v2 .. v7}, Ljcifs/smb/SmbFile;->setPathInformation(IJJ)V

    iget v0, v1, Ljcifs/smb/SmbFile;->attributes:I

    invoke-virtual {v13, v10, v11, v0, v12}, Ljcifs/smb/SmbFile;->open(IIII)V

    :goto_105
    move-wide v10, v8

    move v0, v12

    :goto_107
    iget v2, v1, Ljcifs/smb/SmbFile;->fid:I

    move/from16 v6, p3

    invoke-virtual {v15, v2, v10, v11, v6}, Ljcifs/smb/SmbComReadAndX;->setParam(IJI)V

    aget-object v2, p2, v0

    move-object/from16 v7, p6

    invoke-virtual {v7, v2, v12}, Ljcifs/smb/SmbComReadAndXResponse;->setParam([BI)V

    invoke-virtual {v1, v15, v7}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    monitor-enter p4
    :try_end_119
    .catch Ljcifs/smb/SmbException; {:try_start_ec .. :try_end_119} :catch_186
    .catchall {:try_start_ec .. :try_end_119} :catchall_184

    :try_start_119
    iget-object v2, v14, Ljcifs/smb/SmbFile$WriterThread;->e:Ljcifs/smb/SmbException;

    if-nez v2, :cond_17f

    :goto_11d
    iget-boolean v2, v14, Ljcifs/smb/SmbFile$WriterThread;->ready:Z

    if-eqz v2, :cond_167

    iget-object v2, v14, Ljcifs/smb/SmbFile$WriterThread;->e:Ljcifs/smb/SmbException;

    if-nez v2, :cond_166

    iget v4, v7, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I

    if-gtz v4, :cond_14d

    monitor-exit p4
    :try_end_12a
    .catchall {:try_start_119 .. :try_end_12a} :catchall_180

    :try_start_12a
    new-instance v0, Ljcifs/smb/Trans2SetFileInformation;

    iget v2, v13, Ljcifs/smb/SmbFile;->fid:I

    iget v3, v1, Ljcifs/smb/SmbFile;->attributes:I

    iget-wide v4, v1, Ljcifs/smb/SmbFile;->createTime:J

    iget-wide v6, v1, Ljcifs/smb/SmbFile;->lastModified:J

    move-object/from16 v19, v0

    move/from16 v20, v2

    move/from16 v21, v3

    move-wide/from16 v22, v4

    move-wide/from16 v24, v6

    invoke-direct/range {v19 .. v25}, Ljcifs/smb/Trans2SetFileInformation;-><init>(IIJJ)V

    new-instance v2, Ljcifs/smb/Trans2SetFileInformationResponse;

    invoke-direct {v2}, Ljcifs/smb/Trans2SetFileInformationResponse;-><init>()V

    invoke-virtual {v13, v0, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    invoke-virtual {v13, v8, v9}, Ljcifs/smb/SmbFile;->close(J)V
    :try_end_14c
    .catch Ljcifs/smb/SmbException; {:try_start_12a .. :try_end_14c} :catch_186
    .catchall {:try_start_12a .. :try_end_14c} :catchall_184

    goto :goto_195

    :cond_14d
    :try_start_14d
    aget-object v3, p2, v0

    move-object/from16 v2, p4

    move-object/from16 v5, p1

    move-object v8, v7

    move-wide v6, v10

    invoke-virtual/range {v2 .. v7}, Ljcifs/smb/SmbFile$WriterThread;->write([BILjcifs/smb/SmbFile;J)V

    monitor-exit p4
    :try_end_159
    .catchall {:try_start_14d .. :try_end_159} :catchall_180

    const/4 v2, 0x1

    if-ne v0, v2, :cond_15e

    move v0, v12

    goto :goto_15f

    :cond_15e
    const/4 v0, 0x1

    :goto_15f
    :try_start_15f
    iget v2, v8, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I
    :try_end_161
    .catch Ljcifs/smb/SmbException; {:try_start_15f .. :try_end_161} :catch_186
    .catchall {:try_start_15f .. :try_end_161} :catchall_184

    int-to-long v2, v2

    add-long/2addr v10, v2

    const-wide/16 v8, 0x0

    goto :goto_107

    :cond_166
    :try_start_166
    throw v2
    :try_end_167
    .catchall {:try_start_166 .. :try_end_167} :catchall_180

    :cond_167
    move-object v8, v7

    :try_start_168
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->wait()V
    :try_end_16b
    .catch Ljava/lang/InterruptedException; {:try_start_168 .. :try_end_16b} :catch_171
    .catchall {:try_start_168 .. :try_end_16b} :catchall_180

    move/from16 v6, p3

    move-object v7, v8

    const-wide/16 v8, 0x0

    goto :goto_11d

    :catch_171
    move-exception v0

    move-object v2, v0

    :try_start_173
    new-instance v0, Ljcifs/smb/SmbException;

    iget-object v3, v13, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_17f
    throw v2

    :catchall_180
    move-exception v0

    monitor-exit p4
    :try_end_182
    .catchall {:try_start_173 .. :try_end_182} :catchall_180

    :try_start_182
    throw v0

    :cond_183
    throw v0
    :try_end_184
    .catch Ljcifs/smb/SmbException; {:try_start_182 .. :try_end_184} :catch_186
    .catchall {:try_start_182 .. :try_end_184} :catchall_184

    :catchall_184
    move-exception v0

    goto :goto_1c2

    :catch_186
    move-exception v0

    :try_start_187
    sget-boolean v2, Ljcifs/smb/SmbFile;->ignoreCopyToException:Z

    if-eqz v2, :cond_199

    sget v2, Ljcifs/util/LogStream;->level:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_195

    sget-object v2, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_195
    .catchall {:try_start_187 .. :try_end_195} :catchall_184

    :cond_195
    :goto_195
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->close()V

    :goto_198
    return-void

    :cond_199
    :try_start_199
    new-instance v2, Ljcifs/smb/SmbException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to copy file from ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] to ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljcifs/smb/SmbFile;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1c2
    .catchall {:try_start_199 .. :try_end_1c2} :catchall_184

    :goto_1c2
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->close()V

    throw v0
.end method

.method public createNewFile()V
    .registers 4

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    const/16 v0, 0x33

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1, v2}, Ljcifs/smb/SmbFile;->open0(IIII)I

    move-result v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Ljcifs/smb/SmbFile;->close(IJ)V

    return-void

    :cond_1a
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createTime()J
    .registers 3

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_11

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    iget-wide v0, p0, Ljcifs/smb/SmbFile;->createTime:J

    return-wide v0

    :cond_11
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public delete()V
    .registers 2

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    iget-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->delete(Ljava/lang/String;)V

    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .registers 11

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_ad

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    cmp-long v0, v2, v4

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-lez v0, :cond_49

    const/16 v0, 0x11

    iput v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    iput-wide v3, p0, Ljcifs/smb/SmbFile;->createTime:J

    iput-wide v3, p0, Ljcifs/smb/SmbFile;->lastModified:J

    iput-boolean v2, p0, Ljcifs/smb/SmbFile;->isExists:Z

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x101

    invoke-virtual {p0, v0, v5}, Ljcifs/smb/SmbFile;->queryPath(Ljava/lang/String;I)Ljcifs/smb/Info;

    move-result-object v0

    invoke-interface {v0}, Ljcifs/smb/Info;->getAttributes()I

    move-result v5

    iput v5, p0, Ljcifs/smb/SmbFile;->attributes:I

    invoke-interface {v0}, Ljcifs/smb/Info;->getCreateTime()J

    move-result-wide v5

    iput-wide v5, p0, Ljcifs/smb/SmbFile;->createTime:J

    invoke-interface {v0}, Ljcifs/smb/Info;->getLastWriteTime()J

    move-result-wide v5

    iput-wide v5, p0, Ljcifs/smb/SmbFile;->lastModified:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v7, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr v5, v7

    iput-wide v5, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    iput-boolean v1, p0, Ljcifs/smb/SmbFile;->isExists:Z

    :cond_49
    iget v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_51

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->setReadWrite()V

    :cond_51
    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_69

    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "delete: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_69
    iget v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9c

    :try_start_6f
    const-string v0, "*"

    const/16 v1, 0x16

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v1, v5, v5}, Ljcifs/smb/SmbFile;->listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;

    move-result-object v0

    :goto_78
    array-length v1, v0

    if-lt v2, v1, :cond_7c

    goto :goto_8e

    :cond_7c
    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->delete()V
    :try_end_81
    .catch Ljcifs/smb/SmbException; {:try_start_6f .. :try_end_81} :catch_84

    add-int/lit8 v2, v2, 0x1

    goto :goto_78

    :catch_84
    move-exception v0

    invoke-virtual {v0}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v1

    const v2, -0x3ffffff1  # -2.0000036f

    if-ne v1, v2, :cond_9b

    :goto_8e
    new-instance v0, Ljcifs/smb/SmbComDeleteDirectory;

    invoke-direct {v0, p1}, Ljcifs/smb/SmbComDeleteDirectory;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto :goto_a8

    :cond_9b
    throw v0

    :cond_9c
    new-instance v0, Ljcifs/smb/SmbComDelete;

    invoke-direct {v0, p1}, Ljcifs/smb/SmbComDelete;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    :goto_a8
    iput-wide v3, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    iput-wide v3, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    return-void

    :cond_ad
    new-instance p1, Ljcifs/smb/SmbException;

    const-string v0, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {p1, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public doConnect()V
    .registers 11

    const-string v0, "doConnect: "

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    const/4 v3, 0x0

    if-eqz v2, :cond_10

    iget-object v2, v2, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v2, v2, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    goto :goto_28

    :cond_10
    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    move-result v2

    invoke-static {v1, v2}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    move-result-object v2

    iget-object v4, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v2, v4}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object v4

    iget-object v5, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object v4

    iput-object v4, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    :goto_28
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServerWithDfs()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    sget-object v6, Ljcifs/smb/SmbFile;->dfs:Ljcifs/smb/Dfs;

    iget-object v7, v5, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    iget-object v8, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v6, v4, v7, v3, v8}, Ljcifs/smb/Dfs;->resolve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_3e

    move v6, v8

    goto :goto_3f

    :cond_3e
    move v6, v7

    :goto_3f
    iput-boolean v6, v5, Ljcifs/smb/SmbTree;->inDomainDfs:Z

    iget-object v5, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-boolean v6, v5, Ljcifs/smb/SmbTree;->inDomainDfs:Z

    const/4 v9, 0x2

    if-eqz v6, :cond_4a

    iput v9, v5, Ljcifs/smb/SmbTree;->connectionState:I

    :cond_4a
    :try_start_4a
    sget v5, Ljcifs/util/LogStream;->level:I

    const/4 v6, 0x3

    if-lt v5, v6, :cond_71

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v5, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_71
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    invoke-virtual {v0, v3, v3}, Ljcifs/smb/SmbTree;->treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_76
    .catch Ljcifs/smb/SmbAuthException; {:try_start_4a .. :try_end_76} :catch_77

    goto :goto_c0

    :catch_77
    move-exception v0

    iget-object v1, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-nez v1, :cond_8c

    sget-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->NULL:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v2, v0}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    invoke-virtual {v0, v3, v3}, Ljcifs/smb/SmbTree;->treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto :goto_c0

    :cond_8c
    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljcifs/smb/NtlmAuthenticator;->requestNtlmPasswordAuthentication(Ljava/lang/String;Ljcifs/smb/SmbAuthException;)Ljcifs/smb/NtlmPasswordAuthentication;

    move-result-object v1

    if-eqz v1, :cond_c1

    iput-object v1, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v2, v1}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    sget-object v1, Ljcifs/smb/SmbFile;->dfs:Ljcifs/smb/Dfs;

    iget-object v2, v0, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    iget-object v5, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v1, v4, v2, v3, v5}, Ljcifs/smb/Dfs;->resolve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;

    move-result-object v1

    if-eqz v1, :cond_b3

    move v7, v8

    :cond_b3
    iput-boolean v7, v0, Ljcifs/smb/SmbTree;->inDomainDfs:Z

    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-boolean v1, v0, Ljcifs/smb/SmbTree;->inDomainDfs:Z

    if-eqz v1, :cond_bd

    iput v9, v0, Ljcifs/smb/SmbTree;->connectionState:I

    :cond_bd
    invoke-virtual {v0, v3, v3}, Ljcifs/smb/SmbTree;->treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    :goto_c0
    return-void

    :cond_c1
    sget v1, Ljcifs/util/LogStream;->level:I

    if-lt v1, v8, :cond_d0

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->hasNextAddress()Z

    move-result v1

    if-eqz v1, :cond_d0

    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_d0
    throw v0
.end method

.method public doDfsRootEnum()[Ljcifs/smb/FileEntry;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ncacn_np:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljcifs/UniAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[\\PIPE\\netdfs]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-static {v0, v1}, Ljcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;

    move-result-object v0

    const/4 v1, 0x4

    :try_start_22
    new-instance v2, Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    iget v3, v2, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->retval:I

    if-nez v3, :cond_45

    invoke-virtual {v2}, Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;->getEntries()[Ljcifs/smb/FileEntry;

    move-result-object v2
    :try_end_36
    .catchall {:try_start_22 .. :try_end_36} :catchall_4e

    :try_start_36
    invoke-virtual {v0}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_44

    :catch_3a
    move-exception v0

    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v1, :cond_44

    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_44
    :goto_44
    return-object v2

    :cond_45
    :try_start_45
    new-instance v3, Ljcifs/smb/SmbException;

    iget v2, v2, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->retval:I

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v3
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_4e

    :catchall_4e
    move-exception v2

    :try_start_4f
    invoke-virtual {v0}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_5d

    :catch_53
    move-exception v0

    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v1, :cond_5d

    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_5d
    :goto_5d
    throw v2
.end method

.method public doEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V
    .registers 14

    if-eqz p6, :cond_10

    instance-of v0, p6, Ljcifs/smb/DosFileFilter;

    if-eqz v0, :cond_10

    move-object p4, p6

    check-cast p4, Ljcifs/smb/DosFileFilter;

    iget-object v0, p4, Ljcifs/smb/DosFileFilter;->wildcard:Ljava/lang/String;

    if-eqz v0, :cond_e

    move-object p3, v0

    :cond_e
    iget p4, p4, Ljcifs/smb/DosFileFilter;->attributes:I

    :cond_10
    move-object v3, p3

    move v4, p4

    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p4, "doEnum>>"

    invoke-virtual {p3, p4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_19
    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "url.getHost(): "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "share: "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "type:! "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {p3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_96

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result p3

    const/4 p4, 0x2

    if-ne p3, p4, :cond_72

    goto :goto_96

    :cond_72
    iget-object p3, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-nez p3, :cond_86

    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p4, "doEnum 1"

    invoke-virtual {p3, p4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Ljcifs/smb/SmbFile;->doShareEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V

    goto :goto_a5

    :cond_86
    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p4, "doEnum 2"

    invoke-virtual {p3, p4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Ljcifs/smb/SmbFile;->doFindFirstNext(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V

    goto :goto_a5

    :cond_96
    :goto_96
    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p4, "doEnum 0"

    invoke-virtual {p3, p4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Ljcifs/smb/SmbFile;->doNetServerEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V
    :try_end_a5
    .catch Ljava/net/UnknownHostException; {:try_start_19 .. :try_end_a5} :catch_b3
    .catch Ljava/net/MalformedURLException; {:try_start_19 .. :try_end_a5} :catch_a6

    :goto_a5
    return-void

    :catch_a6
    move-exception p1

    new-instance p2, Ljcifs/smb/SmbException;

    iget-object p3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {p3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_b3
    move-exception p1

    new-instance p2, Ljcifs/smb/SmbException;

    iget-object p3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {p3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public doFindFirstNext(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V
    .registers 31

    move-object/from16 v12, p0

    move-object/from16 v0, p1

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v12, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v3, v2, :cond_11c

    new-instance v2, Ljcifs/smb/Trans2FindFirst2;

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-direct {v2, v1, v3, v4}, Ljcifs/smb/Trans2FindFirst2;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v15, Ljcifs/smb/Trans2FindFirst2Response;

    invoke-direct {v15}, Ljcifs/smb/Trans2FindFirst2Response;-><init>()V

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v10, 0x3

    if-lt v1, v10, :cond_48

    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doFindFirstNext: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_48
    invoke-virtual {v12, v2, v15}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    iget v11, v15, Ljcifs/smb/Trans2FindFirst2Response;->sid:I

    new-instance v8, Ljcifs/smb/Trans2FindNext2;

    iget v1, v15, Ljcifs/smb/Trans2FindFirst2Response;->resumeKey:I

    iget-object v2, v15, Ljcifs/smb/Trans2FindFirst2Response;->lastName:Ljava/lang/String;

    invoke-direct {v8, v11, v1, v2}, Ljcifs/smb/Trans2FindNext2;-><init>(IILjava/lang/String;)V

    const/4 v1, 0x2

    iput-byte v1, v15, Ljcifs/smb/SmbComTransactionResponse;->subCommand:B

    :goto_59
    const/4 v1, 0x0

    move v9, v1

    :goto_5b
    iget v1, v15, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    if-lt v9, v1, :cond_8d

    iget-boolean v2, v15, Ljcifs/smb/Trans2FindFirst2Response;->isEndOfSearch:Z

    if-nez v2, :cond_74

    if-nez v1, :cond_66

    goto :goto_74

    :cond_66
    iget v1, v15, Ljcifs/smb/Trans2FindFirst2Response;->resumeKey:I

    iget-object v2, v15, Ljcifs/smb/Trans2FindFirst2Response;->lastName:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Ljcifs/smb/Trans2FindNext2;->reset(ILjava/lang/String;)V

    invoke-virtual {v15}, Ljcifs/smb/SmbComTransactionResponse;->reset()V

    invoke-virtual {v12, v8, v15}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto :goto_59

    :cond_74
    :goto_74
    :try_start_74
    new-instance v0, Ljcifs/smb/SmbComFindClose2;

    invoke-direct {v0, v11}, Ljcifs/smb/SmbComFindClose2;-><init>(I)V

    invoke-direct/range {p0 .. p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_80
    .catch Ljcifs/smb/SmbException; {:try_start_74 .. :try_end_80} :catch_81

    goto :goto_8c

    :catch_81
    move-exception v0

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_8c

    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_8c
    :goto_8c
    return-void

    :cond_8d
    iget-object v1, v15, Ljcifs/smb/SmbComTransactionResponse;->results:[Ljcifs/smb/FileEntry;

    aget-object v1, v1, v9

    invoke-interface {v1}, Ljcifs/smb/FileEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v10, :cond_b8

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v2

    sget v3, Ljcifs/smb/SmbFile;->HASH_DOT:I

    if-eq v2, v3, :cond_a7

    sget v3, Ljcifs/smb/SmbFile;->HASH_DOT_DOT:I

    if-ne v2, v3, :cond_b8

    :cond_a7
    const-string v2, "."

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10a

    const-string v2, ".."

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    goto :goto_10a

    :cond_b8
    if-eqz v13, :cond_c1

    invoke-interface {v13, v12, v6}, Ljcifs/smb/SmbFilenameFilter;->accept(Ljcifs/smb/SmbFile;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c1

    goto :goto_10a

    :cond_c1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_10a

    new-instance v7, Ljcifs/smb/SmbFile;

    const/4 v4, 0x1

    invoke-interface {v1}, Ljcifs/smb/FileEntry;->getAttributes()I

    move-result v5

    invoke-interface {v1}, Ljcifs/smb/FileEntry;->createTime()J

    move-result-wide v16

    invoke-interface {v1}, Ljcifs/smb/FileEntry;->lastModified()J

    move-result-wide v18

    invoke-interface {v1}, Ljcifs/smb/FileEntry;->length()J

    move-result-wide v20

    move-object v1, v7

    move-object/from16 v2, p0

    move-object v3, v6

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-wide/from16 v6, v16

    move-object/from16 v16, v8

    move/from16 v17, v9

    move-wide/from16 v8, v18

    move/from16 v19, v10

    move/from16 v18, v11

    move-wide/from16 v10, v20

    invoke-direct/range {v1 .. v11}, Ljcifs/smb/SmbFile;-><init>(Ljcifs/smb/SmbFile;Ljava/lang/String;IIJJJ)V

    move-object/from16 v1, v23

    if-eqz v14, :cond_fe

    invoke-interface {v14, v1}, Ljcifs/smb/SmbFileFilter;->accept(Ljcifs/smb/SmbFile;)Z

    move-result v2

    if-nez v2, :cond_fe

    goto :goto_112

    :cond_fe
    if-eqz p2, :cond_104

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_112

    :cond_104
    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_112

    :cond_10a
    :goto_10a
    move-object/from16 v16, v8

    move/from16 v17, v9

    move/from16 v19, v10

    move/from16 v18, v11

    :goto_112
    add-int/lit8 v9, v17, 0x1

    move-object/from16 v8, v16

    move/from16 v11, v18

    move/from16 v10, v19

    goto/16 :goto_5b

    :cond_11c
    new-instance v0, Ljcifs/smb/SmbException;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v12, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " directory must end with \'/\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public doMsrpcShareEnum()[Ljcifs/smb/FileEntry;
    .registers 6

    new-instance v0, Ljcifs/dcerpc/msrpc/MsrpcShareEnum;

    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/dcerpc/msrpc/MsrpcShareEnum;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ncacn_np:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljcifs/UniAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[\\PIPE\\srvsvc]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-static {v1, v2}, Ljcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;

    move-result-object v1

    const/4 v2, 0x4

    :try_start_2d
    invoke-virtual {v1, v0}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    iget v3, v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->retval:I

    if-nez v3, :cond_47

    invoke-virtual {v0}, Ljcifs/dcerpc/msrpc/MsrpcShareEnum;->getEntries()[Ljcifs/smb/FileEntry;

    move-result-object v0
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_50

    :try_start_38
    invoke-virtual {v1}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_46

    :catch_3c
    move-exception v1

    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v2, :cond_46

    sget-object v2, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_46
    :goto_46
    return-object v0

    :cond_47
    :try_start_47
    new-instance v3, Ljcifs/smb/SmbException;

    iget v0, v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->retval:I

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v3
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_50

    :catchall_50
    move-exception v0

    :try_start_51
    invoke-virtual {v1}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_5f

    :catch_55
    move-exception v1

    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v2, :cond_5f

    sget-object v2, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_5f
    :goto_5f
    throw v0
.end method

.method public doNetServerEnum(Ljava/util/ArrayList;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljcifs/smb/SmbFile;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v11, p0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "doNetServerEnum"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->connect0()V

    new-instance v12, Ljcifs/smb/NetServerEnum2;

    iget-object v0, v11, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, v0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v0, v0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v0, v0, Ljcifs/smb/SmbTransport$ServerData;->oemDomainName:Ljava/lang/String;

    const/high16 v1, -0x80000000

    invoke-direct {v12, v0, v1}, Ljcifs/smb/NetServerEnum2;-><init>(Ljava/lang/String;I)V

    new-instance v13, Ljcifs/smb/NetServerEnum2Response;

    invoke-direct {v13}, Ljcifs/smb/NetServerEnum2Response;-><init>()V

    :cond_22
    invoke-virtual {v11, v12, v13}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    iget v0, v13, Ljcifs/smb/SmbComTransactionResponse;->status:I

    const/16 v1, 0xea

    const/4 v2, 0x1

    if-eqz v0, :cond_37

    if-ne v0, v1, :cond_2f

    goto :goto_37

    :cond_2f
    new-instance v0, Ljcifs/smb/SmbException;

    iget v1, v13, Ljcifs/smb/SmbComTransactionResponse;->status:I

    invoke-direct {v0, v1, v2}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v0

    :cond_37
    :goto_37
    const/4 v14, 0x0

    if-ne v0, v1, :cond_3c

    move v15, v2

    goto :goto_3d

    :cond_3c
    move v15, v14

    :goto_3d
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "numEntries: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v13, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget v0, v13, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    if-eqz v15, :cond_57

    sub-int/2addr v0, v2

    :cond_57
    move v9, v0

    move v10, v14

    :goto_59
    if-lt v10, v9, :cond_6a

    const/16 v0, -0x29

    iput-byte v0, v12, Ljcifs/smb/SmbComTransaction;->subCommand:B

    iget-object v0, v13, Ljcifs/smb/NetServerEnum2Response;->lastName:Ljava/lang/String;

    invoke-virtual {v12, v14, v0}, Ljcifs/smb/NetServerEnum2;->reset(ILjava/lang/String;)V

    invoke-virtual {v13}, Ljcifs/smb/SmbComTransactionResponse;->reset()V

    if-nez v15, :cond_22

    return-void

    :cond_6a
    iget-object v0, v13, Ljcifs/smb/SmbComTransactionResponse;->results:[Ljcifs/smb/FileEntry;

    aget-object v0, v0, v10

    invoke-interface {v0}, Ljcifs/smb/FileEntry;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_ae

    new-instance v7, Ljcifs/smb/SmbFile;

    invoke-interface {v0}, Ljcifs/smb/FileEntry;->getType()I

    move-result v3

    const/16 v4, 0x11

    const-wide/16 v5, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v14, v7

    move-wide/from16 v7, v16

    move/from16 v16, v9

    move/from16 v17, v10

    move-wide/from16 v9, v18

    invoke-direct/range {v0 .. v10}, Ljcifs/smb/SmbFile;-><init>(Ljcifs/smb/SmbFile;Ljava/lang/String;IIJJJ)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b4

    :cond_ae
    move-object/from16 v0, p1

    move/from16 v16, v9

    move/from16 v17, v10

    :goto_b4
    add-int/lit8 v10, v17, 0x1

    move/from16 v9, v16

    const/4 v14, 0x0

    goto :goto_59
.end method

.method public doNetServerEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V
    .registers 32

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    iget-object v0, v11, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v15, 0x0

    if-nez v0, :cond_17

    move v0, v15

    goto :goto_1b

    :cond_17
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v0

    :goto_1b
    const/4 v9, 0x2

    if-nez v0, :cond_3a

    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->connect0()V

    new-instance v0, Ljcifs/smb/NetServerEnum2;

    iget-object v1, v11, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v1, v1, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v1, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v1, v1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v1, v1, Ljcifs/smb/SmbTransport$ServerData;->oemDomainName:Ljava/lang/String;

    const/high16 v2, -0x80000000

    invoke-direct {v0, v1, v2}, Ljcifs/smb/NetServerEnum2;-><init>(Ljava/lang/String;I)V

    new-instance v1, Ljcifs/smb/NetServerEnum2Response;

    invoke-direct {v1}, Ljcifs/smb/NetServerEnum2Response;-><init>()V

    :goto_37
    move-object v10, v0

    move-object v7, v1

    goto :goto_4e

    :cond_3a
    if-ne v0, v9, :cond_f6

    new-instance v0, Ljcifs/smb/NetServerEnum2;

    iget-object v1, v11, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Ljcifs/smb/NetServerEnum2;-><init>(Ljava/lang/String;I)V

    new-instance v1, Ljcifs/smb/NetServerEnum2Response;

    invoke-direct {v1}, Ljcifs/smb/NetServerEnum2Response;-><init>()V

    goto :goto_37

    :cond_4e
    :goto_4e
    invoke-virtual {v11, v10, v7}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    iget v0, v7, Ljcifs/smb/SmbComTransactionResponse;->status:I

    const/16 v1, 0xea

    const/4 v2, 0x1

    if-eqz v0, :cond_63

    if-ne v0, v1, :cond_5b

    goto :goto_63

    :cond_5b
    new-instance v0, Ljcifs/smb/SmbException;

    iget v1, v7, Ljcifs/smb/SmbComTransactionResponse;->status:I

    invoke-direct {v0, v1, v2}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v0

    :cond_63
    :goto_63
    if-ne v0, v1, :cond_68

    move/from16 v16, v2

    goto :goto_6a

    :cond_68
    move/from16 v16, v15

    :goto_6a
    iget v0, v7, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    if-eqz v16, :cond_6f

    sub-int/2addr v0, v2

    :cond_6f
    move v8, v0

    move v5, v15

    :goto_71
    if-lt v5, v8, :cond_89

    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v0

    if-eq v0, v9, :cond_7a

    goto :goto_88

    :cond_7a
    const/16 v0, -0x29

    iput-byte v0, v10, Ljcifs/smb/SmbComTransaction;->subCommand:B

    iget-object v0, v7, Ljcifs/smb/NetServerEnum2Response;->lastName:Ljava/lang/String;

    invoke-virtual {v10, v15, v0}, Ljcifs/smb/NetServerEnum2;->reset(ILjava/lang/String;)V

    invoke-virtual {v7}, Ljcifs/smb/SmbComTransactionResponse;->reset()V

    if-nez v16, :cond_4e

    :goto_88
    return-void

    :cond_89
    iget-object v0, v7, Ljcifs/smb/SmbComTransactionResponse;->results:[Ljcifs/smb/FileEntry;

    aget-object v0, v0, v5

    invoke-interface {v0}, Ljcifs/smb/FileEntry;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v13, :cond_9a

    invoke-interface {v13, v11, v6}, Ljcifs/smb/SmbFilenameFilter;->accept(Ljcifs/smb/SmbFile;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9a

    goto :goto_df

    :cond_9a
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_df

    new-instance v4, Ljcifs/smb/SmbFile;

    invoke-interface {v0}, Ljcifs/smb/FileEntry;->getType()I

    move-result v3

    const/16 v17, 0x11

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v15, v4

    move/from16 v4, v17

    move/from16 v17, v5

    move-object/from16 v24, v6

    move-wide/from16 v5, v18

    move-object/from16 v18, v7

    move/from16 v19, v8

    move-wide/from16 v7, v20

    move/from16 v21, v9

    move-object/from16 v20, v10

    move-wide/from16 v9, v22

    invoke-direct/range {v0 .. v10}, Ljcifs/smb/SmbFile;-><init>(Ljcifs/smb/SmbFile;Ljava/lang/String;IIJJJ)V

    if-eqz v14, :cond_d3

    invoke-interface {v14, v15}, Ljcifs/smb/SmbFileFilter;->accept(Ljcifs/smb/SmbFile;)Z

    move-result v0

    if-nez v0, :cond_d3

    goto :goto_e9

    :cond_d3
    if-eqz p2, :cond_d9

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e9

    :cond_d9
    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e9

    :cond_df
    :goto_df
    move/from16 v17, v5

    move-object/from16 v18, v7

    move/from16 v19, v8

    move/from16 v21, v9

    move-object/from16 v20, v10

    :goto_e9
    add-int/lit8 v5, v17, 0x1

    move-object/from16 v7, v18

    move/from16 v8, v19

    move-object/from16 v10, v20

    move/from16 v9, v21

    const/4 v15, 0x0

    goto/16 :goto_71

    :cond_f6
    new-instance v0, Ljcifs/smb/SmbException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The requested list operations is invalid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v11, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public doNetShareEnum()[Ljcifs/smb/FileEntry;
    .registers 4

    new-instance v0, Ljcifs/smb/NetShareEnum;

    invoke-direct {v0}, Ljcifs/smb/NetShareEnum;-><init>()V

    new-instance v1, Ljcifs/smb/NetShareEnumResponse;

    invoke-direct {v1}, Ljcifs/smb/NetShareEnumResponse;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    iget v0, v1, Ljcifs/smb/SmbComTransactionResponse;->status:I

    if-nez v0, :cond_14

    iget-object v0, v1, Ljcifs/smb/SmbComTransactionResponse;->results:[Ljcifs/smb/FileEntry;

    return-object v0

    :cond_14
    new-instance v0, Ljcifs/smb/SmbException;

    iget v1, v1, Ljcifs/smb/SmbComTransactionResponse;->status:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v0
.end method

.method public doShareEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V
    .registers 26

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    iget-object v0, v12, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_12b

    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_111

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Ljcifs/smb/SmbFile;->dfs:Ljcifs/smb/Dfs;

    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v12, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v0, v3, v4}, Ljcifs/smb/Dfs;->isTrustedDomain(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_58

    :try_start_37
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->doDfsRootEnum()[Ljcifs/smb/FileEntry;

    move-result-object v0

    move v4, v3

    :goto_3c
    array-length v5, v0

    if-lt v4, v5, :cond_40

    goto :goto_58

    :cond_40
    aget-object v5, v0, v4

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4b

    invoke-virtual {v2, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_4b} :catch_4e

    :cond_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    :catch_4e
    move-exception v0

    sget v4, Ljcifs/util/LogStream;->level:I

    if-lt v4, v1, :cond_58

    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_58
    :goto_58
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getFirstAddress()Ljcifs/UniAddress;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5d
    if-nez v0, :cond_60

    goto :goto_7c

    :cond_60
    const/4 v4, 0x3

    :try_start_61
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->doConnect()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_fe

    :try_start_64
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->doMsrpcShareEnum()[Ljcifs/smb/FileEntry;

    move-result-object v0
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_68} :catch_69

    goto :goto_78

    :catch_69
    move-exception v0

    move-object v5, v0

    :try_start_6b
    sget v0, Ljcifs/util/LogStream;->level:I

    if-lt v0, v4, :cond_74

    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_74
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->doNetShareEnum()[Ljcifs/smb/FileEntry;

    move-result-object v0

    :goto_78
    move v5, v3

    :goto_79
    array-length v6, v0
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_7a} :catch_fe

    if-lt v5, v6, :cond_ed

    :goto_7c
    if-eqz v1, :cond_97

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_97

    instance-of v0, v1, Ljcifs/smb/SmbException;

    if-nez v0, :cond_94

    new-instance v0, Ljcifs/smb/SmbException;

    iget-object v2, v12, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_94
    check-cast v1, Ljcifs/smb/SmbException;

    throw v1

    :cond_97
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_9f
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a6

    return-void

    :cond_a6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/smb/FileEntry;

    invoke-interface {v0}, Ljcifs/smb/FileEntry;->getName()Ljava/lang/String;

    move-result-object v10

    if-eqz v14, :cond_b9

    invoke-interface {v14, v12, v10}, Ljcifs/smb/SmbFilenameFilter;->accept(Ljcifs/smb/SmbFile;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b9

    goto :goto_9f

    :cond_b9
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_ea

    new-instance v11, Ljcifs/smb/SmbFile;

    invoke-interface {v0}, Ljcifs/smb/FileEntry;->getType()I

    move-result v4

    const/16 v5, 0x11

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v17, 0x0

    move-object v1, v11

    move-object/from16 v2, p0

    move-object v3, v10

    move-object v0, v10

    move-object v14, v11

    move-wide/from16 v10, v17

    invoke-direct/range {v1 .. v11}, Ljcifs/smb/SmbFile;-><init>(Ljcifs/smb/SmbFile;Ljava/lang/String;IIJJJ)V

    if-eqz v15, :cond_e1

    invoke-interface {v15, v14}, Ljcifs/smb/SmbFileFilter;->accept(Ljcifs/smb/SmbFile;)Z

    move-result v1

    if-nez v1, :cond_e1

    goto :goto_ea

    :cond_e1
    if-eqz p2, :cond_e7

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ea

    :cond_e7
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ea
    :goto_ea
    move-object/from16 v14, p5

    goto :goto_9f

    :cond_ed
    :try_start_ed
    aget-object v6, v0, v5

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f8

    invoke-virtual {v2, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f8} :catch_fe

    :cond_f8
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v14, p5

    goto/16 :goto_79

    :catch_fe
    move-exception v0

    move-object v1, v0

    sget v0, Ljcifs/util/LogStream;->level:I

    if-lt v0, v4, :cond_109

    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_109
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getNextAddress()Ljcifs/UniAddress;

    move-result-object v0

    move-object/from16 v14, p5

    goto/16 :goto_5d

    :cond_111
    new-instance v0, Ljcifs/smb/SmbException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The requested list operations is invalid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v12, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12b
    new-instance v0, Ljcifs/smb/SmbException;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v12, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " directory must end with \'/\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Ljcifs/smb/SmbFile;

    if-eqz v0, :cond_46

    check-cast p1, Ljcifs/smb/SmbFile;

    if-ne p0, p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbFile;->pathNamesPossiblyEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    iget-object v0, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    iget-object v1, p1, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    :try_start_2c
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v0

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/UniAddress;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_38
    .catch Ljava/net/UnknownHostException; {:try_start_2c .. :try_end_38} :catch_39

    goto :goto_45

    :catch_39
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    :goto_45
    return p1

    :cond_46
    const/4 p1, 0x0

    return p1
.end method

.method public exists()Z
    .registers 5

    iget-wide v0, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_d

    iget-boolean v0, p0, Ljcifs/smb/SmbFile;->isExists:Z

    return v0

    :cond_d
    const/16 v0, 0x11

    iput v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljcifs/smb/SmbFile;->createTime:J

    iput-wide v0, p0, Ljcifs/smb/SmbFile;->lastModified:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljcifs/smb/SmbFile;->isExists:Z

    :try_start_1a
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7f

    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-nez v0, :cond_4a

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3c

    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;

    goto :goto_7f

    :cond_3c
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;)Ljcifs/UniAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljcifs/UniAddress;->getHostName()Ljava/lang/String;

    goto :goto_7f

    :cond_4a
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v1, :cond_7c

    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    const-string v2, "IPC$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    goto :goto_7c

    :cond_5f
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x101

    invoke-virtual {p0, v0, v2}, Ljcifs/smb/SmbFile;->queryPath(Ljava/lang/String;I)Ljcifs/smb/Info;

    move-result-object v0

    invoke-interface {v0}, Ljcifs/smb/Info;->getAttributes()I

    move-result v2

    iput v2, p0, Ljcifs/smb/SmbFile;->attributes:I

    invoke-interface {v0}, Ljcifs/smb/Info;->getCreateTime()J

    move-result-wide v2

    iput-wide v2, p0, Ljcifs/smb/SmbFile;->createTime:J

    invoke-interface {v0}, Ljcifs/smb/Info;->getLastWriteTime()J

    move-result-wide v2

    iput-wide v2, p0, Ljcifs/smb/SmbFile;->lastModified:J

    goto :goto_7f

    :cond_7c
    :goto_7c
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect0()V

    :cond_7f
    :goto_7f
    iput-boolean v1, p0, Ljcifs/smb/SmbFile;->isExists:Z
    :try_end_81
    .catch Ljava/net/UnknownHostException; {:try_start_1a .. :try_end_81} :catch_8b
    .catch Ljcifs/smb/SmbException; {:try_start_1a .. :try_end_81} :catch_82

    goto :goto_8b

    :catch_82
    move-exception v0

    invoke-virtual {v0}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v1

    sparse-switch v1, :sswitch_data_98

    throw v0

    :catch_8b
    :goto_8b
    :sswitch_8b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    iget-boolean v0, p0, Ljcifs/smb/SmbFile;->isExists:Z

    return v0

    nop

    :sswitch_data_98
    .sparse-switch
        -0x3ffffff1 -> :sswitch_8b
        -0x3fffffcd -> :sswitch_8b
        -0x3fffffcc -> :sswitch_8b
        -0x3fffffc6 -> :sswitch_8b
    .end sparse-switch
.end method

.method public getAddress()Ljcifs/UniAddress;
    .registers 3

    iget v0, p0, Ljcifs/smb/SmbFile;->addressIndex:I

    if-nez v0, :cond_9

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getFirstAddress()Ljcifs/UniAddress;

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v1, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public getAttributes()I
    .registers 3

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    const/4 v0, 0x0

    return v0

    :cond_d
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    iget v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit16 v0, v0, 0x7fff

    return v0
.end method

.method public getCanonicalPath()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "smb://"

    if-lez v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_29
    return-object v1
.end method

.method public getContentLength()I
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->length()J

    move-result-wide v0
    :try_end_4
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_4} :catch_c

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    :catch_c
    const/4 v0, 0x0

    return v0
.end method

.method public getDate()J
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->lastModified()J

    move-result-wide v0
    :try_end_4
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_4} :catch_5

    return-wide v0

    :catch_5
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDfsPath()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->resolveDfs(Ljcifs/smb/ServerMessageBlock;)V

    iget-object v1, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    if-nez v1, :cond_9

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "smb:/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    iget-object v1, v1, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    iget-object v1, v1, Ljcifs/smb/DfsReferral;->share:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5c

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_4a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4a
    return-object v0
.end method

.method public getDiskFreeSpace()J
    .registers 5

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_11

    iget v0, p0, Ljcifs/smb/SmbFile;->type:I

    if-ne v0, v1, :cond_e

    goto :goto_11

    :cond_e
    const-wide/16 v0, 0x0

    return-wide v0

    :cond_11
    :goto_11
    const/16 v0, 0x3ef

    :try_start_13
    invoke-direct {p0, v0}, Ljcifs/smb/SmbFile;->queryFSInformation(I)J

    move-result-wide v0
    :try_end_17
    .catch Ljcifs/smb/SmbException; {:try_start_13 .. :try_end_17} :catch_18

    return-wide v0

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v2

    const v3, -0x3fffffff  # -2.0000002f

    if-eq v2, v3, :cond_29

    const v3, -0x3ffffffd  # -2.0000007f

    if-ne v2, v3, :cond_28

    goto :goto_29

    :cond_28
    throw v0

    :cond_29
    :goto_29
    invoke-direct {p0, v1}, Ljcifs/smb/SmbFile;->queryFSInformation(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFirstAddress()Ljcifs/UniAddress;
    .registers 9

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "getFirstAddress>>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/SmbFile;->addressIndex:I

    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_c5

    const-string v5, "server"

    invoke-static {v3, v5}, Ljcifs/smb/SmbFile;->queryLookup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "addresses 0 "

    if-eqz v5, :cond_6a

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6a

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "server>>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-array v1, v4, [Ljcifs/UniAddress;

    iput-object v1, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    invoke-static {v5}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;)Ljcifs/UniAddress;

    move-result-object v2

    aput-object v2, v1, v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljcifs/UniAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getNextAddress()Ljcifs/UniAddress;

    move-result-object v0

    return-object v0

    :cond_6a
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "query address!"

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v5, "address"

    invoke-static {v3, v5}, Ljcifs/smb/SmbFile;->queryLookup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_c5

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    new-array v3, v4, [Ljcifs/UniAddress;

    iput-object v3, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    new-instance v4, Ljcifs/UniAddress;

    invoke-static {v1, v2}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v4, v1}, Ljcifs/UniAddress;-><init>(Ljava/lang/Object;)V

    aput-object v4, v3, v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljcifs/UniAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getNextAddress()Ljcifs/UniAddress;

    move-result-object v0

    return-object v0

    :cond_c5
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "getFirstAddress>>1"

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getFirstAddress>> host"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_11a

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "getFirstAddress>>2"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_ec
    const-string v1, "\u0001\u0002__MSBROWSE__\u0002"

    const/4 v2, 0x0

    invoke-static {v1, v4, v2}, Ljcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;)Ljcifs/netbios/NbtAddress;

    move-result-object v1

    new-array v2, v4, [Ljcifs/UniAddress;

    iput-object v2, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    invoke-virtual {v1}, Ljcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;)Ljcifs/UniAddress;

    move-result-object v1

    aput-object v1, v2, v0
    :try_end_101
    .catch Ljava/net/UnknownHostException; {:try_start_ec .. :try_end_101} :catch_102

    goto :goto_15a

    :catch_102
    move-exception v0

    invoke-static {}, Ljcifs/smb/NtlmPasswordAuthentication;->initDefaults()V

    sget-object v1, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_DOMAIN:Ljava/lang/String;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_119

    sget-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_DOMAIN:Ljava/lang/String;

    invoke-static {v0, v4}, Ljcifs/UniAddress;->getAllByName(Ljava/lang/String;Z)[Ljcifs/UniAddress;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    goto :goto_15a

    :cond_119
    throw v0

    :cond_11a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_137

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_129

    goto :goto_137

    :cond_129
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "getFirstAddress>>4"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v1, v0}, Ljcifs/UniAddress;->getAllByName(Ljava/lang/String;Z)[Ljcifs/UniAddress;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    goto :goto_15a

    :cond_137
    :goto_137
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "getFirstAddress>>3"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v1, v4}, Ljcifs/UniAddress;->getAllByName(Ljava/lang/String;Z)[Ljcifs/UniAddress;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addresses.length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_15a
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getNextAddress()Ljcifs/UniAddress;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    new-instance v0, Ljcifs/smb/SmbFileInputStream;

    invoke-direct {v0, p0}, Ljcifs/smb/SmbFileInputStream;-><init>(Ljcifs/smb/SmbFile;)V

    return-object v0
.end method

.method public getLastModified()J
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->lastModified()J

    move-result-wide v0
    :try_end_4
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_4} :catch_5

    return-wide v0

    :catch_5
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    iget-object v0, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x2f

    if-le v0, v1, :cond_29

    iget-object v0, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_16
    iget-object v3, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_26

    iget-object v2, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    :cond_29
    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-eqz v0, :cond_3e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3e
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_61

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_61
    const-string v0, "smb://"

    return-object v0
.end method

.method public getNextAddress()Ljcifs/UniAddress;
    .registers 4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addresses.length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget v0, p0, Ljcifs/smb/SmbFile;->addressIndex:I

    iget-object v1, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    array-length v2, v1

    if-ge v0, v2, :cond_24

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Ljcifs/smb/SmbFile;->addressIndex:I

    aget-object v0, v1, v0

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2

    new-instance v0, Ljcifs/smb/SmbFileOutputStream;

    invoke-direct {v0, p0}, Ljcifs/smb/SmbFileOutputStream;-><init>(Ljcifs/smb/SmbFile;)V

    return-object v0
.end method

.method public getParent()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "smb://"

    if-lez v1, :cond_47

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    iget-object v0, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x2f

    const/4 v4, 0x1

    if-le v0, v4, :cond_2a

    iget-object v0, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2d

    :cond_2a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2d
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    :goto_37
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_44

    const/4 v2, 0x0

    add-int/2addr v1, v4

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_44
    add-int/lit8 v1, v1, -0x1

    goto :goto_37

    :cond_47
    return-object v2
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrincipal()Ljava/security/Principal;
    .registers 2

    iget-object v0, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    return-object v0
.end method

.method public getSecurity()[Ljcifs/smb/ACE;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->getSecurity(Z)[Ljcifs/smb/ACE;

    move-result-object v0

    return-object v0
.end method

.method public getSecurity(Z)[Ljcifs/smb/ACE;
    .registers 7

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x20000

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Ljcifs/smb/SmbFile;->open0(IIII)I

    move-result v0

    new-instance v1, Ljcifs/smb/NtTransQuerySecurityDesc;

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2}, Ljcifs/smb/NtTransQuerySecurityDesc;-><init>(II)V

    new-instance v2, Ljcifs/smb/NtTransQuerySecurityDescResponse;

    invoke-direct {v2}, Ljcifs/smb/NtTransQuerySecurityDescResponse;-><init>()V

    const-wide/16 v3, 0x0

    :try_start_19
    invoke-virtual {p0, v1, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_29

    invoke-virtual {p0, v0, v3, v4}, Ljcifs/smb/SmbFile;->close(IJ)V

    iget-object v0, v2, Ljcifs/smb/NtTransQuerySecurityDescResponse;->securityDescriptor:Ljcifs/smb/SecurityDescriptor;

    iget-object v0, v0, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    if-eqz v0, :cond_28

    invoke-direct {p0, v0, p1}, Ljcifs/smb/SmbFile;->processAces([Ljcifs/smb/ACE;Z)V

    :cond_28
    return-object v0

    :catchall_29
    move-exception p1

    invoke-virtual {p0, v0, v3, v4}, Ljcifs/smb/SmbFile;->close(IJ)V

    throw p1
.end method

.method public getServer()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d

    const/4 v0, 0x0

    :cond_d
    return-object v0
.end method

.method public getServerWithDfs()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    if-eqz v0, :cond_7

    iget-object v0, v0, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    return-object v0

    :cond_7
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShare()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    return-object v0
.end method

.method public getShareSecurity(Z)[Ljcifs/smb/ACE;
    .registers 6

    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->resolveDfs(Ljcifs/smb/ServerMessageBlock;)V

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServerWithDfs()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;

    iget-object v2, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v2, v2, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ncacn_np:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[\\PIPE\\srvsvc]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-static {v0, v2}, Ljcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;

    move-result-object v0

    const/4 v2, 0x1

    :try_start_30
    invoke-virtual {v0, v1}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    iget v3, v1, Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->retval:I

    if-nez v3, :cond_4f

    invoke-virtual {v1}, Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;->getSecurity()[Ljcifs/smb/ACE;

    move-result-object v1

    if-eqz v1, :cond_40

    invoke-direct {p0, v1, p1}, Ljcifs/smb/SmbFile;->processAces([Ljcifs/smb/ACE;Z)V
    :try_end_40
    .catchall {:try_start_30 .. :try_end_40} :catchall_57

    :cond_40
    :try_start_40
    invoke-virtual {v0}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_4e

    :catch_44
    move-exception p1

    sget v0, Ljcifs/util/LogStream;->level:I

    if-lt v0, v2, :cond_4e

    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_4e
    :goto_4e
    return-object v1

    :cond_4f
    :try_start_4f
    new-instance p1, Ljcifs/smb/SmbException;

    iget v1, v1, Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->retval:I

    invoke-direct {p1, v1, v2}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw p1
    :try_end_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_57

    :catchall_57
    move-exception p1

    :try_start_58
    invoke-virtual {v0}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_66

    :catch_5c
    move-exception v0

    sget v1, Ljcifs/util/LogStream;->level:I

    if-lt v1, v2, :cond_66

    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_66
    :goto_66
    throw p1
.end method

.method public getType()I
    .registers 4

    iget v0, p0, Ljcifs/smb/SmbFile;->type:I

    if-nez v0, :cond_9b

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_13

    iput v1, p0, Ljcifs/smb/SmbFile;->type:I

    goto/16 :goto_9b

    :cond_13
    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-eqz v0, :cond_51

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect0()V

    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    const-string v1, "IPC$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/16 v0, 0x10

    iput v0, p0, Ljcifs/smb/SmbFile;->type:I

    goto/16 :goto_9b

    :cond_2a
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, v0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    const-string v1, "LPT1:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const/16 v0, 0x20

    iput v0, p0, Ljcifs/smb/SmbFile;->type:I

    goto :goto_9b

    :cond_3b
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, v0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    const-string v1, "COMM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    const/16 v0, 0x40

    iput v0, p0, Ljcifs/smb/SmbFile;->type:I

    goto :goto_9b

    :cond_4c
    const/16 v0, 0x8

    iput v0, p0, Ljcifs/smb/SmbFile;->type:I

    goto :goto_9b

    :cond_51
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_99

    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_67

    goto :goto_99

    :cond_67
    :try_start_67
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v0
    :try_end_6b
    .catch Ljava/net/UnknownHostException; {:try_start_67 .. :try_end_6b} :catch_8c

    invoke-virtual {v0}, Ljcifs/UniAddress;->getAddress()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljcifs/netbios/NbtAddress;

    if-eqz v2, :cond_88

    invoke-virtual {v0}, Ljcifs/UniAddress;->getAddress()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/netbios/NbtAddress;

    invoke-virtual {v0}, Ljcifs/netbios/NbtAddress;->getNameType()I

    move-result v0

    const/16 v2, 0x1d

    if-eq v0, v2, :cond_85

    const/16 v2, 0x1b

    if-ne v0, v2, :cond_88

    :cond_85
    iput v1, p0, Ljcifs/smb/SmbFile;->type:I

    return v1

    :cond_88
    const/4 v0, 0x4

    iput v0, p0, Ljcifs/smb/SmbFile;->type:I

    goto :goto_9b

    :catch_8c
    move-exception v0

    new-instance v1, Ljcifs/smb/SmbException;

    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_99
    :goto_99
    iput v1, p0, Ljcifs/smb/SmbFile;->type:I

    :cond_9b
    :goto_9b
    iget v0, p0, Ljcifs/smb/SmbFile;->type:I

    return v0
.end method

.method public getUncPath()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    const-string v1, "\\\\"

    if-nez v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    const/16 v2, 0x2f

    const/16 v3, 0x5c

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUncPath0()Ljava/lang/String;
    .registers 15

    iget-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    if-nez v0, :cond_c6

    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [C

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_16
    const/4 v7, 0x0

    const/16 v8, 0x2f

    const/4 v9, 0x1

    if-lt v4, v2, :cond_70

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, v3, v6}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    const-string v2, "\\"

    if-le v6, v9, :cond_6a

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_3b

    iget-object v0, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    iput-object v2, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    goto/16 :goto_c6

    :cond_3b
    if-ne v0, v6, :cond_49

    iget-object v1, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v1, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    iput-object v2, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    goto/16 :goto_c6

    :cond_49
    iget-object v2, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v2, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    iget-object v2, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    aget-char v1, v1, v6

    if-ne v1, v8, :cond_58

    goto :goto_5a

    :cond_58
    add-int/lit8 v6, v6, 0x1

    :goto_5a
    invoke-virtual {v2, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    const/16 v1, 0x5c

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    goto/16 :goto_c6

    :cond_6a
    iput-object v7, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    iput-object v2, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    goto/16 :goto_c6

    :cond_70
    if-eqz v5, :cond_b8

    const/4 v7, 0x2

    if-eq v5, v9, :cond_78

    if-eq v5, v7, :cond_ad

    goto :goto_c3

    :cond_78
    aget-char v10, v0, v4

    if-ne v10, v8, :cond_7d

    goto :goto_c3

    :cond_7d
    const/16 v11, 0x2e

    if-ne v10, v11, :cond_8b

    add-int/lit8 v12, v4, 0x1

    if-ge v12, v2, :cond_89

    aget-char v13, v0, v12

    if-ne v13, v8, :cond_8b

    :cond_89
    move v4, v12

    goto :goto_c3

    :cond_8b
    add-int/lit8 v12, v4, 0x1

    if-ge v12, v2, :cond_ac

    if-ne v10, v11, :cond_ac

    aget-char v10, v0, v12

    if-ne v10, v11, :cond_ac

    add-int/lit8 v10, v4, 0x2

    if-ge v10, v2, :cond_9d

    aget-char v11, v0, v10

    if-ne v11, v8, :cond_ac

    :cond_9d
    if-ne v6, v9, :cond_a0

    goto :goto_aa

    :cond_a0
    add-int/lit8 v6, v6, -0x1

    if-le v6, v9, :cond_aa

    add-int/lit8 v4, v6, -0x1

    aget-char v4, v1, v4

    if-ne v4, v8, :cond_a0

    :cond_aa
    :goto_aa
    move v4, v10

    goto :goto_c3

    :cond_ac
    move v5, v7

    :cond_ad
    aget-char v7, v0, v4

    if-ne v7, v8, :cond_b2

    move v5, v9

    :cond_b2
    add-int/lit8 v8, v6, 0x1

    aput-char v7, v1, v6

    move v6, v8

    goto :goto_c3

    :cond_b8
    aget-char v5, v0, v4

    if-eq v5, v8, :cond_bd

    return-object v7

    :cond_bd
    add-int/lit8 v7, v6, 0x1

    aput-char v5, v1, v6

    move v6, v7

    move v5, v9

    :goto_c3
    add-int/2addr v4, v9

    goto/16 :goto_16

    :cond_c6
    :goto_c6
    iget-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    return-object v0
.end method

.method public hasNextAddress()Z
    .registers 3

    iget v0, p0, Ljcifs/smb/SmbFile;->addressIndex:I

    iget-object v1, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    array-length v1, v1

    if-ge v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljcifs/UniAddress;->hashCode()I

    move-result v0
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_15

    :catch_9
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_15
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    iget-object v1, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public isConnected()Z
    .registers 3

    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    if-eqz v0, :cond_b

    iget v0, v0, Ljcifs/smb/SmbTree;->connectionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public isDirectory()Z
    .registers 5

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    return v1

    :cond_c
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_14

    return v2

    :cond_14
    iget v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    const/16 v3, 0x10

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_1c

    return v1

    :cond_1c
    return v2
.end method

.method public isFile()Z
    .registers 4

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    return v1

    :cond_d
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    iget v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_17

    return v2

    :cond_17
    return v1
.end method

.method public isHidden()Z
    .registers 5

    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1d

    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    const-string v3, "$"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    return v2

    :cond_1c
    return v1

    :cond_1d
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    iget v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_27

    return v2

    :cond_27
    return v1
.end method

.method public isOpen()Z
    .registers 3

    iget-boolean v0, p0, Ljcifs/smb/SmbFile;->opened:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Ljcifs/smb/SmbFile;->tree_num:I

    iget-object v1, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget v1, v1, Ljcifs/smb/SmbTree;->tree_num:I

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public isWorkgroup0()Z
    .registers 5

    iget v0, p0, Ljcifs/smb/SmbFile;->type:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_40

    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_13

    goto :goto_40

    :cond_13
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-nez v0, :cond_3e

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljcifs/UniAddress;->getAddress()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljcifs/netbios/NbtAddress;

    if-eqz v3, :cond_3b

    invoke-virtual {v0}, Ljcifs/UniAddress;->getAddress()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/netbios/NbtAddress;

    invoke-virtual {v0}, Ljcifs/netbios/NbtAddress;->getNameType()I

    move-result v0

    const/16 v3, 0x1d

    if-eq v0, v3, :cond_38

    const/16 v3, 0x1b

    if-ne v0, v3, :cond_3b

    :cond_38
    iput v2, p0, Ljcifs/smb/SmbFile;->type:I

    return v1

    :cond_3b
    const/4 v0, 0x4

    iput v0, p0, Ljcifs/smb/SmbFile;->type:I

    :cond_3e
    const/4 v0, 0x0

    return v0

    :cond_40
    :goto_40
    iput v2, p0, Ljcifs/smb/SmbFile;->type:I

    return v1
.end method

.method public lastModified()J
    .registers 3

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_11

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    iget-wide v0, p0, Ljcifs/smb/SmbFile;->lastModified:J

    return-wide v0

    :cond_11
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public length()J
    .registers 5

    iget-wide v0, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_d

    iget-wide v0, p0, Ljcifs/smb/SmbFile;->size:J

    return-wide v0

    :cond_d
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2c

    new-instance v0, Ljcifs/smb/Trans2QueryFSInformationResponse;

    invoke-direct {v0, v2}, Ljcifs/smb/Trans2QueryFSInformationResponse;-><init>(I)V

    new-instance v1, Ljcifs/smb/Trans2QueryFSInformation;

    invoke-direct {v1, v2}, Ljcifs/smb/Trans2QueryFSInformation;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    iget-object v0, v0, Ljcifs/smb/Trans2QueryFSInformationResponse;->info:Ljcifs/smb/AllocInfo;

    invoke-interface {v0}, Ljcifs/smb/AllocInfo;->getCapacity()J

    move-result-wide v0

    iput-wide v0, p0, Ljcifs/smb/SmbFile;->size:J

    goto :goto_51

    :cond_2c
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_4d

    iget v0, p0, Ljcifs/smb/SmbFile;->type:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4d

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x102

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbFile;->queryPath(Ljava/lang/String;I)Ljcifs/smb/Info;

    move-result-object v0

    invoke-interface {v0}, Ljcifs/smb/Info;->getSize()J

    move-result-wide v0

    iput-wide v0, p0, Ljcifs/smb/SmbFile;->size:J

    goto :goto_51

    :cond_4d
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljcifs/smb/SmbFile;->size:J

    :goto_51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    iget-wide v0, p0, Ljcifs/smb/SmbFile;->size:J

    return-wide v0
.end method

.method public list()[Ljava/lang/String;
    .registers 4

    const-string v0, "*"

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Ljcifs/smb/SmbFile;->list(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public list(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljava/lang/String;
    .registers 13

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, v7

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Ljcifs/smb/SmbFile;->doEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public list(Ljcifs/smb/SmbFilenameFilter;)[Ljava/lang/String;
    .registers 5

    const-string v0, "*"

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Ljcifs/smb/SmbFile;->list(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public listDomain()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljcifs/smb/SmbFile;",
            ">;"
        }
    .end annotation

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "listDomain>>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_c
    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->doNetServerEnum(Ljava/util/ArrayList;)V
    :try_end_f
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_f} :catch_1d
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_f} :catch_10

    return-object v0

    :catch_10
    move-exception v0

    new-instance v1, Ljcifs/smb/SmbException;

    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1d
    move-exception v0

    new-instance v1, Ljcifs/smb/SmbException;

    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public listFiles()[Ljcifs/smb/SmbFile;
    .registers 4

    const-string v0, "*"

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Ljcifs/smb/SmbFile;->listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;

    move-result-object v0

    return-object v0
.end method

.method public listFiles(Ljava/lang/String;)[Ljcifs/smb/SmbFile;
    .registers 4

    const/16 v0, 0x16

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Ljcifs/smb/SmbFile;->listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;

    move-result-object p1

    return-object p1
.end method

.method public listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;
    .registers 13

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, v7

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Ljcifs/smb/SmbFile;->doEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljcifs/smb/SmbFile;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljcifs/smb/SmbFile;

    return-object p1
.end method

.method public listFiles(Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;
    .registers 5

    const-string v0, "*"

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Ljcifs/smb/SmbFile;->listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;

    move-result-object p1

    return-object p1
.end method

.method public listFiles(Ljcifs/smb/SmbFilenameFilter;)[Ljcifs/smb/SmbFile;
    .registers 5

    const-string v0, "*"

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Ljcifs/smb/SmbFile;->listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;

    move-result-object p1

    return-object p1
.end method

.method public mkdir()V
    .registers 5

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_36

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_23

    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mkdir: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_23
    new-instance v1, Ljcifs/smb/SmbComCreateDirectory;

    invoke-direct {v1, v0}, Ljcifs/smb/SmbComCreateDirectory;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    iput-wide v0, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    return-void

    :cond_36
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mkdirs()V
    .registers 4

    :try_start_0
    new-instance v0, Ljcifs/smb/SmbFile;

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getParent()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-direct {v0, v1, v2}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_17

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->exists()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->mkdirs()V

    :cond_14
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->mkdir()V

    :catch_17
    return-void
.end method

.method public open(IIII)V
    .registers 6

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0, p1, p2, p3, p4}, Ljcifs/smb/SmbFile;->open0(IIII)I

    move-result p1

    iput p1, p0, Ljcifs/smb/SmbFile;->fid:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Ljcifs/smb/SmbFile;->opened:Z

    iget-object p1, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget p1, p1, Ljcifs/smb/SmbTree;->tree_num:I

    iput p1, p0, Ljcifs/smb/SmbFile;->tree_num:I

    return-void
.end method

.method public open0(IIII)I
    .registers 15

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect0()V

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1d

    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "open0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1d
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, v0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljcifs/smb/SmbTransport;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_6a

    new-instance v0, Ljcifs/smb/SmbComNTCreateAndXResponse;

    invoke-direct {v0}, Ljcifs/smb/SmbComNTCreateAndXResponse;-><init>()V

    new-instance v9, Ljcifs/smb/SmbComNTCreateAndX;

    iget-object v2, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    iget v5, p0, Ljcifs/smb/SmbFile;->shareAccess:I

    const/4 v8, 0x0

    move-object v1, v9

    move v3, p1

    move v4, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v8}, Ljcifs/smb/SmbComNTCreateAndX;-><init>(Ljava/lang/String;IIIIILjcifs/smb/ServerMessageBlock;)V

    instance-of p1, p0, Ljcifs/smb/SmbNamedPipe;

    const/4 p2, 0x1

    if-eqz p1, :cond_53

    iget p1, v9, Ljcifs/smb/SmbComNTCreateAndX;->flags0:I

    or-int/lit8 p1, p1, 0x16

    iput p1, v9, Ljcifs/smb/SmbComNTCreateAndX;->flags0:I

    iget p1, v9, Ljcifs/smb/SmbComNTCreateAndX;->desiredAccess:I

    const/high16 p3, 0x20000

    or-int/2addr p1, p3

    iput p1, v9, Ljcifs/smb/SmbComNTCreateAndX;->desiredAccess:I

    iput-boolean p2, v0, Ljcifs/smb/SmbComNTCreateAndXResponse;->isExtended:Z

    :cond_53
    invoke-virtual {p0, v9, v0}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    iget p1, v0, Ljcifs/smb/SmbComNTCreateAndXResponse;->fid:I

    iget p3, v0, Ljcifs/smb/SmbComNTCreateAndXResponse;->extFileAttributes:I

    and-int/lit16 p3, p3, 0x7fff

    iput p3, p0, Ljcifs/smb/SmbFile;->attributes:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sget-wide v0, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr p3, v0

    iput-wide p3, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    iput-boolean p2, p0, Ljcifs/smb/SmbFile;->isExists:Z

    goto :goto_7c

    :cond_6a
    new-instance p3, Ljcifs/smb/SmbComOpenAndXResponse;

    invoke-direct {p3}, Ljcifs/smb/SmbComOpenAndXResponse;-><init>()V

    new-instance p4, Ljcifs/smb/SmbComOpenAndX;

    iget-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p4, v0, p2, p1, v1}, Ljcifs/smb/SmbComOpenAndX;-><init>(Ljava/lang/String;IILjcifs/smb/ServerMessageBlock;)V

    invoke-virtual {p0, p4, p3}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    iget p1, p3, Ljcifs/smb/SmbComOpenAndXResponse;->fid:I

    :goto_7c
    return p1
.end method

.method public pathNamesPossiblyEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v6, v0, v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v5

    const/16 v1, 0x2e

    const/4 v7, 0x1

    if-le v6, v7, :cond_23

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_23

    return v7

    :cond_23
    if-le v0, v7, :cond_2e

    add-int/lit8 v2, v5, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_2e

    return v7

    :cond_2e
    if-ne v6, v0, :cond_3a

    const/4 v2, 0x1

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_3a

    return v7

    :cond_3a
    const/4 p1, 0x0

    return p1
.end method

.method public queryPath(Ljava/lang/String;I)Ljcifs/smb/Info;
    .registers 7

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect0()V

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1b

    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "queryPath: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1b
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, v0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljcifs/smb/SmbTransport;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_39

    new-instance v0, Ljcifs/smb/Trans2QueryPathInformationResponse;

    invoke-direct {v0, p2}, Ljcifs/smb/Trans2QueryPathInformationResponse;-><init>(I)V

    new-instance v1, Ljcifs/smb/Trans2QueryPathInformation;

    invoke-direct {v1, p1, p2}, Ljcifs/smb/Trans2QueryPathInformation;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1, v0}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    iget-object p1, v0, Ljcifs/smb/Trans2QueryPathInformationResponse;->info:Ljcifs/smb/Info;

    return-object p1

    :cond_39
    new-instance p2, Ljcifs/smb/SmbComQueryInformationResponse;

    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, v0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v0, v0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v0, v0, Ljcifs/smb/SmbTransport$ServerData;->serverTimeZone:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    invoke-direct {p2, v0, v1}, Ljcifs/smb/SmbComQueryInformationResponse;-><init>(J)V

    new-instance v0, Ljcifs/smb/SmbComQueryInformation;

    invoke-direct {v0, p1}, Ljcifs/smb/SmbComQueryInformation;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    return-object p2
.end method

.method public renameTo(Ljcifs/smb/SmbFile;)V
    .registers 5

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Invalid operation for workgroups, servers, or shares"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6b

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v2, :cond_6b

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->resolveDfs(Ljcifs/smb/ServerMessageBlock;)V

    invoke-virtual {p1, v0}, Ljcifs/smb/SmbFile;->resolveDfs(Ljcifs/smb/ServerMessageBlock;)V

    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v2, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    invoke-virtual {v0, v2}, Ljcifs/smb/SmbTree;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_4c

    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "renameTo: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4c
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    iput-wide v0, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    iput-wide v0, p1, Ljcifs/smb/SmbFile;->attrExpiration:J

    new-instance v0, Ljcifs/smb/SmbComRename;

    iget-object v1, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    iget-object p1, p1, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljcifs/smb/SmbComRename;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    return-void

    :cond_65
    new-instance p1, Ljcifs/smb/SmbException;

    invoke-direct {p1, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6b
    new-instance p1, Ljcifs/smb/SmbException;

    invoke-direct {p1, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resolveDfs(Ljcifs/smb/ServerMessageBlock;)V
    .registers 10

    instance-of v0, p1, Ljcifs/smb/SmbComClose;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect0()V

    sget-object v1, Ljcifs/smb/SmbFile;->dfs:Ljcifs/smb/Dfs;

    iget-object v2, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v3, v2, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v3, v3, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v3, v3, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    iget-object v2, v2, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    iget-object v4, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    iget-object v5, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v1, v3, v2, v4, v5}, Ljcifs/smb/Dfs;->resolve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_10f

    const-string v0, "A:"

    const/4 v3, 0x0

    if-eqz p1, :cond_3c

    iget-byte v4, p1, Ljcifs/smb/ServerMessageBlock;->command:B

    const/16 v5, 0x25

    if-eq v4, v5, :cond_2f

    const/16 v5, 0x32

    if-eq v4, v5, :cond_2f

    goto :goto_3a

    :cond_2f
    move-object v4, p1

    check-cast v4, Ljcifs/smb/SmbComTransaction;

    iget-byte v4, v4, Ljcifs/smb/SmbComTransaction;->subCommand:B

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x10

    if-eq v4, v5, :cond_3c

    :goto_3a
    move-object v4, v0

    goto :goto_3d

    :cond_3c
    move-object v4, v3

    :goto_3d
    move-object v0, v1

    :cond_3e
    :try_start_3e
    sget v5, Ljcifs/util/LogStream;->level:I

    const/4 v6, 0x2

    if-lt v5, v6, :cond_56

    sget-object v5, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DFS redirect: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_56
    iget-object v5, v0, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    invoke-static {v5}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;)Ljcifs/UniAddress;

    move-result-object v5

    iget-object v6, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->getPort()I

    move-result v6

    invoke-static {v5, v6}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    move-result-object v5

    invoke-virtual {v5}, Ljcifs/smb/SmbTransport;->connect()V

    iget-object v6, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v5, v6}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object v5

    iget-object v6, v0, Ljcifs/smb/DfsReferral;->share:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object v5

    iput-object v5, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    if-eq v0, v1, :cond_98

    iget-object v5, v0, Ljcifs/smb/DfsReferral;->key:Ljava/lang/String;

    if-eqz v5, :cond_98

    iget-object v6, v0, Ljcifs/smb/DfsReferral;->map:Ljava/util/Map;

    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_82} :catch_83

    goto :goto_98

    :catch_83
    move-exception v5

    instance-of v6, v5, Ljcifs/smb/SmbException;

    if-eqz v6, :cond_8b

    check-cast v5, Ljcifs/smb/SmbException;

    goto :goto_93

    :cond_8b
    new-instance v6, Ljcifs/smb/SmbException;

    iget-object v7, v0, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    invoke-direct {v6, v7, v5}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v6

    :goto_93
    iget-object v0, v0, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    if-ne v0, v1, :cond_3e

    move-object v3, v5

    :cond_98
    :goto_98
    if-nez v3, :cond_10e

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v3, 0x3

    if-lt v1, v3, :cond_a4

    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_a4
    iput-object v0, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    iget v1, v0, Ljcifs/smb/DfsReferral;->pathConsumed:I

    if-gez v1, :cond_ad

    iput v2, v0, Ljcifs/smb/DfsReferral;->pathConsumed:I

    goto :goto_bd

    :cond_ad
    iget-object v2, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_bd

    iget-object v1, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, v0, Ljcifs/smb/DfsReferral;->pathConsumed:I

    :cond_bd
    :goto_bd
    iget-object v1, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    iget v2, v0, Ljcifs/smb/DfsReferral;->pathConsumed:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "\\"

    if-eqz v3, :cond_d0

    move-object v1, v4

    :cond_d0
    iget-object v3, v0, Ljcifs/smb/DfsReferral;->path:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Ljcifs/smb/DfsReferral;->path:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_e3
    iput-object v1, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    if-eqz p1, :cond_103

    iget-object v0, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    if-eqz v0, :cond_103

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_103

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_103

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_103
    if-eqz p1, :cond_131

    iput-object v1, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    iget v0, p1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    goto :goto_131

    :cond_10e
    throw v3

    :cond_10f
    iget-object v1, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-boolean v1, v1, Ljcifs/smb/SmbTree;->inDomainDfs:Z

    if-eqz v1, :cond_129

    instance-of v1, p1, Ljcifs/smb/NtTransQuerySecurityDesc;

    if-nez v1, :cond_129

    if-nez v0, :cond_129

    instance-of v0, p1, Ljcifs/smb/SmbComFindClose2;

    if-eqz v0, :cond_120

    goto :goto_129

    :cond_120
    new-instance p1, Ljcifs/smb/SmbException;

    const v0, -0x3ffffddb  # -2.000131f

    invoke-direct {p1, v0, v2}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw p1

    :cond_129
    :goto_129
    if-eqz p1, :cond_131

    iget v0, p1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    :cond_131
    :goto_131
    return-void
.end method

.method public send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    .registers 5

    :goto_0
    invoke-virtual {p0, p1}, Ljcifs/smb/SmbFile;->resolveDfs(Ljcifs/smb/ServerMessageBlock;)V

    :try_start_3
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    invoke-virtual {v0, p1, p2}, Ljcifs/smb/SmbTree;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_8
    .catch Ljcifs/smb/DfsReferral; {:try_start_3 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception v0

    iget-boolean v1, v0, Ljcifs/smb/DfsReferral;->resolveHashes:Z

    if-nez v1, :cond_12

    invoke-virtual {p1}, Ljcifs/smb/ServerMessageBlock;->reset()V

    goto :goto_0

    :cond_12
    throw v0
.end method

.method public setAttributes(I)V
    .registers 10

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    and-int/lit16 v3, p1, 0x30a7

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Ljcifs/smb/SmbFile;->setPathInformation(IJJ)V

    return-void

    :cond_16
    new-instance p1, Ljcifs/smb/SmbException;

    const-string v0, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {p1, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCreateTime(J)V
    .registers 11

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p0

    move-wide v4, p1

    invoke-virtual/range {v2 .. v7}, Ljcifs/smb/SmbFile;->setPathInformation(IJJ)V

    return-void

    :cond_14
    new-instance p1, Ljcifs/smb/SmbException;

    const-string p2, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {p1, p2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLastModified(J)V
    .registers 11

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v2, p0

    move-wide v6, p1

    invoke-virtual/range {v2 .. v7}, Ljcifs/smb/SmbFile;->setPathInformation(IJJ)V

    return-void

    :cond_14
    new-instance p1, Ljcifs/smb/SmbException;

    const-string p2, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {p1, p2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPathInformation(IJJ)V
    .registers 18

    move-object v0, p0

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    iget v1, v0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit8 v1, v1, 0x10

    const/4 v2, 0x1

    if-eqz v1, :cond_d

    move v3, v2

    goto :goto_f

    :cond_d
    const/16 v3, 0x40

    :goto_f
    const/16 v4, 0x100

    invoke-virtual {p0, v2, v4, v1, v3}, Ljcifs/smb/SmbFile;->open0(IIII)I

    move-result v2

    new-instance v3, Ljcifs/smb/Trans2SetFileInformation;

    or-int v7, p1, v1

    move-object v5, v3

    move v6, v2

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v5 .. v11}, Ljcifs/smb/Trans2SetFileInformation;-><init>(IIJJ)V

    new-instance v1, Ljcifs/smb/Trans2SetFileInformationResponse;

    invoke-direct {v1}, Ljcifs/smb/Trans2SetFileInformationResponse;-><init>()V

    invoke-virtual {p0, v3, v1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Ljcifs/smb/SmbFile;->close(IJ)V

    iput-wide v3, v0, Ljcifs/smb/SmbFile;->attrExpiration:J

    return-void
.end method

.method public setReadOnly()V
    .registers 2

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAttributes()I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->setAttributes(I)V

    return-void
.end method

.method public setReadWrite()V
    .registers 2

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAttributes()I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->setAttributes(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURL()Ljava/net/URL;
    .registers 2

    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    return-object v0
.end method
