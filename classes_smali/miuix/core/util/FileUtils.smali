.class public Lmiuix/core/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

.field public static final S_IRGRP:I = 0x20

.field public static final S_IROTH:I = 0x4

.field public static final S_IRUSR:I = 0x100

.field public static final S_IRWXG:I = 0x38

.field public static final S_IRWXO:I = 0x7

.field public static final S_IRWXU:I = 0x1c0

.field public static final S_IWGRP:I = 0x10

.field public static final S_IWOTH:I = 0x2

.field public static final S_IWUSR:I = 0x80

.field public static final S_IXGRP:I = 0x8

.field public static final S_IXOTH:I = 0x1

.field public static final S_IXUSR:I = 0x40


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "[\\w%+,./=_-]+"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lmiuix/core/util/FileUtils;->SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/InstantiationException;

    .line 6
    const-string v1, "Cannot instantiate utility class"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    .line 11
    throw v0
.end method

.method public static addNoMedia(Ljava/lang/String;)Z
    .registers 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_17

    .line 12
    :try_start_b
    new-instance p0, Ljava/io/File;

    .line 14
    const-string v1, ".nomedia"

    .line 16
    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 22
    move-result p0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_16} :catch_17

    .line 23
    return p0

    .line 24
    :catch_17
    :cond_17
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public static checksumCrc32(Ljava/io/File;)J
    .registers 5

    .line 1
    new-instance v0, Ljava/util/zip/CRC32;

    .line 3
    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_6
    new-instance v2, Ljava/util/zip/CheckedInputStream;

    .line 9
    new-instance v3, Ljava/io/FileInputStream;

    .line 11
    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 14
    invoke-direct {v2, v3, v0}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_26

    .line 17
    const/16 p0, 0x80

    .line 19
    :try_start_12
    new-array p0, p0, [B

    .line 21
    :goto_14
    invoke-virtual {v2, p0}, Ljava/io/InputStream;->read([B)I

    .line 24
    move-result v1

    .line 25
    if-ltz v1, :cond_1b

    .line 27
    goto :goto_14

    .line 28
    :cond_1b
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    .line 31
    move-result-wide v0
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_23

    .line 32
    :try_start_1f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_22

    .line 35
    :catch_22
    return-wide v0

    .line 36
    :catchall_23
    move-exception p0

    .line 37
    move-object v1, v2

    .line 38
    goto :goto_27

    .line 39
    :catchall_26
    move-exception p0

    .line 40
    :goto_27
    if-eqz v1, :cond_2c

    .line 42
    :try_start_29
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2c

    .line 45
    :catch_2c
    :cond_2c
    throw p0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    .line 3
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_12

    .line 6
    :try_start_5
    invoke-static {v0, p1}, Lmiuix/core/util/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    .line 9
    move-result p0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 10
    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 13
    goto :goto_13

    .line 14
    :catchall_d
    move-exception p0

    .line 15
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 18
    throw p0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_12} :catch_12

    .line 19
    :catch_12
    const/4 p0, 0x0

    .line 20
    :goto_13
    return p0
.end method

.method public static copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_e

    .line 8
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_e

    .line 14
    return v0

    .line 15
    :cond_e
    new-instance v1, Ljava/io/FileOutputStream;

    .line 17
    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_13} :catch_3f

    .line 20
    const/16 p1, 0x1000

    .line 22
    :try_start_15
    new-array p1, p1, [B

    .line 24
    :goto_17
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    .line 27
    move-result v2

    .line 28
    if-ltz v2, :cond_21

    .line 30
    invoke-virtual {v1, p1, v0, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_30

    .line 33
    goto :goto_17

    .line 34
    :cond_21
    :try_start_21
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_3f

    .line 37
    :try_start_24
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2b} :catch_2b

    .line 44
    :catch_2b
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 47
    const/4 p0, 0x1

    .line 48
    return p0

    .line 49
    :catchall_30
    move-exception p0

    .line 50
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_34} :catch_3f

    .line 53
    :try_start_34
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3b} :catch_3b

    .line 60
    :catch_3b
    :try_start_3b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 63
    throw p0
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3f} :catch_3f

    .line 64
    :catch_3f
    return v0
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, ""

    .line 3
    if-eqz p0, :cond_1b

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_b

    .line 11
    goto :goto_1b

    .line 12
    :cond_b
    const/16 v1, 0x2e

    .line 14
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 17
    move-result v1

    .line 18
    const/4 v2, -0x1

    .line 19
    if-le v1, v2, :cond_1b

    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 23
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_1b
    :goto_1b
    return-object v0
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    if-eqz p0, :cond_19

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_9

    .line 9
    goto :goto_19

    .line 10
    :cond_9
    sget-char v0, Ljava/io/File;->separatorChar:C

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 15
    move-result v0

    .line 16
    const/4 v1, -0x1

    .line 17
    if-le v0, v1, :cond_18

    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    :cond_18
    return-object p0

    .line 26
    :cond_19
    :goto_19
    const-string p0, ""

    .line 28
    return-object p0
