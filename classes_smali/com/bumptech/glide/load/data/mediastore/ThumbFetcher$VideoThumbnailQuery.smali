.class Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher$VideoThumbnailQuery;
.super Ljava/lang/Object;
.source "ThumbFetcher.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoThumbnailQuery"
.end annotation


# static fields
.field private static final PATH_PROJECTION:[Ljava/lang/String;

.field private static final PATH_SELECTION:Ljava/lang/String; = "kind = 1 AND video_id = ?"


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;


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
    sput-object v0, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher$VideoThumbnailQuery;->PATH_PROJECTION:[Ljava/lang/String;

    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher$VideoThumbnailQuery;->contentResolver:Landroid/content/ContentResolver;

    .line 6
    return-void
.end method


# virtual methods
.method public query(Landroid/net/Uri;)Landroid/database/Cursor;
    .registers 8

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher$VideoThumbnailQuery;->contentResolver:Landroid/content/ContentResolver;

    .line 7
    sget-object v1, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 9
    sget-object v2, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher$VideoThumbnailQuery;->PATH_PROJECTION:[Ljava/lang/String;

    .line 11
    const/4 v3, 0x1

    .line 12
    new-array v4, v3, [Ljava/lang/String;

    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object p1, v4, v3

    .line 17
    const-string v3, "kind = 1 AND video_id = ?"

    .line 19
    const/4 v5, 0x0

    .line 20
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method
