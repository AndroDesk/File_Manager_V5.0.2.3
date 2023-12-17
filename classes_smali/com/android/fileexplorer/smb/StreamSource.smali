.class Lcom/android/fileexplorer/smb/StreamSource;
.super Ljava/lang/Object;
.source "StreamSource.java"


# instance fields
.field private mFileName:Ljava/lang/String;

.field private mInputStream:Ljava/io/InputStream;

.field private mLength:J

.field private mMimetype:Ljava/lang/String;

.field private mSkipByte:J

.field private mSmbFile:Ljcifs/smb/SmbFile;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljcifs/smb/SmbFile;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/fileexplorer/smb/StreamSource;->mSkipByte:J

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/fileexplorer/smb/StreamSource;->mLength:J

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/smb/StreamSource;->mMimetype:Ljava/lang/String;

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/smb/StreamSource;->mFileName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/fileexplorer/smb/StreamSource;->mSmbFile:Ljcifs/smb/SmbFile;

    return-void
.end method

.method private read([BII)I
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/smb/StreamSource;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    iget-wide p2, p0, Lcom/android/fileexplorer/smb/StreamSource;->mSkipByte:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/android/fileexplorer/smb/StreamSource;->mSkipByte:J

    return p1
.end method


# virtual methods
.method public available()J
    .registers 5

    iget-wide v0, p0, Lcom/android/fileexplorer/smb/StreamSource;->mLength:J

    iget-wide v2, p0, Lcom/android/fileexplorer/smb/StreamSource;->mSkipByte:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/smb/StreamSource;->mInputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method public getFile()Ljcifs/smb/SmbFile;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/smb/StreamSource;->mSmbFile:Ljcifs/smb/SmbFile;

    return-object v0
.end method

.method public getLength()J
    .registers 3

    iget-wide v0, p0, Lcom/android/fileexplorer/smb/StreamSource;->mLength:J

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/smb/StreamSource;->mMimetype:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/smb/StreamSource;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public moveTo(J)J
    .registers 3

    iput-wide p1, p0, Lcom/android/fileexplorer/smb/StreamSource;->mSkipByte:J

    return-wide p1
.end method

.method public open()V
    .registers 6

    :try_start_0
    new-instance v0, Ljcifs/smb/SmbFileInputStream;

    iget-object v1, p0, Lcom/android/fileexplorer/smb/StreamSource;->mSmbFile:Ljcifs/smb/SmbFile;

    invoke-direct {v0, v1}, Ljcifs/smb/SmbFileInputStream;-><init>(Ljcifs/smb/SmbFile;)V

    iput-object v0, p0, Lcom/android/fileexplorer/smb/StreamSource;->mInputStream:Ljava/io/InputStream;

    iget-wide v1, p0, Lcom/android/fileexplorer/smb/StreamSource;->mSkipByte:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_14

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    :cond_14
    return-void

    :catch_15
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public read([B)I
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/fileexplorer/smb/StreamSource;->read([BII)I

    move-result p1

    return p1
.end method

.method public resetSkipByte()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/fileexplorer/smb/StreamSource;->mSkipByte:J

    return-void
.end method
