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

    .line 1
    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    .line 7
    :try_start_6
    sget v0, Ljcifs/Config;->socketCount:I
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_8} :catch_9

    .line 9
    goto :goto_d

    .line 10
    :catch_9
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    :goto_d
    const-wide/16 v0, 0x1388

    .line 16
    const-string v2, "jcifs.smb.client.attrExpirationPeriod"

    .line 18
    invoke-static {v2, v0, v1}, Ljcifs/Config;->getLong(Ljava/lang/String;J)J

    .line 21
    move-result-wide v0

    .line 22
    sput-wide v0, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    .line 24
    const/4 v0, 0x1

    .line 25
    const-string v1, "jcifs.smb.client.ignoreCopyToException"

    .line 27
    invoke-static {v1, v0}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    .line 30
    move-result v0

    .line 31
    sput-boolean v0, Ljcifs/smb/SmbFile;->ignoreCopyToException:Z

    .line 33
    new-instance v0, Ljcifs/smb/Dfs;

    .line 35
    invoke-direct {v0}, Ljcifs/smb/Dfs;-><init>()V

    .line 38
    sput-object v0, Ljcifs/smb/SmbFile;->dfs:Ljcifs/smb/Dfs;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Ljava/net/URL;

    sget-object v1, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjcifs/smb/NtlmPasswordAuthentication;)V
    .registers 7

    .line 2
    new-instance v0, Ljava/net/URL;

    sget-object v1, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0, p3}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    .line 3
    iput p2, p0, Ljcifs/smb/SmbFile;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 7
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/net/URL;

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    const/4 v3, 0x0

    invoke-direct {v1, v3, p1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    .line 8
    invoke-direct {v0, v1, p2, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V
    .registers 8

    .line 13
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

    .line 14
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/net/URL;

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    const/4 v3, 0x0

    invoke-direct {v1, v3, p1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {v0, v1, p2, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0, p3}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    and-int/lit8 p1, p4, -0x8

    if-nez p1, :cond_17

    .line 15
    iput p4, p0, Ljcifs/smb/SmbFile;->shareAccess:I

    return-void

    .line 16
    :cond_17
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Illegal shareAccess parameter"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V
    .registers 6

    .line 9
    new-instance v0, Ljava/net/URL;

    sget-object v1, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0, p2}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;I)V
    .registers 7

    .line 10
    new-instance v0, Ljava/net/URL;

    sget-object v1, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0, p2}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    and-int/lit8 p1, p3, -0x8

    if-nez p1, :cond_12

    .line 11
    iput p3, p0, Ljcifs/smb/SmbFile;->shareAccess:I

    return-void

    .line 12
    :cond_12
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Illegal shareAccess parameter"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .registers 4

    .line 22
    new-instance v0, Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V
    .registers 4

    .line 23
    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    const/4 v0, 0x7

    .line 24
    iput v0, p0, Ljcifs/smb/SmbFile;->shareAccess:I

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Ljcifs/smb/SmbFile;->blank_resp:Ljcifs/smb/SmbComBlankResponse;

    .line 26
    iput-object v0, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    .line 27
    iput-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    if-nez p2, :cond_18

    .line 28
    new-instance p2, Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;)V

    :cond_18
    iput-object p2, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 29
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljcifs/smb/SmbFile;Ljava/lang/String;)V
    .registers 7

    .line 4
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isWorkgroup0()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 5
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

    .line 6
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

    .line 17
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isWorkgroup0()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 18
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

    .line 19
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

    .line 20
    iput p3, p0, Ljcifs/smb/SmbFile;->shareAccess:I

    return-void

    .line 21
    :cond_32
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Illegal shareAccess parameter"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljcifs/smb/SmbFile;Ljava/lang/String;IIJJJ)V
    .registers 16

    .line 30
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isWorkgroup0()Z

    move-result v0

    const-string v1, "/"

    if-eqz v0, :cond_22

    .line 31
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

    .line 32
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

    .line 33
    iget-object v0, p1, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iput-object v0, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 34
    iget-object v0, p1, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-eqz v0, :cond_53

    .line 35
    iget-object v0, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iput-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    .line 36
    iget-object v0, p1, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    iput-object v0, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    .line 37
    :cond_53
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 38
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_66

    const/4 v2, 0x0

    .line 39
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 40
    :cond_66
    iget-object v0, p1, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    const-string v2, "\\"

    if-nez v0, :cond_6f

    .line 41
    iput-object v2, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    goto :goto_a3

    .line 42
    :cond_6f
    iget-object v0, p1, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x5c

    if-eqz v0, :cond_8c

    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    goto :goto_a3

    .line 44
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

    .line 45
    :goto_a3
    iput p3, p0, Ljcifs/smb/SmbFile;->type:I

    .line 46
    iput p4, p0, Ljcifs/smb/SmbFile;->attributes:I

    .line 47
    iput-wide p5, p0, Ljcifs/smb/SmbFile;->createTime:J

    .line 48
    iput-wide p7, p0, Ljcifs/smb/SmbFile;->lastModified:J

    .line 49
    iput-wide p9, p0, Ljcifs/smb/SmbFile;->size:J

    .line 50
    iput-boolean v1, p0, Ljcifs/smb/SmbFile;->isExists:Z

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sget-wide p3, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr p1, p3

    .line 52
    iput-wide p1, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    iput-wide p1, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    return-void
.end method

.method private blank_resp()Ljcifs/smb/SmbComBlankResponse;
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbFile;->blank_resp:Ljcifs/smb/SmbComBlankResponse;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Ljcifs/smb/SmbComBlankResponse;

    .line 7
    invoke-direct {v0}, Ljcifs/smb/SmbComBlankResponse;-><init>()V

    .line 10
    iput-object v0, p0, Ljcifs/smb/SmbFile;->blank_resp:Ljcifs/smb/SmbComBlankResponse;

    .line 12
    :cond_b
    iget-object v0, p0, Ljcifs/smb/SmbFile;->blank_resp:Ljcifs/smb/SmbComBlankResponse;

    .line 14
    return-object v0
.end method

