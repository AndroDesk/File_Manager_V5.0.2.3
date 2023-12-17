.class public abstract Lcom/miui/maml/ResourceLoader;
.super Ljava/lang/Object;
.source "ResourceLoader.java"


# static fields
.field private static final CONFIG_FILE_NAME:Ljava/lang/String; = "config.xml"

.field private static final IMAGES_FOLDER_NAME:Ljava/lang/String; = "images"

.field private static final LOG_TAG:Ljava/lang/String; = "ResourceLoader"

.field private static final MANIFEST_FILE_NAME:Ljava/lang/String; = "manifest.xml"


# instance fields
.field public mConfigName:Ljava/lang/String;

.field public mLanguageCountrySuffix:Ljava/lang/String;

.field public mLanguageSuffix:Ljava/lang/String;

.field public mLocale:Ljava/util/Locale;

.field public mManifestName:Ljava/lang/String;

.field private mThemeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "manifest.xml"

    .line 6
    iput-object v0, p0, Lcom/miui/maml/ResourceLoader;->mManifestName:Ljava/lang/String;

    .line 8
    const-string v0, "config.xml"

    .line 10
    iput-object v0, p0, Lcom/miui/maml/ResourceLoader;->mConfigName:Ljava/lang/String;

    .line 12
    return-void
.end method

.method private getPathForLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 7
    iget-object v0, p0, Lcom/miui/maml/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "_"

    const-string v2, "/"

    if-nez v0, :cond_1d

    .line 8
    invoke-static {p2, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9
    iget-object v3, p0, Lcom/miui/maml/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    .line 10
    invoke-static {v0, v3, v2, p1}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lcom/miui/maml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    return-object v0

    .line 12
    :cond_1d
    iget-object v0, p0, Lcom/miui/maml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 13
    invoke-static {p2, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/miui/maml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    .line 15
    invoke-static {v0, v1, v2, p1}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Lcom/miui/maml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    return-object v0

    .line 17
    :cond_36
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 18
    invoke-static {p2, v2, p1}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 19
    invoke-virtual {p0, p2}, Lcom/miui/maml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    return-object p2

    .line 20
    :cond_47
    invoke-virtual {p0, p1}, Lcom/miui/maml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4e

    goto :goto_4f

    :cond_4e
    const/4 p1, 0x0

    :goto_4f
    return-object p1
.end method

.method private getXmlRoot(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/maml/ResourceLoader;->getPathForLanguage(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/miui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x0

    .line 10
    const-string v1, "ResourceLoader"

    .line 12
    if-nez p1, :cond_13

    .line 14
    const-string p1, "getXmlRoot local inputStream is null"

    .line 16
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-object v0

    .line 20
    :cond_13
    :try_start_13
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    .line 31
    move-result-object v2

    .line 32
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    .line 35
    move-result-object v0
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_23} :catch_50
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_23} :catch_47
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_13 .. :try_end_23} :catch_3e
    .catch Lorg/xml/sax/SAXException; {:try_start_13 .. :try_end_23} :catch_35
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_23} :catch_29
    .catchall {:try_start_13 .. :try_end_23} :catchall_27

    .line 36
    :try_start_23
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_26

    .line 39
    :catch_26
    return-object v0

    .line 40
    :catchall_27
    move-exception v0

    .line 41
    goto :goto_5a

    .line 42
    :catch_29
    move-exception v2

    .line 43
    :try_start_2a
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_27

    .line 50
    :goto_31
    :try_start_31
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_59

    .line 53
    goto :goto_59

    .line 54
    :catch_35
    move-exception v2

    .line 55
    :try_start_36
    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 59
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    goto :goto_31

    .line 63
    :catch_3e
    move-exception v2

    .line 64
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 68
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    goto :goto_31

    .line 72
    :catch_47
    move-exception v2

    .line 73
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 76
    move-result-object v2

    .line 77
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    goto :goto_31

    .line 81
    :catch_50
    move-exception v2

    .line 82
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 85
    move-result-object v2

    .line 86
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_36 .. :try_end_58} :catchall_27

    .line 89
    goto :goto_31

    .line 90
    :catch_59
    :goto_59
    return-object v0

    .line 91
    :goto_5a
    :try_start_5a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5d

    .line 94
    :catch_5d
    throw v0
