.class Lcom/readystatesoftware/sqliteasset/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;

    .line 3
    const-string v0, "SQLiteAssetHelper"

    .line 5
    sput-object v0, Lcom/readystatesoftware/sqliteasset/Utils;->TAG:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 2

    .line 1
    new-instance v0, Ljava/util/Scanner;

    .line 3
    invoke-direct {v0, p0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 6
    const-string p0, "\\A"

    .line 8
    invoke-virtual {v0, p0}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static getFileFromZip(Ljava/io/InputStream;)Ljava/util/zip/ZipInputStream;
    .registers 4

    .line 1
    new-instance v0, Ljava/util/zip/ZipInputStream;

    .line 3
    invoke-direct {v0, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 6
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_27

    .line 12
    sget-object v1, Lcom/readystatesoftware/sqliteasset/Utils;->TAG:Ljava/lang/String;

    .line 14
    const-string v2, "extracting file: \'"

    .line 16
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string p0, "\'..."

    .line 29
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-object v0

    .line 40
    :cond_27
    const/4 p0, 0x0

    .line 41
    return-object p0
.end method

.method public static splitSqlScript(Ljava/lang/String;C)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "C)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    move v4, v3

    .line 17
    :goto_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 20
    move-result v5

    .line 21
    if-ge v3, v5, :cond_3f

    .line 23
    aget-char v5, v2, v3

    .line 25
    const/16 v6, 0x22

    .line 27
    if-ne v5, v6, :cond_1e

    .line 29
    xor-int/lit8 v4, v4, 0x1

    .line 31
    :cond_1e
    if-ne v5, p1, :cond_39

    .line 33
    if-nez v4, :cond_39

    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 38
    move-result v5

    .line 39
    if-lez v5, :cond_3c

    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    goto :goto_3c

    .line 58
    :cond_39
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    :cond_3c
    :goto_3c
    add-int/lit8 v3, v3, 0x1

    .line 63
    goto :goto_10

    .line 64
    :cond_3f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 67
    move-result p0

    .line 68
    if-lez p0, :cond_50

    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_50
    return-object v0
.end method

.method public static writeExtractedFileToDisk(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5

    .line 1
    const/16 v0, 0x400

    .line 3
    new-array v0, v0, [B

    .line 5
    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 8
    move-result v1

    .line 9
    if-lez v1, :cond_f

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 15
    goto :goto_4

    .line 16
    :cond_f
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 19
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 22
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 25
    return-void
.end method
