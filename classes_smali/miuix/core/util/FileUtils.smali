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

    const-string v0, "[\\w%+,./=_-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiuix/core/util/FileUtils;->SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static addNoMedia(Ljava/lang/String;)Z
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_17

    :try_start_b
    new-instance p0, Ljava/io/File;

    const-string v1, ".nomedia"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result p0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_16} :catch_17

    return p0

    :catch_17
    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public static checksumCrc32(Ljava/io/File;)J
    .registers 5

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    const/4 v1, 0x0

    :try_start_6
    new-instance v2, Ljava/util/zip/CheckedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3, v0}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_26

    const/16 p0, 0x80

    :try_start_12
    new-array p0, p0, [B

    :goto_14
    invoke-virtual {v2, p0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_1b

    goto :goto_14

    :cond_1b
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_23

    :try_start_1f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_22

    :catch_22
    return-wide v0

    :catchall_23
    move-exception p0

    move-object v1, v2

    goto :goto_27

    :catchall_26
    move-exception p0

    :goto_27
    if-eqz v1, :cond_2c

    :try_start_29
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2c

    :catch_2c
    :cond_2c
    throw p0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 3

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_12

    :try_start_5
    invoke-static {v0, p1}, Lmiuix/core/util/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result p0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_13

    :catchall_d
    move-exception p0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_e

    return v0

    :cond_e
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_13} :catch_3f

    const/16 p1, 0x1000

    :try_start_15
    new-array p1, p1, [B

    :goto_17
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_21

    invoke-virtual {v1, p1, v0, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_30

    goto :goto_17

    :cond_21
    :try_start_21
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_3f

    :try_start_24
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_34} :catch_3f

    :try_start_34
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3b} :catch_3b

    :catch_3b
    :try_start_3b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw p0
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3f} :catch_3f

    :catch_3f
    return v0
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_1b

    :cond_b
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_1b

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b
    :goto_1b
    return-object v0
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_19

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_19

    :cond_9
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_18

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_18
    return-object p0

    :cond_19
    :goto_19
    const-string p0, ""

    return-object p0
.end method

.method public static getFolderSize(Ljava/io/File;)J
    .registers 7

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_9

    return-wide v1

    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_23

    array-length v0, p0

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v0, :cond_23

    aget-object v4, p0, v3

    invoke-static {v4}, Lmiuix/core/util/FileUtils;->getFolderSize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_23
    return-wide v1

    :cond_24
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_28

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_28

    :cond_9
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_12

    const/4 v0, -0x1

    :cond_12
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_21

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_27

    :cond_21
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_27
    return-object p0

    :cond_28
    :goto_28
    const-string p0, ""

    return-object p0
.end method

.method public static isFilenameSafe(Ljava/io/File;)Z
    .registers 2

    sget-object v0, Lmiuix/core/util/FileUtils;->SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static mkdirs(Ljava/io/File;III)Z
    .registers 8

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    return p0

    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lmiuix/core/util/FileUtils;->mkdirs(Ljava/io/File;III)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    return v1

    :cond_17
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v0

    const/4 v2, 0x1

    :try_start_1c
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_23
    .catch Landroid/system/ErrnoException; {:try_start_1c .. :try_end_23} :catch_30

    :try_start_23
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2, p3}, Landroid/system/Os;->chown(Ljava/lang/String;II)V
    :try_end_2a
    .catch Landroid/system/ErrnoException; {:try_start_23 .. :try_end_2a} :catch_2d

    move p0, v2

    move p1, p0

    goto :goto_36

    :catch_2d
    move-exception p0

    move p1, v2

    goto :goto_32

    :catch_30
    move-exception p0

    move p1, v1

    :goto_32
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    move p0, v1

    :goto_36
    if-eqz v0, :cond_3d

    if-eqz p1, :cond_3d

    if-eqz p0, :cond_3d

    move v1, v2

    :cond_3d
    return v1
.end method

