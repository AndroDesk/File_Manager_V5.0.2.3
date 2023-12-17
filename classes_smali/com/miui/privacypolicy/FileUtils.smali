.class public Lcom/miui/privacypolicy/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field public static final ERROR_FILE_NAME:Ljava/lang/String; = "privacy_agree_error"

.field private static final FOLDER_NAME:Ljava/lang/String; = "privacypolicy"

.field public static final INFO_FILE_NAME:Ljava/lang/String; = "privacy_update"

.field private static final TAG:Ljava/lang/String; = "Privacy_FileUtils"

.field public static final TEMP_UPDATE_VERSION_FILE_NAME:Ljava/lang/String; = "privacy_temp_update_version"

.field public static final VERSION_FILE_NAME:Ljava/lang/String; = "privacy_version"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static closeQuietly(Ljava/io/InputStream;)V
    .registers 3

    if-eqz p0, :cond_1d

    .line 3
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_1d

    :catch_6
    move-exception p0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeQuietly InputStream error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Privacy_FileUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    :goto_1d
    return-void
.end method

.method public static closeQuietly(Ljava/io/OutputStream;)V
    .registers 5

    const-string v0, "closeQuietly OutputStream error "

    const-string v1, "Privacy_FileUtils"

    if-eqz p0, :cond_34

    .line 5
    :try_start_6
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_1d

    :catch_a
    move-exception v2

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :goto_1d
    :try_start_1d
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_34

    :catch_21
    move-exception p0

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    :goto_34
    return-void
.end method

.method public static closeQuietly(Ljava/io/Writer;)V
    .registers 3

    if-eqz p0, :cond_1d

    .line 1
    :try_start_2
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_1d

    :catch_6
    move-exception p0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeQuietly Writer error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Privacy_FileUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    :goto_1d
    return-void
.end method

.method public static deleteFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 19
    const-string v1, "privacypolicy"

    .line 21
    invoke-static {v0, p0, v1, p0, p2}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {v0, p0, p1}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    new-instance p1, Ljava/io/File;

    .line 30
    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_2b

    .line 39
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 42
    move-result p0

    .line 43
    return p0

    .line 44
    :cond_2b
    const/4 p0, 0x0

    .line 45
    return p0
.end method

