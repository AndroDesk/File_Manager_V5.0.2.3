.class Lcom/bumptech/glide/load/model/MediaStoreFileLoader$FilePathFetcher;
.super Ljava/lang/Object;
.source "MediaStoreFileLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/MediaStoreFileLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilePathFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "_data"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/bumptech/glide/load/model/MediaStoreFileLoader$FilePathFetcher;->PROJECTION:[Ljava/lang/String;

    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/model/MediaStoreFileLoader$FilePathFetcher;->context:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/bumptech/glide/load/model/MediaStoreFileLoader$FilePathFetcher;->uri:Landroid/net/Uri;

    .line 8
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 1

    return-void
.end method

.method public cleanup()V
    .registers 1

    return-void
.end method

.method public getDataClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/io/File;

    .line 3
    return-object v0
.end method

.method public getDataSource()Lcom/bumptech/glide/load/DataSource;
    .registers 2

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->LOCAL:Lcom/bumptech/glide/load/DataSource;

    .line 3
    return-object v0
.end method

.method public loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<",
            "-",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/bumptech/glide/load/model/MediaStoreFileLoader$FilePathFetcher;->context:Landroid/content/Context;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/bumptech/glide/load/model/MediaStoreFileLoader$FilePathFetcher;->uri:Landroid/net/Uri;

    .line 9
    sget-object v2, Lcom/bumptech/glide/load/model/MediaStoreFileLoader$FilePathFetcher;->PROJECTION:[Ljava/lang/String;

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 17
    move-result-object p1

    .line 18
    const/4 v0, 0x0

    .line 19
    if-eqz p1, :cond_2d

    .line 21
    :try_start_14
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_24

    .line 27
    const-string v0, "_data"

    .line 29
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 32
    move-result v0

    .line 33
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 36
    move-result-object v0
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_28

    .line 37
    :cond_24
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 40
    goto :goto_2d

    .line 41
    :catchall_28
    move-exception p2

    .line 42
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 45
    throw p2

    .line 46
    :cond_2d
    :goto_2d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_4b

    .line 52
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 54
    const-string v0, "Failed to find file path for: "

    .line 56
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/bumptech/glide/load/model/MediaStoreFileLoader$FilePathFetcher;->uri:Landroid/net/Uri;

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    .line 75
    goto :goto_53

    .line 76
    :cond_4b
    new-instance p1, Ljava/io/File;

    .line 78
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    .line 84
    :goto_53
    return-void
.end method
