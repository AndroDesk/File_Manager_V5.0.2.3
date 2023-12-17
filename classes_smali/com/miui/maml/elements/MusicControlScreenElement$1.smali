.class Lcom/miui/maml/elements/MusicControlScreenElement$1;
.super Ljava/lang/Object;
.source "MusicControlScreenElement.java"

# interfaces
.implements Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/MusicControlScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mClientChanged:Z

.field public final synthetic this$0:Lcom/miui/maml/elements/MusicControlScreenElement;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/MusicControlScreenElement;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClientChange()V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->mClientChanged:Z

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 6
    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$800(Lcom/miui/maml/elements/MusicControlScreenElement;)V

    .line 9
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 11
    invoke-virtual {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->readPackageName()V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    const-string v1, "clientChange: "

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 26
    invoke-static {v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2000(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 29
    move-result-object v1

    .line 30
    const-string v2, "null"

    .line 32
    if-eqz v1, :cond_2c

    .line 34
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 36
    invoke-static {v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2000(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/miui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    goto :goto_2d

    .line 45
    :cond_2c
    move-object v1, v2

    .line 46
    :goto_2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, "/"

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 56
    invoke-static {v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2100(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 59
    move-result-object v1

    .line 60
    if-eqz v1, :cond_47

    .line 62
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 64
    invoke-static {v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2100(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Lcom/miui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 72
    :cond_47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    const-string v1, "MusicControlScreenE"

    .line 81
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method

.method public onClientMetadataUpdate(Landroid/media/MediaMetadata;)V
    .registers 13

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 3
    invoke-static {v0, p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1002(Lcom/miui/maml/elements/MusicControlScreenElement;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;

    .line 6
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 8
    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1000(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_e

    .line 14
    return-void

    .line 15
    :cond_e
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 17
    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1000(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    .line 20
    move-result-object p1

    .line 21
    const-string v0, "android.media.metadata.TITLE"

    .line 23
    invoke-virtual {p1, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 29
    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1000(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    .line 32
    move-result-object v0

    .line 33
    const-string v1, "android.media.metadata.ARTIST"

    .line 35
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 41
    invoke-static {v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1000(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    .line 44
    move-result-object v1

    .line 45
    const-string v2, "android.media.metadata.ALBUM"

    .line 47
    invoke-virtual {v1, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    const-string v3, "\ntitle: "

    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v3, ", artist: "

    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v3, ", album: "

    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v2

    .line 84
    const-string v3, "MusicControlScreenE"

    .line 86
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v2, 0x0

    .line 90
    if-nez p1, :cond_62

    .line 92
    if-nez v0, :cond_62

    .line 94
    if-eqz v1, :cond_60

    .line 96
    goto :goto_62

    .line 97
    :cond_60
    move v4, v2

    .line 98
    goto :goto_71

    .line 99
    :cond_62
    :goto_62
    iget-object v4, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 101
    invoke-static {v4}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1100(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;

    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {v4, p1, v0, v1}, Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 108
    move-result v4

    .line 109
    iget-object v5, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 111
    invoke-static {v5, p1, v0, v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1200(Lcom/miui/maml/elements/MusicControlScreenElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :goto_71
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 116
    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1000(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    .line 119
    move-result-object p1

    .line 120
    const-string v0, "android.media.metadata.ART"

    .line 122
    invoke-virtual {p1, v0}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 125
    move-result-object p1

    .line 126
    const-string v0, "artwork: "

    .line 128
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    move-result-object v0

    .line 132
    if-eqz p1, :cond_8a

    .line 134
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 137
    move-result-object v1

    .line 138
    goto :goto_8c

    .line 139
    :cond_8a
    const-string v1, "null"

    .line 141
    :goto_8c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object v0

    .line 148
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v0, 0x1

    .line 152
    if-nez p1, :cond_9e

    .line 154
    if-eqz v4, :cond_9c

    .line 156
    goto :goto_9e

    .line 157
    :cond_9c
    move v1, v2

    .line 158
    goto :goto_9f

    .line 159
    :cond_9e
    :goto_9e
    move v1, v0

    .line 160
    :goto_9f
    if-eqz v1, :cond_b0

    .line 162
    if-nez p1, :cond_ab

    .line 164
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 166
    const-wide/16 v5, 0x1f4

    .line 168
    invoke-static {p1, v5, v6}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1300(Lcom/miui/maml/elements/MusicControlScreenElement;J)V

    .line 171
    goto :goto_b0

    .line 172
    :cond_ab
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 174
    invoke-static {v1, p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1400(Lcom/miui/maml/elements/MusicControlScreenElement;Landroid/graphics/Bitmap;)V

    .line 177
    :cond_b0
    :goto_b0
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 179
    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1000(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    .line 182
    move-result-object p1

    .line 183
    const-string v1, "android.media.metadata.LYRIC"

    .line 185
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 188
    move-result-object p1

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    .line 191
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    const-string v5, "raw lyric: "

    .line 196
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    move-result-object v1

    .line 206
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-static {p1}, Lcom/miui/maml/elements/MusicLyricParser;->parseLyric(Ljava/lang/String;)Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 212
    move-result-object p1

    .line 213
    if-eqz p1, :cond_d9

    .line 215
    invoke-virtual {p1}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->decorate()V

    .line 218
    :cond_d9
    if-nez p1, :cond_e0

    .line 220
    if-eqz v4, :cond_de

    .line 222
    goto :goto_e0

    .line 223
    :cond_de
    move v1, v2

    .line 224
    goto :goto_e1

    .line 225
    :cond_e0
    :goto_e0
    move v1, v0

    .line 226
    :goto_e1
    if-eqz v1, :cond_ed

    .line 228
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 230
    invoke-static {v1, p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1502(Lcom/miui/maml/elements/MusicControlScreenElement;Lcom/miui/maml/elements/MusicLyricParser$Lyric;)Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 233
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 235
    invoke-static {v1, p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1600(Lcom/miui/maml/elements/MusicControlScreenElement;Lcom/miui/maml/elements/MusicLyricParser$Lyric;)V

    .line 238
    :cond_ed
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 240
    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1500(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 243
    move-result-object v1

    .line 244
    if-eqz v1, :cond_f8

    .line 246
    const/high16 v1, 0x41f00000  # 30.0f

    .line 248
    goto :goto_f9

    .line 249
    :cond_f8
    const/4 v1, 0x0

    .line 250
    :goto_f9
    invoke-virtual {p1, v1}, Lcom/miui/maml/elements/ScreenElement;->requestFramerate(F)V

    .line 253
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 255
    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1000(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    .line 258
    move-result-object p1

    .line 259
    const-string v1, "android.media.metadata.DURATION"

    .line 261
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    .line 264
    move-result-wide v5

    .line 265
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 267
    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1700(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/elements/MusicController;

    .line 270
    move-result-object p1

    .line 271
    invoke-virtual {p1}, Lcom/miui/maml/elements/MusicController;->getEstimatedMediaPosition()J

    .line 274
    move-result-wide v7

    .line 275
    new-instance p1, Ljava/lang/StringBuilder;

    .line 277
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    const-string v1, "duration: "

    .line 282
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 288
    const-string v1, ", position: "

    .line 290
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    move-result-object p1

    .line 300
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-wide/16 v9, 0x0

    .line 305
    cmp-long p1, v5, v9

    .line 307
    if-ltz p1, :cond_138

    .line 309
    cmp-long p1, v7, v9

    .line 311
    if-gez p1, :cond_13a

    .line 313
    :cond_138
    if-eqz v4, :cond_13b

    .line 315
    :cond_13a
    move v2, v0

    .line 316
    :cond_13b
    if-eqz v2, :cond_142

    .line 318
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 320
    invoke-static {p1, v5, v6, v7, v8}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1800(Lcom/miui/maml/elements/MusicControlScreenElement;JJ)V

    .line 323
    :cond_142
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 325
    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1000(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    .line 328
    move-result-object p1

    .line 329
    const-string v0, "android.media.metadata.USER_RATING"

    .line 331
    invoke-virtual {p1, v0}, Landroid/media/MediaMetadata;->getRating(Ljava/lang/String;)Landroid/media/Rating;

    .line 334
    move-result-object p1

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    .line 337
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    const-string v1, "rating: "

    .line 342
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    move-result-object v0

    .line 352
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 357
    invoke-static {v0, p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1900(Lcom/miui/maml/elements/MusicControlScreenElement;Landroid/media/Rating;)V

    .line 360
    iget-boolean p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->mClientChanged:Z

    .line 362
    if-nez p1, :cond_16e

    .line 364
    invoke-virtual {p0}, Lcom/miui/maml/elements/MusicControlScreenElement$1;->onClientChange()V

    .line 367
    :cond_16e
    return-void
.end method

.method public onClientPlaybackActionUpdate(J)V
    .registers 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "transportControlFlags: "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "MusicControlScreenE"

    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    const-wide/16 v0, 0x80

    .line 25
    and-long/2addr v0, p1

    .line 26
    const-wide/16 v2, 0x0

    .line 28
    cmp-long v0, v0, v2

    .line 30
    const/4 v1, 0x1

    .line 31
    const/4 v4, 0x0

    .line 32
    if-eqz v0, :cond_23

    .line 34
    move v0, v1

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    move v0, v4

    .line 37
    :goto_24
    if-nez v0, :cond_2b

    .line 39
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 41
    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$100(Lcom/miui/maml/elements/MusicControlScreenElement;)V

    .line 44
    :cond_2b
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 46
    cmp-long v5, p1, v2

    .line 48
    if-eqz v5, :cond_3a

    .line 50
    const-wide/16 v6, 0x207

    .line 52
    and-long/2addr v6, p1

    .line 53
    cmp-long v6, v6, v2

    .line 55
    if-nez v6, :cond_3a

    .line 57
    move v6, v1

    .line 58
    goto :goto_3b

    .line 59
    :cond_3a
    move v6, v4

    .line 60
    :goto_3b
    invoke-static {v0, v6}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$202(Lcom/miui/maml/elements/MusicControlScreenElement;Z)Z

    .line 63
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 65
    if-eqz v5, :cond_4b

    .line 67
    const-wide/16 v6, 0x10

    .line 69
    and-long/2addr v6, p1

    .line 70
    cmp-long v6, v6, v2

    .line 72
    if-nez v6, :cond_4b

    .line 74
    move v6, v1

    .line 75
    goto :goto_4c

    .line 76
    :cond_4b
    move v6, v4

    .line 77
    :goto_4c
    invoke-static {v0, v6}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$302(Lcom/miui/maml/elements/MusicControlScreenElement;Z)Z

    .line 80
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 82
    if-eqz v5, :cond_5b

    .line 84
    const-wide/16 v5, 0x20

    .line 86
    and-long/2addr p1, v5

    .line 87
    cmp-long p1, p1, v2

    .line 89
    if-nez p1, :cond_5b

    .line 91
    goto :goto_5c

    .line 92
    :cond_5b
    move v1, v4

    .line 93
    :goto_5c
    invoke-static {v0, v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$402(Lcom/miui/maml/elements/MusicControlScreenElement;Z)Z

    .line 96
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 98
    iget-boolean p2, p1, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 100
    if-eqz p2, :cond_a2

    .line 102
    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$500(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 105
    move-result-object p1

    .line 106
    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 108
    invoke-static {p2}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$200(Lcom/miui/maml/elements/MusicControlScreenElement;)Z

    .line 111
    move-result p2

    .line 112
    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    .line 114
    const-wide/16 v2, 0x0

    .line 116
    if-eqz p2, :cond_77

    .line 118
    move-wide v4, v0

    .line 119
    goto :goto_78

    .line 120
    :cond_77
    move-wide v4, v2

    .line 121
    :goto_78
    invoke-virtual {p1, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 124
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 126
    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$600(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 129
    move-result-object p1

    .line 130
    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 132
    invoke-static {p2}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$300(Lcom/miui/maml/elements/MusicControlScreenElement;)Z

    .line 135
    move-result p2

    .line 136
    if-eqz p2, :cond_8b

    .line 138
    move-wide v4, v0

    .line 139
    goto :goto_8c

    .line 140
    :cond_8b
    move-wide v4, v2

    .line 141
    :goto_8c
    invoke-virtual {p1, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 144
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 146
    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$700(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 149
    move-result-object p1

    .line 150
    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 152
    invoke-static {p2}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$400(Lcom/miui/maml/elements/MusicControlScreenElement;)Z

    .line 155
    move-result p2

    .line 156
    if-eqz p2, :cond_9e

    .line 158
    goto :goto_9f

    .line 159
    :cond_9e
    move-wide v0, v2

    .line 160
    :goto_9f
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 163
    :cond_a2
    return-void
.end method

.method public onClientPlaybackStateUpdate(I)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/MusicControlScreenElement$1;->onStateUpdate(I)V

    .line 4
    const-string v0, "stateUpdate: "

    .line 6
    const-string v1, "MusicControlScreenE"

    .line 8
    invoke-static {v0, p1, v1}, Lf0/e;->l(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    return-void
.end method

.method public onSessionDestroyed()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 3
    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2200(Lcom/miui/maml/elements/MusicControlScreenElement;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_e

    .line 10
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 12
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 15
    :cond_e
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 17
    invoke-static {v0, v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$900(Lcom/miui/maml/elements/MusicControlScreenElement;Z)V

    .line 20
    return-void
.end method

.method public onStateUpdate(I)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_21

    .line 5
    if-eq p1, v1, :cond_16

    .line 7
    const/4 v2, 0x2

    .line 8
    if-eq p1, v2, :cond_16

    .line 10
    const/4 v2, 0x3

    .line 11
    if-eq p1, v2, :cond_d

    .line 13
    goto :goto_26

    .line 14
    :cond_d
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 16
    const-string v0, "state_play"

    .line 18
    invoke-virtual {p1, v0}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 21
    move v0, v1

    .line 22
    goto :goto_27

    .line 23
    :cond_16
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 25
    const-string v2, "state_stop"

    .line 27
    invoke-virtual {p1, v2}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 30
    move v3, v1

    .line 31
    move v1, v0

    .line 32
    move v0, v3

    .line 33
    goto :goto_27

    .line 34
    :cond_21
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 36
    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$800(Lcom/miui/maml/elements/MusicControlScreenElement;)V

    .line 39
    :goto_26
    move v1, v0

    .line 40
    :goto_27
    if-eqz v0, :cond_2e

    .line 42
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 44
    invoke-static {p1, v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$900(Lcom/miui/maml/elements/MusicControlScreenElement;Z)V

    .line 47
    :cond_2e
    return-void
.end method
