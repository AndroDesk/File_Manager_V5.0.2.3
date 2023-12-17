.class public Lcom/fileexplorer/advert/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readStringFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 4
    move-result-object p0

    .line 5
    :try_start_4
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 8
    move-result-object p0

    .line 9
    const-string p1, "utf-8"

    .line 11
    invoke-static {p0, p1}, Lcom/fileexplorer/advert/util/FileUtils;->readStringFromStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_e} :catch_f

    .line 15
    goto :goto_10

    .line 16
    :catch_f
    const/4 p0, 0x0

    .line 17
    :goto_10
    return-object p0
.end method

.method public static readStringFromStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    new-instance v1, Ljava/io/InputStreamReader;

    .line 4
    invoke-direct {v1, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_25

    .line 7
    :try_start_6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    const/16 p1, 0x200

    .line 14
    new-array p1, p1, [C

    .line 16
    :goto_f
    invoke-virtual {v1, p1}, Ljava/io/Reader;->read([C)I

    .line 19
    move-result v0

    .line 20
    if-lez v0, :cond_1a

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {p0, p1, v2, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_22

    .line 26
    goto :goto_f

    .line 27
    :cond_1a
    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    .line 30
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :catchall_22
    move-exception p0

    .line 36
    move-object v0, v1

    .line 37
    goto :goto_26

    .line 38
    :catchall_25
    move-exception p0

    .line 39
    :goto_26
    if-eqz v0, :cond_2b

    .line 41
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 44
    :cond_2b
    throw p0
.end method
