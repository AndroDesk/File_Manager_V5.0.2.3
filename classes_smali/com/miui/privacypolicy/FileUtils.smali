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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/InputStream;)V
    .registers 3

    if-eqz p0, :cond_1d

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_1d

    :catch_6
    move-exception p0

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

    :try_start_6
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_1d

    :catch_a
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d
    :try_start_1d
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_34

    :catch_21
    move-exception p0

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

    :try_start_2
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_1d

    :catch_6
    move-exception p0

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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v1, "privacypolicy"

    invoke-static {v0, p0, v1, p0, p2}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0, p1}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2b

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    :cond_2b
    const/4 p0, 0x0

    return p0
.end method

.method public static isAgreeErrorFileExit(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    const-string v0, "privacy_agree_error"

    invoke-static {p0, v0, p1}, Lcom/miui/privacypolicy/FileUtils;->readData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isVersionFileExit(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    const-string v0, "privacy_version"

    invoke-static {p0, v0, p1}, Lcom/miui/privacypolicy/FileUtils;->readData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static readData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v1, "privacypolicy"

    invoke-static {v0, p0, v1, p0, p2}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0, p1}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, La/a;->A(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_24

    const-string p0, ""

    return-object p0

    :cond_24
    const/4 p1, 0x0

    :try_start_25
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2a} :catch_36
    .catchall {:try_start_25 .. :try_end_2a} :catchall_34

    :try_start_2a
    invoke-static {p2}, Lcom/miui/privacypolicy/FileUtils;->readInputStream(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object p1
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2e} :catch_32
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2f

    goto :goto_3f

    :catchall_2f
    move-exception p0

    move-object p1, p2

    goto :goto_43

    :catch_32
    move-exception p0

    goto :goto_38

    :catchall_34
    move-exception p0

    goto :goto_43

    :catch_36
    move-exception p0

    move-object p2, p1

    :goto_38
    :try_start_38
    const-string v0, "Privacy_FileUtils"

    const-string v1, "readData fail!"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_2f

    :goto_3f
    invoke-static {p2}, Lcom/miui/privacypolicy/FileUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object p1

    :goto_43
    invoke-static {p1}, Lcom/miui/privacypolicy/FileUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw p0
.end method

.method private static readInputStream(Ljava/io/FileInputStream;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v2, v1, [B

    :goto_9
    const/4 v3, 0x0

    :try_start_a
    invoke-virtual {p0, v2, v3, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_14

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    :cond_14
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_18} :catch_1e
    .catchall {:try_start_a .. :try_end_18} :catchall_1c

    invoke-static {v0}, Lcom/miui/privacypolicy/FileUtils;->closeQuietly(Ljava/io/OutputStream;)V

    return-object p0

    :catchall_1c
    move-exception p0

    goto :goto_2b

    :catch_1e
    move-exception p0

    :try_start_1f
    const-string v1, "Privacy_FileUtils"

    const-string v2, "readInputStream fail!"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_1c

    invoke-static {v0}, Lcom/miui/privacypolicy/FileUtils;->closeQuietly(Ljava/io/OutputStream;)V

    const/4 p0, 0x0

    return-object p0

    :goto_2b
    invoke-static {v0}, Lcom/miui/privacypolicy/FileUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw p0
.end method

.method public static saveData(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "privacypolicy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_32

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_32
    const/4 p1, 0x0

    :try_start_33
    new-instance p3, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3d} :catch_59
    .catchall {:try_start_33 .. :try_end_3d} :catchall_56

    :try_start_3d
    new-instance p2, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_47} :catch_54
    .catchall {:try_start_3d .. :try_end_47} :catchall_69

    :try_start_47
    invoke-virtual {p2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_51
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4e

    invoke-static {p2}, Lcom/miui/privacypolicy/FileUtils;->closeQuietly(Ljava/io/Writer;)V

    goto :goto_65

    :catchall_4e
    move-exception p0

    move-object p1, p2

    goto :goto_6a

    :catch_51
    move-exception p0

    move-object p1, p2

    goto :goto_5b

    :catch_54
    move-exception p0

    goto :goto_5b

    :catchall_56
    move-exception p0

    move-object p3, p1

    goto :goto_6a

    :catch_59
    move-exception p0

    move-object p3, p1

    :goto_5b
    :try_start_5b
    const-string p2, "Privacy_FileUtils"

    const-string v0, "saveData fail!"

    invoke-static {p2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_69

    invoke-static {p1}, Lcom/miui/privacypolicy/FileUtils;->closeQuietly(Ljava/io/Writer;)V

    :goto_65
    invoke-static {p3}, Lcom/miui/privacypolicy/FileUtils;->closeQuietly(Ljava/io/OutputStream;)V

    return-void

    :catchall_69
    move-exception p0

    :goto_6a
    invoke-static {p1}, Lcom/miui/privacypolicy/FileUtils;->closeQuietly(Ljava/io/Writer;)V

    invoke-static {p3}, Lcom/miui/privacypolicy/FileUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw p0
.end method