.end method

.method public static getFolderSize(Ljava/io/File;)J
    .registers 7

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 7
    if-nez v0, :cond_9

    .line 9
    return-wide v1

    .line 10
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_24

    .line 16
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_23

    .line 22
    array-length v0, p0

    .line 23
    const/4 v3, 0x0

    .line 24
    :goto_17
    if-ge v3, v0, :cond_23

    .line 26
    aget-object v4, p0, v3

    .line 28
    invoke-static {v4}, Lmiuix/core/util/FileUtils;->getFolderSize(Ljava/io/File;)J

    .line 31
    move-result-wide v4

    .line 32
    add-long/2addr v1, v4

    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 35
    goto :goto_17

    .line 36
    :cond_23
    return-wide v1

    .line 37
    :cond_24
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 40
    move-result-wide v0

    .line 41
    return-wide v0
.end method

.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    if-eqz p0, :cond_28

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_9

    .line 9
    goto :goto_28

    .line 10
    :cond_9
    sget-char v0, Ljava/io/File;->separatorChar:C

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 15
    move-result v0

    .line 16
    if-gez v0, :cond_12

    .line 18
    const/4 v0, -0x1

    .line 19
    :cond_12
    const-string v1, "."

    .line 21
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 24
    move-result v1

    .line 25
    if-gez v1, :cond_21

    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    goto :goto_27

    .line 34
    :cond_21
    add-int/lit8 v0, v0, 0x1

    .line 36
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 40
    :goto_27
    return-object p0

    .line 41
    :cond_28
    :goto_28
    const-string p0, ""

    .line 43
    return-object p0
.end method

