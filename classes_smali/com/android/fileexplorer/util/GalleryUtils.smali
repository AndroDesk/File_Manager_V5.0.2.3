.class public Lcom/android/fileexplorer/util/GalleryUtils;
.super Ljava/lang/Object;
.source "GalleryUtils.java"


# instance fields
.field private final AUTHORITY:Ljava/lang/String;

.field private final AUTHORITY_URI:Landroid/net/Uri;

.field private final PATH:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final URI:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/util/GalleryUtils;->TAG:Ljava/lang/String;

    .line 14
    const-string v0, "com.miui.gallery.open_api"

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/util/GalleryUtils;->AUTHORITY:Ljava/lang/String;

    .line 18
    const-string v0, "content://com.miui.gallery.open_api"

    .line 20
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/android/fileexplorer/util/GalleryUtils;->AUTHORITY_URI:Landroid/net/Uri;

    .line 26
    const-string v1, "check_thumbnail"

    .line 28
    iput-object v1, p0, Lcom/android/fileexplorer/util/GalleryUtils;->PATH:Ljava/lang/String;

    .line 30
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/android/fileexplorer/util/GalleryUtils;->URI:Landroid/net/Uri;

    .line 44
    return-void
.end method


# virtual methods
.method public filterGalleryCloudThumb(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_ef

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_a

    .line 9
    goto/16 :goto_ef

    .line 11
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 14
    move-result v0

    .line 15
    new-array v0, v0, [Ljava/lang/String;

    .line 17
    const/4 v7, 0x0

    .line 18
    move v1, v7

    .line 19
    :goto_12
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 22
    move-result v2

    .line 23
    if-ge v1, v2, :cond_27

    .line 25
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 31
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    aput-object v2, v0, v1

    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 39
    goto :goto_12

    .line 40
    :cond_27
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 47
    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/android/fileexplorer/util/GalleryUtils;->URI:Landroid/net/Uri;

    .line 50
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 53
    move-result-object v2

    .line 54
    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 57
    move-result-object v3

    .line 58
    const-string v4, "strict_mode"

    .line 60
    invoke-virtual {v2, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 67
    move-result-object v2

    .line 68
    const/4 v3, 0x0

    .line 69
    const/4 v4, 0x0

    .line 70
    const/4 v6, 0x0

    .line 71
    move-object v5, v0

    .line 72
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 75
    move-result-object v1

    .line 76
    if-eqz v1, :cond_e7

    .line 78
    :try_start_4d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_d7

    .line 84
    iget-object v2, p0, Lcom/android/fileexplorer/util/GalleryUtils;->TAG:Ljava/lang/String;

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    .line 88
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    const-string v4, "checkout list size:"

    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 99
    move-result v4

    .line 100
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    const-string v4, " result list size:"

    .line 105
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 111
    move-result v4

    .line 112
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object v3

    .line 119
    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    .line 124
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 127
    move v3, v7

    .line 128
    :goto_7f
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 131
    move-result v4

    .line 132
    const/4 v5, 0x1

    .line 133
    if-ge v3, v4, :cond_ba

    .line 135
    const-string v4, "check_thumbnail_result"

    .line 137
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 140
    move-result v4

    .line 141
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 144
    move-result v4

    .line 145
    if-nez v4, :cond_99

    .line 147
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    move-result-object v6

    .line 151
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_99
    iget-object v6, p0, Lcom/android/fileexplorer/util/GalleryUtils;->TAG:Ljava/lang/String;

    .line 156
    const-string v8, "File [%s] %s thumbnail"

    .line 158
    const/4 v9, 0x2

    .line 159
    new-array v9, v9, [Ljava/lang/Object;

    .line 161
    aget-object v10, v0, v3

    .line 163
    aput-object v10, v9, v7

    .line 165
    if-nez v4, :cond_a9

    .line 167
    const-string v4, "is"

    .line 169
    goto :goto_ab

    .line 170
    :cond_a9
    const-string v4, "isn\'t"

    .line 172
    :goto_ab
    aput-object v4, v9, v5

    .line 174
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 177
    move-result-object v4

    .line 178
    invoke-static {v6, v4}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 184
    add-int/lit8 v3, v3, 0x1

    .line 186
    goto :goto_7f

    .line 187
    :cond_ba
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 190
    move-result v0

    .line 191
    if-nez v0, :cond_de

    .line 193
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 196
    move-result v0

    .line 197
    sub-int/2addr v0, v5

    .line 198
    :goto_c5
    if-ltz v0, :cond_de

    .line 200
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 203
    move-result-object v3

    .line 204
    check-cast v3, Ljava/lang/Integer;

    .line 206
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 209
    move-result v3

    .line 210
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 213
    add-int/lit8 v0, v0, -0x1

    .line 215
    goto :goto_c5

    .line 216
    :cond_d7
    iget-object p1, p0, Lcom/android/fileexplorer/util/GalleryUtils;->TAG:Ljava/lang/String;

    .line 218
    const-string v0, "filterGalleryCloudThumb cursor size is invalid"

    .line 220
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_de
    .catchall {:try_start_4d .. :try_end_de} :catchall_e2

    .line 223
    :cond_de
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 226
    goto :goto_ee

    .line 227
    :catchall_e2
    move-exception p1

    .line 228
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 231
    throw p1

    .line 232
    :cond_e7
    iget-object p1, p0, Lcom/android/fileexplorer/util/GalleryUtils;->TAG:Ljava/lang/String;

    .line 234
    const-string v0, "Cursor cannot be null"

    .line 236
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :goto_ee
    return-void

    .line 240
    :cond_ef
    :goto_ef
    iget-object p1, p0, Lcom/android/fileexplorer/util/GalleryUtils;->TAG:Ljava/lang/String;

    .line 242
    const-string v0, "check list cannot be null or empty"

    .line 244
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return-void
.end method
