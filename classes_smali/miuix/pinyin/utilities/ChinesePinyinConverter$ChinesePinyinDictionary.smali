.class Lmiuix/pinyin/utilities/ChinesePinyinConverter$ChinesePinyinDictionary;
.super Ljava/lang/Object;
.source "ChinesePinyinConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/pinyin/utilities/ChinesePinyinConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChinesePinyinDictionary"
.end annotation


# static fields
.field private static final UNICODE_2_PINYIN_ASSET_NAME:Ljava/lang/String; = "pinyinindex.idf"


# instance fields
.field private mReader:Lmiuix/core/util/DirectIndexedFile$Reader;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "pinyinindex.idf"

    .line 3
    invoke-static {p1, v0}, Lmiuix/core/util/DirectIndexedFileExtractor;->getDirectIndexedFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 4
    invoke-static {v1}, La/a;->A(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 5
    :try_start_11
    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile;->open(Ljava/lang/String;)Lmiuix/core/util/DirectIndexedFile$Reader;

    move-result-object v1

    iput-object v1, p0, Lmiuix/pinyin/utilities/ChinesePinyinConverter$ChinesePinyinDictionary;->mReader:Lmiuix/core/util/DirectIndexedFile$Reader;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_17} :catch_18

    goto :goto_1c

    :catch_18
    move-exception v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    :cond_1c
    :goto_1c
    iget-object v1, p0, Lmiuix/pinyin/utilities/ChinesePinyinConverter$ChinesePinyinDictionary;->mReader:Lmiuix/core/util/DirectIndexedFile$Reader;

    if-nez v1, :cond_3b

    .line 8
    :try_start_20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const/4 v1, 0x1

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lmiuix/core/util/DirectIndexedFile;->open(Ljava/io/InputStream;)Lmiuix/core/util/DirectIndexedFile$Reader;

    move-result-object p1

    iput-object p1, p0, Lmiuix/pinyin/utilities/ChinesePinyinConverter$ChinesePinyinDictionary;->mReader:Lmiuix/core/util/DirectIndexedFile$Reader;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_33} :catch_34

    goto :goto_3b

    :catch_34
    const-string p1, "ChinesePinyinConverter"

    const-string v0, "Init resource IOException"

    .line 10
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    :goto_3b
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lmiuix/pinyin/utilities/ChinesePinyinConverter$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lmiuix/pinyin/utilities/ChinesePinyinConverter$ChinesePinyinDictionary;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public finalize()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/pinyin/utilities/ChinesePinyinConverter$ChinesePinyinDictionary;->mReader:Lmiuix/core/util/DirectIndexedFile$Reader;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lmiuix/core/util/DirectIndexedFile$Reader;->close()V

    .line 8
    :cond_7
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 11
    return-void
.end method

.method public getPinyinString(C)[Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/pinyin/utilities/ChinesePinyinConverter$ChinesePinyinDictionary;->mReader:Lmiuix/core/util/DirectIndexedFile$Reader;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return-object v1

    .line 7
    :cond_6
    add-int/lit16 p1, p1, -0x4e00

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v2, p1, v2}, Lmiuix/core/util/DirectIndexedFile$Reader;->get(III)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/String;

    .line 16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1d

    .line 22
    const-string p1, "ChinesePinyinConverter"

    .line 24
    const-string v0, "The ChinesePinyinConverter dictionary is not correct, need rebuild or reset the ROM."

    .line 26
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return-object v1

    .line 30
    :cond_1d
    const-string v0, ","

    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    return-object p1
.end method