.method public static normalizeDirectoryName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    if-ne v0, v1, :cond_f

    goto :goto_1c

    :cond_f
    invoke-static {p0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1c
    return-object p0
.end method

.method private static readFileAsBytes(Ljava/lang/String;)[B
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_2d

    :try_start_8
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-direct {p0, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    :goto_16
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_25

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_2a

    :try_start_21
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_24

    :catch_24
    return-object p0

    :cond_25
    const/4 v3, 0x0

    :try_start_26
    invoke-virtual {p0, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_16

    :catchall_2a
    move-exception p0

    move-object v0, v1

    goto :goto_2e

    :catchall_2d
    move-exception p0

    :goto_2e
    if-eqz v0, :cond_33

    :try_start_30
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_33

    :catch_33
    :cond_33
    throw p0
.end method

.method public static readFileAsString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lmiuix/core/util/FileUtils;->readFileAsBytes(Ljava/lang/String;)[B

    move-result-object p0

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    .registers 12

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_5
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_dc

    const-string p0, ""

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-gtz p1, :cond_94

    cmp-long v6, v1, v3

    if-lez v6, :cond_18

    if-nez p1, :cond_18

    goto/16 :goto_94

    :cond_18
    if-gez p1, :cond_78

    const/4 v1, 0x0

    move-object v2, v1

    move v3, v5

    :goto_1d
    const/4 v4, 0x1

    if-eqz v1, :cond_21

    move v3, v4

    :cond_21
    if-nez v1, :cond_26

    neg-int v1, p1

    :try_start_24
    new-array v1, v1, [B

    :cond_26
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    array-length v7, v1
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_dc

    if-eq v6, v7, :cond_74

    if-nez v2, :cond_35

    if-gtz v6, :cond_35

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0

    :cond_35
    if-nez v2, :cond_40

    :try_start_37
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v5, v6}, Ljava/lang/String;-><init>([BII)V
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_dc

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0

    :cond_40
    if-lez v6, :cond_4d

    :try_start_42
    array-length p0, v2

    sub-int/2addr p0, v6

    invoke-static {v2, v6, v2, v5, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, v2

    sub-int/2addr p0, v6

    invoke-static {v1, v5, v2, p0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4e

    :cond_4d
    move v4, v3

    :goto_4e
    if-eqz p2, :cond_6b

    if-nez v4, :cond_53

    goto :goto_6b

    :cond_53
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_67
    .catchall {:try_start_42 .. :try_end_67} :catchall_dc

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0

    :cond_6b
    :goto_6b
    :try_start_6b
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_70
    .catchall {:try_start_6b .. :try_end_70} :catchall_dc

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0

    :cond_74
    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_1d

    :cond_78
    :try_start_78
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 p1, 0x400

    new-array p2, p1, [B

    :cond_81
    invoke-virtual {v0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_8a

    invoke-virtual {p0, p2, v5, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_8a
    if-eq v1, p1, :cond_81

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_90
    .catchall {:try_start_78 .. :try_end_90} :catchall_dc

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0

    :cond_94
    :goto_94
    cmp-long v3, v1, v3

    if-lez v3, :cond_a0

    if-eqz p1, :cond_9f

    int-to-long v3, p1

    cmp-long v3, v1, v3

    if-gez v3, :cond_a0

    :cond_9f
    long-to-int p1, v1

    :cond_a0
    add-int/lit8 v1, p1, 0x1

    :try_start_a2
    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2
    :try_end_a8
    .catchall {:try_start_a2 .. :try_end_a8} :catchall_dc

    if-gtz v2, :cond_ae

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0

    :cond_ae
    if-gt v2, p1, :cond_b9

    :try_start_b0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v5, v2}, Ljava/lang/String;-><init>([BII)V
    :try_end_b5
    .catchall {:try_start_b0 .. :try_end_b5} :catchall_dc

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0

    :cond_b9
    if-nez p2, :cond_c4

    :try_start_bb
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v5, p1}, Ljava/lang/String;-><init>([BII)V
    :try_end_c0
    .catchall {:try_start_bb .. :try_end_c0} :catchall_dc

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0

    :cond_c4
    :try_start_c4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v5, p1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_d8
    .catchall {:try_start_c4 .. :try_end_d8} :catchall_dc

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0

    :catchall_dc
    move-exception p0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p0
.end method

.method public static stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    :try_start_5
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_c

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    return-void

    :catchall_c
    move-exception p0

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    throw p0
.end method

.method public static sync(Ljava/io/FileOutputStream;)Z
    .registers 1

    if-eqz p0, :cond_c

    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_a

    goto :goto_c

    :catch_a
    const/4 p0, 0x0

    return p0

    :cond_c
    :goto_c
    const/4 p0, 0x1

    return p0
.end method