.method private processAces([Ljcifs/smb/ACE;Z)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServerWithDfs()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz p2, :cond_29

    .line 8
    array-length p2, p1

    .line 9
    new-array v2, p2, [Ljcifs/smb/SID;

    .line 11
    move v3, v1

    .line 12
    :goto_b
    array-length v4, p1

    .line 13
    if-lt v3, v4, :cond_20

    .line 15
    :goto_e
    if-lt v1, p2, :cond_11

    .line 17
    goto :goto_2c

    .line 18
    :cond_11
    sub-int p1, p2, v1

    .line 20
    const/16 v3, 0x40

    .line 22
    if-le p1, v3, :cond_18

    .line 24
    move p1, v3

    .line 25
    :cond_18
    iget-object v3, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 27
    invoke-static {v0, v3, v2, v1, p1}, Ljcifs/smb/SID;->resolveSids(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;II)V

    .line 30
    add-int/lit8 v1, v1, 0x40

    .line 32
    goto :goto_e

    .line 33
    :cond_20
    aget-object v4, p1, v3

    .line 35
    iget-object v4, v4, Ljcifs/smb/ACE;->sid:Ljcifs/smb/SID;

    .line 37
    aput-object v4, v2, v3

    .line 39
    add-int/lit8 v3, v3, 0x1

    .line 41
    goto :goto_b

    .line 42
    :cond_29
    :goto_29
    array-length p2, p1

    .line 43
    if-lt v1, p2, :cond_2d

    .line 45
    :goto_2c
    return-void

    .line 46
    :cond_2d
    aget-object p2, p1, v1

    .line 48
    iget-object p2, p2, Ljcifs/smb/ACE;->sid:Ljcifs/smb/SID;

    .line 50
    iput-object v0, p2, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    .line 52
    iget-object v2, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 54
    iput-object v2, p2, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 58
    goto :goto_29
.end method

.method private queryFSInformation(I)J
    .registers 7

    .line 1
    new-instance v0, Ljcifs/smb/Trans2QueryFSInformationResponse;

    .line 3
    invoke-direct {v0, p1}, Ljcifs/smb/Trans2QueryFSInformationResponse;-><init>(I)V

    .line 6
    new-instance v1, Ljcifs/smb/Trans2QueryFSInformation;

    .line 8
    invoke-direct {v1, p1}, Ljcifs/smb/Trans2QueryFSInformation;-><init>(I)V

    .line 11
    invoke-virtual {p0, v1, v0}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 14
    iget p1, p0, Ljcifs/smb/SmbFile;->type:I

    .line 16
    const/16 v1, 0x8

    .line 18
    if-ne p1, v1, :cond_24

    .line 20
    iget-object p1, v0, Ljcifs/smb/Trans2QueryFSInformationResponse;->info:Ljcifs/smb/AllocInfo;

    .line 22
    invoke-interface {p1}, Ljcifs/smb/AllocInfo;->getCapacity()J

    .line 25
    move-result-wide v1

    .line 26
    iput-wide v1, p0, Ljcifs/smb/SmbFile;->size:J

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    move-result-wide v1

    .line 32
    sget-wide v3, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    .line 34
    add-long/2addr v1, v3

    .line 35
    iput-wide v1, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    .line 37
    :cond_24
    iget-object p1, v0, Ljcifs/smb/Trans2QueryFSInformationResponse;->info:Ljcifs/smb/AllocInfo;

    .line 39
    invoke-interface {p1}, Ljcifs/smb/AllocInfo;->getFree()J

    .line 42
    move-result-wide v0

    .line 43
    return-wide v0
.end method

.method public static queryLookup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    move v2, v1

    .line 8
    :goto_7
    array-length v3, p0

    .line 9
    if-lt v0, v3, :cond_25

    .line 11
    if-le v1, v2, :cond_23

    .line 13
    new-instance v0, Ljava/lang/String;

    .line 15
    sub-int v3, v1, v2

    .line 17
    invoke-direct {v0, p0, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_23

    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 28
    new-instance p1, Ljava/lang/String;

    .line 30
    array-length v0, p0

    .line 31
    sub-int/2addr v0, v1

    .line 32
    invoke-direct {p1, p0, v1, v0}, Ljava/lang/String;-><init>([CII)V

    .line 35
    return-object p1

    .line 36
    :cond_23
    const/4 p0, 0x0

    .line 37
    return-object p0

    .line 38
    :cond_25
    aget-char v3, p0, v0

    .line 40
    const/16 v4, 0x26

    .line 42
    if-ne v3, v4, :cond_46

    .line 44
    if-le v1, v2, :cond_43

    .line 46
    new-instance v3, Ljava/lang/String;

    .line 48
    sub-int v4, v1, v2

    .line 50
    invoke-direct {v3, p0, v2, v4}, Ljava/lang/String;-><init>([CII)V

    .line 53
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_43

    .line 59
    add-int/lit8 v1, v1, 0x1

    .line 61
    new-instance p1, Ljava/lang/String;

    .line 63
    sub-int/2addr v0, v1

    .line 64
    invoke-direct {p1, p0, v1, v0}, Ljava/lang/String;-><init>([CII)V

    .line 67
    return-object p1

    .line 68
    :cond_43
    add-int/lit8 v2, v0, 0x1

    .line 70
    goto :goto_4b

    .line 71
    :cond_46
    const/16 v4, 0x3d

    .line 73
    if-ne v3, v4, :cond_4b

    .line 75
    move v1, v0

    .line 76
    :cond_4b
    :goto_4b
    add-int/lit8 v0, v0, 0x1

    .line 78
    goto :goto_7
.end method


# virtual methods
.method public canRead()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x10

    .line 7
    if-ne v0, v1, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_a
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public canWrite()Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/16 v2, 0x10

    .line 8
    if-ne v0, v2, :cond_a

    .line 10
    return v1

    .line 11
    :cond_a
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_16

    .line 17
    iget v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    .line 19
    and-int/2addr v0, v1

    .line 20
    if-nez v0, :cond_16

    .line 22
    return v1

    .line 23
    :cond_16
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public close()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 7
    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbFile;->close(J)V

    return-void
.end method

.method public close(IJ)V
    .registers 7

    .line 1
    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_18

    .line 2
    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "close: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3
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

    .line 4
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isOpen()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 5
    :cond_7
    iget v0, p0, Ljcifs/smb/SmbFile;->fid:I

    invoke-virtual {p0, v0, p1, p2}, Ljcifs/smb/SmbFile;->close(IJ)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Ljcifs/smb/SmbFile;->opened:Z

    return-void
.end method

.method public connect()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isConnected()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getFirstAddress()Ljcifs/UniAddress;

    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    const-string v3, "firstAddress: "

    .line 21
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Ljcifs/UniAddress;->getHostAddress()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 38
    :cond_25
    :goto_25
    :try_start_25
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->doConnect()V
    :try_end_28
    .catch Ljcifs/smb/SmbAuthException; {:try_start_25 .. :try_end_28} :catch_3c
    .catch Ljcifs/smb/SmbException; {:try_start_25 .. :try_end_28} :catch_29

    .line 41
    return-void

    .line 42
    :catch_29
    move-exception v0

    .line 43
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getNextAddress()Ljcifs/UniAddress;

    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_3b

    .line 49
    sget v1, Ljcifs/util/LogStream;->level:I

    .line 51
    const/4 v2, 0x3

    .line 52
    if-lt v1, v2, :cond_25

    .line 54
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 59
    goto :goto_25

    .line 60
    :cond_3b
    throw v0

    .line 61
    :catch_3c
    move-exception v0

    .line 62
    throw v0
.end method

.method public connect0()V
    .registers 4

    .line 1
    const-string v0, "Failed to connect to server"

    .line 3
    :try_start_2
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect()V
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_5} :catch_f
    .catch Ljcifs/smb/SmbException; {:try_start_2 .. :try_end_5} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 6
    return-void

    .line 7
    :catch_6
    move-exception v1

    .line 8
    new-instance v2, Ljcifs/smb/SmbException;

    .line 10
    invoke-direct {v2, v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    throw v2

    .line 14
    :catch_d
    move-exception v0

    .line 15
    throw v0

    .line 16
    :catch_f
    move-exception v1

    .line 17
    new-instance v2, Ljcifs/smb/SmbException;

    .line 19
    invoke-direct {v2, v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    throw v2
.end method

.method public copyTo(Ljcifs/smb/SmbFile;)V
    .registers 16

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_a7

    .line 5
    iget-object v0, p1, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    .line 7
    if-eqz v0, :cond_a7

    .line 9
    new-instance v6, Ljcifs/smb/SmbComReadAndX;

    .line 11
    invoke-direct {v6}, Ljcifs/smb/SmbComReadAndX;-><init>()V

    .line 14
    new-instance v7, Ljcifs/smb/SmbComReadAndXResponse;

    .line 16
    invoke-direct {v7}, Ljcifs/smb/SmbComReadAndXResponse;-><init>()V

    .line 19
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect0()V

    .line 22
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->connect0()V

    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->resolveDfs(Ljcifs/smb/ServerMessageBlock;)V

    .line 29
    :try_start_1c
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljcifs/UniAddress;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_4e

    .line 43
    iget-object v8, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    .line 45
    const/4 v9, 0x1

    .line 46
    const/4 v10, 0x0

    .line 47
    iget-object v11, p1, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    .line 49
    const/4 v12, 0x0

    .line 50
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 53
    move-result v0

    .line 54
    iget-object v1, p1, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    .line 56
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 59
    move-result v1

    .line 60
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 63
    move-result v13

    .line 64
    invoke-virtual/range {v8 .. v13}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_46

    .line 70
    goto :goto_4e

    .line 71
    :cond_46
    new-instance v0, Ljcifs/smb/SmbException;

    .line 73
    const-string v1, "Source and destination paths overlap."

    .line 75
    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    .line 78
    throw v0
    :try_end_4e
    .catch Ljava/net/UnknownHostException; {:try_start_1c .. :try_end_4e} :catch_4e

    .line 79
    :catch_4e
    :cond_4e
    :goto_4e
    new-instance v8, Ljcifs/smb/SmbFile$WriterThread;

    .line 81
    invoke-direct {v8, p0}, Ljcifs/smb/SmbFile$WriterThread;-><init>(Ljcifs/smb/SmbFile;)V

    .line 84
    const/4 v0, 0x1

    .line 85
    invoke-virtual {v8, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 88
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 91
    iget-object v1, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    .line 93
    iget-object v1, v1, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    .line 95
    iget-object v1, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 97
    iget-object v2, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    .line 99
    iget-object v2, v2, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    .line 101
    iget-object v2, v2, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 103
    iget v3, v1, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    .line 105
    iget v4, v2, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    .line 107
    if-ge v3, v4, :cond_6f

    .line 109
    iput v3, v2, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    .line 111
    goto :goto_71

    .line 112
    :cond_6f
    iput v4, v1, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    .line 114
    :goto_71
    iget v2, v1, Ljcifs/smb/SmbTransport;->rcv_buf_size:I

    .line 116
    add-int/lit8 v2, v2, -0x46

    .line 118
    iget v1, v1, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    .line 120
    add-int/lit8 v1, v1, -0x46

    .line 122
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 125
    move-result v4

    .line 126
    const/4 v1, 0x2

    .line 127
    new-array v2, v1, [I

    .line 129
    aput v4, v2, v0

    .line 131
    const/4 v0, 0x0

    .line 132
    aput v1, v2, v0

    .line 134
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 136
    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 139
    move-result-object v0

    .line 140
    move-object v3, v0

    .line 141
    check-cast v3, [[B

    .line 143
    move-object v1, p0

    .line 144
    move-object v2, p1

    .line 145
    move-object v5, v8

    .line 146
    :try_start_91
    invoke-virtual/range {v1 .. v7}, Ljcifs/smb/SmbFile;->copyTo0(Ljcifs/smb/SmbFile;[[BILjcifs/smb/SmbFile$WriterThread;Ljcifs/smb/SmbComReadAndX;Ljcifs/smb/SmbComReadAndXResponse;)V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_9d

    .line 149
    const/4 v9, 0x0

    .line 150
    const/4 v10, -0x1

    .line 151
    const/4 v11, 0x0

    .line 152
    const-wide/16 v12, 0x0

    .line 154
    invoke-virtual/range {v8 .. v13}, Ljcifs/smb/SmbFile$WriterThread;->write([BILjcifs/smb/SmbFile;J)V

    .line 157
    return-void

    .line 158
    :catchall_9d
    move-exception p1

    .line 159
    const/4 v9, 0x0

    .line 160
    const/4 v10, -0x1

    .line 161
    const/4 v11, 0x0

    .line 162
    const-wide/16 v12, 0x0

    .line 164
    invoke-virtual/range {v8 .. v13}, Ljcifs/smb/SmbFile$WriterThread;->write([BILjcifs/smb/SmbFile;J)V

    .line 167
    throw p1

    .line 168
    :cond_a7
    new-instance p1, Ljcifs/smb/SmbException;

    .line 170
    const-string v0, "Invalid operation for workgroups or servers"

    .line 172
    invoke-direct {p1, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    .line 175
    throw p1
.end method

.method public copyTo0(Ljcifs/smb/SmbFile;[[BILjcifs/smb/SmbFile$WriterThread;Ljcifs/smb/SmbComReadAndX;Ljcifs/smb/SmbComReadAndXResponse;)V
    .registers 33

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v13, p1

    .line 5
    move-object/from16 v14, p4

    .line 7
    move-object/from16 v15, p5

    .line 9
    move-object/from16 v11, p6

    .line 11
    iget-wide v2, v1, Ljcifs/smb/SmbFile;->attrExpiration:J

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    move-result-wide v4

    .line 17
    cmp-long v0, v2, v4

    .line 19
    const-wide/16 v8, 0x0

    .line 21
    const/4 v10, 0x1

    .line 22
    const/4 v12, 0x0

    .line 23
    if-gez v0, :cond_49

    .line 25
    const/16 v0, 0x11

    .line 27
    iput v0, v1, Ljcifs/smb/SmbFile;->attributes:I

    .line 29
    iput-wide v8, v1, Ljcifs/smb/SmbFile;->createTime:J

    .line 31
    iput-wide v8, v1, Ljcifs/smb/SmbFile;->lastModified:J

    .line 33
    iput-boolean v12, v1, Ljcifs/smb/SmbFile;->isExists:Z

    .line 35
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    const/16 v2, 0x101

    .line 41
    invoke-virtual {v1, v0, v2}, Ljcifs/smb/SmbFile;->queryPath(Ljava/lang/String;I)Ljcifs/smb/Info;

    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljcifs/smb/Info;->getAttributes()I

    .line 48
    move-result v2

    .line 49
    iput v2, v1, Ljcifs/smb/SmbFile;->attributes:I

    .line 51
    invoke-interface {v0}, Ljcifs/smb/Info;->getCreateTime()J

    .line 54
    move-result-wide v2

    .line 55
    iput-wide v2, v1, Ljcifs/smb/SmbFile;->createTime:J

    .line 57
    invoke-interface {v0}, Ljcifs/smb/Info;->getLastWriteTime()J

    .line 60
    move-result-wide v2

    .line 61
    iput-wide v2, v1, Ljcifs/smb/SmbFile;->lastModified:J

    .line 63
    iput-boolean v10, v1, Ljcifs/smb/SmbFile;->isExists:Z

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 68
    move-result-wide v2

    .line 69
    sget-wide v4, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    .line 71
    add-long/2addr v2, v4

    .line 72
    iput-wide v2, v1, Ljcifs/smb/SmbFile;->attrExpiration:J

    .line 74
    :cond_49
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->isDirectory()Z

    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_dc

    .line 80
    invoke-virtual/range {p1 .. p1}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 87
    move-result v0

    .line 88
    if-le v0, v10, :cond_7d

    .line 90
    :try_start_59
    invoke-virtual/range {p1 .. p1}, Ljcifs/smb/SmbFile;->mkdir()V

    .line 93
    iget v3, v1, Ljcifs/smb/SmbFile;->attributes:I

    .line 95
    iget-wide v4, v1, Ljcifs/smb/SmbFile;->createTime:J

    .line 97
    iget-wide v6, v1, Ljcifs/smb/SmbFile;->lastModified:J

    .line 99
    move-object/from16 v2, p1

    .line 101
    invoke-virtual/range {v2 .. v7}, Ljcifs/smb/SmbFile;->setPathInformation(IJJ)V
    :try_end_67
    .catch Ljcifs/smb/SmbException; {:try_start_59 .. :try_end_67} :catch_68

    .line 104
    goto :goto_7d

    .line 105
    :catch_68
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljcifs/smb/SmbException;->getNtStatus()I

    .line 109
    move-result v2

    .line 110
    const v3, -0x3fffffde  # -2.000008f

    .line 113
    if-eq v2, v3, :cond_7d

    .line 115
    invoke-virtual {v0}, Ljcifs/smb/SmbException;->getNtStatus()I

    .line 118
    move-result v2

    .line 119
    const v3, -0x3fffffcb  # -2.0000126f

    .line 122
    if-ne v2, v3, :cond_7c

    .line 124
    goto :goto_7d

    .line 125
    :cond_7c
    throw v0

    .line 126
    :cond_7d
    :goto_7d
    const-string v0, "*"

    .line 128
    const/16 v2, 0x16

    .line 130
    const/4 v3, 0x0

    .line 131
    invoke-virtual {v1, v0, v2, v3, v3}, Ljcifs/smb/SmbFile;->listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;

    .line 134
    move-result-object v0

    .line 135
    :goto_86
    :try_start_86
    array-length v2, v0

    .line 136
    if-lt v12, v2, :cond_8b

    .line 138
    goto/16 :goto_198

    .line 140
    :cond_8b
    new-instance v16, Ljcifs/smb/SmbFile;

    .line 142
    aget-object v2, v0, v12

    .line 144
    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    .line 147
    move-result-object v4

    .line 148
    aget-object v2, v0, v12

    .line 150
    iget v5, v2, Ljcifs/smb/SmbFile;->type:I

    .line 152
    iget v6, v2, Ljcifs/smb/SmbFile;->attributes:I

    .line 154
    iget-wide v7, v2, Ljcifs/smb/SmbFile;->createTime:J

    .line 156
    iget-wide v9, v2, Ljcifs/smb/SmbFile;->lastModified:J

    .line 158
    iget-wide v2, v2, Ljcifs/smb/SmbFile;->size:J

    .line 160
    move-wide/from16 v17, v2

    .line 162
    move-object/from16 v2, v16

    .line 164
    move-object/from16 v3, p1

    .line 166
    move/from16 v19, v12

    .line 168
    move-wide/from16 v11, v17

    .line 170
    invoke-direct/range {v2 .. v12}, Ljcifs/smb/SmbFile;-><init>(Ljcifs/smb/SmbFile;Ljava/lang/String;IIJJJ)V

    .line 173
    aget-object v2, v0, v19

    .line 175
    move-object/from16 v3, v16

    .line 177
    move-object/from16 v4, p2

    .line 179
    move/from16 v5, p3

    .line 181
    move-object/from16 v6, p4

    .line 183
    move-object/from16 v7, p5

    .line 185
    move-object/from16 v8, p6

    .line 187
    invoke-virtual/range {v2 .. v8}, Ljcifs/smb/SmbFile;->copyTo0(Ljcifs/smb/SmbFile;[[BILjcifs/smb/SmbFile$WriterThread;Ljcifs/smb/SmbComReadAndX;Ljcifs/smb/SmbComReadAndXResponse;)V
    :try_end_bd
    .catch Ljava/net/UnknownHostException; {:try_start_86 .. :try_end_bd} :catch_cf
    .catch Ljava/net/MalformedURLException; {:try_start_86 .. :try_end_bd} :catch_c2

    .line 190
    add-int/lit8 v12, v19, 0x1

    .line 192
    move-object/from16 v11, p6

    .line 194
    goto :goto_86

    .line 195
    :catch_c2
    move-exception v0

    .line 196
    new-instance v2, Ljcifs/smb/SmbException;

    .line 198
    iget-object v3, v1, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 200
    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 203
    move-result-object v3

    .line 204
    invoke-direct {v2, v3, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    throw v2

    .line 208
    :catch_cf
    move-exception v0

    .line 209
    new-instance v2, Ljcifs/smb/SmbException;

    .line 211
    iget-object v3, v1, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 213
    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 216
    move-result-object v3

    .line 217
    invoke-direct {v2, v3, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 220
    throw v2

    .line 221
    :cond_dc
    const/16 v0, 0x80

    .line 223
    :try_start_de
    invoke-virtual {v1, v10, v12, v0, v12}, Ljcifs/smb/SmbFile;->open(IIII)V
    :try_end_e1
    .catch Ljcifs/smb/SmbException; {:try_start_de .. :try_end_e1} :catch_186
    .catchall {:try_start_de .. :try_end_e1} :catchall_184

    .line 226
    const/16 v11, 0x102

    .line 228
    const/16 v6, 0x52

    .line 230
    :try_start_e5
    iget v0, v1, Ljcifs/smb/SmbFile;->attributes:I

    .line 232
    invoke-virtual {v13, v6, v11, v0, v12}, Ljcifs/smb/SmbFile;->open(IIII)V
    :try_end_ea
    .catch Ljcifs/smb/SmbAuthException; {:try_start_e5 .. :try_end_ea} :catch_eb
    .catch Ljcifs/smb/SmbException; {:try_start_e5 .. :try_end_ea} :catch_186
    .catchall {:try_start_e5 .. :try_end_ea} :catchall_184

    .line 235
    goto :goto_105

    .line 236
    :catch_eb
    move-exception v0

    .line 237
    :try_start_ec
    iget v2, v13, Ljcifs/smb/SmbFile;->attributes:I

    .line 239
    and-int/lit8 v3, v2, 0x1

    .line 241
    if-eqz v3, :cond_183

    .line 243
    and-int/lit8 v3, v2, -0x2

    .line 245
    const-wide/16 v4, 0x0

    .line 247
    const-wide/16 v16, 0x0

    .line 249
    move-object/from16 v2, p1

    .line 251
    move v10, v6

    .line 252
    move-wide/from16 v6, v16

    .line 254
    invoke-virtual/range {v2 .. v7}, Ljcifs/smb/SmbFile;->setPathInformation(IJJ)V

    .line 257
    iget v0, v1, Ljcifs/smb/SmbFile;->attributes:I

    .line 259
    invoke-virtual {v13, v10, v11, v0, v12}, Ljcifs/smb/SmbFile;->open(IIII)V

    .line 262
    :goto_105
    move-wide v10, v8

    .line 263
    move v0, v12

    .line 264
    :goto_107
    iget v2, v1, Ljcifs/smb/SmbFile;->fid:I

    .line 266
    move/from16 v6, p3

    .line 268
    invoke-virtual {v15, v2, v10, v11, v6}, Ljcifs/smb/SmbComReadAndX;->setParam(IJI)V

    .line 271
    aget-object v2, p2, v0

    .line 273
    move-object/from16 v7, p6

    .line 275
    invoke-virtual {v7, v2, v12}, Ljcifs/smb/SmbComReadAndXResponse;->setParam([BI)V

    .line 278
    invoke-virtual {v1, v15, v7}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 281
    monitor-enter p4
    :try_end_119
    .catch Ljcifs/smb/SmbException; {:try_start_ec .. :try_end_119} :catch_186
    .catchall {:try_start_ec .. :try_end_119} :catchall_184

    .line 282
    :try_start_119
    iget-object v2, v14, Ljcifs/smb/SmbFile$WriterThread;->e:Ljcifs/smb/SmbException;

    .line 284
    if-nez v2, :cond_17f

    .line 286
    :goto_11d
    iget-boolean v2, v14, Ljcifs/smb/SmbFile$WriterThread;->ready:Z

    .line 288
    if-eqz v2, :cond_167

    .line 290
    iget-object v2, v14, Ljcifs/smb/SmbFile$WriterThread;->e:Ljcifs/smb/SmbException;

    .line 292
    if-nez v2, :cond_166

    .line 294
    iget v4, v7, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I

    .line 296
    if-gtz v4, :cond_14d

    .line 298
    monitor-exit p4
    :try_end_12a
    .catchall {:try_start_119 .. :try_end_12a} :catchall_180

    .line 299
    :try_start_12a
    new-instance v0, Ljcifs/smb/Trans2SetFileInformation;

    .line 301
    iget v2, v13, Ljcifs/smb/SmbFile;->fid:I

    .line 303
    iget v3, v1, Ljcifs/smb/SmbFile;->attributes:I

    .line 305
    iget-wide v4, v1, Ljcifs/smb/SmbFile;->createTime:J

    .line 307
    iget-wide v6, v1, Ljcifs/smb/SmbFile;->lastModified:J

    .line 309
    move-object/from16 v19, v0

    .line 311
    move/from16 v20, v2

    .line 313
    move/from16 v21, v3

    .line 315
    move-wide/from16 v22, v4

    .line 317
    move-wide/from16 v24, v6

    .line 319
    invoke-direct/range {v19 .. v25}, Ljcifs/smb/Trans2SetFileInformation;-><init>(IIJJ)V

    .line 322
    new-instance v2, Ljcifs/smb/Trans2SetFileInformationResponse;

    .line 324
    invoke-direct {v2}, Ljcifs/smb/Trans2SetFileInformationResponse;-><init>()V

    .line 327
    invoke-virtual {v13, v0, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 330
    invoke-virtual {v13, v8, v9}, Ljcifs/smb/SmbFile;->close(J)V
    :try_end_14c
    .catch Ljcifs/smb/SmbException; {:try_start_12a .. :try_end_14c} :catch_186
    .catchall {:try_start_12a .. :try_end_14c} :catchall_184

    .line 333
    goto :goto_195

    .line 334
    :cond_14d
    :try_start_14d
    aget-object v3, p2, v0

    .line 336
    move-object/from16 v2, p4

    .line 338
    move-object/from16 v5, p1

    .line 340
    move-object v8, v7

    .line 341
    move-wide v6, v10

    .line 342
    invoke-virtual/range {v2 .. v7}, Ljcifs/smb/SmbFile$WriterThread;->write([BILjcifs/smb/SmbFile;J)V

    .line 345
    monitor-exit p4
    :try_end_159
    .catchall {:try_start_14d .. :try_end_159} :catchall_180

    .line 346
    const/4 v2, 0x1

    .line 347
    if-ne v0, v2, :cond_15e

    .line 349
    move v0, v12

    .line 350
    goto :goto_15f

    .line 351
    :cond_15e
    const/4 v0, 0x1

    .line 352
    :goto_15f
    :try_start_15f
    iget v2, v8, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I
    :try_end_161
    .catch Ljcifs/smb/SmbException; {:try_start_15f .. :try_end_161} :catch_186
    .catchall {:try_start_15f .. :try_end_161} :catchall_184

    .line 354
    int-to-long v2, v2

    .line 355
    add-long/2addr v10, v2

    .line 356
    const-wide/16 v8, 0x0

    .line 358
    goto :goto_107

    .line 359
    :cond_166
    :try_start_166
    throw v2
    :try_end_167
    .catchall {:try_start_166 .. :try_end_167} :catchall_180

    .line 360
    :cond_167
    move-object v8, v7

    .line 361
    :try_start_168
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->wait()V
    :try_end_16b
    .catch Ljava/lang/InterruptedException; {:try_start_168 .. :try_end_16b} :catch_171
    .catchall {:try_start_168 .. :try_end_16b} :catchall_180

    .line 364
    move/from16 v6, p3

    .line 366
    move-object v7, v8

    .line 367
    const-wide/16 v8, 0x0

    .line 369
    goto :goto_11d

    .line 370
    :catch_171
    move-exception v0

    .line 371
    move-object v2, v0

    .line 372
    :try_start_173
    new-instance v0, Ljcifs/smb/SmbException;

    .line 374
    iget-object v3, v13, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 376
    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 379
    move-result-object v3

    .line 380
    invoke-direct {v0, v3, v2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 383
    throw v0

    .line 384
    :cond_17f
    throw v2

    .line 385
    :catchall_180
    move-exception v0

    .line 386
    monitor-exit p4
    :try_end_182
    .catchall {:try_start_173 .. :try_end_182} :catchall_180

    .line 387
    :try_start_182
    throw v0

    .line 388
    :cond_183
    throw v0
    :try_end_184
    .catch Ljcifs/smb/SmbException; {:try_start_182 .. :try_end_184} :catch_186
    .catchall {:try_start_182 .. :try_end_184} :catchall_184

    .line 389
    :catchall_184
    move-exception v0

    .line 390
    goto :goto_1c2

    .line 391
    :catch_186
    move-exception v0

    .line 392
    :try_start_187
    sget-boolean v2, Ljcifs/smb/SmbFile;->ignoreCopyToException:Z

    .line 394
    if-eqz v2, :cond_199

    .line 396
    sget v2, Ljcifs/util/LogStream;->level:I

    .line 398
    const/4 v3, 0x1

    .line 399
    if-le v2, v3, :cond_195

    .line 401
    sget-object v2, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    .line 403
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_195
    .catchall {:try_start_187 .. :try_end_195} :catchall_184

    .line 406
    :cond_195
    :goto_195
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->close()V

    .line 409
    :goto_198
    return-void

    .line 410
    :cond_199
    :try_start_199
    new-instance v2, Ljcifs/smb/SmbException;

    .line 412
    new-instance v3, Ljava/lang/StringBuilder;

    .line 414
    const-string v4, "Failed to copy file from ["

    .line 416
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 419
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->toString()Ljava/lang/String;

    .line 422
    move-result-object v4

    .line 423
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    const-string v4, "] to ["

    .line 428
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual/range {p1 .. p1}, Ljcifs/smb/SmbFile;->toString()Ljava/lang/String;

    .line 434
    move-result-object v4

    .line 435
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    const-string v4, "]"

    .line 440
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 446
    move-result-object v3

    .line 447
    invoke-direct {v2, v3, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 450
    throw v2
    :try_end_1c2
    .catchall {:try_start_199 .. :try_end_1c2} :catchall_184

    .line 451
    :goto_1c2
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->close()V

    .line 454
    throw v0
.end method

.method public createNewFile()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_1a

    .line 12
    const/16 v0, 0x33

    .line 14
    const/16 v1, 0x80

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {p0, v0, v2, v1, v2}, Ljcifs/smb/SmbFile;->open0(IIII)I

    .line 20
    move-result v0

    .line 21
    const-wide/16 v1, 0x0

    .line 23
    invoke-virtual {p0, v0, v1, v2}, Ljcifs/smb/SmbFile;->close(IJ)V

    .line 26
    return-void

    .line 27
    :cond_1a
    new-instance v0, Ljcifs/smb/SmbException;

    .line 29
    const-string v1, "Invalid operation for workgroups, servers, or shares"

    .line 31
    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    .line 34
    throw v0
.end method

.method public createTime()J
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-le v0, v1, :cond_11

    .line 12
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    .line 15
    iget-wide v0, p0, Ljcifs/smb/SmbFile;->createTime:J

    .line 17
    return-wide v0

    .line 18
    :cond_11
    const-wide/16 v0, 0x0

    .line 20
    return-wide v0
.end method

.method public delete()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    .line 2
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 3
    iget-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->delete(Ljava/lang/String;)V

    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .registers 11

    .line 4
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_ad

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    cmp-long v0, v2, v4

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-lez v0, :cond_49

    const/16 v0, 0x11

    .line 6
    iput v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    .line 7
    iput-wide v3, p0, Ljcifs/smb/SmbFile;->createTime:J

    .line 8
    iput-wide v3, p0, Ljcifs/smb/SmbFile;->lastModified:J

    .line 9
    iput-boolean v2, p0, Ljcifs/smb/SmbFile;->isExists:Z

    .line 10
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x101

    invoke-virtual {p0, v0, v5}, Ljcifs/smb/SmbFile;->queryPath(Ljava/lang/String;I)Ljcifs/smb/Info;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljcifs/smb/Info;->getAttributes()I

    move-result v5

    iput v5, p0, Ljcifs/smb/SmbFile;->attributes:I

    .line 12
    invoke-interface {v0}, Ljcifs/smb/Info;->getCreateTime()J

    move-result-wide v5

    iput-wide v5, p0, Ljcifs/smb/SmbFile;->createTime:J

    .line 13
    invoke-interface {v0}, Ljcifs/smb/Info;->getLastWriteTime()J

    move-result-wide v5

    iput-wide v5, p0, Ljcifs/smb/SmbFile;->lastModified:J

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v7, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr v5, v7

    iput-wide v5, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    .line 15
    iput-boolean v1, p0, Ljcifs/smb/SmbFile;->isExists:Z

    .line 16
    :cond_49
    iget v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_51

    .line 17
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->setReadWrite()V

    .line 18
    :cond_51
    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_69

    .line 19
    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "delete: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 20
    :cond_69
    iget v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9c

    :try_start_6f
    const-string v0, "*"

    const/16 v1, 0x16

    const/4 v5, 0x0

    .line 21
    invoke-virtual {p0, v0, v1, v5, v5}, Ljcifs/smb/SmbFile;->listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;

    move-result-object v0

    .line 22
    :goto_78
    array-length v1, v0

    if-lt v2, v1, :cond_7c

    goto :goto_8e

    .line 23
    :cond_7c
    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->delete()V
    :try_end_81
    .catch Ljcifs/smb/SmbException; {:try_start_6f .. :try_end_81} :catch_84

    add-int/lit8 v2, v2, 0x1

    goto :goto_78

    :catch_84
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v1

    const v2, -0x3ffffff1  # -2.0000036f

    if-ne v1, v2, :cond_9b

    .line 25
    :goto_8e
    new-instance v0, Ljcifs/smb/SmbComDeleteDirectory;

    invoke-direct {v0, p1}, Ljcifs/smb/SmbComDeleteDirectory;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto :goto_a8

    .line 26
    :cond_9b
    throw v0

    .line 27
    :cond_9c
    new-instance v0, Ljcifs/smb/SmbComDelete;

    invoke-direct {v0, p1}, Ljcifs/smb/SmbComDelete;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 28
    :goto_a8
    iput-wide v3, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    iput-wide v3, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    return-void

    .line 29
    :cond_ad
    new-instance p1, Ljcifs/smb/SmbException;

    const-string v0, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {p1, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public doConnect()V
    .registers 11

    .line 1
    const-string v0, "doConnect: "

    .line 3
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_10

    .line 12
    iget-object v2, v2, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    .line 14
    iget-object v2, v2, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 16
    goto :goto_28

    .line 17
    :cond_10
    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 19
    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    .line 22
    move-result v2

    .line 23
    invoke-static {v1, v2}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    .line 26
    move-result-object v2

    .line 27
    iget-object v4, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 29
    invoke-virtual {v2, v4}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    .line 32
    move-result-object v4

    .line 33
    iget-object v5, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    .line 35
    invoke-virtual {v4, v5, v3}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    .line 38
    move-result-object v4

    .line 39
    iput-object v4, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    .line 41
    :goto_28
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServerWithDfs()Ljava/lang/String;

    .line 44
    move-result-object v4

    .line 45
    iget-object v5, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    .line 47
    sget-object v6, Ljcifs/smb/SmbFile;->dfs:Ljcifs/smb/Dfs;

    .line 49
    iget-object v7, v5, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    .line 51
    iget-object v8, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 53
    invoke-virtual {v6, v4, v7, v3, v8}, Ljcifs/smb/Dfs;->resolve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;

    .line 56
    move-result-object v6

    .line 57
    const/4 v7, 0x0

    .line 58
    const/4 v8, 0x1

    .line 59
    if-eqz v6, :cond_3e

    .line 61
    move v6, v8

    .line 62
    goto :goto_3f

    .line 63
    :cond_3e
    move v6, v7

    .line 64
    :goto_3f
    iput-boolean v6, v5, Ljcifs/smb/SmbTree;->inDomainDfs:Z

    .line 66
    iget-object v5, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    .line 68
    iget-boolean v6, v5, Ljcifs/smb/SmbTree;->inDomainDfs:Z

    .line 70
    const/4 v9, 0x2

    .line 71
    if-eqz v6, :cond_4a

    .line 73
    iput v9, v5, Ljcifs/smb/SmbTree;->connectionState:I

    .line 75
    :cond_4a
    :try_start_4a
    sget v5, Ljcifs/util/LogStream;->level:I

    .line 77
    const/4 v6, 0x3

    .line 78
    if-lt v5, v6, :cond_71

    .line 80
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 82
    new-instance v6, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v6

    .line 94
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    sget-object v5, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    .line 99
    new-instance v6, Ljava/lang/StringBuilder;

    .line 101
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    :cond_71
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    .line 116
    invoke-virtual {v0, v3, v3}, Ljcifs/smb/SmbTree;->treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_76
    .catch Ljcifs/smb/SmbAuthException; {:try_start_4a .. :try_end_76} :catch_77

    .line 119
    goto :goto_c0

    .line 120
    :catch_77
    move-exception v0

    .line 121
    iget-object v1, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    .line 123
    if-nez v1, :cond_8c

    .line 125
    sget-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->NULL:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 127
    invoke-virtual {v2, v0}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v0, v3, v3}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    .line 134
    move-result-object v0

    .line 135
    iput-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    .line 137
    invoke-virtual {v0, v3, v3}, Ljcifs/smb/SmbTree;->treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 140
    goto :goto_c0

    .line 141
    :cond_8c
    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 143
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 146
    move-result-object v1

    .line 147
    invoke-static {v1, v0}, Ljcifs/smb/NtlmAuthenticator;->requestNtlmPasswordAuthentication(Ljava/lang/String;Ljcifs/smb/SmbAuthException;)Ljcifs/smb/NtlmPasswordAuthentication;

    .line 150
    move-result-object v1

    .line 151
    if-eqz v1, :cond_c1

    .line 153
    iput-object v1, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 155
    invoke-virtual {v2, v1}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    .line 158
    move-result-object v0

    .line 159
    iget-object v1, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    .line 161
    invoke-virtual {v0, v1, v3}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    .line 164
    move-result-object v0

    .line 165
    iput-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    .line 167
    sget-object v1, Ljcifs/smb/SmbFile;->dfs:Ljcifs/smb/Dfs;

    .line 169
    iget-object v2, v0, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    .line 171
    iget-object v5, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 173
    invoke-virtual {v1, v4, v2, v3, v5}, Ljcifs/smb/Dfs;->resolve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;

    .line 176
    move-result-object v1

    .line 177
    if-eqz v1, :cond_b3

    .line 179
    move v7, v8

    .line 180
    :cond_b3
    iput-boolean v7, v0, Ljcifs/smb/SmbTree;->inDomainDfs:Z

    .line 182
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    .line 184
    iget-boolean v1, v0, Ljcifs/smb/SmbTree;->inDomainDfs:Z

    .line 186
    if-eqz v1, :cond_bd

    .line 188
    iput v9, v0, Ljcifs/smb/SmbTree;->connectionState:I

    .line 190
    :cond_bd
    invoke-virtual {v0, v3, v3}, Ljcifs/smb/SmbTree;->treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 193
    :goto_c0
    return-void

    .line 194
    :cond_c1
    sget v1, Ljcifs/util/LogStream;->level:I

    .line 196
    if-lt v1, v8, :cond_d0

    .line 198
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->hasNextAddress()Z

    .line 201
    move-result v1

    .line 202
    if-eqz v1, :cond_d0

    .line 204
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 209
    :cond_d0
    throw v0
.end method

.method public doDfsRootEnum()[Ljcifs/smb/FileEntry;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "ncacn_np:"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljcifs/UniAddress;->getHostAddress()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, "[\\PIPE\\netdfs]"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 30
    invoke-static {v0, v1}, Ljcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;

    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x4

    .line 35
    :try_start_22
    new-instance v2, Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;

    .line 37
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    .line 40
    move-result-object v3

    .line 41
    invoke-direct {v2, v3}, Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0, v2}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    .line 47
    iget v3, v2, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->retval:I

    .line 49
    if-nez v3, :cond_45

    .line 51
    invoke-virtual {v2}, Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;->getEntries()[Ljcifs/smb/FileEntry;

    .line 54
    move-result-object v2
    :try_end_36
    .catchall {:try_start_22 .. :try_end_36} :catchall_4e

    .line 55
    :try_start_36
    invoke-virtual {v0}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    .line 58
    goto :goto_44

    .line 59
    :catch_3a
    move-exception v0

    .line 60
    sget v3, Ljcifs/util/LogStream;->level:I

    .line 62
    if-lt v3, v1, :cond_44

    .line 64
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 69
    :cond_44
    :goto_44
    return-object v2

    .line 70
    :cond_45
    :try_start_45
    new-instance v3, Ljcifs/smb/SmbException;

    .line 72
    iget v2, v2, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->retval:I

    .line 74
    const/4 v4, 0x1

    .line 75
    invoke-direct {v3, v2, v4}, Ljcifs/smb/SmbException;-><init>(IZ)V

    .line 78
    throw v3
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_4e

    .line 79
    :catchall_4e
    move-exception v2

    .line 80
    :try_start_4f
    invoke-virtual {v0}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    .line 83
    goto :goto_5d

    .line 84
    :catch_53
    move-exception v0

    .line 85
    sget v3, Ljcifs/util/LogStream;->level:I

    .line 87
    if-lt v3, v1, :cond_5d

    .line 89
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 94
    :cond_5d
    :goto_5d
    throw v2
.end method

.method public doEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V
    .registers 14

    .line 1
    if-eqz p6, :cond_10

    .line 3
    instance-of v0, p6, Ljcifs/smb/DosFileFilter;

    .line 5
    if-eqz v0, :cond_10

    .line 7
    move-object p4, p6

    .line 8
    check-cast p4, Ljcifs/smb/DosFileFilter;

    .line 10
    iget-object v0, p4, Ljcifs/smb/DosFileFilter;->wildcard:Ljava/lang/String;

    .line 12
    if-eqz v0, :cond_e

    .line 14
    move-object p3, v0

    .line 15
    :cond_e
    iget p4, p4, Ljcifs/smb/DosFileFilter;->attributes:I

    .line 17
    :cond_10
    move-object v3, p3

    .line 18
    move v4, p4

    .line 19
    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 21
    const-string p4, "doEnum>>"

    .line 23
    invoke-virtual {p3, p4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 26
    :try_start_19
    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 28
    new-instance p4, Ljava/lang/StringBuilder;

    .line 30
    const-string v0, "url.getHost(): "

    .line 32
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 37
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p4

    .line 48
    invoke-virtual {p3, p4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 51
    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 53
    new-instance p4, Ljava/lang/StringBuilder;

    .line 55
    const-string v0, "share: "

    .line 57
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    .line 62
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p4

    .line 69
    invoke-virtual {p3, p4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 74
    new-instance p4, Ljava/lang/StringBuilder;

    .line 76
    const-string v0, "type:! "

    .line 78
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    .line 84
    move-result v0

    .line 85
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p4

    .line 92
    invoke-virtual {p3, p4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    iget-object p3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 97
    invoke-virtual {p3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 100
    move-result-object p3

    .line 101
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 104
    move-result p3

    .line 105
    if-eqz p3, :cond_96

    .line 107
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    .line 110
    move-result p3

    .line 111
    const/4 p4, 0x2

    .line 112
    if-ne p3, p4, :cond_72

    .line 114
    goto :goto_96

    .line 115
    :cond_72
    iget-object p3, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    .line 117
    if-nez p3, :cond_86

    .line 119
    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 121
    const-string p4, "doEnum 1"

    .line 123
    invoke-virtual {p3, p4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    move-object v0, p0

    .line 127
    move-object v1, p1

    .line 128
    move v2, p2

    .line 129
    move-object v5, p5

    .line 130
    move-object v6, p6

    .line 131
    invoke-virtual/range {v0 .. v6}, Ljcifs/smb/SmbFile;->doShareEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V

    .line 134
    goto :goto_a5

    .line 135
    :cond_86
    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 137
    const-string p4, "doEnum 2"

    .line 139
    invoke-virtual {p3, p4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 142
    move-object v0, p0

    .line 143
    move-object v1, p1

    .line 144
    move v2, p2

    .line 145
    move-object v5, p5

    .line 146
    move-object v6, p6

    .line 147
    invoke-virtual/range {v0 .. v6}, Ljcifs/smb/SmbFile;->doFindFirstNext(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V

    .line 150
    goto :goto_a5

    .line 151
    :cond_96
    :goto_96
    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 153
    const-string p4, "doEnum 0"

    .line 155
    invoke-virtual {p3, p4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 158
    move-object v0, p0

    .line 159
    move-object v1, p1

    .line 160
    move v2, p2

    .line 161
    move-object v5, p5

    .line 162
    move-object v6, p6

    .line 163
    invoke-virtual/range {v0 .. v6}, Ljcifs/smb/SmbFile;->doNetServerEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V
    :try_end_a5
    .catch Ljava/net/UnknownHostException; {:try_start_19 .. :try_end_a5} :catch_b3
    .catch Ljava/net/MalformedURLException; {:try_start_19 .. :try_end_a5} :catch_a6

    .line 166
    :goto_a5
    return-void

    .line 167
    :catch_a6
    move-exception p1

    .line 168
    new-instance p2, Ljcifs/smb/SmbException;

    .line 170
    iget-object p3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 172
    invoke-virtual {p3}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 175
    move-result-object p3

    .line 176
    invoke-direct {p2, p3, p1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    throw p2

    .line 180
    :catch_b3
    move-exception p1

    .line 181
    new-instance p2, Ljcifs/smb/SmbException;

    .line 183
    iget-object p3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 185
    invoke-virtual {p3}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 188
    move-result-object p3

    .line 189
    invoke-direct {p2, p3, p1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    throw p2
.end method

.method public doFindFirstNext(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V
    .registers 31

    .line 1
    move-object/from16 v12, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    move-object/from16 v13, p5

    .line 7
    move-object/from16 v14, p6

    .line 9
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    iget-object v2, v12, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 15
    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    const/16 v3, 0x2f

    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 24
    move-result v3

    .line 25
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 28
    move-result v2

    .line 29
    add-int/lit8 v2, v2, -0x1

    .line 31
    if-ne v3, v2, :cond_11c

    .line 33
    new-instance v2, Ljcifs/smb/Trans2FindFirst2;

    .line 35
    move-object/from16 v3, p3

    .line 37
    move/from16 v4, p4

    .line 39
    invoke-direct {v2, v1, v3, v4}, Ljcifs/smb/Trans2FindFirst2;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 42
    new-instance v15, Ljcifs/smb/Trans2FindFirst2Response;

    .line 44
    invoke-direct {v15}, Ljcifs/smb/Trans2FindFirst2Response;-><init>()V

    .line 47
    sget v1, Ljcifs/util/LogStream;->level:I

    .line 49
    const/4 v10, 0x3

    .line 50
    if-lt v1, v10, :cond_48

    .line 52
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    .line 56
    const-string v4, "doFindFirstNext: "

    .line 58
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    iget-object v4, v2, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 73
    :cond_48
    invoke-virtual {v12, v2, v15}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 76
    iget v11, v15, Ljcifs/smb/Trans2FindFirst2Response;->sid:I

    .line 78
    new-instance v8, Ljcifs/smb/Trans2FindNext2;

    .line 80
    iget v1, v15, Ljcifs/smb/Trans2FindFirst2Response;->resumeKey:I

    .line 82
    iget-object v2, v15, Ljcifs/smb/Trans2FindFirst2Response;->lastName:Ljava/lang/String;

    .line 84
    invoke-direct {v8, v11, v1, v2}, Ljcifs/smb/Trans2FindNext2;-><init>(IILjava/lang/String;)V

    .line 87
    const/4 v1, 0x2

    .line 88
    iput-byte v1, v15, Ljcifs/smb/SmbComTransactionResponse;->subCommand:B

    .line 90
    :goto_59
    const/4 v1, 0x0

    .line 91
    move v9, v1

    .line 92
    :goto_5b
    iget v1, v15, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    .line 94
    if-lt v9, v1, :cond_8d

    .line 96
    iget-boolean v2, v15, Ljcifs/smb/Trans2FindFirst2Response;->isEndOfSearch:Z

    .line 98
    if-nez v2, :cond_74

    .line 100
    if-nez v1, :cond_66

    .line 102
    goto :goto_74

    .line 103
    :cond_66
    iget v1, v15, Ljcifs/smb/Trans2FindFirst2Response;->resumeKey:I

    .line 105
    iget-object v2, v15, Ljcifs/smb/Trans2FindFirst2Response;->lastName:Ljava/lang/String;

    .line 107
    invoke-virtual {v8, v1, v2}, Ljcifs/smb/Trans2FindNext2;->reset(ILjava/lang/String;)V

    .line 110
    invoke-virtual {v15}, Ljcifs/smb/SmbComTransactionResponse;->reset()V

    .line 113
    invoke-virtual {v12, v8, v15}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 116
    goto :goto_59

    .line 117
    :cond_74
    :goto_74
    :try_start_74
    new-instance v0, Ljcifs/smb/SmbComFindClose2;

    .line 119
    invoke-direct {v0, v11}, Ljcifs/smb/SmbComFindClose2;-><init>(I)V

    .line 122
    invoke-direct/range {p0 .. p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v12, v0, v1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_80
    .catch Ljcifs/smb/SmbException; {:try_start_74 .. :try_end_80} :catch_81

    .line 129
    goto :goto_8c

    .line 130
    :catch_81
    move-exception v0

    .line 131
    sget v1, Ljcifs/util/LogStream;->level:I

    .line 133
    const/4 v2, 0x4

    .line 134
    if-lt v1, v2, :cond_8c

    .line 136
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 141
    :cond_8c
    :goto_8c
    return-void

    .line 142
    :cond_8d
    iget-object v1, v15, Ljcifs/smb/SmbComTransactionResponse;->results:[Ljcifs/smb/FileEntry;

    .line 144
    aget-object v1, v1, v9

    .line 146
    invoke-interface {v1}, Ljcifs/smb/FileEntry;->getName()Ljava/lang/String;

    .line 149
    move-result-object v6

    .line 150
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 153
    move-result v2

    .line 154
    if-ge v2, v10, :cond_b8

    .line 156
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 159
    move-result v2

    .line 160
    sget v3, Ljcifs/smb/SmbFile;->HASH_DOT:I

    .line 162
    if-eq v2, v3, :cond_a7

    .line 164
    sget v3, Ljcifs/smb/SmbFile;->HASH_DOT_DOT:I

    .line 166
    if-ne v2, v3, :cond_b8

    .line 168
    :cond_a7
    const-string v2, "."

    .line 170
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    move-result v2

    .line 174
    if-nez v2, :cond_10a

    .line 176
    const-string v2, ".."

    .line 178
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    move-result v2

    .line 182
    if-eqz v2, :cond_b8

    .line 184
    goto :goto_10a

    .line 185
    :cond_b8
    if-eqz v13, :cond_c1

    .line 187
    invoke-interface {v13, v12, v6}, Ljcifs/smb/SmbFilenameFilter;->accept(Ljcifs/smb/SmbFile;Ljava/lang/String;)Z

    .line 190
    move-result v2

    .line 191
    if-nez v2, :cond_c1

    .line 193
    goto :goto_10a

    .line 194
    :cond_c1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 197
    move-result v2

    .line 198
    if-lez v2, :cond_10a

    .line 200
    new-instance v7, Ljcifs/smb/SmbFile;

    .line 202
    const/4 v4, 0x1

    .line 203
    invoke-interface {v1}, Ljcifs/smb/FileEntry;->getAttributes()I

    .line 206
    move-result v5

    .line 207
    invoke-interface {v1}, Ljcifs/smb/FileEntry;->createTime()J

    .line 210
    move-result-wide v16

    .line 211
    invoke-interface {v1}, Ljcifs/smb/FileEntry;->lastModified()J

    .line 214
    move-result-wide v18

    .line 215
    invoke-interface {v1}, Ljcifs/smb/FileEntry;->length()J

    .line 218
    move-result-wide v20

    .line 219
    move-object v1, v7

    .line 220
    move-object/from16 v2, p0

    .line 222
    move-object v3, v6

    .line 223
    move-object/from16 v22, v6

    .line 225
    move-object/from16 v23, v7

    .line 227
    move-wide/from16 v6, v16

    .line 229
    move-object/from16 v16, v8

    .line 231
    move/from16 v17, v9

    .line 233
    move-wide/from16 v8, v18

    .line 235
    move/from16 v19, v10

    .line 237
    move/from16 v18, v11

    .line 239
    move-wide/from16 v10, v20

    .line 241
    invoke-direct/range {v1 .. v11}, Ljcifs/smb/SmbFile;-><init>(Ljcifs/smb/SmbFile;Ljava/lang/String;IIJJJ)V

    .line 244
    move-object/from16 v1, v23

    .line 246
    if-eqz v14, :cond_fe

    .line 248
    invoke-interface {v14, v1}, Ljcifs/smb/SmbFileFilter;->accept(Ljcifs/smb/SmbFile;)Z

    .line 251
    move-result v2

    .line 252
    if-nez v2, :cond_fe

    .line 254
    goto :goto_112

    .line 255
    :cond_fe
    if-eqz p2, :cond_104

    .line 257
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    goto :goto_112

    .line 261
    :cond_104
    move-object/from16 v1, v22

    .line 263
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    goto :goto_112

    .line 267
    :cond_10a
    :goto_10a
    move-object/from16 v16, v8

    .line 269
    move/from16 v17, v9

    .line 271
    move/from16 v19, v10

    .line 273
    move/from16 v18, v11

    .line 275
    :goto_112
    add-int/lit8 v9, v17, 0x1

    .line 277
    move-object/from16 v8, v16

    .line 279
    move/from16 v11, v18

    .line 281
    move/from16 v10, v19

    .line 283
    goto/16 :goto_5b

    .line 285
    :cond_11c
    new-instance v0, Ljcifs/smb/SmbException;

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    .line 289
    iget-object v2, v12, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 291
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 294
    move-result-object v2

    .line 295
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 298
    move-result-object v2

    .line 299
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    const-string v2, " directory must end with \'/\'"

    .line 304
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    move-result-object v1

    .line 311
    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    .line 314
    throw v0
.end method

.method public doMsrpcShareEnum()[Ljcifs/smb/FileEntry;
    .registers 6

    .line 1
    new-instance v0, Ljcifs/dcerpc/msrpc/MsrpcShareEnum;

    .line 3
    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 5
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljcifs/dcerpc/msrpc/MsrpcShareEnum;-><init>(Ljava/lang/String;)V

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    const-string v2, "ncacn_np:"

    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljcifs/UniAddress;->getHostAddress()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const-string v2, "[\\PIPE\\srvsvc]"

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    iget-object v2, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 41
    invoke-static {v1, v2}, Ljcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;

    .line 44
    move-result-object v1

    .line 45
    const/4 v2, 0x4

    .line 46
    :try_start_2d
    invoke-virtual {v1, v0}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    .line 49
    iget v3, v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->retval:I

    .line 51
    if-nez v3, :cond_47

    .line 53
    invoke-virtual {v0}, Ljcifs/dcerpc/msrpc/MsrpcShareEnum;->getEntries()[Ljcifs/smb/FileEntry;

    .line 56
    move-result-object v0
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_50

    .line 57
    :try_start_38
    invoke-virtual {v1}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    .line 60
    goto :goto_46

    .line 61
    :catch_3c
    move-exception v1

    .line 62
    sget v3, Ljcifs/util/LogStream;->level:I

    .line 64
    if-lt v3, v2, :cond_46

    .line 66
    sget-object v2, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 71
    :cond_46
    :goto_46
    return-object v0

    .line 72
    :cond_47
    :try_start_47
    new-instance v3, Ljcifs/smb/SmbException;

    .line 74
    iget v0, v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->retval:I

    .line 76
    const/4 v4, 0x1

    .line 77
    invoke-direct {v3, v0, v4}, Ljcifs/smb/SmbException;-><init>(IZ)V

    .line 80
    throw v3
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_50

    .line 81
    :catchall_50
    move-exception v0

    .line 82
    :try_start_51
    invoke-virtual {v1}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    .line 85
    goto :goto_5f

    .line 86
    :catch_55
    move-exception v1

    .line 87
    sget v3, Ljcifs/util/LogStream;->level:I

    .line 89
    if-lt v3, v2, :cond_5f

    .line 91
    sget-object v2, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 96
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

    .line 24
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "doNetServerEnum"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 25
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->connect0()V

    .line 26
    new-instance v12, Ljcifs/smb/NetServerEnum2;

    iget-object v0, v11, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, v0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v0, v0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v0, v0, Ljcifs/smb/SmbTransport$ServerData;->oemDomainName:Ljava/lang/String;

    const/high16 v1, -0x80000000

    invoke-direct {v12, v0, v1}, Ljcifs/smb/NetServerEnum2;-><init>(Ljava/lang/String;I)V

    .line 27
    new-instance v13, Ljcifs/smb/NetServerEnum2Response;

    invoke-direct {v13}, Ljcifs/smb/NetServerEnum2Response;-><init>()V

    .line 28
    :cond_22
    invoke-virtual {v11, v12, v13}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 29
    iget v0, v13, Ljcifs/smb/SmbComTransactionResponse;->status:I

    const/16 v1, 0xea

    const/4 v2, 0x1

    if-eqz v0, :cond_37

    if-ne v0, v1, :cond_2f

    goto :goto_37

    .line 30
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

    .line 31
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

    .line 32
    iget v0, v13, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    if-eqz v15, :cond_57

    sub-int/2addr v0, v2

    :cond_57
    move v9, v0

    move v10, v14

    :goto_59
    if-lt v10, v9, :cond_6a

    const/16 v0, -0x29

    .line 33
    iput-byte v0, v12, Ljcifs/smb/SmbComTransaction;->subCommand:B

    .line 34
    iget-object v0, v13, Ljcifs/smb/NetServerEnum2Response;->lastName:Ljava/lang/String;

    invoke-virtual {v12, v14, v0}, Ljcifs/smb/NetServerEnum2;->reset(ILjava/lang/String;)V

    .line 35
    invoke-virtual {v13}, Ljcifs/smb/SmbComTransactionResponse;->reset()V

    if-nez v15, :cond_22

    return-void

    .line 36
    :cond_6a
    iget-object v0, v13, Ljcifs/smb/SmbComTransactionResponse;->results:[Ljcifs/smb/FileEntry;

    aget-object v0, v0, v10

    .line 37
    invoke-interface {v0}, Ljcifs/smb/FileEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 38
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_ae

    .line 40
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

    .line 41
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

    .line 1
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

    .line 2
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->connect0()V

    .line 3
    new-instance v0, Ljcifs/smb/NetServerEnum2;

    iget-object v1, v11, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v1, v1, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v1, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v1, v1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v1, v1, Ljcifs/smb/SmbTransport$ServerData;->oemDomainName:Ljava/lang/String;

    const/high16 v2, -0x80000000

    invoke-direct {v0, v1, v2}, Ljcifs/smb/NetServerEnum2;-><init>(Ljava/lang/String;I)V

    .line 4
    new-instance v1, Ljcifs/smb/NetServerEnum2Response;

    invoke-direct {v1}, Ljcifs/smb/NetServerEnum2Response;-><init>()V

    :goto_37
    move-object v10, v0

    move-object v7, v1

    goto :goto_4e

    :cond_3a
    if-ne v0, v9, :cond_f6

    .line 5
    new-instance v0, Ljcifs/smb/NetServerEnum2;

    iget-object v1, v11, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Ljcifs/smb/NetServerEnum2;-><init>(Ljava/lang/String;I)V

    .line 6
    new-instance v1, Ljcifs/smb/NetServerEnum2Response;

    invoke-direct {v1}, Ljcifs/smb/NetServerEnum2Response;-><init>()V

    goto :goto_37

    .line 7
    :cond_4e
    :goto_4e
    invoke-virtual {v11, v10, v7}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 8
    iget v0, v7, Ljcifs/smb/SmbComTransactionResponse;->status:I

    const/16 v1, 0xea

    const/4 v2, 0x1

    if-eqz v0, :cond_63

    if-ne v0, v1, :cond_5b

    goto :goto_63

    .line 9
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

    .line 10
    :goto_6a
    iget v0, v7, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    if-eqz v16, :cond_6f

    sub-int/2addr v0, v2

    :cond_6f
    move v8, v0

    move v5, v15

    :goto_71
    if-lt v5, v8, :cond_89

    .line 11
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v0

    if-eq v0, v9, :cond_7a

    goto :goto_88

    :cond_7a
    const/16 v0, -0x29

    .line 12
    iput-byte v0, v10, Ljcifs/smb/SmbComTransaction;->subCommand:B

    .line 13
    iget-object v0, v7, Ljcifs/smb/NetServerEnum2Response;->lastName:Ljava/lang/String;

    invoke-virtual {v10, v15, v0}, Ljcifs/smb/NetServerEnum2;->reset(ILjava/lang/String;)V

    .line 14
    invoke-virtual {v7}, Ljcifs/smb/SmbComTransactionResponse;->reset()V

    if-nez v16, :cond_4e

    :goto_88
    return-void

    .line 15
    :cond_89
    iget-object v0, v7, Ljcifs/smb/SmbComTransactionResponse;->results:[Ljcifs/smb/FileEntry;

    aget-object v0, v0, v5

    .line 16
    invoke-interface {v0}, Ljcifs/smb/FileEntry;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v13, :cond_9a

    .line 17
    invoke-interface {v13, v11, v6}, Ljcifs/smb/SmbFilenameFilter;->accept(Ljcifs/smb/SmbFile;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9a

    goto :goto_df

    .line 18
    :cond_9a
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_df

    .line 19
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

    .line 20
    invoke-interface {v14, v15}, Ljcifs/smb/SmbFileFilter;->accept(Ljcifs/smb/SmbFile;)Z

    move-result v0

    if-nez v0, :cond_d3

    goto :goto_e9

    :cond_d3
    if-eqz p2, :cond_d9

    .line 21
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e9

    :cond_d9
    move-object/from16 v0, v24

    .line 22
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

    .line 23
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

    .line 1
    new-instance v0, Ljcifs/smb/NetShareEnum;

    .line 3
    invoke-direct {v0}, Ljcifs/smb/NetShareEnum;-><init>()V

    .line 6
    new-instance v1, Ljcifs/smb/NetShareEnumResponse;

    .line 8
    invoke-direct {v1}, Ljcifs/smb/NetShareEnumResponse;-><init>()V

    .line 11
    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 14
    iget v0, v1, Ljcifs/smb/SmbComTransactionResponse;->status:I

    .line 16
    if-nez v0, :cond_14

    .line 18
    iget-object v0, v1, Ljcifs/smb/SmbComTransactionResponse;->results:[Ljcifs/smb/FileEntry;

    .line 20
    return-object v0

    .line 21
    :cond_14
    new-instance v0, Ljcifs/smb/SmbException;

    .line 23
    iget v1, v1, Ljcifs/smb/SmbComTransactionResponse;->status:I

    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-direct {v0, v1, v2}, Ljcifs/smb/SmbException;-><init>(IZ)V

    .line 29
    throw v0
.end method

.method public doShareEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V
    .registers 26

    .line 1
    move-object/from16 v12, p0

    .line 3
    move-object/from16 v13, p1

    .line 5
    move-object/from16 v14, p5

    .line 7
    move-object/from16 v15, p6

    .line 9
    iget-object v0, v12, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 11
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    const/16 v1, 0x2f

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 24
    move-result v0

    .line 25
    add-int/lit8 v0, v0, -0x1

    .line 27
    if-ne v1, v0, :cond_12b

    .line 29
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getType()I

    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x4

    .line 34
    if-ne v0, v1, :cond_111

    .line 36
    new-instance v2, Ljava/util/HashMap;

    .line 38
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 41
    sget-object v0, Ljcifs/smb/SmbFile;->dfs:Ljcifs/smb/Dfs;

    .line 43
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    .line 46
    move-result-object v3

    .line 47
    iget-object v4, v12, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 49
    invoke-virtual {v0, v3, v4}, Ljcifs/smb/Dfs;->isTrustedDomain(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Z

    .line 52
    move-result v0

    .line 53
    const/4 v3, 0x0

    .line 54
    if-eqz v0, :cond_58

    .line 56
    :try_start_37
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->doDfsRootEnum()[Ljcifs/smb/FileEntry;

    .line 59
    move-result-object v0

    .line 60
    move v4, v3

    .line 61
    :goto_3c
    array-length v5, v0

    .line 62
    if-lt v4, v5, :cond_40

    .line 64
    goto :goto_58

    .line 65
    :cond_40
    aget-object v5, v0, v4

    .line 67
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 70
    move-result v6

    .line 71
    if-nez v6, :cond_4b

    .line 73
    invoke-virtual {v2, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_4b} :catch_4e

    .line 76
    :cond_4b
    add-int/lit8 v4, v4, 0x1

    .line 78
    goto :goto_3c

    .line 79
    :catch_4e
    move-exception v0

    .line 80
    sget v4, Ljcifs/util/LogStream;->level:I

    .line 82
    if-lt v4, v1, :cond_58

    .line 84
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 89
    :cond_58
    :goto_58
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getFirstAddress()Ljcifs/UniAddress;

    .line 92
    move-result-object v0

    .line 93
    const/4 v1, 0x0

    .line 94
    :goto_5d
    if-nez v0, :cond_60

    .line 96
    goto :goto_7c

    .line 97
    :cond_60
    const/4 v4, 0x3

    .line 98
    :try_start_61
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->doConnect()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_fe

    .line 101
    :try_start_64
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->doMsrpcShareEnum()[Ljcifs/smb/FileEntry;

    .line 104
    move-result-object v0
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_68} :catch_69

    .line 105
    goto :goto_78

    .line 106
    :catch_69
    move-exception v0

    .line 107
    move-object v5, v0

    .line 108
    :try_start_6b
    sget v0, Ljcifs/util/LogStream;->level:I

    .line 110
    if-lt v0, v4, :cond_74

    .line 112
    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    .line 114
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 117
    :cond_74
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->doNetShareEnum()[Ljcifs/smb/FileEntry;

    .line 120
    move-result-object v0

    .line 121
    :goto_78
    move v5, v3

    .line 122
    :goto_79
    array-length v6, v0
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_7a} :catch_fe

    .line 123
    if-lt v5, v6, :cond_ed

    .line 125
    :goto_7c
    if-eqz v1, :cond_97

    .line 127
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_97

    .line 133
    instance-of v0, v1, Ljcifs/smb/SmbException;

    .line 135
    if-nez v0, :cond_94

    .line 137
    new-instance v0, Ljcifs/smb/SmbException;

    .line 139
    iget-object v2, v12, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 141
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 144
    move-result-object v2

    .line 145
    invoke-direct {v0, v2, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    throw v0

    .line 149
    :cond_94
    check-cast v1, Ljcifs/smb/SmbException;

    .line 151
    throw v1

    .line 152
    :cond_97
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 155
    move-result-object v0

    .line 156
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 159
    move-result-object v16

    .line 160
    :goto_9f
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    move-result v0

    .line 164
    if-nez v0, :cond_a6

    .line 166
    return-void

    .line 167
    :cond_a6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    move-result-object v0

    .line 171
    check-cast v0, Ljcifs/smb/FileEntry;

    .line 173
    invoke-interface {v0}, Ljcifs/smb/FileEntry;->getName()Ljava/lang/String;

    .line 176
    move-result-object v10

    .line 177
    if-eqz v14, :cond_b9

    .line 179
    invoke-interface {v14, v12, v10}, Ljcifs/smb/SmbFilenameFilter;->accept(Ljcifs/smb/SmbFile;Ljava/lang/String;)Z

    .line 182
    move-result v1

    .line 183
    if-nez v1, :cond_b9

    .line 185
    goto :goto_9f

    .line 186
    :cond_b9
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 189
    move-result v1

    .line 190
    if-lez v1, :cond_ea

    .line 192
    new-instance v11, Ljcifs/smb/SmbFile;

    .line 194
    invoke-interface {v0}, Ljcifs/smb/FileEntry;->getType()I

    .line 197
    move-result v4

    .line 198
    const/16 v5, 0x11

    .line 200
    const-wide/16 v6, 0x0

    .line 202
    const-wide/16 v8, 0x0

    .line 204
    const-wide/16 v17, 0x0

    .line 206
    move-object v1, v11

    .line 207
    move-object/from16 v2, p0

    .line 209
    move-object v3, v10

    .line 210
    move-object v0, v10

    .line 211
    move-object v14, v11

    .line 212
    move-wide/from16 v10, v17

    .line 214
    invoke-direct/range {v1 .. v11}, Ljcifs/smb/SmbFile;-><init>(Ljcifs/smb/SmbFile;Ljava/lang/String;IIJJJ)V

    .line 217
    if-eqz v15, :cond_e1

    .line 219
    invoke-interface {v15, v14}, Ljcifs/smb/SmbFileFilter;->accept(Ljcifs/smb/SmbFile;)Z

    .line 222
    move-result v1

    .line 223
    if-nez v1, :cond_e1

    .line 225
    goto :goto_ea

    .line 226
    :cond_e1
    if-eqz p2, :cond_e7

    .line 228
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    goto :goto_ea

    .line 232
    :cond_e7
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_ea
    :goto_ea
    move-object/from16 v14, p5

    .line 237
    goto :goto_9f

    .line 238
    :cond_ed
    :try_start_ed
    aget-object v6, v0, v5

    .line 240
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 243
    move-result v7

    .line 244
    if-nez v7, :cond_f8

    .line 246
    invoke-virtual {v2, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f8} :catch_fe

    .line 249
    :cond_f8
    add-int/lit8 v5, v5, 0x1

    .line 251
    move-object/from16 v14, p5

    .line 253
    goto/16 :goto_79

    .line 255
    :catch_fe
    move-exception v0

    .line 256
    move-object v1, v0

    .line 257
    sget v0, Ljcifs/util/LogStream;->level:I

    .line 259
    if-lt v0, v4, :cond_109

    .line 261
    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    .line 263
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 266
    :cond_109
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getNextAddress()Ljcifs/UniAddress;

    .line 269
    move-result-object v0

    .line 270
    move-object/from16 v14, p5

    .line 272
    goto/16 :goto_5d

    .line 274
    :cond_111
    new-instance v0, Ljcifs/smb/SmbException;

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    .line 278
    const-string v2, "The requested list operations is invalid: "

    .line 280
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    iget-object v2, v12, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 285
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 288
    move-result-object v2

    .line 289
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    move-result-object v1

    .line 296
    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    .line 299
    throw v0

    .line 300
    :cond_12b
    new-instance v0, Ljcifs/smb/SmbException;

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    .line 304
    iget-object v2, v12, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 306
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 309
    move-result-object v2

    .line 310
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 313
    move-result-object v2

    .line 314
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    const-string v2, " directory must end with \'/\'"

    .line 319
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    move-result-object v1

    .line 326
    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    .line 329
    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    instance-of v0, p1, Ljcifs/smb/SmbFile;

    .line 3
    if-eqz v0, :cond_46

    .line 5
    check-cast p1, Ljcifs/smb/SmbFile;

    .line 7
    if-ne p0, p1, :cond_a

    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_a
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 13
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p1, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 19
    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbFile;->pathNamesPossiblyEqual(Ljava/lang/String;Ljava/lang/String;)Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_46

    .line 29
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 35
    iget-object v0, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    .line 37
    iget-object v1, p1, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_46

    .line 45
    :try_start_2c
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Ljcifs/UniAddress;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result p1
    :try_end_38
    .catch Ljava/net/UnknownHostException; {:try_start_2c .. :try_end_38} :catch_39

    .line 57
    goto :goto_45

    .line 58
    :catch_39
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 69
    move-result p1

    .line 70
    :goto_45
    return p1

    .line 71
    :cond_46
    const/4 p1, 0x0

    .line 72
    return p1
.end method

.method public exists()Z
    .registers 5

    .line 1
    iget-wide v0, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    move-result-wide v2

    .line 7
    cmp-long v0, v0, v2

    .line 9
    if-lez v0, :cond_d

    .line 11
    iget-boolean v0, p0, Ljcifs/smb/SmbFile;->isExists:Z

    .line 13
    return v0

    .line 14
    :cond_d
    const/16 v0, 0x11

    .line 16
    iput v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    .line 18
    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Ljcifs/smb/SmbFile;->createTime:J

    .line 22
    iput-wide v0, p0, Ljcifs/smb/SmbFile;->lastModified:J

    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Ljcifs/smb/SmbFile;->isExists:Z

    .line 27
    :try_start_1a
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 29
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 36
    move-result v0

    .line 37
    const/4 v1, 0x1

    .line 38
    if-eqz v0, :cond_7f

    .line 40
    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    .line 42
    if-nez v0, :cond_4a

    .line 44
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    .line 47
    move-result v0

    .line 48
    const/4 v2, 0x2

    .line 49
    if-ne v0, v2, :cond_3c

    .line 51
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 53
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0, v1}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;

    .line 60
    goto :goto_7f

    .line 61
    :cond_3c
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 63
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    invoke-static {v0}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;)Ljcifs/UniAddress;

    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljcifs/UniAddress;->getHostName()Ljava/lang/String;

    .line 74
    goto :goto_7f

    .line 75
    :cond_4a
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 82
    move-result v0

    .line 83
    if-eq v0, v1, :cond_7c

    .line 85
    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    .line 87
    const-string v2, "IPC$"

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_5f

    .line 95
    goto :goto_7c

    .line 96
    :cond_5f
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 99
    move-result-object v0

    .line 100
    const/16 v2, 0x101

    .line 102
    invoke-virtual {p0, v0, v2}, Ljcifs/smb/SmbFile;->queryPath(Ljava/lang/String;I)Ljcifs/smb/Info;

    .line 105
    move-result-object v0

    .line 106
    invoke-interface {v0}, Ljcifs/smb/Info;->getAttributes()I

    .line 109
    move-result v2

    .line 110
    iput v2, p0, Ljcifs/smb/SmbFile;->attributes:I

    .line 112
    invoke-interface {v0}, Ljcifs/smb/Info;->getCreateTime()J

    .line 115
    move-result-wide v2

    .line 116
    iput-wide v2, p0, Ljcifs/smb/SmbFile;->createTime:J

    .line 118
    invoke-interface {v0}, Ljcifs/smb/Info;->getLastWriteTime()J

    .line 121
    move-result-wide v2

    .line 122
    iput-wide v2, p0, Ljcifs/smb/SmbFile;->lastModified:J

    .line 124
    goto :goto_7f

    .line 125
    :cond_7c
    :goto_7c
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect0()V

    .line 128
    :cond_7f
    :goto_7f
    iput-boolean v1, p0, Ljcifs/smb/SmbFile;->isExists:Z
    :try_end_81
    .catch Ljava/net/UnknownHostException; {:try_start_1a .. :try_end_81} :catch_8b
    .catch Ljcifs/smb/SmbException; {:try_start_1a .. :try_end_81} :catch_82

    .line 130
    goto :goto_8b

    .line 131
    :catch_82
    move-exception v0

    .line 132
    invoke-virtual {v0}, Ljcifs/smb/SmbException;->getNtStatus()I

    .line 135
    move-result v1

    .line 136
    sparse-switch v1, :sswitch_data_98

    .line 139
    throw v0

    .line 140
    :catch_8b
    :goto_8b
    :sswitch_8b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 143
    move-result-wide v0

    .line 144
    sget-wide v2, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    .line 146
    add-long/2addr v0, v2

    .line 147
    iput-wide v0, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    .line 149
    iget-boolean v0, p0, Ljcifs/smb/SmbFile;->isExists:Z

    .line 151
    return v0

    .line 152
    nop

    .line 153
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

    .line 1
    iget v0, p0, Ljcifs/smb/SmbFile;->addressIndex:I

    .line 3
    if-nez v0, :cond_9

    .line 5
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getFirstAddress()Ljcifs/UniAddress;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_9
    iget-object v1, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    .line 12
    add-int/lit8 v0, v0, -0x1

    .line 14
    aget-object v0, v1, v0

    .line 16
    return-object v0
.end method

.method public getAttributes()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_d

    .line 12
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_d
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    .line 17
    iget v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    .line 19
    and-int/lit16 v0, v0, 0x7fff

    .line 21
    return v0
.end method

.method public getCanonicalPath()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 3
    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 13
    move-result v0

    .line 14
    const-string v1, "smb://"

    .line 16
    if-lez v0, :cond_29

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 25
    invoke-virtual {v1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-object v1, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    return-object v0

    .line 42
    :cond_29
    return-object v1
.end method

.method public getContentLength()I
    .registers 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->length()J

    .line 4
    move-result-wide v0
    :try_end_4
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_4} :catch_c

    .line 5
    const-wide v2, 0xffffffffL

    .line 10
    and-long/2addr v0, v2

    .line 11
    long-to-int v0, v0

    .line 12
    return v0

    .line 13
    :catch_c
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public getDate()J
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->lastModified()J

    .line 4
    move-result-wide v0
    :try_end_4
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_4} :catch_5

    .line 5
    return-wide v0

    .line 6
    :catch_5
    const-wide/16 v0, 0x0

    .line 8
    return-wide v0
.end method

.method public getDfsPath()Ljava/lang/String;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->resolveDfs(Ljcifs/smb/ServerMessageBlock;)V

    .line 5
    iget-object v1, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    .line 7
    if-nez v1, :cond_9

    .line 9
    return-object v0

    .line 10
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    const-string v1, "smb:/"

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    .line 19
    iget-object v1, v1, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, "/"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-object v1, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    .line 31
    iget-object v1, v1, Ljcifs/smb/DfsReferral;->share:Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v1, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    const/16 v1, 0x5c

    .line 47
    const/16 v2, 0x2f

    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isDirectory()Z

    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_4a

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    :cond_4a
    return-object v0
.end method

.method public getDiskFreeSpace()J
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/16 v2, 0x8

    .line 8
    if-eq v0, v2, :cond_11

    .line 10
    iget v0, p0, Ljcifs/smb/SmbFile;->type:I

    .line 12
    if-ne v0, v1, :cond_e

    .line 14
    goto :goto_11

    .line 15
    :cond_e
    const-wide/16 v0, 0x0

    .line 17
    return-wide v0

    .line 18
    :cond_11
    :goto_11
    const/16 v0, 0x3ef

    .line 20
    :try_start_13
    invoke-direct {p0, v0}, Ljcifs/smb/SmbFile;->queryFSInformation(I)J

    .line 23
    move-result-wide v0
    :try_end_17
    .catch Ljcifs/smb/SmbException; {:try_start_13 .. :try_end_17} :catch_18

    .line 24
    return-wide v0

    .line 25
    :catch_18
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljcifs/smb/SmbException;->getNtStatus()I

    .line 29
    move-result v2

    .line 30
    const v3, -0x3fffffff  # -2.0000002f

    .line 33
    if-eq v2, v3, :cond_29

    .line 35
    const v3, -0x3ffffffd  # -2.0000007f

    .line 38
    if-ne v2, v3, :cond_28

    .line 40
    goto :goto_29

    .line 41
    :cond_28
    throw v0

    .line 42
    :cond_29
    :goto_29
    invoke-direct {p0, v1}, Ljcifs/smb/SmbFile;->queryFSInformation(I)J

    .line 45
    move-result-wide v0

    .line 46
    return-wide v0
.end method

.method public getFirstAddress()Ljcifs/UniAddress;
    .registers 9

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 3
    const-string v1, "getFirstAddress>>"

    .line 5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Ljcifs/smb/SmbFile;->addressIndex:I

    .line 11
    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 13
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 19
    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 25
    invoke-virtual {v3}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    const/4 v4, 0x1

    .line 30
    if-eqz v3, :cond_c5

    .line 32
    const-string v5, "server"

    .line 34
    invoke-static {v3, v5}, Ljcifs/smb/SmbFile;->queryLookup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v5

    .line 38
    const-string v6, "addresses 0 "

    .line 40
    if-eqz v5, :cond_6a

    .line 42
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 45
    move-result v7

    .line 46
    if-lez v7, :cond_6a

    .line 48
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    const-string v3, "server>>"

    .line 54
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    new-array v1, v4, [Ljcifs/UniAddress;

    .line 69
    iput-object v1, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    .line 71
    invoke-static {v5}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;)Ljcifs/UniAddress;

    .line 74
    move-result-object v2

    .line 75
    aput-object v2, v1, v0

    .line 77
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    .line 81
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    iget-object v3, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    .line 86
    aget-object v0, v3, v0

    .line 88
    invoke-virtual {v0}, Ljcifs/UniAddress;->getHostAddress()Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getNextAddress()Ljcifs/UniAddress;

    .line 105
    move-result-object v0

    .line 106
    return-object v0

    .line 107
    :cond_6a
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 109
    const-string v7, "query address!"

    .line 111
    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    const-string v5, "address"

    .line 116
    invoke-static {v3, v5}, Ljcifs/smb/SmbFile;->queryLookup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    move-result-object v3

    .line 120
    if-eqz v3, :cond_c5

    .line 122
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 125
    move-result v5

    .line 126
    if-lez v5, :cond_c5

    .line 128
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 130
    new-instance v5, Ljava/lang/StringBuilder;

    .line 132
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object v5

    .line 142
    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 145
    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    .line 152
    move-result-object v2

    .line 153
    new-array v3, v4, [Ljcifs/UniAddress;

    .line 155
    iput-object v3, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    .line 157
    new-instance v4, Ljcifs/UniAddress;

    .line 159
    invoke-static {v1, v2}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    .line 162
    move-result-object v1

    .line 163
    invoke-direct {v4, v1}, Ljcifs/UniAddress;-><init>(Ljava/lang/Object;)V

    .line 166
    aput-object v4, v3, v0

    .line 168
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    .line 172
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    iget-object v3, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    .line 177
    aget-object v0, v3, v0

    .line 179
    invoke-virtual {v0}, Ljcifs/UniAddress;->getHostAddress()Ljava/lang/String;

    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getNextAddress()Ljcifs/UniAddress;

    .line 196
    move-result-object v0

    .line 197
    return-object v0

    .line 198
    :cond_c5
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 200
    const-string v5, "getFirstAddress>>1"

    .line 202
    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 205
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 207
    new-instance v5, Ljava/lang/StringBuilder;

    .line 209
    const-string v6, "getFirstAddress>> host"

    .line 211
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    move-result-object v5

    .line 221
    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 227
    move-result v3

    .line 228
    if-nez v3, :cond_11a

    .line 230
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 232
    const-string v2, "getFirstAddress>>2"

    .line 234
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 237
    :try_start_ec
    const-string v1, "\u0001\u0002__MSBROWSE__\u0002"

    .line 239
    const/4 v2, 0x0

    .line 240
    invoke-static {v1, v4, v2}, Ljcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;)Ljcifs/netbios/NbtAddress;

    .line 243
    move-result-object v1

    .line 244
    new-array v2, v4, [Ljcifs/UniAddress;

    .line 246
    iput-object v2, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    .line 248
    invoke-virtual {v1}, Ljcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    .line 251
    move-result-object v1

    .line 252
    invoke-static {v1}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;)Ljcifs/UniAddress;

    .line 255
    move-result-object v1

    .line 256
    aput-object v1, v2, v0
    :try_end_101
    .catch Ljava/net/UnknownHostException; {:try_start_ec .. :try_end_101} :catch_102

    .line 258
    goto :goto_15a

    .line 259
    :catch_102
    move-exception v0

    .line 260
    invoke-static {}, Ljcifs/smb/NtlmPasswordAuthentication;->initDefaults()V

    .line 263
    sget-object v1, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_DOMAIN:Ljava/lang/String;

    .line 265
    const-string v2, "?"

    .line 267
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 270
    move-result v1

    .line 271
    if-nez v1, :cond_119

    .line 273
    sget-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_DOMAIN:Ljava/lang/String;

    .line 275
    invoke-static {v0, v4}, Ljcifs/UniAddress;->getAllByName(Ljava/lang/String;Z)[Ljcifs/UniAddress;

    .line 278
    move-result-object v0

    .line 279
    iput-object v0, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    .line 281
    goto :goto_15a

    .line 282
    :cond_119
    throw v0

    .line 283
    :cond_11a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 286
    move-result v3

    .line 287
    if-eqz v3, :cond_137

    .line 289
    const-string v3, "/"

    .line 291
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 294
    move-result v2

    .line 295
    if-eqz v2, :cond_129

    .line 297
    goto :goto_137

    .line 298
    :cond_129
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 300
    const-string v3, "getFirstAddress>>4"

    .line 302
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 305
    invoke-static {v1, v0}, Ljcifs/UniAddress;->getAllByName(Ljava/lang/String;Z)[Ljcifs/UniAddress;

    .line 308
    move-result-object v0

    .line 309
    iput-object v0, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    .line 311
    goto :goto_15a

    .line 312
    :cond_137
    :goto_137
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 314
    const-string v2, "getFirstAddress>>3"

    .line 316
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 319
    invoke-static {v1, v4}, Ljcifs/UniAddress;->getAllByName(Ljava/lang/String;Z)[Ljcifs/UniAddress;

    .line 322
    move-result-object v0

    .line 323
    iput-object v0, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    .line 325
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    .line 329
    const-string v2, "addresses.length: "

    .line 331
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    iget-object v2, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    .line 336
    array-length v2, v2

    .line 337
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    move-result-object v1

    .line 344
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 347
    :goto_15a
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getNextAddress()Ljcifs/UniAddress;

    .line 350
    move-result-object v0

    .line 351
    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    .line 1
    new-instance v0, Ljcifs/smb/SmbFileInputStream;

    .line 3
    invoke-direct {v0, p0}, Ljcifs/smb/SmbFileInputStream;-><init>(Ljcifs/smb/SmbFile;)V

    .line 6
    return-object v0
.end method

.method public getLastModified()J
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->lastModified()J

    .line 4
    move-result-wide v0
    :try_end_4
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_4} :catch_5

    .line 5
    return-wide v0

    .line 6
    :catch_5
    const-wide/16 v0, 0x0

    .line 8
    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 4
    iget-object v0, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    const/16 v2, 0x2f

    .line 13
    if-le v0, v1, :cond_29

    .line 15
    iget-object v0, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 20
    move-result v0

    .line 21
    add-int/lit8 v0, v0, -0x2

    .line 23
    :goto_16
    iget-object v3, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    .line 25
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    .line 28
    move-result v3

    .line 29
    if-ne v3, v2, :cond_26

    .line 31
    iget-object v2, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    .line 33
    add-int/2addr v0, v1

    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    return-object v0

    .line 39
    :cond_26
    add-int/lit8 v0, v0, -0x1

    .line 41
    goto :goto_16

    .line 42
    :cond_29
    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    .line 44
    if-eqz v0, :cond_3e

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    return-object v0

    .line 63
    :cond_3e
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 65
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 72
    move-result v0

    .line 73
    if-lez v0, :cond_61

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    .line 77
    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 79
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 83
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    move-result-object v1

    .line 87
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v0

    .line 97
    return-object v0

    .line 98
    :cond_61
    const-string v0, "smb://"

    .line 100
    return-object v0
.end method

.method public getNextAddress()Ljcifs/UniAddress;
    .registers 4

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "addresses.length: "

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    iget-object v2, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    .line 12
    array-length v2, v2

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 23
    iget v0, p0, Ljcifs/smb/SmbFile;->addressIndex:I

    .line 25
    iget-object v1, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    .line 27
    array-length v2, v1

    .line 28
    if-ge v0, v2, :cond_24

    .line 30
    add-int/lit8 v2, v0, 0x1

    .line 32
    iput v2, p0, Ljcifs/smb/SmbFile;->addressIndex:I

    .line 34
    aget-object v0, v1, v0

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    const/4 v0, 0x0

    .line 38
    :goto_25
    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .line 1
    new-instance v0, Ljcifs/smb/SmbFileOutputStream;

    .line 3
    invoke-direct {v0, p0}, Ljcifs/smb/SmbFileOutputStream;-><init>(Ljcifs/smb/SmbFile;)V

    .line 6
    return-object v0
.end method

.method public getParent()Ljava/lang/String;
    .registers 6

    .line 1
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 3
    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 10
    move-result v1

    .line 11
    const-string v2, "smb://"

    .line 13
    if-lez v1, :cond_47

    .line 15
    new-instance v1, Ljava/lang/StringBuffer;

    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 26
    iget-object v0, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    .line 28
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 31
    move-result v0

    .line 32
    const/16 v3, 0x2f

    .line 34
    const/4 v4, 0x1

    .line 35
    if-le v0, v4, :cond_2a

    .line 37
    iget-object v0, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    goto :goto_2d

    .line 43
    :cond_2a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 46
    :goto_2d
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 53
    move-result v1

    .line 54
    add-int/lit8 v1, v1, -0x2

    .line 56
    :goto_37
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 59
    move-result v2

    .line 60
    if-ne v2, v3, :cond_44

    .line 62
    const/4 v2, 0x0

    .line 63
    add-int/2addr v1, v4

    .line 64
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    return-object v0

    .line 69
    :cond_44
    add-int/lit8 v1, v1, -0x1

    .line 71
    goto :goto_37

    .line 72
    :cond_47
    return-object v2
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 3
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPrincipal()Ljava/security/Principal;
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 3
    return-object v0
.end method

.method public getSecurity()[Ljcifs/smb/ACE;
    .registers 2

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->getSecurity(Z)[Ljcifs/smb/ACE;

    move-result-object v0

    return-object v0
.end method

.method public getSecurity(Z)[Ljcifs/smb/ACE;
    .registers 7

    .line 1
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x20000

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Ljcifs/smb/SmbFile;->open0(IIII)I

    move-result v0

    .line 2
    new-instance v1, Ljcifs/smb/NtTransQuerySecurityDesc;

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2}, Ljcifs/smb/NtTransQuerySecurityDesc;-><init>(II)V

    .line 3
    new-instance v2, Ljcifs/smb/NtTransQuerySecurityDescResponse;

    invoke-direct {v2}, Ljcifs/smb/NtTransQuerySecurityDescResponse;-><init>()V

    const-wide/16 v3, 0x0

    .line 4
    :try_start_19
    invoke-virtual {p0, v1, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_29

    .line 5
    invoke-virtual {p0, v0, v3, v4}, Ljcifs/smb/SmbFile;->close(IJ)V

    .line 6
    iget-object v0, v2, Ljcifs/smb/NtTransQuerySecurityDescResponse;->securityDescriptor:Ljcifs/smb/SecurityDescriptor;

    iget-object v0, v0, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    if-eqz v0, :cond_28

    .line 7
    invoke-direct {p0, v0, p1}, Ljcifs/smb/SmbFile;->processAces([Ljcifs/smb/ACE;Z)V

    :cond_28
    return-object v0

    :catchall_29
    move-exception p1

    .line 8
    invoke-virtual {p0, v0, v3, v4}, Ljcifs/smb/SmbFile;->close(IJ)V

    .line 9
    throw p1
.end method

.method public getServer()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 3
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_d

    .line 13
    const/4 v0, 0x0

    .line 14
    :cond_d
    return-object v0
.end method

.method public getServerWithDfs()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    iget-object v0, v0, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    .line 7
    return-object v0

    .line 8
    :cond_7
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public getShare()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getShareSecurity(Z)[Ljcifs/smb/ACE;
    .registers 6

    .line 1
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 3
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->resolveDfs(Ljcifs/smb/ServerMessageBlock;)V

    .line 10
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServerWithDfs()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;

    .line 16
    iget-object v2, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    .line 18
    iget-object v2, v2, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    .line 20
    invoke-direct {v1, v0, v2}, Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    const-string v3, "ncacn_np:"

    .line 27
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string v0, "[\\PIPE\\srvsvc]"

    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    iget-object v2, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 44
    invoke-static {v0, v2}, Ljcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;

    .line 47
    move-result-object v0

    .line 48
    const/4 v2, 0x1

    .line 49
    :try_start_30
    invoke-virtual {v0, v1}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    .line 52
    iget v3, v1, Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->retval:I

    .line 54
    if-nez v3, :cond_4f

    .line 56
    invoke-virtual {v1}, Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;->getSecurity()[Ljcifs/smb/ACE;

    .line 59
    move-result-object v1

    .line 60
    if-eqz v1, :cond_40

    .line 62
    invoke-direct {p0, v1, p1}, Ljcifs/smb/SmbFile;->processAces([Ljcifs/smb/ACE;Z)V
    :try_end_40
    .catchall {:try_start_30 .. :try_end_40} :catchall_57

    .line 65
    :cond_40
    :try_start_40
    invoke-virtual {v0}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    .line 68
    goto :goto_4e

    .line 69
    :catch_44
    move-exception p1

    .line 70
    sget v0, Ljcifs/util/LogStream;->level:I

    .line 72
    if-lt v0, v2, :cond_4e

    .line 74
    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 79
    :cond_4e
    :goto_4e
    return-object v1

    .line 80
    :cond_4f
    :try_start_4f
    new-instance p1, Ljcifs/smb/SmbException;

    .line 82
    iget v1, v1, Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->retval:I

    .line 84
    invoke-direct {p1, v1, v2}, Ljcifs/smb/SmbException;-><init>(IZ)V

    .line 87
    throw p1
    :try_end_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_57

    .line 88
    :catchall_57
    move-exception p1

    .line 89
    :try_start_58
    invoke-virtual {v0}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    .line 92
    goto :goto_66

    .line 93
    :catch_5c
    move-exception v0

    .line 94
    sget v1, Ljcifs/util/LogStream;->level:I

    .line 96
    if-lt v1, v2, :cond_66

    .line 98
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 103
    :cond_66
    :goto_66
    throw p1
.end method

.method public getType()I
    .registers 4

    .line 1
    iget v0, p0, Ljcifs/smb/SmbFile;->type:I

    .line 3
    if-nez v0, :cond_9b

    .line 5
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-le v0, v1, :cond_13

    .line 16
    iput v1, p0, Ljcifs/smb/SmbFile;->type:I

    .line 18
    goto/16 :goto_9b

    .line 20
    :cond_13
    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    .line 22
    if-eqz v0, :cond_51

    .line 24
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect0()V

    .line 27
    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    .line 29
    const-string v1, "IPC$"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2a

    .line 37
    const/16 v0, 0x10

    .line 39
    iput v0, p0, Ljcifs/smb/SmbFile;->type:I

    .line 41
    goto/16 :goto_9b

    .line 43
    :cond_2a
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    .line 45
    iget-object v0, v0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    .line 47
    const-string v1, "LPT1:"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_3b

    .line 55
    const/16 v0, 0x20

    .line 57
    iput v0, p0, Ljcifs/smb/SmbFile;->type:I

    .line 59
    goto :goto_9b

    .line 60
    :cond_3b
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    .line 62
    iget-object v0, v0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    .line 64
    const-string v1, "COMM"

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_4c

    .line 72
    const/16 v0, 0x40

    .line 74
    iput v0, p0, Ljcifs/smb/SmbFile;->type:I

    .line 76
    goto :goto_9b

    .line 77
    :cond_4c
    const/16 v0, 0x8

    .line 79
    iput v0, p0, Ljcifs/smb/SmbFile;->type:I

    .line 81
    goto :goto_9b

    .line 82
    :cond_51
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 84
    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    const/4 v1, 0x2

    .line 89
    if-eqz v0, :cond_99

    .line 91
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 93
    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_67

    .line 103
    goto :goto_99

    .line 104
    :cond_67
    :try_start_67
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    .line 107
    move-result-object v0
    :try_end_6b
    .catch Ljava/net/UnknownHostException; {:try_start_67 .. :try_end_6b} :catch_8c

    .line 108
    invoke-virtual {v0}, Ljcifs/UniAddress;->getAddress()Ljava/lang/Object;

    .line 111
    move-result-object v2

    .line 112
    instance-of v2, v2, Ljcifs/netbios/NbtAddress;

    .line 114
    if-eqz v2, :cond_88

    .line 116
    invoke-virtual {v0}, Ljcifs/UniAddress;->getAddress()Ljava/lang/Object;

    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Ljcifs/netbios/NbtAddress;

    .line 122
    invoke-virtual {v0}, Ljcifs/netbios/NbtAddress;->getNameType()I

    .line 125
    move-result v0

    .line 126
    const/16 v2, 0x1d

    .line 128
    if-eq v0, v2, :cond_85

    .line 130
    const/16 v2, 0x1b

    .line 132
    if-ne v0, v2, :cond_88

    .line 134
    :cond_85
    iput v1, p0, Ljcifs/smb/SmbFile;->type:I

    .line 136
    return v1

    .line 137
    :cond_88
    const/4 v0, 0x4

    .line 138
    iput v0, p0, Ljcifs/smb/SmbFile;->type:I

    .line 140
    goto :goto_9b

    .line 141
    :catch_8c
    move-exception v0

    .line 142
    new-instance v1, Ljcifs/smb/SmbException;

    .line 144
    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 146
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 149
    move-result-object v2

    .line 150
    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    throw v1

    .line 154
    :cond_99
    :goto_99
    iput v1, p0, Ljcifs/smb/SmbFile;->type:I

    .line 156
    :cond_9b
    :goto_9b
    iget v0, p0, Ljcifs/smb/SmbFile;->type:I

    .line 158
    return v0
.end method

.method public getUncPath()Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 4
    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    .line 6
    const-string v1, "\\\\"

    .line 8
    if-nez v0, :cond_1c

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 17
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    return-object v0

    .line 29
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 36
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-object v1, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    .line 45
    const/16 v2, 0x2f

    .line 47
    const/16 v3, 0x5c

    .line 49
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    return-object v0
.end method

.method public getUncPath0()Ljava/lang/String;
    .registers 15

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    .line 3
    if-nez v0, :cond_c6

    .line 5
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 7
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 14
    move-result-object v0

    .line 15
    array-length v1, v0

    .line 16
    new-array v1, v1, [C

    .line 18
    array-length v2, v0

    .line 19
    const/4 v3, 0x0

    .line 20
    move v4, v3

    .line 21
    move v5, v4

    .line 22
    move v6, v5

    .line 23
    :goto_16
    const/4 v7, 0x0

    .line 24
    const/16 v8, 0x2f

    .line 26
    const/4 v9, 0x1

    .line 27
    if-lt v4, v2, :cond_70

    .line 29
    new-instance v0, Ljava/lang/String;

    .line 31
    invoke-direct {v0, v1, v3, v6}, Ljava/lang/String;-><init>([CII)V

    .line 34
    iput-object v0, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    .line 36
    const-string v2, "\\"

    .line 38
    if-le v6, v9, :cond_6a

    .line 40
    add-int/lit8 v6, v6, -0x1

    .line 42
    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->indexOf(II)I

    .line 45
    move-result v0

    .line 46
    if-gez v0, :cond_3b

    .line 48
    iget-object v0, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    .line 50
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    .line 56
    iput-object v2, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    .line 58
    goto/16 :goto_c6

    .line 60
    :cond_3b
    if-ne v0, v6, :cond_49

    .line 62
    iget-object v1, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    .line 64
    invoke-virtual {v1, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    .line 70
    iput-object v2, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    .line 72
    goto/16 :goto_c6

    .line 74
    :cond_49
    iget-object v2, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    .line 76
    invoke-virtual {v2, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 79
    move-result-object v2

    .line 80
    iput-object v2, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    .line 82
    iget-object v2, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    .line 84
    aget-char v1, v1, v6

    .line 86
    if-ne v1, v8, :cond_58

    .line 88
    goto :goto_5a

    .line 89
    :cond_58
    add-int/lit8 v6, v6, 0x1

    .line 91
    :goto_5a
    invoke-virtual {v2, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 94
    move-result-object v0

    .line 95
    iput-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    .line 97
    const/16 v1, 0x5c

    .line 99
    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 102
    move-result-object v0

    .line 103
    iput-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    .line 105
    goto/16 :goto_c6

    .line 107
    :cond_6a
    iput-object v7, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    .line 109
    iput-object v2, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    .line 111
    goto/16 :goto_c6

    .line 113
    :cond_70
    if-eqz v5, :cond_b8

    .line 115
    const/4 v7, 0x2

    .line 116
    if-eq v5, v9, :cond_78

    .line 118
    if-eq v5, v7, :cond_ad

    .line 120
    goto :goto_c3

    .line 121
    :cond_78
    aget-char v10, v0, v4

    .line 123
    if-ne v10, v8, :cond_7d

    .line 125
    goto :goto_c3

    .line 126
    :cond_7d
    const/16 v11, 0x2e

    .line 128
    if-ne v10, v11, :cond_8b

    .line 130
    add-int/lit8 v12, v4, 0x1

    .line 132
    if-ge v12, v2, :cond_89

    .line 134
    aget-char v13, v0, v12

    .line 136
    if-ne v13, v8, :cond_8b

    .line 138
    :cond_89
    move v4, v12

    .line 139
    goto :goto_c3

    .line 140
    :cond_8b
    add-int/lit8 v12, v4, 0x1

    .line 142
    if-ge v12, v2, :cond_ac

    .line 144
    if-ne v10, v11, :cond_ac

    .line 146
    aget-char v10, v0, v12

    .line 148
    if-ne v10, v11, :cond_ac

    .line 150
    add-int/lit8 v10, v4, 0x2

    .line 152
    if-ge v10, v2, :cond_9d

    .line 154
    aget-char v11, v0, v10

    .line 156
    if-ne v11, v8, :cond_ac

    .line 158
    :cond_9d
    if-ne v6, v9, :cond_a0

    .line 160
    goto :goto_aa

    .line 161
    :cond_a0
    add-int/lit8 v6, v6, -0x1

    .line 163
    if-le v6, v9, :cond_aa

    .line 165
    add-int/lit8 v4, v6, -0x1

    .line 167
    aget-char v4, v1, v4

    .line 169
    if-ne v4, v8, :cond_a0

    .line 171
    :cond_aa
    :goto_aa
    move v4, v10

    .line 172
    goto :goto_c3

    .line 173
    :cond_ac
    move v5, v7

    .line 174
    :cond_ad
    aget-char v7, v0, v4

    .line 176
    if-ne v7, v8, :cond_b2

    .line 178
    move v5, v9

    .line 179
    :cond_b2
    add-int/lit8 v8, v6, 0x1

    .line 181
    aput-char v7, v1, v6

    .line 183
    move v6, v8

    .line 184
    goto :goto_c3

    .line 185
    :cond_b8
    aget-char v5, v0, v4

    .line 187
    if-eq v5, v8, :cond_bd

    .line 189
    return-object v7

    .line 190
    :cond_bd
    add-int/lit8 v7, v6, 0x1

    .line 192
    aput-char v5, v1, v6

    .line 194
    move v6, v7

    .line 195
    move v5, v9

    .line 196
    :goto_c3
    add-int/2addr v4, v9

    .line 197
    goto/16 :goto_16

    .line 199
    :cond_c6
    :goto_c6
    iget-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    .line 201
    return-object v0
.end method

.method public hasNextAddress()Z
    .registers 3

    .line 1
    iget v0, p0, Ljcifs/smb/SmbFile;->addressIndex:I

    .line 3
    iget-object v1, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    .line 5
    array-length v1, v1

    .line 6
    if-ge v0, v1, :cond_9

    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljcifs/UniAddress;->hashCode()I

    .line 8
    move-result v0
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_8} :catch_9

    .line 9
    goto :goto_15

    .line 10
    :catch_9
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 21
    move-result v0

    .line 22
    :goto_15
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 25
    iget-object v1, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    .line 27
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 34
    move-result v1

    .line 35
    add-int/2addr v1, v0

    .line 36
    return v1
.end method

.method public isConnected()Z
    .registers 3

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget v0, v0, Ljcifs/smb/SmbTree;->connectionState:I

    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_b

    .line 10
    const/4 v0, 0x1

    .line 11
    return v0

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method public isDirectory()Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_c

    .line 12
    return v1

    .line 13
    :cond_c
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v0, :cond_14

    .line 20
    return v2

    .line 21
    :cond_14
    iget v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    .line 23
    const/16 v3, 0x10

    .line 25
    and-int/2addr v0, v3

    .line 26
    if-ne v0, v3, :cond_1c

    .line 28
    return v1

    .line 29
    :cond_1c
    return v2
.end method

.method public isFile()Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v0, v2, :cond_d

    .line 13
    return v1

    .line 14
    :cond_d
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    .line 17
    iget v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    .line 19
    and-int/lit8 v0, v0, 0x10

    .line 21
    if-nez v0, :cond_17

    .line 23
    return v2

    .line 24
    :cond_17
    return v1
.end method

.method public isHidden()Z
    .registers 5

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x1

    .line 16
    if-ne v0, v2, :cond_1d

    .line 18
    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    .line 20
    const-string v3, "$"

    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1c

    .line 28
    return v2

    .line 29
    :cond_1c
    return v1

    .line 30
    :cond_1d
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    .line 33
    iget v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    .line 35
    const/4 v3, 0x2

    .line 36
    and-int/2addr v0, v3

    .line 37
    if-ne v0, v3, :cond_27

    .line 39
    return v2

    .line 40
    :cond_27
    return v1
.end method

.method public isOpen()Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Ljcifs/smb/SmbFile;->opened:Z

    .line 3
    if-eqz v0, :cond_14

    .line 5
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isConnected()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_14

    .line 11
    iget v0, p0, Ljcifs/smb/SmbFile;->tree_num:I

    .line 13
    iget-object v1, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    .line 15
    iget v1, v1, Ljcifs/smb/SmbTree;->tree_num:I

    .line 17
    if-ne v0, v1, :cond_14

    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    const/4 v0, 0x0

    .line 22
    :goto_15
    return v0
.end method

.method public isWorkgroup0()Z
    .registers 5

    .line 1
    iget v0, p0, Ljcifs/smb/SmbFile;->type:I

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x2

    .line 5
    if-eq v0, v2, :cond_40

    .line 7
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 9
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_13

    .line 19
    goto :goto_40

    .line 20
    :cond_13
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 23
    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    .line 25
    if-nez v0, :cond_3e

    .line 27
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljcifs/UniAddress;->getAddress()Ljava/lang/Object;

    .line 34
    move-result-object v3

    .line 35
    instance-of v3, v3, Ljcifs/netbios/NbtAddress;

    .line 37
    if-eqz v3, :cond_3b

    .line 39
    invoke-virtual {v0}, Ljcifs/UniAddress;->getAddress()Ljava/lang/Object;

    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Ljcifs/netbios/NbtAddress;

    .line 45
    invoke-virtual {v0}, Ljcifs/netbios/NbtAddress;->getNameType()I

    .line 48
    move-result v0

    .line 49
    const/16 v3, 0x1d

    .line 51
    if-eq v0, v3, :cond_38

    .line 53
    const/16 v3, 0x1b

    .line 55
    if-ne v0, v3, :cond_3b

    .line 57
    :cond_38
    iput v2, p0, Ljcifs/smb/SmbFile;->type:I

    .line 59
    return v1

    .line 60
    :cond_3b
    const/4 v0, 0x4

    .line 61
    iput v0, p0, Ljcifs/smb/SmbFile;->type:I

    .line 63
    :cond_3e
    const/4 v0, 0x0

    .line 64
    return v0

    .line 65
    :cond_40
    :goto_40
    iput v2, p0, Ljcifs/smb/SmbFile;->type:I

    .line 67
    return v1
.end method

.method public lastModified()J
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-le v0, v1, :cond_11

    .line 12
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    .line 15
    iget-wide v0, p0, Ljcifs/smb/SmbFile;->lastModified:J

    .line 17
    return-wide v0

    .line 18
    :cond_11
    const-wide/16 v0, 0x0

    .line 20
    return-wide v0
.end method

.method public length()J
    .registers 5

    .line 1
    iget-wide v0, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    move-result-wide v2

    .line 7
    cmp-long v0, v0, v2

    .line 9
    if-lez v0, :cond_d

    .line 11
    iget-wide v0, p0, Ljcifs/smb/SmbFile;->size:J

    .line 13
    return-wide v0

    .line 14
    :cond_d
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    .line 17
    move-result v0

    .line 18
    const/16 v1, 0x8

    .line 20
    const/4 v2, 0x1

    .line 21
    if-ne v0, v1, :cond_2c

    .line 23
    new-instance v0, Ljcifs/smb/Trans2QueryFSInformationResponse;

    .line 25
    invoke-direct {v0, v2}, Ljcifs/smb/Trans2QueryFSInformationResponse;-><init>(I)V

    .line 28
    new-instance v1, Ljcifs/smb/Trans2QueryFSInformation;

    .line 30
    invoke-direct {v1, v2}, Ljcifs/smb/Trans2QueryFSInformation;-><init>(I)V

    .line 33
    invoke-virtual {p0, v1, v0}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 36
    iget-object v0, v0, Ljcifs/smb/Trans2QueryFSInformationResponse;->info:Ljcifs/smb/AllocInfo;

    .line 38
    invoke-interface {v0}, Ljcifs/smb/AllocInfo;->getCapacity()J

    .line 41
    move-result-wide v0

    .line 42
    iput-wide v0, p0, Ljcifs/smb/SmbFile;->size:J

    .line 44
    goto :goto_51

    .line 45
    :cond_2c
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 52
    move-result v0

    .line 53
    if-le v0, v2, :cond_4d

    .line 55
    iget v0, p0, Ljcifs/smb/SmbFile;->type:I

    .line 57
    const/16 v1, 0x10

    .line 59
    if-eq v0, v1, :cond_4d

    .line 61
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    const/16 v1, 0x102

    .line 67
    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbFile;->queryPath(Ljava/lang/String;I)Ljcifs/smb/Info;

    .line 70
    move-result-object v0

    .line 71
    invoke-interface {v0}, Ljcifs/smb/Info;->getSize()J

    .line 74
    move-result-wide v0

    .line 75
    iput-wide v0, p0, Ljcifs/smb/SmbFile;->size:J

    .line 77
    goto :goto_51

    .line 78
    :cond_4d
    const-wide/16 v0, 0x0

    .line 80
    iput-wide v0, p0, Ljcifs/smb/SmbFile;->size:J

    .line 82
    :goto_51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 85
    move-result-wide v0

    .line 86
    sget-wide v2, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    .line 88
    add-long/2addr v0, v2

    .line 89
    iput-wide v0, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    .line 91
    iget-wide v0, p0, Ljcifs/smb/SmbFile;->size:J

    .line 93
    return-wide v0
.end method

.method public list()[Ljava/lang/String;
    .registers 4

    const-string v0, "*"

    const/16 v1, 0x16

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2, v2}, Ljcifs/smb/SmbFile;->list(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public list(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljava/lang/String;
    .registers 13

    .line 3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, v7

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 4
    invoke-virtual/range {v0 .. v6}, Ljcifs/smb/SmbFile;->doEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V

    .line 5
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

    .line 2
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

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 3
    const-string v1, "listDomain>>"

    .line 5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    :try_start_c
    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->doNetServerEnum(Ljava/util/ArrayList;)V
    :try_end_f
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_f} :catch_1d
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_f} :catch_10

    .line 16
    return-object v0

    .line 17
    :catch_10
    move-exception v0

    .line 18
    new-instance v1, Ljcifs/smb/SmbException;

    .line 20
    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 22
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    throw v1

    .line 30
    :catch_1d
    move-exception v0

    .line 31
    new-instance v1, Ljcifs/smb/SmbException;

    .line 33
    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 35
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    throw v1
.end method

.method public listFiles()[Ljcifs/smb/SmbFile;
    .registers 4

    const-string v0, "*"

    const/16 v1, 0x16

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2, v2}, Ljcifs/smb/SmbFile;->listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;

    move-result-object v0

    return-object v0
.end method

.method public listFiles(Ljava/lang/String;)[Ljcifs/smb/SmbFile;
    .registers 4

    const/16 v0, 0x16

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v1, v1}, Ljcifs/smb/SmbFile;->listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;

    move-result-object p1

    return-object p1
.end method

.method public listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;
    .registers 13

    .line 5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, v7

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 6
    invoke-virtual/range {v0 .. v6}, Ljcifs/smb/SmbFile;->doEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V

    .line 7
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

    .line 4
    invoke-virtual {p0, v0, v1, v2, p1}, Ljcifs/smb/SmbFile;->listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;

    move-result-object p1

    return-object p1
.end method

.method public listFiles(Ljcifs/smb/SmbFilenameFilter;)[Ljcifs/smb/SmbFile;
    .registers 5

    const-string v0, "*"

    const/16 v1, 0x16

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, v0, v1, p1, v2}, Ljcifs/smb/SmbFile;->listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;

    move-result-object p1

    return-object p1
.end method

.method public mkdir()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v1, v2, :cond_36

    .line 12
    sget v1, Ljcifs/util/LogStream;->level:I

    .line 14
    const/4 v2, 0x3

    .line 15
    if-lt v1, v2, :cond_23

    .line 17
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    const-string v3, "mkdir: "

    .line 23
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 36
    :cond_23
    new-instance v1, Ljcifs/smb/SmbComCreateDirectory;

    .line 38
    invoke-direct {v1, v0}, Ljcifs/smb/SmbComCreateDirectory;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p0, v1, v0}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 48
    const-wide/16 v0, 0x0

    .line 50
    iput-wide v0, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    .line 52
    iput-wide v0, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    .line 54
    return-void

    .line 55
    :cond_36
    new-instance v0, Ljcifs/smb/SmbException;

    .line 57
    const-string v1, "Invalid operation for workgroups, servers, or shares"

    .line 59
    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    .line 62
    throw v0
.end method

.method public mkdirs()V
    .registers 4

    .line 1
    :try_start_0
    new-instance v0, Ljcifs/smb/SmbFile;

    .line 3
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getParent()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 9
    invoke-direct {v0, v1, v2}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_17

    .line 12
    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->exists()Z

    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_14

    .line 18
    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->mkdirs()V

    .line 21
    :cond_14
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->mkdir()V

    .line 24
    :catch_17
    return-void
.end method

.method public open(IIII)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isOpen()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-virtual {p0, p1, p2, p3, p4}, Ljcifs/smb/SmbFile;->open0(IIII)I

    .line 11
    move-result p1

    .line 12
    iput p1, p0, Ljcifs/smb/SmbFile;->fid:I

    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Ljcifs/smb/SmbFile;->opened:Z

    .line 17
    iget-object p1, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    .line 19
    iget p1, p1, Ljcifs/smb/SmbTree;->tree_num:I

    .line 21
    iput p1, p0, Ljcifs/smb/SmbFile;->tree_num:I

    .line 23
    return-void
.end method

.method public open0(IIII)I
    .registers 15

    .line 1
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect0()V

    .line 4
    sget v0, Ljcifs/util/LogStream;->level:I

    .line 6
    const/4 v1, 0x3

    .line 7
    if-lt v0, v1, :cond_1d

    .line 9
    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    const-string v2, "open0: "

    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    iget-object v2, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 30
    :cond_1d
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    .line 32
    iget-object v0, v0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    .line 34
    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 36
    const/16 v1, 0x10

    .line 38
    invoke-virtual {v0, v1}, Ljcifs/smb/SmbTransport;->hasCapability(I)Z

    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_6a

    .line 44
    new-instance v0, Ljcifs/smb/SmbComNTCreateAndXResponse;

    .line 46
    invoke-direct {v0}, Ljcifs/smb/SmbComNTCreateAndXResponse;-><init>()V

    .line 49
    new-instance v9, Ljcifs/smb/SmbComNTCreateAndX;

    .line 51
    iget-object v2, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    .line 53
    iget v5, p0, Ljcifs/smb/SmbFile;->shareAccess:I

    .line 55
    const/4 v8, 0x0

    .line 56
    move-object v1, v9

    .line 57
    move v3, p1

    .line 58
    move v4, p2

    .line 59
    move v6, p3

    .line 60
    move v7, p4

    .line 61
    invoke-direct/range {v1 .. v8}, Ljcifs/smb/SmbComNTCreateAndX;-><init>(Ljava/lang/String;IIIIILjcifs/smb/ServerMessageBlock;)V

    .line 64
    instance-of p1, p0, Ljcifs/smb/SmbNamedPipe;

    .line 66
    const/4 p2, 0x1

    .line 67
    if-eqz p1, :cond_53

    .line 69
    iget p1, v9, Ljcifs/smb/SmbComNTCreateAndX;->flags0:I

    .line 71
    or-int/lit8 p1, p1, 0x16

    .line 73
    iput p1, v9, Ljcifs/smb/SmbComNTCreateAndX;->flags0:I

    .line 75
    iget p1, v9, Ljcifs/smb/SmbComNTCreateAndX;->desiredAccess:I

    .line 77
    const/high16 p3, 0x20000

    .line 79
    or-int/2addr p1, p3

    .line 80
    iput p1, v9, Ljcifs/smb/SmbComNTCreateAndX;->desiredAccess:I

    .line 82
    iput-boolean p2, v0, Ljcifs/smb/SmbComNTCreateAndXResponse;->isExtended:Z

    .line 84
    :cond_53
    invoke-virtual {p0, v9, v0}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 87
    iget p1, v0, Ljcifs/smb/SmbComNTCreateAndXResponse;->fid:I

    .line 89
    iget p3, v0, Ljcifs/smb/SmbComNTCreateAndXResponse;->extFileAttributes:I

    .line 91
    and-int/lit16 p3, p3, 0x7fff

    .line 93
    iput p3, p0, Ljcifs/smb/SmbFile;->attributes:I

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 98
    move-result-wide p3

    .line 99
    sget-wide v0, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    .line 101
    add-long/2addr p3, v0

    .line 102
    iput-wide p3, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    .line 104
    iput-boolean p2, p0, Ljcifs/smb/SmbFile;->isExists:Z

    .line 106
    goto :goto_7c

    .line 107
    :cond_6a
    new-instance p3, Ljcifs/smb/SmbComOpenAndXResponse;

    .line 109
    invoke-direct {p3}, Ljcifs/smb/SmbComOpenAndXResponse;-><init>()V

    .line 112
    new-instance p4, Ljcifs/smb/SmbComOpenAndX;

    .line 114
    iget-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    .line 116
    const/4 v1, 0x0

    .line 117
    invoke-direct {p4, v0, p2, p1, v1}, Ljcifs/smb/SmbComOpenAndX;-><init>(Ljava/lang/String;IILjcifs/smb/ServerMessageBlock;)V

    .line 120
    invoke-virtual {p0, p4, p3}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 123
    iget p1, p3, Ljcifs/smb/SmbComOpenAndXResponse;->fid:I

    .line 125
    :goto_7c
    return p1
.end method

.method public pathNamesPossiblyEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    .line 1
    const/16 v0, 0x2f

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 6
    move-result v3

    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 10
    move-result v5

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 14
    move-result v0

    .line 15
    sub-int v6, v0, v3

    .line 17
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 20
    move-result v0

    .line 21
    sub-int/2addr v0, v5

    .line 22
    const/16 v1, 0x2e

    .line 24
    const/4 v7, 0x1

    .line 25
    if-le v6, v7, :cond_23

    .line 27
    add-int/lit8 v2, v3, 0x1

    .line 29
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 32
    move-result v2

    .line 33
    if-ne v2, v1, :cond_23

    .line 35
    return v7

    .line 36
    :cond_23
    if-le v0, v7, :cond_2e

    .line 38
    add-int/lit8 v2, v5, 0x1

    .line 40
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    .line 43
    move-result v2

    .line 44
    if-ne v2, v1, :cond_2e

    .line 46
    return v7

    .line 47
    :cond_2e
    if-ne v6, v0, :cond_3a

    .line 49
    const/4 v2, 0x1

    .line 50
    move-object v1, p1

    .line 51
    move-object v4, p2

    .line 52
    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_3a

    .line 58
    return v7

    .line 59
    :cond_3a
    const/4 p1, 0x0

    .line 60
    return p1
.end method

.method public queryPath(Ljava/lang/String;I)Ljcifs/smb/Info;
    .registers 7

    .line 1
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect0()V

    .line 4
    sget v0, Ljcifs/util/LogStream;->level:I

    .line 6
    const/4 v1, 0x3

    .line 7
    if-lt v0, v1, :cond_1b

    .line 9
    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    const-string v2, "queryPath: "

    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 28
    :cond_1b
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    .line 30
    iget-object v0, v0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    .line 32
    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 34
    const/16 v1, 0x10

    .line 36
    invoke-virtual {v0, v1}, Ljcifs/smb/SmbTransport;->hasCapability(I)Z

    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_39

    .line 42
    new-instance v0, Ljcifs/smb/Trans2QueryPathInformationResponse;

    .line 44
    invoke-direct {v0, p2}, Ljcifs/smb/Trans2QueryPathInformationResponse;-><init>(I)V

    .line 47
    new-instance v1, Ljcifs/smb/Trans2QueryPathInformation;

    .line 49
    invoke-direct {v1, p1, p2}, Ljcifs/smb/Trans2QueryPathInformation;-><init>(Ljava/lang/String;I)V

    .line 52
    invoke-virtual {p0, v1, v0}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 55
    iget-object p1, v0, Ljcifs/smb/Trans2QueryPathInformationResponse;->info:Ljcifs/smb/Info;

    .line 57
    return-object p1

    .line 58
    :cond_39
    new-instance p2, Ljcifs/smb/SmbComQueryInformationResponse;

    .line 60
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    .line 62
    iget-object v0, v0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    .line 64
    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 66
    iget-object v0, v0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 68
    iget v0, v0, Ljcifs/smb/SmbTransport$ServerData;->serverTimeZone:I

    .line 70
    mul-int/lit16 v0, v0, 0x3e8

    .line 72
    int-to-long v0, v0

    .line 73
    const-wide/16 v2, 0x3c

    .line 75
    mul-long/2addr v0, v2

    .line 76
    invoke-direct {p2, v0, v1}, Ljcifs/smb/SmbComQueryInformationResponse;-><init>(J)V

    .line 79
    new-instance v0, Ljcifs/smb/SmbComQueryInformation;

    .line 81
    invoke-direct {v0, p1}, Ljcifs/smb/SmbComQueryInformation;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, v0, p2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 87
    return-object p2
.end method

.method public renameTo(Ljcifs/smb/SmbFile;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    move-result v0

    .line 9
    const-string v1, "Invalid operation for workgroups, servers, or shares"

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v0, v2, :cond_6b

    .line 14
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 21
    move-result v0

    .line 22
    if-eq v0, v2, :cond_6b

    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->resolveDfs(Ljcifs/smb/ServerMessageBlock;)V

    .line 28
    invoke-virtual {p1, v0}, Ljcifs/smb/SmbFile;->resolveDfs(Ljcifs/smb/ServerMessageBlock;)V

    .line 31
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    .line 33
    iget-object v2, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    .line 35
    invoke-virtual {v0, v2}, Ljcifs/smb/SmbTree;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_65

    .line 41
    sget v0, Ljcifs/util/LogStream;->level:I

    .line 43
    const/4 v1, 0x3

    .line 44
    if-lt v0, v1, :cond_4c

    .line 46
    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    const-string v2, "renameTo: "

    .line 52
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    iget-object v2, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v2, " -> "

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v2, p1, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 77
    :cond_4c
    const-wide/16 v0, 0x0

    .line 79
    iput-wide v0, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    .line 81
    iput-wide v0, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    .line 83
    iput-wide v0, p1, Ljcifs/smb/SmbFile;->attrExpiration:J

    .line 85
    new-instance v0, Ljcifs/smb/SmbComRename;

    .line 87
    iget-object v1, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    .line 89
    iget-object p1, p1, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    .line 91
    invoke-direct {v0, v1, p1}, Ljcifs/smb/SmbComRename;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p0, v0, p1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 101
    return-void

    .line 102
    :cond_65
    new-instance p1, Ljcifs/smb/SmbException;

    .line 104
    invoke-direct {p1, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    .line 107
    throw p1

    .line 108
    :cond_6b
    new-instance p1, Ljcifs/smb/SmbException;

    .line 110
    invoke-direct {p1, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    .line 113
    throw p1
.end method

.method public resolveDfs(Ljcifs/smb/ServerMessageBlock;)V
    .registers 10

    .line 1
    instance-of v0, p1, Ljcifs/smb/SmbComClose;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect0()V

    .line 9
    sget-object v1, Ljcifs/smb/SmbFile;->dfs:Ljcifs/smb/Dfs;

    .line 11
    iget-object v2, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    .line 13
    iget-object v3, v2, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    .line 15
    iget-object v3, v3, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 17
    iget-object v3, v3, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    .line 19
    iget-object v2, v2, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    .line 21
    iget-object v4, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    .line 23
    iget-object v5, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 25
    invoke-virtual {v1, v3, v2, v4, v5}, Ljcifs/smb/Dfs;->resolve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;

    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x0

    .line 30
    if-eqz v1, :cond_10f

    .line 32
    const-string v0, "A:"

    .line 34
    const/4 v3, 0x0

    .line 35
    if-eqz p1, :cond_3c

    .line 37
    iget-byte v4, p1, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 39
    const/16 v5, 0x25

    .line 41
    if-eq v4, v5, :cond_2f

    .line 43
    const/16 v5, 0x32

    .line 45
    if-eq v4, v5, :cond_2f

    .line 47
    goto :goto_3a

    .line 48
    :cond_2f
    move-object v4, p1

    .line 49
    check-cast v4, Ljcifs/smb/SmbComTransaction;

    .line 51
    iget-byte v4, v4, Ljcifs/smb/SmbComTransaction;->subCommand:B

    .line 53
    and-int/lit16 v4, v4, 0xff

    .line 55
    const/16 v5, 0x10

    .line 57
    if-eq v4, v5, :cond_3c

    .line 59
    :goto_3a
    move-object v4, v0

    .line 60
    goto :goto_3d

    .line 61
    :cond_3c
    move-object v4, v3

    .line 62
    :goto_3d
    move-object v0, v1

    .line 63
    :cond_3e
    :try_start_3e
    sget v5, Ljcifs/util/LogStream;->level:I

    .line 65
    const/4 v6, 0x2

    .line 66
    if-lt v5, v6, :cond_56

    .line 68
    sget-object v5, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    .line 70
    new-instance v6, Ljava/lang/StringBuilder;

    .line 72
    const-string v7, "DFS redirect: "

    .line 74
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v6

    .line 84
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    :cond_56
    iget-object v5, v0, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    .line 89
    invoke-static {v5}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;)Ljcifs/UniAddress;

    .line 92
    move-result-object v5

    .line 93
    iget-object v6, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 95
    invoke-virtual {v6}, Ljava/net/URL;->getPort()I

    .line 98
    move-result v6

    .line 99
    invoke-static {v5, v6}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    .line 102
    move-result-object v5

    .line 103
    invoke-virtual {v5}, Ljcifs/smb/SmbTransport;->connect()V

    .line 106
    iget-object v6, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 108
    invoke-virtual {v5, v6}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    .line 111
    move-result-object v5

    .line 112
    iget-object v6, v0, Ljcifs/smb/DfsReferral;->share:Ljava/lang/String;

    .line 114
    invoke-virtual {v5, v6, v4}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    .line 117
    move-result-object v5

    .line 118
    iput-object v5, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    .line 120
    if-eq v0, v1, :cond_98

    .line 122
    iget-object v5, v0, Ljcifs/smb/DfsReferral;->key:Ljava/lang/String;

    .line 124
    if-eqz v5, :cond_98

    .line 126
    iget-object v6, v0, Ljcifs/smb/DfsReferral;->map:Ljava/util/Map;

    .line 128
    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_82} :catch_83

    .line 131
    goto :goto_98

    .line 132
    :catch_83
    move-exception v5

    .line 133
    instance-of v6, v5, Ljcifs/smb/SmbException;

    .line 135
    if-eqz v6, :cond_8b

    .line 137
    check-cast v5, Ljcifs/smb/SmbException;

    .line 139
    goto :goto_93

    .line 140
    :cond_8b
    new-instance v6, Ljcifs/smb/SmbException;

    .line 142
    iget-object v7, v0, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    .line 144
    invoke-direct {v6, v7, v5}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    move-object v5, v6

    .line 148
    :goto_93
    iget-object v0, v0, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    .line 150
    if-ne v0, v1, :cond_3e

    .line 152
    move-object v3, v5

    .line 153
    :cond_98
    :goto_98
    if-nez v3, :cond_10e

    .line 155
    sget v1, Ljcifs/util/LogStream;->level:I

    .line 157
    const/4 v3, 0x3

    .line 158
    if-lt v1, v3, :cond_a4

    .line 160
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    .line 162
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 165
    :cond_a4
    iput-object v0, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    .line 167
    iget v1, v0, Ljcifs/smb/DfsReferral;->pathConsumed:I

    .line 169
    if-gez v1, :cond_ad

    .line 171
    iput v2, v0, Ljcifs/smb/DfsReferral;->pathConsumed:I

    .line 173
    goto :goto_bd

    .line 174
    :cond_ad
    iget-object v2, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    .line 176
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 179
    move-result v2

    .line 180
    if-le v1, v2, :cond_bd

    .line 182
    iget-object v1, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    .line 184
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 187
    move-result v1

    .line 188
    iput v1, v0, Ljcifs/smb/DfsReferral;->pathConsumed:I

    .line 190
    :cond_bd
    :goto_bd
    iget-object v1, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    .line 192
    iget v2, v0, Ljcifs/smb/DfsReferral;->pathConsumed:I

    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 197
    move-result-object v1

    .line 198
    const-string v2, ""

    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    move-result v3

    .line 204
    const-string v4, "\\"

    .line 206
    if-eqz v3, :cond_d0

    .line 208
    move-object v1, v4

    .line 209
    :cond_d0
    iget-object v3, v0, Ljcifs/smb/DfsReferral;->path:Ljava/lang/String;

    .line 211
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    move-result v2

    .line 215
    if-nez v2, :cond_e3

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    .line 219
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    iget-object v0, v0, Ljcifs/smb/DfsReferral;->path:Ljava/lang/String;

    .line 224
    invoke-static {v2, v0, v1}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    move-result-object v1

    .line 228
    :cond_e3
    iput-object v1, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    .line 230
    if-eqz p1, :cond_103

    .line 232
    iget-object v0, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    .line 234
    if-eqz v0, :cond_103

    .line 236
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 239
    move-result v0

    .line 240
    if-eqz v0, :cond_103

    .line 242
    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 245
    move-result v0

    .line 246
    if-nez v0, :cond_103

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    .line 250
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    move-result-object v1

    .line 260
    :cond_103
    if-eqz p1, :cond_131

    .line 262
    iput-object v1, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    .line 264
    iget v0, p1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    .line 266
    or-int/lit16 v0, v0, 0x1000

    .line 268
    iput v0, p1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    .line 270
    goto :goto_131

    .line 271
    :cond_10e
    throw v3

    .line 272
    :cond_10f
    iget-object v1, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    .line 274
    iget-boolean v1, v1, Ljcifs/smb/SmbTree;->inDomainDfs:Z

    .line 276
    if-eqz v1, :cond_129

    .line 278
    instance-of v1, p1, Ljcifs/smb/NtTransQuerySecurityDesc;

    .line 280
    if-nez v1, :cond_129

    .line 282
    if-nez v0, :cond_129

    .line 284
    instance-of v0, p1, Ljcifs/smb/SmbComFindClose2;

    .line 286
    if-eqz v0, :cond_120

    .line 288
    goto :goto_129

    .line 289
    :cond_120
    new-instance p1, Ljcifs/smb/SmbException;

    .line 291
    const v0, -0x3ffffddb  # -2.000131f

    .line 294
    invoke-direct {p1, v0, v2}, Ljcifs/smb/SmbException;-><init>(IZ)V

    .line 297
    throw p1

    .line 298
    :cond_129
    :goto_129
    if-eqz p1, :cond_131

    .line 300
    iget v0, p1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    .line 302
    and-int/lit16 v0, v0, -0x1001

    .line 304
    iput v0, p1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    .line 306
    :cond_131
    :goto_131
    return-void
.end method

.method public send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    .registers 5

    .line 1
    :goto_0
    invoke-virtual {p0, p1}, Ljcifs/smb/SmbFile;->resolveDfs(Ljcifs/smb/ServerMessageBlock;)V

    .line 4
    :try_start_3
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    .line 6
    invoke-virtual {v0, p1, p2}, Ljcifs/smb/SmbTree;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_8
    .catch Ljcifs/smb/DfsReferral; {:try_start_3 .. :try_end_8} :catch_9

    .line 9
    return-void

    .line 10
    :catch_9
    move-exception v0

    .line 11
    iget-boolean v1, v0, Ljcifs/smb/DfsReferral;->resolveHashes:Z

    .line 13
    if-nez v1, :cond_12

    .line 15
    invoke-virtual {p1}, Ljcifs/smb/ServerMessageBlock;->reset()V

    .line 18
    goto :goto_0

    .line 19
    :cond_12
    throw v0
.end method

.method public setAttributes(I)V
    .registers 10

    .line 1
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_16

    .line 12
    and-int/lit16 v3, p1, 0x30a7

    .line 14
    const-wide/16 v4, 0x0

    .line 16
    const-wide/16 v6, 0x0

    .line 18
    move-object v2, p0

    .line 19
    invoke-virtual/range {v2 .. v7}, Ljcifs/smb/SmbFile;->setPathInformation(IJJ)V

    .line 22
    return-void

    .line 23
    :cond_16
    new-instance p1, Ljcifs/smb/SmbException;

    .line 25
    const-string v0, "Invalid operation for workgroups, servers, or shares"

    .line 27
    invoke-direct {p1, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p1
.end method

.method public setCreateTime(J)V
    .registers 11

    .line 1
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_14

    .line 12
    const/4 v3, 0x0

    .line 13
    const-wide/16 v6, 0x0

    .line 15
    move-object v2, p0

    .line 16
    move-wide v4, p1

    .line 17
    invoke-virtual/range {v2 .. v7}, Ljcifs/smb/SmbFile;->setPathInformation(IJJ)V

    .line 20
    return-void

    .line 21
    :cond_14
    new-instance p1, Ljcifs/smb/SmbException;

    .line 23
    const-string p2, "Invalid operation for workgroups, servers, or shares"

    .line 25
    invoke-direct {p1, p2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p1
.end method

.method public setLastModified(J)V
    .registers 11

    .line 1
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_14

    .line 12
    const/4 v3, 0x0

    .line 13
    const-wide/16 v4, 0x0

    .line 15
    move-object v2, p0

    .line 16
    move-wide v6, p1

    .line 17
    invoke-virtual/range {v2 .. v7}, Ljcifs/smb/SmbFile;->setPathInformation(IJJ)V

    .line 20
    return-void

    .line 21
    :cond_14
    new-instance p1, Ljcifs/smb/SmbException;

    .line 23
    const-string p2, "Invalid operation for workgroups, servers, or shares"

    .line 25
    invoke-direct {p1, p2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p1
.end method

.method public setPathInformation(IJJ)V
    .registers 18

    .line 1
    move-object v0, p0

    .line 2
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    .line 5
    iget v1, v0, Ljcifs/smb/SmbFile;->attributes:I

    .line 7
    and-int/lit8 v1, v1, 0x10

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_d

    .line 12
    move v3, v2

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    const/16 v3, 0x40

    .line 16
    :goto_f
    const/16 v4, 0x100

    .line 18
    invoke-virtual {p0, v2, v4, v1, v3}, Ljcifs/smb/SmbFile;->open0(IIII)I

    .line 21
    move-result v2

    .line 22
    new-instance v3, Ljcifs/smb/Trans2SetFileInformation;

    .line 24
    or-int v7, p1, v1

    .line 26
    move-object v5, v3

    .line 27
    move v6, v2

    .line 28
    move-wide v8, p2

    .line 29
    move-wide/from16 v10, p4

    .line 31
    invoke-direct/range {v5 .. v11}, Ljcifs/smb/Trans2SetFileInformation;-><init>(IIJJ)V

    .line 34
    new-instance v1, Ljcifs/smb/Trans2SetFileInformationResponse;

    .line 36
    invoke-direct {v1}, Ljcifs/smb/Trans2SetFileInformationResponse;-><init>()V

    .line 39
    invoke-virtual {p0, v3, v1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 42
    const-wide/16 v3, 0x0

    .line 44
    invoke-virtual {p0, v2, v3, v4}, Ljcifs/smb/SmbFile;->close(IJ)V

    .line 47
    iput-wide v3, v0, Ljcifs/smb/SmbFile;->attrExpiration:J

    .line 49
    return-void
.end method

.method public setReadOnly()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAttributes()I

    .line 4
    move-result v0

    .line 5
    or-int/lit8 v0, v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->setAttributes(I)V

    .line 10
    return-void
.end method

.method public setReadWrite()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAttributes()I

    .line 4
    move-result v0

    .line 5
    and-int/lit8 v0, v0, -0x2

    .line 7
    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->setAttributes(I)V

    .line 10
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 3
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public toURL()Ljava/net/URL;
    .registers 2

    .line 1
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 3
    return-object v0
.end method