.method public static isAgreeErrorFileExit(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 1
    const-string v0, "privacy_agree_error"

    .line 3
    invoke-static {p0, v0, p1}, Lcom/miui/privacypolicy/FileUtils;->readData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result p0

    .line 11
    xor-int/lit8 p0, p0, 0x1

    .line 13
    return p0
.end method

.method public static isVersionFileExit(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 1
    const-string v0, "privacy_version"

    .line 3
    invoke-static {p0, v0, p1}, Lcom/miui/privacypolicy/FileUtils;->readData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result p0

    .line 11
    xor-int/lit8 p0, p0, 0x1

    .line 13
    return p0
.end method

.method public static readData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 19
    const-string v1, "privacypolicy"

    .line 21
    invoke-static {v0, p0, v1, p0, p2}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {v0, p0, p1}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    invoke-static {p0}, La/a;->A(Ljava/lang/String;)Z

    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_24

    .line 34
    const-string p0, ""

    .line 36
    return-object p0

    .line 37
    :cond_24
    const/4 p1, 0x0

    .line 38
    :try_start_25
    new-instance p2, Ljava/io/FileInputStream;

    .line 40
    invoke-direct {p2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2a} :catch_36
    .catchall {:try_start_25 .. :try_end_2a} :catchall_34

    .line 43
    :try_start_2a
    invoke-static {p2}, Lcom/miui/privacypolicy/FileUtils;->readInputStream(Ljava/io/FileInputStream;)Ljava/lang/String;

    .line 46
    move-result-object p1
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2e} :catch_32
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2f

    .line 47
    goto :goto_3f

    .line 48
    :catchall_2f
    move-exception p0

    .line 49
    move-object p1, p2

    .line 50
    goto :goto_43

    .line 51
    :catch_32
    move-exception p0

    .line 52
    goto :goto_38

    .line 53
    :catchall_34
    move-exception p0

    .line 54
    goto :goto_43

    .line 55
    :catch_36
    move-exception p0

    .line 56
    move-object p2, p1

    .line 57
    :goto_38
    :try_start_38
    const-string v0, "Privacy_FileUtils"

    .line 59
    const-string v1, "readData fail!"

    .line 61
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_2f

    .line 64
    :goto_3f
    invoke-static {p2}, Lcom/miui/privacypolicy/FileUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 67
    return-object p1

    .line 68
    :goto_43
    invoke-static {p1}, Lcom/miui/privacypolicy/FileUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 71
    throw p0
.end method

.method private static readInputStream(Ljava/io/FileInputStream;)Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    const/16 v1, 0x400

    .line 8
    new-array v2, v1, [B

    .line 10
    :goto_9
    const/4 v3, 0x0

    .line 11
    :try_start_a
    invoke-virtual {p0, v2, v3, v1}, Ljava/io/FileInputStream;->read([BII)I

    .line 14
    move-result v4

    .line 15
    if-lez v4, :cond_14

    .line 17
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 20
    goto :goto_9

    .line 21
    :cond_14
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    .line 24
    move-result-object p0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_18} :catch_1e
    .catchall {:try_start_a .. :try_end_18} :catchall_1c

    .line 25
    invoke-static {v0}, Lcom/miui/privacypolicy/FileUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 28
    return-object p0

    .line 29
    :catchall_1c
    move-exception p0

    .line 30
    goto :goto_2b

    .line 31
    :catch_1e
    move-exception p0

    .line 32
    :try_start_1f
    const-string v1, "Privacy_FileUtils"

    .line 34
    const-string v2, "readInputStream fail!"

    .line 36
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_1c

    .line 39
    invoke-static {v0}, Lcom/miui/privacypolicy/FileUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 42
    const/4 p0, 0x0

    .line 43
    return-object p0

    .line 44
    :goto_2b
    invoke-static {v0}, Lcom/miui/privacypolicy/FileUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 47
    throw p0
.end method

.method public static saveData(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string v2, "privacypolicy"

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_32

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 51
    :cond_32
    const/4 p1, 0x0

    .line 52
    :try_start_33
    new-instance p3, Ljava/io/FileOutputStream;

    .line 54
    new-instance v1, Ljava/io/File;

    .line 56
    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    invoke-direct {p3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3d} :catch_59
    .catchall {:try_start_33 .. :try_end_3d} :catchall_56

    .line 62
    :try_start_3d
    new-instance p2, Ljava/io/BufferedWriter;

    .line 64
    new-instance v0, Ljava/io/OutputStreamWriter;

    .line 66
    invoke-direct {v0, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 69
    invoke-direct {p2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_47} :catch_54
    .catchall {:try_start_3d .. :try_end_47} :catchall_69

    .line 72
    :try_start_47
    invoke-virtual {p2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_51
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4e

    .line 75
    invoke-static {p2}, Lcom/miui/privacypolicy/FileUtils;->closeQuietly(Ljava/io/Writer;)V

    .line 78
    goto :goto_65

    .line 79
    :catchall_4e
    move-exception p0

    .line 80
    move-object p1, p2

    .line 81
    goto :goto_6a

    .line 82
    :catch_51
    move-exception p0

    .line 83
    move-object p1, p2

    .line 84
    goto :goto_5b

    .line 85
    :catch_54
    move-exception p0

    .line 86
    goto :goto_5b

    .line 87
    :catchall_56
    move-exception p0

    .line 88
    move-object p3, p1

    .line 89
    goto :goto_6a

    .line 90
    :catch_59
    move-exception p0

    .line 91
    move-object p3, p1

    .line 92
    :goto_5b
    :try_start_5b
    const-string p2, "Privacy_FileUtils"

    .line 94
    const-string v0, "saveData fail!"

    .line 96
    invoke-static {p2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_69

    .line 99
    invoke-static {p1}, Lcom/miui/privacypolicy/FileUtils;->closeQuietly(Ljava/io/Writer;)V

    .line 102
    :goto_65
    invoke-static {p3}, Lcom/miui/privacypolicy/FileUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 105
    return-void

    .line 106
    :catchall_69
    move-exception p0

    .line 107
    :goto_6a
    invoke-static {p1}, Lcom/miui/privacypolicy/FileUtils;->closeQuietly(Ljava/io/Writer;)V

    .line 110
    invoke-static {p3}, Lcom/miui/privacypolicy/FileUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 113
    throw p0
.end method
