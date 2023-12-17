.class public Lcom/android/fileexplorer/provider/FileItemSubProvider;
.super Lcom/android/fileexplorer/provider/AbsCommonProvider;
.source "FileItemSubProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/provider/AbsCommonProvider<",
        "Lcom/android/fileexplorer/dao/file/FileItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final BASE_PATH:Ljava/lang/String; = "fileitem"

.field private static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/fileitem"

.field private static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/fileitem"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;-><init>()V

    .line 4
    return-void
.end method

.method private static modeToMode(Ljava/lang/String;)I
    .registers 3

    .line 1
    const-string v0, "r"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_b

    .line 9
    const/high16 p0, 0x10000000

    .line 11
    goto :goto_4b

    .line 12
    :cond_b
    const-string v0, "w"

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_49

    .line 20
    const-string v0, "wt"

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1c

    .line 28
    goto :goto_49

    .line 29
    :cond_1c
    const-string v0, "wa"

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_27

    .line 37
    const/high16 p0, 0x2a000000

    .line 39
    goto :goto_4b

    .line 40
    :cond_27
    const-string v0, "rw"

    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_32

    .line 48
    const/high16 p0, 0x38000000

    .line 50
    goto :goto_4b

    .line 51
    :cond_32
    const-string v0, "rwt"

    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3d

    .line 59
    const/high16 p0, 0x3c000000  # 0.0078125f

    .line 61
    goto :goto_4b

    .line 62
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 64
    const-string v1, "Invalid mode: "

    .line 66
    invoke-static {v1, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 70
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 73
    throw v0

    .line 74
    :cond_49
    :goto_49
    const/high16 p0, 0x2c000000

    .line 76
    :goto_4b
    return p0
.end method


# virtual methods
.method public getBasePath()Ljava/lang/String;
    .registers 2

    const-string v0, "fileitem"

    return-object v0
.end method

.method public getContentItemType()Ljava/lang/String;
    .registers 2

    const-string v0, "vnd.android.cursor.item/fileitem"

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    const-string v0, "vnd.android.cursor.dir/fileitem"

    return-object v0
.end method

.method public initProviderAdapter()Lcom/android/fileexplorer/provider/ProviderAdapter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/fileexplorer/provider/ProviderAdapter<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 3
    new-instance v1, Lcom/android/fileexplorer/dao/GreenDao;

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v2}, Lcom/android/fileexplorer/dao/db/DatabaseManager;->getDaoSession(I)Lorg/greenrobot/greendao/AbstractDaoSession;

    .line 9
    move-result-object v2

    .line 10
    invoke-direct {v1, v0, v2}, Lcom/android/fileexplorer/dao/GreenDao;-><init>(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    .line 13
    new-instance v2, Lcom/android/fileexplorer/provider/ProviderAdapter;

    .line 15
    invoke-direct {v2, v0, v1}, Lcom/android/fileexplorer/provider/ProviderAdapter;-><init>(Ljava/lang/Class;Lcom/android/fileexplorer/dao/Dao;)V

    .line 18
    return-object v2
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 10

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v3, v0, [Ljava/lang/String;

    .line 4
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileAbsolutePath:Lorg/greenrobot/greendao/Property;

    .line 6
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v1, v3, v2

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    move-object v1, p0

    .line 15
    move-object v2, p1

    .line 16
    invoke-virtual/range {v1 .. v6}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_4d

    .line 22
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 25
    move-result v2

    .line 26
    if-eq v2, v0, :cond_1c

    .line 28
    goto :goto_4d

    .line 29
    :cond_1c
    const-string v0, ""

    .line 31
    :goto_1e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_31

    .line 37
    sget-object v0, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileAbsolutePath:Lorg/greenrobot/greendao/Property;

    .line 39
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 41
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 44
    move-result v0

    .line 45
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    goto :goto_1e

    .line 50
    :cond_31
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_3f

    .line 59
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 62
    move-result-object p1

    .line 63
    return-object p1

    .line 64
    :cond_3f
    new-instance p1, Ljava/io/File;

    .line 66
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-static {p2}, Lcom/android/fileexplorer/provider/FileItemSubProvider;->modeToMode(Ljava/lang/String;)I

    .line 72
    move-result p2

    .line 73
    invoke-static {p1, p2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 76
    move-result-object p1

    .line 77
    return-object p1

    .line 78
    :cond_4d
    :goto_4d
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 81
    move-result-object p1

    .line 82
    return-object p1
.end method