.end method


# virtual methods
.method public finish()V
    .registers 1

    return-void
.end method

.method public getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lcom/miui/maml/ResourceManager$BitmapInfo;
    .registers 9

    .line 1
    const-string v0, "images"

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/ResourceLoader;->getPathForLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const-string v3, "ResourceLoader"

    .line 10
    if-nez v1, :cond_2b

    .line 12
    const-string v1, "TRY AGAIN to get getPathForLanguage: "

    .line 14
    invoke-static {v1, p1, v3}, La/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/ResourceLoader;->getPathForLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    if-nez v1, :cond_2b

    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    const-string v0, "fail to get getPathForLanguage: "

    .line 30
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-object v2

    .line 44
    :cond_2b
    invoke-virtual {p0, v1}, Lcom/miui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 47
    move-result-object v0

    .line 48
    if-nez v0, :cond_60

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    const-string v4, "TRY AGAIN to get InputStream: "

    .line 57
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0, v1}, Lcom/miui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 73
    move-result-object v0

    .line 74
    if-nez v0, :cond_60

    .line 76
    new-instance p2, Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    const-string v0, "fail to get InputStream: "

    .line 83
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object p1

    .line 93
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-object v2

    .line 97
    :cond_60
    :try_start_60
    new-instance v1, Landroid/graphics/Rect;

    .line 99
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 102
    invoke-static {v0, v1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 105
    move-result-object v4

    .line 106
    if-nez v4, :cond_9d

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    .line 110
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    const-string v5, "TRY AGAIN to decode bitmap: "

    .line 115
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v4

    .line 125
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {v0, v1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 131
    move-result-object p2

    .line 132
    if-nez p2, :cond_b0

    .line 134
    new-instance p2, Ljava/lang/StringBuilder;

    .line 136
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    const-string v1, "fail to decode bitmap: "

    .line 141
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object p1

    .line 151
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catch Ljava/lang/OutOfMemoryError; {:try_start_60 .. :try_end_99} :catch_a8
    .catchall {:try_start_60 .. :try_end_99} :catchall_a6

    .line 154
    :try_start_99
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_9c

    .line 157
    :catch_9c
    return-object v2

    .line 158
    :cond_9d
    :try_start_9d
    new-instance p1, Lcom/miui/maml/ResourceManager$BitmapInfo;

    .line 160
    invoke-direct {p1, v4, v1}, Lcom/miui/maml/ResourceManager$BitmapInfo;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    :try_end_a2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9d .. :try_end_a2} :catch_a8
    .catchall {:try_start_9d .. :try_end_a2} :catchall_a6

    .line 163
    :try_start_a2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_a5

    .line 166
    :catch_a5
    return-object p1

    .line 167
    :catchall_a6
    move-exception p1

    .line 168
    goto :goto_b4

    .line 169
    :catch_a8
    move-exception p1

    .line 170
    :try_start_a9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 173
    move-result-object p1

    .line 174
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catchall {:try_start_a9 .. :try_end_b0} :catchall_a6

    .line 177
    :cond_b0
    :try_start_b0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b3} :catch_b3

    .line 180
    :catch_b3
    return-object v2

    .line 181
    :goto_b4
    :try_start_b4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b7} :catch_b7

    .line 184
    :catch_b7
    throw p1
.end method

