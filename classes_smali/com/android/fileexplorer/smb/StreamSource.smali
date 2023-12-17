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
.method public constructor <init>(Ljcifs/smb/SmbFile;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/android/fileexplorer/smb/StreamSource;->mSkipByte:J

    .line 8
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->length()J

    .line 11
    move-result-wide v0

    .line 12
    iput-wide v0, p0, Lcom/android/fileexplorer/smb/StreamSource;->mLength:J

    .line 14
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/android/fileexplorer/smb/StreamSource;->mMimetype:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/android/fileexplorer/smb/StreamSource;->mFileName:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/android/fileexplorer/smb/StreamSource;->mSmbFile:Ljcifs/smb/SmbFile;

    .line 32
    return-void
.end method

.method private read([BII)I
    .registers 6

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/smb/StreamSource;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    .line 3
    iget-wide p2, p0, Lcom/android/fileexplorer/smb/StreamSource;->mSkipByte:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/android/fileexplorer/smb/StreamSource;->mSkipByte:J

    return p1
.end method


# virtual methods
.method public available()J
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/android/fileexplorer/smb/StreamSource;->mLength:J

    .line 3
    iget-wide v2, p0, Lcom/android/fileexplorer/smb/StreamSource;->mSkipByte:J

    .line 5
    sub-long/2addr v0, v2

    .line 6
    return-wide v0
.end method

.method public close()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/smb/StreamSource;->mInputStream:Ljava/io/InputStream;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 6
    return-void
.end method

.method public getFile()Ljcifs/smb/SmbFile;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/smb/StreamSource;->mSmbFile:Ljcifs/smb/SmbFile;

    .line 3
    return-object v0
.end method

.method public getLength()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/android/fileexplorer/smb/StreamSource;->mLength:J

    .line 3
    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/smb/StreamSource;->mMimetype:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/smb/StreamSource;->mFileName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public moveTo(J)J
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/android/fileexplorer/smb/StreamSource;->mSkipByte:J

    .line 3
    return-wide p1
.end method

.method public open()V
    .registers 6

    .line 1
    :try_start_0
    new-instance v0, Ljcifs/smb/SmbFileInputStream;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/smb/StreamSource;->mSmbFile:Ljcifs/smb/SmbFile;

    .line 5
    invoke-direct {v0, v1}, Ljcifs/smb/SmbFileInputStream;-><init>(Ljcifs/smb/SmbFile;)V

    .line 8
    iput-object v0, p0, Lcom/android/fileexplorer/smb/StreamSource;->mInputStream:Ljava/io/InputStream;

    .line 10
    iget-wide v1, p0, Lcom/android/fileexplorer/smb/StreamSource;->mSkipByte:J

    .line 12
    const-wide/16 v3, 0x0

    .line 14
    cmp-long v3, v1, v3

    .line 16
    if-lez v3, :cond_14

    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 21
    :cond_14
    return-void

    .line 22
    :catch_15
    move-exception v0

    .line 23
    new-instance v1, Ljava/io/IOException;

    .line 25
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 28
    throw v1
.end method

.method public read([B)I
    .registers 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/fileexplorer/smb/StreamSource;->read([BII)I

    move-result p1

    return p1
.end method

.method public resetSkipByte()V
    .registers 3

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/android/fileexplorer/smb/StreamSource;->mSkipByte:J

    .line 5
    return-void
.end method