.method public static isFilenameSafe(Ljava/io/File;)Z
    .registers 2

    .line 1
    sget-object v0, Lmiuix/core/util/FileUtils;->SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public static mkdirs(Ljava/io/File;III)Z
    .registers 8

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0, p1, p2, p3}, Lmiuix/core/util/FileUtils;->mkdirs(Ljava/io/File;III)Z

    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    if-nez v0, :cond_17

    .line 23
    return v1

    .line 24
    :cond_17
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    .line 27
    move-result v0

    .line 28
    const/4 v2, 0x1

    .line 29
    :try_start_1c
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 32
    move-result-object v3

    .line 33
    invoke-static {v3, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_23
    .catch Landroid/system/ErrnoException; {:try_start_1c .. :try_end_23} :catch_30

    .line 36
    :try_start_23
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 40
    invoke-static {p0, p2, p3}, Landroid/system/Os;->chown(Ljava/lang/String;II)V
    :try_end_2a
    .catch Landroid/system/ErrnoException; {:try_start_23 .. :try_end_2a} :catch_2d

    .line 43
    move p0, v2

    .line 44
    move p1, p0

    .line 45
    goto :goto_36

    .line 46
    :catch_2d
    move-exception p0

    .line 47
    move p1, v2

    .line 48
    goto :goto_32

    .line 49
    :catch_30
    move-exception p0

    .line 50
    move p1, v1

    .line 51
    :goto_32
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    move p0, v1

    .line 55
    :goto_36
    if-eqz v0, :cond_3d

    .line 57
    if-eqz p1, :cond_3d

    .line 59
    if-eqz p0, :cond_3d

    .line 61
    move v1, v2

    .line 62
    :cond_3d
    return v1
.end method

.method public static normalizeDirectoryName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 10
    move-result v0

    .line 11
    sget-char v1, Ljava/io/File;->separatorChar:C

    .line 13
    if-ne v0, v1, :cond_f

    .line 15
    goto :goto_1c

    .line 16
    :cond_f
    invoke-static {p0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    move-result-object p0

    .line 20
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    :goto_1c
    return-object p0
.end method

.method private static readFileAsBytes(Ljava/lang/String;)[B
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    .line 4
    const-string v2, "r"

    .line 6
    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_2d

    .line 9
    :try_start_8
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    .line 11
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    .line 14
    move-result-wide v2

    .line 15
    long-to-int v0, v2

    .line 16
    invoke-direct {p0, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 19
    const/16 v0, 0x2000

    .line 21
    new-array v0, v0, [B

    .line 23
    :goto_16
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 26
    move-result v2

    .line 27
    const/4 v3, -0x1

    .line 28
    if-ne v2, v3, :cond_25

    .line 30
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 33
    move-result-object p0
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_2a

    .line 34
    :try_start_21
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_24

    .line 37
    :catch_24
    return-object p0

    .line 38
    :cond_25
    const/4 v3, 0x0

    .line 39
    :try_start_26
    invoke-virtual {p0, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    .line 42
    goto :goto_16

    .line 43
    :catchall_2a
    move-exception p0

    .line 44
    move-object v0, v1

    .line 45
    goto :goto_2e

    .line 46
    :catchall_2d
    move-exception p0

    .line 47
    :goto_2e
    if-eqz v0, :cond_33

    .line 49
    :try_start_30
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_33

    .line 52
    :catch_33
    :cond_33
    throw p0
.end method

.method public static readFileAsString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    invoke-static {p0}, Lmiuix/core/util/FileUtils;->readFileAsBytes(Ljava/lang/String;)[B

    .line 6
    move-result-object p0

    .line 7
    const-string v1, "UTF-8"

    .line 9
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 16
    return-object v0
.end method

.method public static readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    .registers 12

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    .line 3
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 6
    :try_start_5
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 9
    move-result-wide v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_dc

    .line 10
    const-string p0, ""

    .line 12
    const-wide/16 v3, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    if-gtz p1, :cond_94

    .line 17
    cmp-long v6, v1, v3

    .line 19
    if-lez v6, :cond_18

    .line 21
    if-nez p1, :cond_18

    .line 23
    goto/16 :goto_94

    .line 25
    :cond_18
    if-gez p1, :cond_78

    .line 27
    const/4 v1, 0x0

    .line 28
    move-object v2, v1

    .line 29
    move v3, v5

    .line 30
    :goto_1d
    const/4 v4, 0x1

    .line 31
    if-eqz v1, :cond_21

    .line 33
    move v3, v4

    .line 34
    :cond_21
    if-nez v1, :cond_26

    .line 36
    neg-int v1, p1

    .line 37
    :try_start_24
    new-array v1, v1, [B

    .line 39
    :cond_26
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 42
    move-result v6

    .line 43
    array-length v7, v1
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_dc

    .line 44
    if-eq v6, v7, :cond_74

    .line 46
    if-nez v2, :cond_35

    .line 48
    if-gtz v6, :cond_35

    .line 50
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 53
    return-object p0

    .line 54
    :cond_35
    if-nez v2, :cond_40

    .line 56
    :try_start_37
    new-instance p0, Ljava/lang/String;

    .line 58
    invoke-direct {p0, v1, v5, v6}, Ljava/lang/String;-><init>([BII)V
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_dc

    .line 61
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 64
    return-object p0

    .line 65
    :cond_40
    if-lez v6, :cond_4d

    .line 67
    :try_start_42
    array-length p0, v2

    .line 68
    sub-int/2addr p0, v6

    .line 69
    invoke-static {v2, v6, v2, v5, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    array-length p0, v2

    .line 73
    sub-int/2addr p0, v6

    .line 74
    invoke-static {v1, v5, v2, p0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    goto :goto_4e

    .line 78
    :cond_4d
    move v4, v3

    .line 79
    :goto_4e
    if-eqz p2, :cond_6b

    .line 81
    if-nez v4, :cond_53

    .line 83
    goto :goto_6b

    .line 84
    :cond_53
    new-instance p0, Ljava/lang/StringBuilder;

    .line 86
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    new-instance p1, Ljava/lang/String;

    .line 94
    invoke-direct {p1, v2}, Ljava/lang/String;-><init>([B)V

    .line 97
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object p0
    :try_end_67
    .catchall {:try_start_42 .. :try_end_67} :catchall_dc

    .line 104
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 107
    return-object p0

    .line 108
    :cond_6b
    :goto_6b
    :try_start_6b
    new-instance p0, Ljava/lang/String;

    .line 110
    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_70
    .catchall {:try_start_6b .. :try_end_70} :catchall_dc

    .line 113
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 116
    return-object p0

    .line 117
    :cond_74
    move-object v8, v2

    .line 118
    move-object v2, v1

    .line 119
    move-object v1, v8

    .line 120
    goto :goto_1d

    .line 121
    :cond_78
    :try_start_78
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    .line 123
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 126
    const/16 p1, 0x400

    .line 128
    new-array p2, p1, [B

    .line 130
    :cond_81
    invoke-virtual {v0, p2}, Ljava/io/InputStream;->read([B)I

    .line 133
    move-result v1

    .line 134
    if-lez v1, :cond_8a

    .line 136
    invoke-virtual {p0, p2, v5, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 139
    :cond_8a
    if-eq v1, p1, :cond_81

    .line 141
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    .line 144
    move-result-object p0
    :try_end_90
    .catchall {:try_start_78 .. :try_end_90} :catchall_dc

    .line 145
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 148
    return-object p0

    .line 149
    :cond_94
    :goto_94
    cmp-long v3, v1, v3

    .line 151
    if-lez v3, :cond_a0

    .line 153
    if-eqz p1, :cond_9f

    .line 155
    int-to-long v3, p1

    .line 156
    cmp-long v3, v1, v3

    .line 158
    if-gez v3, :cond_a0

    .line 160
    :cond_9f
    long-to-int p1, v1

    .line 161
    :cond_a0
    add-int/lit8 v1, p1, 0x1

    .line 163
    :try_start_a2
    new-array v1, v1, [B

    .line 165
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 168
    move-result v2
    :try_end_a8
    .catchall {:try_start_a2 .. :try_end_a8} :catchall_dc

    .line 169
    if-gtz v2, :cond_ae

    .line 171
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 174
    return-object p0

    .line 175
    :cond_ae
    if-gt v2, p1, :cond_b9

    .line 177
    :try_start_b0
    new-instance p0, Ljava/lang/String;

    .line 179
    invoke-direct {p0, v1, v5, v2}, Ljava/lang/String;-><init>([BII)V
    :try_end_b5
    .catchall {:try_start_b0 .. :try_end_b5} :catchall_dc

    .line 182
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 185
    return-object p0

    .line 186
    :cond_b9
    if-nez p2, :cond_c4

    .line 188
    :try_start_bb
    new-instance p0, Ljava/lang/String;

    .line 190
    invoke-direct {p0, v1, v5, p1}, Ljava/lang/String;-><init>([BII)V
    :try_end_c0
    .catchall {:try_start_bb .. :try_end_c0} :catchall_dc

    .line 193
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 196
    return-object p0

    .line 197
    :cond_c4
    :try_start_c4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 199
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    new-instance v2, Ljava/lang/String;

    .line 204
    invoke-direct {v2, v1, v5, p1}, Ljava/lang/String;-><init>([BII)V

    .line 207
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    move-result-object p0
    :try_end_d8
    .catchall {:try_start_c4 .. :try_end_d8} :catchall_dc

    .line 217
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 220
    return-object p0

    .line 221
    :catchall_dc
    move-exception p0

    .line 222
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 225
    throw p0
.end method

.method public static stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    new-instance v0, Ljava/io/FileWriter;

    .line 3
    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 6
    :try_start_5
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_c

    .line 9
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 12
    return-void

    .line 13
    :catchall_c
    move-exception p0

    .line 14
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 17
    throw p0
.end method

.method public static sync(Ljava/io/FileOutputStream;)Z
    .registers 1

    .line 1
    if-eqz p0, :cond_c

    .line 3
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_a

    .line 10
    goto :goto_c

    .line 11
    :catch_a
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_c
    :goto_c
    const/4 p0, 0x1

    .line 14
    return p0
.end method