.method public getConfigRoot()Lorg/w3c/dom/Element;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ResourceLoader;->mConfigName:Ljava/lang/String;

    .line 3
    invoke-direct {p0, v0}, Lcom/miui/maml/ResourceLoader;->getXmlRoot(Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getFile(Ljava/lang/String;)Landroid/os/MemoryFile;
    .registers 12

    .line 1
    const-string v0, "ResourceLoader"

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [J

    .line 6
    invoke-virtual {p0, p1, v1}, Lcom/miui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v2, :cond_d

    .line 13
    return-object v3

    .line 14
    :cond_d
    const/high16 v4, 0x10000

    .line 16
    :try_start_f
    new-array v5, v4, [B

    .line 18
    new-instance v6, Landroid/os/MemoryFile;

    .line 20
    const/4 v7, 0x0

    .line 21
    aget-wide v8, v1, v7

    .line 23
    long-to-int v1, v8

    .line 24
    invoke-direct {v6, p1, v1}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    .line 27
    move p1, v7

    .line 28
    :goto_1b
    invoke-virtual {v2, v5, v7, v4}, Ljava/io/InputStream;->read([BII)I

    .line 31
    move-result v1

    .line 32
    if-lez v1, :cond_26

    .line 34
    invoke-virtual {v6, v5, v7, p1, v1}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 37
    add-int/2addr p1, v1

    .line 38
    goto :goto_1b

    .line 39
    :cond_26
    invoke-virtual {v6}, Landroid/os/MemoryFile;->length()I

    .line 42
    move-result p1
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2a} :catch_3f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_2a} :catch_36
    .catchall {:try_start_f .. :try_end_2a} :catchall_34

    .line 43
    if-lez p1, :cond_30

    .line 45
    :try_start_2c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_2f

    .line 48
    :catch_2f
    return-object v6

    .line 49
    :cond_30
    :goto_30
    :try_start_30
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_48

    .line 52
    goto :goto_48

    .line 53
    :catchall_34
    move-exception p1

    .line 54
    goto :goto_49

    .line 55
    :catch_36
    move-exception p1

    .line 56
    :try_start_37
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    goto :goto_30

    .line 64
    :catch_3f
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_37 .. :try_end_47} :catchall_34

    .line 72
    goto :goto_30

    .line 73
    :catch_48
    :goto_48
    return-object v3

    .line 74
    :goto_49
    :try_start_49
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4c

    .line 77
    :catch_4c
    throw p1
.end method

.method public getID()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public final getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public abstract getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ResourceLoader;->mLocale:Ljava/util/Locale;

    .line 3
    return-object v0
.end method

.method public getManifestRoot()Lorg/w3c/dom/Element;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ResourceLoader;->mManifestName:Ljava/lang/String;

    .line 3
    invoke-direct {p0, v0}, Lcom/miui/maml/ResourceLoader;->getXmlRoot(Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPathForLanguage(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 2
    iget-object v0, p0, Lcom/miui/maml/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/miui/maml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    :cond_15
    move-object v0, v1

    :cond_16
    if-nez v0, :cond_2d

    .line 4
    iget-object v2, p0, Lcom/miui/maml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 5
    iget-object v0, p0, Lcom/miui/maml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Lcom/miui/maml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2d

    goto :goto_2e

    :cond_2d
    move-object v1, v0

    :goto_2e
    if-eqz v1, :cond_31

    move-object p1, v1

    :cond_31
    return-object p1
.end method

.method public init()V
    .registers 1

    return-void
.end method

.method public abstract resourceExists(Ljava/lang/String;)Z
.end method

.method public setLocal(Ljava/util/Locale;)Lcom/miui/maml/ResourceLoader;
    .registers 4

    .line 1
    if-eqz p1, :cond_19

    .line 3
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/miui/maml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/miui/maml/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    .line 15
    iget-object v1, p0, Lcom/miui/maml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    .line 17
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_19

    .line 23
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/miui/maml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    .line 26
    :cond_19
    iput-object p1, p0, Lcom/miui/maml/ResourceLoader;->mLocale:Ljava/util/Locale;

    .line 28
    return-object p0
.end method
