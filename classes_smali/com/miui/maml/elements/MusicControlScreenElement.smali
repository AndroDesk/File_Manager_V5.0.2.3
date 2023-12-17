.class public Lcom/miui/maml/elements/MusicControlScreenElement;
.super Lcom/miui/maml/elements/ElementGroup;
.source "MusicControlScreenElement.java"

# interfaces
.implements Lcom/miui/maml/elements/ButtonScreenElement$ButtonActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;
    }
.end annotation


# static fields
.field private static final BUTTON_MUSIC_NEXT:Ljava/lang/String; = "music_next"

.field private static final BUTTON_MUSIC_PAUSE:Ljava/lang/String; = "music_pause"

.field private static final BUTTON_MUSIC_PLAY:Ljava/lang/String; = "music_play"

.field private static final BUTTON_MUSIC_PREV:Ljava/lang/String; = "music_prev"

.field private static final ELE_MUSIC_ALBUM_COVER:Ljava/lang/String; = "music_album_cover"

.field private static final ELE_MUSIC_DISPLAY:Ljava/lang/String; = "music_display"

.field private static final FRAMERATE_PLAYING:I = 0x1e

.field private static final LOG_TAG:Ljava/lang/String; = "MusicControlScreenE"

.field public static final METADATA_KEY_LYRIC:Ljava/lang/String; = "android.media.metadata.LYRIC"

.field private static final MIUI_PLAYER_PACKAGE_NAME:Ljava/lang/String; = "com.miui.player"

.field public static final MUSIC_STATE_PLAY:I = 0x1

.field public static final MUSIC_STATE_STOP:I = 0x0

.field public static final PLAYSTATE_NONE:I = 0x0

.field public static final TAG_NAME:Ljava/lang/String; = "MusicControl"


# instance fields
.field private mAlbumInfo:Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;

.field private mAlbumVar:Lcom/miui/maml/data/IndexedVariable;

.field private mArtistVar:Lcom/miui/maml/data/IndexedVariable;

.field private mArtworkVar:Lcom/miui/maml/data/IndexedVariable;

.field private mAutoShow:Z

.field private mButtonNext:Lcom/miui/maml/elements/ButtonScreenElement;

.field private mButtonPause:Lcom/miui/maml/elements/ButtonScreenElement;

.field private mButtonPlay:Lcom/miui/maml/elements/ButtonScreenElement;

.field private mButtonPrev:Lcom/miui/maml/elements/ButtonScreenElement;

.field private mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

.field private mDelayToSetArtworkRunnable:Ljava/lang/Runnable;

.field private mDisableNext:Z

.field private mDisableNextVar:Lcom/miui/maml/data/IndexedVariable;

.field private mDisablePlay:Z

.field private mDisablePlayVar:Lcom/miui/maml/data/IndexedVariable;

.field private mDisablePrev:Z

.field private mDisablePrevVar:Lcom/miui/maml/data/IndexedVariable;

.field private mDurationVar:Lcom/miui/maml/data/IndexedVariable;

.field private mEnableLyric:Z

.field private mEnableProgress:Z

.field private mImageAlbumCover:Lcom/miui/maml/elements/ImageScreenElement;

.field private mLyric:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

.field private mLyricAfterVar:Lcom/miui/maml/data/IndexedVariable;

.field private mLyricBeforeVar:Lcom/miui/maml/data/IndexedVariable;

.field private mLyricCurrentLineProgressVar:Lcom/miui/maml/data/IndexedVariable;

.field private mLyricCurrentVar:Lcom/miui/maml/data/IndexedVariable;

.field private mLyricLastVar:Lcom/miui/maml/data/IndexedVariable;

.field private mLyricNextVar:Lcom/miui/maml/data/IndexedVariable;

.field private mLyricPrevVar:Lcom/miui/maml/data/IndexedVariable;

.field private mMetadata:Landroid/media/MediaMetadata;

.field private mMiuiMusicContext:Landroid/content/Context;

.field private mMusicController:Lcom/miui/maml/elements/MusicController;

.field private mMusicStateVar:Lcom/miui/maml/data/IndexedVariable;

.field private mMusicUpdateListener:Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

.field private mNeedUpdateLyric:Z

.field private mNeedUpdateProgress:Z

.field private mNeedUpdateUserRating:Z

.field private mPlayerClassVar:Lcom/miui/maml/data/IndexedVariable;

.field private mPlayerPackageVar:Lcom/miui/maml/data/IndexedVariable;

.field private mPlaying:Z

.field private mPositionVar:Lcom/miui/maml/data/IndexedVariable;

.field private mResetMusicControllerRunable:Ljava/lang/Runnable;

.field private mSender:Ljava/lang/String;

.field private mSpectrumVisualizer:Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;

.field private mTextDisplay:Lcom/miui/maml/elements/TextScreenElement;

.field private mTitleVar:Lcom/miui/maml/data/IndexedVariable;

.field private mUpdateProgressInterval:I

.field private mUpdateProgressRunnable:Ljava/lang/Runnable;

.field private mUserRatingStyle:I

.field private mUserRatingStyleVar:Lcom/miui/maml/data/IndexedVariable;

.field private mUserRatingValue:F

.field private mUserRatingValueVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 8

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    new-instance p2, Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;

    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p2, v0}, Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;-><init>(Lcom/miui/maml/elements/MusicControlScreenElement$1;)V

    .line 10
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mAlbumInfo:Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;

    .line 12
    new-instance p2, Lcom/miui/maml/elements/MusicControlScreenElement$1;

    .line 14
    invoke-direct {p2, p0}, Lcom/miui/maml/elements/MusicControlScreenElement$1;-><init>(Lcom/miui/maml/elements/MusicControlScreenElement;)V

    .line 17
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicUpdateListener:Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    .line 19
    new-instance p2, Lcom/miui/maml/elements/MusicControlScreenElement$2;

    .line 21
    invoke-direct {p2, p0}, Lcom/miui/maml/elements/MusicControlScreenElement$2;-><init>(Lcom/miui/maml/elements/MusicControlScreenElement;)V

    .line 24
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDelayToSetArtworkRunnable:Ljava/lang/Runnable;

    .line 26
    new-instance p2, Lcom/miui/maml/elements/MusicControlScreenElement$3;

    .line 28
    invoke-direct {p2, p0}, Lcom/miui/maml/elements/MusicControlScreenElement$3;-><init>(Lcom/miui/maml/elements/MusicControlScreenElement;)V

    .line 31
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mResetMusicControllerRunable:Ljava/lang/Runnable;

    .line 33
    new-instance p2, Lcom/miui/maml/elements/MusicControlScreenElement$4;

    .line 35
    invoke-direct {p2, p0}, Lcom/miui/maml/elements/MusicControlScreenElement$4;-><init>(Lcom/miui/maml/elements/MusicControlScreenElement;)V

    .line 38
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    .line 40
    const-string p2, "music_prev"

    .line 42
    invoke-virtual {p0, p2}, Lcom/miui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 45
    move-result-object p2

    .line 46
    check-cast p2, Lcom/miui/maml/elements/ButtonScreenElement;

    .line 48
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mButtonPrev:Lcom/miui/maml/elements/ButtonScreenElement;

    .line 50
    const-string p2, "music_next"

    .line 52
    invoke-virtual {p0, p2}, Lcom/miui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Lcom/miui/maml/elements/ButtonScreenElement;

    .line 58
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mButtonNext:Lcom/miui/maml/elements/ButtonScreenElement;

    .line 60
    const-string p2, "music_play"

    .line 62
    invoke-virtual {p0, p2}, Lcom/miui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 65
    move-result-object p2

    .line 66
    check-cast p2, Lcom/miui/maml/elements/ButtonScreenElement;

    .line 68
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mButtonPlay:Lcom/miui/maml/elements/ButtonScreenElement;

    .line 70
    const-string p2, "music_pause"

    .line 72
    invoke-virtual {p0, p2}, Lcom/miui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 75
    move-result-object p2

    .line 76
    check-cast p2, Lcom/miui/maml/elements/ButtonScreenElement;

    .line 78
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mButtonPause:Lcom/miui/maml/elements/ButtonScreenElement;

    .line 80
    const-string p2, "music_display"

    .line 82
    invoke-virtual {p0, p2}, Lcom/miui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 85
    move-result-object p2

    .line 86
    check-cast p2, Lcom/miui/maml/elements/TextScreenElement;

    .line 88
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lcom/miui/maml/elements/TextScreenElement;

    .line 90
    const-string p2, "music_album_cover"

    .line 92
    invoke-virtual {p0, p2}, Lcom/miui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 95
    move-result-object p2

    .line 96
    check-cast p2, Lcom/miui/maml/elements/ImageScreenElement;

    .line 98
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lcom/miui/maml/elements/ImageScreenElement;

    .line 100
    invoke-direct {p0, p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->findSpectrumVisualizer(Lcom/miui/maml/elements/ElementGroup;)Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;

    .line 103
    move-result-object p2

    .line 104
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;

    .line 106
    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mButtonPrev:Lcom/miui/maml/elements/ButtonScreenElement;

    .line 108
    invoke-direct {p0, p2}, Lcom/miui/maml/elements/MusicControlScreenElement;->setupButton(Lcom/miui/maml/elements/ButtonScreenElement;)V

    .line 111
    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mButtonNext:Lcom/miui/maml/elements/ButtonScreenElement;

    .line 113
    invoke-direct {p0, p2}, Lcom/miui/maml/elements/MusicControlScreenElement;->setupButton(Lcom/miui/maml/elements/ButtonScreenElement;)V

    .line 116
    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mButtonPlay:Lcom/miui/maml/elements/ButtonScreenElement;

    .line 118
    invoke-direct {p0, p2}, Lcom/miui/maml/elements/MusicControlScreenElement;->setupButton(Lcom/miui/maml/elements/ButtonScreenElement;)V

    .line 121
    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mButtonPause:Lcom/miui/maml/elements/ButtonScreenElement;

    .line 123
    invoke-direct {p0, p2}, Lcom/miui/maml/elements/MusicControlScreenElement;->setupButton(Lcom/miui/maml/elements/ButtonScreenElement;)V

    .line 126
    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mButtonPause:Lcom/miui/maml/elements/ButtonScreenElement;

    .line 128
    const/4 v0, 0x0

    .line 129
    if-eqz p2, :cond_85

    .line 131
    invoke-virtual {p2, v0}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 134
    :cond_85
    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lcom/miui/maml/elements/ImageScreenElement;

    .line 136
    if-eqz p2, :cond_ae

    .line 138
    const-string p2, "defAlbumCover"

    .line 140
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    move-result-object p2

    .line 144
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 147
    move-result v1

    .line 148
    if-nez v1, :cond_a1

    .line 150
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 153
    move-result-object v1

    .line 154
    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 156
    invoke-virtual {v1, p2}, Lcom/miui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 159
    move-result-object p2

    .line 160
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 162
    :cond_a1
    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 164
    if-eqz p2, :cond_ae

    .line 166
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 168
    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getResourceDensity()I

    .line 171
    move-result v1

    .line 172
    invoke-virtual {p2, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 175
    :cond_ae
    const-string p2, "autoShow"

    .line 177
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    move-result-object p2

    .line 181
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 184
    move-result p2

    .line 185
    iput-boolean p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mAutoShow:Z

    .line 187
    const-string p2, "enableLyric"

    .line 189
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    move-result-object p2

    .line 193
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 196
    move-result p2

    .line 197
    iput-boolean p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mEnableLyric:Z

    .line 199
    const/4 v1, 0x1

    .line 200
    if-eqz p2, :cond_cb

    .line 202
    move p2, v1

    .line 203
    goto :goto_d5

    .line 204
    :cond_cb
    const-string p2, "enableProgress"

    .line 206
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 209
    move-result-object p2

    .line 210
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 213
    move-result p2

    .line 214
    :goto_d5
    iput-boolean p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mEnableProgress:Z

    .line 216
    const/16 p2, 0x3e8

    .line 218
    const-string v2, "updateProgressInterval"

    .line 220
    invoke-virtual {p0, p1, v2, p2}, Lcom/miui/maml/elements/ScreenElement;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 223
    move-result p1

    .line 224
    iput p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUpdateProgressInterval:I

    .line 226
    iget-boolean p1, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 228
    if-eqz p1, :cond_295

    .line 230
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 233
    move-result-object p1

    .line 234
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    .line 238
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 243
    const-string v4, ".music_state"

    .line 245
    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 248
    move-result-object v2

    .line 249
    invoke-direct {p2, v2, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 252
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicStateVar:Lcom/miui/maml/data/IndexedVariable;

    .line 254
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    .line 258
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 263
    const-string v4, ".title"

    .line 265
    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 268
    move-result-object v2

    .line 269
    invoke-direct {p2, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 272
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mTitleVar:Lcom/miui/maml/data/IndexedVariable;

    .line 274
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    .line 278
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 283
    const-string v4, ".artist"

    .line 285
    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 288
    move-result-object v2

    .line 289
    invoke-direct {p2, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 292
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mArtistVar:Lcom/miui/maml/data/IndexedVariable;

    .line 294
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    .line 298
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 303
    const-string v4, ".album"

    .line 305
    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 308
    move-result-object v2

    .line 309
    invoke-direct {p2, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 312
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mAlbumVar:Lcom/miui/maml/data/IndexedVariable;

    .line 314
    iget-boolean p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mEnableLyric:Z

    .line 316
    if-eqz p2, :cond_1c9

    .line 318
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    .line 322
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 327
    const-string v4, ".lyric_current"

    .line 329
    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 332
    move-result-object v2

    .line 333
    invoke-direct {p2, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 336
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricCurrentVar:Lcom/miui/maml/data/IndexedVariable;

    .line 338
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    .line 342
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 347
    const-string v4, ".lyric_before"

    .line 349
    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 352
    move-result-object v2

    .line 353
    invoke-direct {p2, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 356
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricBeforeVar:Lcom/miui/maml/data/IndexedVariable;

    .line 358
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 360
    new-instance v2, Ljava/lang/StringBuilder;

    .line 362
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 367
    const-string v4, ".lyric_after"

    .line 369
    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 372
    move-result-object v2

    .line 373
    invoke-direct {p2, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 376
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricAfterVar:Lcom/miui/maml/data/IndexedVariable;

    .line 378
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    .line 382
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 387
    const-string v4, ".lyric_last"

    .line 389
    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 392
    move-result-object v2

    .line 393
    invoke-direct {p2, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 396
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricLastVar:Lcom/miui/maml/data/IndexedVariable;

    .line 398
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    .line 402
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 405
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 407
    const-string v4, ".lyric_prev"

    .line 409
    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 412
    move-result-object v2

    .line 413
    invoke-direct {p2, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 416
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricPrevVar:Lcom/miui/maml/data/IndexedVariable;

    .line 418
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 420
    new-instance v2, Ljava/lang/StringBuilder;

    .line 422
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 427
    const-string v4, ".lyric_next"

    .line 429
    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 432
    move-result-object v2

    .line 433
    invoke-direct {p2, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 436
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricNextVar:Lcom/miui/maml/data/IndexedVariable;

    .line 438
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    .line 442
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 447
    const-string v4, ".lyric_current_line_progress"

    .line 449
    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 452
    move-result-object v2

    .line 453
    invoke-direct {p2, v2, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 456
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricCurrentLineProgressVar:Lcom/miui/maml/data/IndexedVariable;

    .line 458
    :cond_1c9
    iget-boolean p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mEnableProgress:Z

    .line 460
    if-eqz p2, :cond_1f5

    .line 462
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 464
    new-instance v2, Ljava/lang/StringBuilder;

    .line 466
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 471
    const-string v4, ".music_duration"

    .line 473
    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 476
    move-result-object v2

    .line 477
    invoke-direct {p2, v2, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 480
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDurationVar:Lcom/miui/maml/data/IndexedVariable;

    .line 482
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 484
    new-instance v2, Ljava/lang/StringBuilder;

    .line 486
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 491
    const-string v4, ".music_position"

    .line 493
    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 496
    move-result-object v2

    .line 497
    invoke-direct {p2, v2, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 500
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPositionVar:Lcom/miui/maml/data/IndexedVariable;

    .line 502
    :cond_1f5
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 504
    new-instance v2, Ljava/lang/StringBuilder;

    .line 506
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 509
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 511
    const-string v4, ".user_rating_style"

    .line 513
    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 516
    move-result-object v2

    .line 517
    invoke-direct {p2, v2, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 520
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingStyleVar:Lcom/miui/maml/data/IndexedVariable;

    .line 522
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 524
    new-instance v2, Ljava/lang/StringBuilder;

    .line 526
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 529
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 531
    const-string v4, ".user_rating_value"

    .line 533
    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 536
    move-result-object v2

    .line 537
    invoke-direct {p2, v2, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 540
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingValueVar:Lcom/miui/maml/data/IndexedVariable;

    .line 542
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 544
    new-instance v2, Ljava/lang/StringBuilder;

    .line 546
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 549
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 551
    const-string v4, ".disable_play"

    .line 553
    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 556
    move-result-object v2

    .line 557
    invoke-direct {p2, v2, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 560
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisablePlayVar:Lcom/miui/maml/data/IndexedVariable;

    .line 562
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 564
    new-instance v2, Ljava/lang/StringBuilder;

    .line 566
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 569
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 571
    const-string v4, ".disable_prev"

    .line 573
    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 576
    move-result-object v2

    .line 577
    invoke-direct {p2, v2, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 580
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisablePrevVar:Lcom/miui/maml/data/IndexedVariable;

    .line 582
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 584
    new-instance v2, Ljava/lang/StringBuilder;

    .line 586
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 589
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 591
    const-string v4, ".disable_next"

    .line 593
    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 596
    move-result-object v2

    .line 597
    invoke-direct {p2, v2, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 600
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisableNextVar:Lcom/miui/maml/data/IndexedVariable;

    .line 602
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 604
    new-instance v2, Ljava/lang/StringBuilder;

    .line 606
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 609
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 611
    const-string v4, ".artwork"

    .line 613
    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 616
    move-result-object v2

    .line 617
    invoke-direct {p2, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 620
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mArtworkVar:Lcom/miui/maml/data/IndexedVariable;

    .line 622
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 624
    new-instance v2, Ljava/lang/StringBuilder;

    .line 626
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 629
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 631
    const-string v4, ".package"

    .line 633
    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 636
    move-result-object v2

    .line 637
    invoke-direct {p2, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 640
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlayerPackageVar:Lcom/miui/maml/data/IndexedVariable;

    .line 642
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 644
    new-instance v2, Ljava/lang/StringBuilder;

    .line 646
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 649
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 651
    const-string v4, ".class"

    .line 653
    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 656
    move-result-object v2

    .line 657
    invoke-direct {p2, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 660
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlayerClassVar:Lcom/miui/maml/data/IndexedVariable;

    .line 662
    :cond_295
    iget-boolean p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mEnableLyric:Z

    .line 664
    if-eqz p1, :cond_29f

    .line 666
    iget-boolean p1, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 668
    if-eqz p1, :cond_29f

    .line 670
    move p1, v1

    .line 671
    goto :goto_2a0

    .line 672
    :cond_29f
    move p1, v0

    .line 673
    :goto_2a0
    iput-boolean p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    .line 675
    iget-boolean p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mEnableProgress:Z

    .line 677
    if-eqz p1, :cond_2ab

    .line 679
    iget-boolean p1, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 681
    if-eqz p1, :cond_2ab

    .line 683
    move v0, v1

    .line 684
    :cond_2ab
    iput-boolean v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mNeedUpdateProgress:Z

    .line 686
    iget-boolean p1, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 688
    iput-boolean p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mNeedUpdateUserRating:Z

    .line 690
    :try_start_2b1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 693
    move-result-object p1

    .line 694
    iget-object p1, p1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 696
    const-string p2, "com.miui.player"

    .line 698
    const/4 v0, 0x2

    .line 699
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 702
    move-result-object p1

    .line 703
    iput-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMiuiMusicContext:Landroid/content/Context;
    :try_end_2c0
    .catch Ljava/lang/Exception; {:try_start_2b1 .. :try_end_2c0} :catch_2c1

    .line 705
    goto :goto_2c9

    .line 706
    :catch_2c1
    move-exception p1

    .line 707
    const-string p2, "MusicControlScreenE"

    .line 709
    const-string v0, "fail to get MiuiMusic preference"

    .line 711
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 714
    :goto_2c9
    new-instance p1, Lcom/miui/maml/elements/MusicController;

    .line 716
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 719
    move-result-object p2

    .line 720
    iget-object p2, p2, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 722
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 725
    move-result-object v0

    .line 726
    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 729
    move-result-object v0

    .line 730
    invoke-direct {p1, p2, v0}, Lcom/miui/maml/elements/MusicController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 733
    iput-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicController:Lcom/miui/maml/elements/MusicController;

    .line 735
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 737
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->getRootTag()Ljava/lang/String;

    .line 740
    move-result-object p1

    .line 741
    const-string p2, "maml"

    .line 743
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mSender:Ljava/lang/String;

    .line 745
    const-string p2, "gadget"

    .line 747
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 750
    move-result p2

    .line 751
    if-eqz p2, :cond_2f5

    .line 753
    const-string p1, "home_widget"

    .line 755
    iput-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mSender:Ljava/lang/String;

    .line 757
    goto :goto_30c

    .line 758
    :cond_2f5
    const-string p2, "statusbar"

    .line 760
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 763
    move-result p2

    .line 764
    if-eqz p2, :cond_302

    .line 766
    const-string p1, "notification_bar"

    .line 768
    iput-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mSender:Ljava/lang/String;

    .line 770
    goto :goto_30c

    .line 771
    :cond_302
    const-string p2, "lockscreen"

    .line 773
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 776
    move-result p1

    .line 777
    if-eqz p1, :cond_30c

    .line 779
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mSender:Ljava/lang/String;

    .line 781
    :cond_30c
    :goto_30c
    return-void
.end method

.method public static synthetic access$100(Lcom/miui/maml/elements/MusicControlScreenElement;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->resetUserRating()V

    .line 4
    return-void
.end method

.method public static synthetic access$1000(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMetadata:Landroid/media/MediaMetadata;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1002(Lcom/miui/maml/elements/MusicControlScreenElement;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMetadata:Landroid/media/MediaMetadata;

    .line 3
    return-object p1
.end method

.method public static synthetic access$1100(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mAlbumInfo:Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1200(Lcom/miui/maml/elements/MusicControlScreenElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/elements/MusicControlScreenElement;->updateAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic access$1300(Lcom/miui/maml/elements/MusicControlScreenElement;J)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/MusicControlScreenElement;->delayToSetDefaultArtwork(J)V

    .line 4
    return-void
.end method

.method public static synthetic access$1400(Lcom/miui/maml/elements/MusicControlScreenElement;Landroid/graphics/Bitmap;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->updateArtwork(Landroid/graphics/Bitmap;)V

    .line 4
    return-void
.end method

.method public static synthetic access$1500(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/elements/MusicLyricParser$Lyric;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyric:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1502(Lcom/miui/maml/elements/MusicControlScreenElement;Lcom/miui/maml/elements/MusicLyricParser$Lyric;)Lcom/miui/maml/elements/MusicLyricParser$Lyric;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyric:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 3
    return-object p1
.end method

.method public static synthetic access$1600(Lcom/miui/maml/elements/MusicControlScreenElement;Lcom/miui/maml/elements/MusicLyricParser$Lyric;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->updateLyric(Lcom/miui/maml/elements/MusicLyricParser$Lyric;)V

    .line 4
    return-void
.end method

.method public static synthetic access$1700(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/elements/MusicController;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicController:Lcom/miui/maml/elements/MusicController;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1800(Lcom/miui/maml/elements/MusicControlScreenElement;JJ)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/maml/elements/MusicControlScreenElement;->updateProgress(JJ)V

    .line 4
    return-void
.end method

.method public static synthetic access$1900(Lcom/miui/maml/elements/MusicControlScreenElement;Landroid/media/Rating;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->updateUserRating(Landroid/media/Rating;)V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/miui/maml/elements/MusicControlScreenElement;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisablePlay:Z

    .line 3
    return p0
.end method

.method public static synthetic access$2000(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlayerPackageVar:Lcom/miui/maml/data/IndexedVariable;

    .line 3
    return-object p0
.end method

.method public static synthetic access$202(Lcom/miui/maml/elements/MusicControlScreenElement;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisablePlay:Z

    .line 3
    return p1
.end method

.method public static synthetic access$2100(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlayerClassVar:Lcom/miui/maml/data/IndexedVariable;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2200(Lcom/miui/maml/elements/MusicControlScreenElement;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mAutoShow:Z

    .line 3
    return p0
.end method

.method public static synthetic access$2300(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/graphics/Bitmap;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2400(Lcom/miui/maml/elements/MusicControlScreenElement;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlaying:Z

    .line 3
    return p0
.end method

.method public static synthetic access$2500(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDurationVar:Lcom/miui/maml/data/IndexedVariable;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2600(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPositionVar:Lcom/miui/maml/data/IndexedVariable;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2700(Lcom/miui/maml/elements/MusicControlScreenElement;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    .line 3
    return p0
.end method

.method public static synthetic access$2800(Lcom/miui/maml/elements/MusicControlScreenElement;J)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/MusicControlScreenElement;->updateLyricVar(J)V

    .line 4
    return-void
.end method

.method public static synthetic access$2900(Lcom/miui/maml/elements/MusicControlScreenElement;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUpdateProgressInterval:I

    .line 3
    return p0
.end method

.method public static synthetic access$300(Lcom/miui/maml/elements/MusicControlScreenElement;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisablePrev:Z

    .line 3
    return p0
.end method

.method public static synthetic access$302(Lcom/miui/maml/elements/MusicControlScreenElement;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisablePrev:Z

    .line 3
    return p1
.end method

.method public static synthetic access$400(Lcom/miui/maml/elements/MusicControlScreenElement;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisableNext:Z

    .line 3
    return p0
.end method

.method public static synthetic access$402(Lcom/miui/maml/elements/MusicControlScreenElement;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisableNext:Z

    .line 3
    return p1
.end method

.method public static synthetic access$500(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisablePlayVar:Lcom/miui/maml/data/IndexedVariable;

    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisablePrevVar:Lcom/miui/maml/data/IndexedVariable;

    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisableNextVar:Lcom/miui/maml/data/IndexedVariable;

    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lcom/miui/maml/elements/MusicControlScreenElement;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->resetAll()V

    .line 4
    return-void
.end method

.method public static synthetic access$900(Lcom/miui/maml/elements/MusicControlScreenElement;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->onMusicStateChange(Z)V

    .line 4
    return-void
.end method

.method private cancelSetDefaultArtwork()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDelayToSetArtworkRunnable:Ljava/lang/Runnable;

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    return-void
.end method

.method private delayToSetDefaultArtwork(J)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDelayToSetArtworkRunnable:Ljava/lang/Runnable;

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDelayToSetArtworkRunnable:Ljava/lang/Runnable;

    .line 16
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    return-void
.end method

.method private findSpectrumVisualizer(Lcom/miui/maml/elements/ElementGroup;)Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/miui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p1

    .line 9
    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_28

    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/miui/maml/elements/ScreenElement;

    .line 21
    instance-of v1, v0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;

    .line 23
    if-eqz v1, :cond_1b

    .line 25
    check-cast v0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;

    .line 27
    return-object v0

    .line 28
    :cond_1b
    instance-of v1, v0, Lcom/miui/maml/elements/ElementGroup;

    .line 30
    if-eqz v1, :cond_8

    .line 32
    check-cast v0, Lcom/miui/maml/elements/ElementGroup;

    .line 34
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->findSpectrumVisualizer(Lcom/miui/maml/elements/ElementGroup;)Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;

    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_8

    .line 40
    return-object v0

    .line 41
    :cond_28
    const/4 p1, 0x0

    .line 42
    return-object p1
.end method

.method private onMusicStateChange(Z)V
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_10

    .line 4
    iget-boolean v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mAutoShow:Z

    .line 6
    if-eqz v1, :cond_10

    .line 8
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_10

    .line 14
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 17
    :cond_10
    iput-boolean p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlaying:Z

    .line 19
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicStateVar:Lcom/miui/maml/data/IndexedVariable;

    .line 21
    if-eqz v1, :cond_20

    .line 23
    if-eqz p1, :cond_1b

    .line 25
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    .line 27
    goto :goto_1d

    .line 28
    :cond_1b
    const-wide/16 v2, 0x0

    .line 30
    :goto_1d
    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 33
    :cond_20
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mButtonPause:Lcom/miui/maml/elements/ButtonScreenElement;

    .line 35
    if-eqz v1, :cond_27

    .line 37
    invoke-virtual {v1, p1}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 40
    :cond_27
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mButtonPlay:Lcom/miui/maml/elements/ButtonScreenElement;

    .line 42
    if-eqz v1, :cond_30

    .line 44
    xor-int/lit8 v2, p1, 0x1

    .line 46
    invoke-virtual {v1, v2}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 49
    :cond_30
    iget-boolean v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mNeedUpdateProgress:Z

    .line 51
    if-eqz v1, :cond_3e

    .line 53
    if-eqz p1, :cond_39

    .line 55
    const-wide/16 v1, 0x64

    .line 57
    goto :goto_3b

    .line 58
    :cond_39
    const-wide/16 v1, 0x0

    .line 60
    :goto_3b
    invoke-direct {p0, p1, v1, v2}, Lcom/miui/maml/elements/MusicControlScreenElement;->startProgressUpdate(ZJ)V

    .line 63
    :cond_3e
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;

    .line 65
    if-eqz v1, :cond_4d

    .line 67
    if-eqz p1, :cond_49

    .line 69
    iget-boolean v2, p0, Lcom/miui/maml/elements/ScreenElement;->mResumed:Z

    .line 71
    if-eqz v2, :cond_49

    .line 73
    goto :goto_4a

    .line 74
    :cond_49
    const/4 v0, 0x0

    .line 75
    :goto_4a
    invoke-virtual {v1, v0}, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->enableUpdate(Z)V

    .line 78
    :cond_4d
    if-eqz p1, :cond_56

    .line 80
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyric:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 82
    if-eqz v0, :cond_56

    .line 84
    const/high16 v0, 0x41f00000  # 30.0f

    .line 86
    goto :goto_57

    .line 87
    :cond_56
    const/4 v0, 0x0

    .line 88
    :goto_57
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->requestFramerate(F)V

    .line 91
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    const-string v1, "music state change: playing="

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object p1

    .line 111
    const-string v0, "MusicControlScreenE"

    .line 113
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method private resetAll()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, v0, v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->updateAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->resetProgress()V

    .line 8
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->resetLyric()V

    .line 11
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->resetUserRating()V

    .line 14
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 16
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->updateArtwork(Landroid/graphics/Bitmap;)V

    .line 19
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->resetPackageName()V

    .line 22
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->resetMusicState()V

    .line 25
    return-void
.end method

.method private resetLyric()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    .line 3
    if-eqz v0, :cond_23

    .line 5
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricBeforeVar:Lcom/miui/maml/data/IndexedVariable;

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 11
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricAfterVar:Lcom/miui/maml/data/IndexedVariable;

    .line 13
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 16
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricLastVar:Lcom/miui/maml/data/IndexedVariable;

    .line 18
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricPrevVar:Lcom/miui/maml/data/IndexedVariable;

    .line 23
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricNextVar:Lcom/miui/maml/data/IndexedVariable;

    .line 28
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricCurrentVar:Lcom/miui/maml/data/IndexedVariable;

    .line 33
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 36
    :cond_23
    return-void
.end method

.method private resetMusicState()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->onMusicStateChange(Z)V

    .line 5
    return-void
.end method

.method private resetPackageName()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlayerPackageVar:Lcom/miui/maml/data/IndexedVariable;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_8

    .line 6
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 9
    :cond_8
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlayerClassVar:Lcom/miui/maml/data/IndexedVariable;

    .line 11
    if-eqz v0, :cond_f

    .line 13
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 16
    :cond_f
    return-void
.end method

.method private resetProgress()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mNeedUpdateProgress:Z

    .line 3
    const-wide/16 v1, 0x0

    .line 5
    if-eqz v0, :cond_10

    .line 7
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDurationVar:Lcom/miui/maml/data/IndexedVariable;

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 12
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPositionVar:Lcom/miui/maml/data/IndexedVariable;

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 17
    :cond_10
    iget-boolean v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    .line 19
    if-eqz v0, :cond_19

    .line 21
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricCurrentLineProgressVar:Lcom/miui/maml/data/IndexedVariable;

    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 26
    :cond_19
    return-void
.end method

.method private resetUserRating()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mNeedUpdateUserRating:Z

    .line 3
    if-eqz v0, :cond_16

    .line 5
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingStyle:I

    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    .line 11
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingStyleVar:Lcom/miui/maml/data/IndexedVariable;

    .line 13
    const-wide/16 v1, 0x0

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 18
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingValueVar:Lcom/miui/maml/data/IndexedVariable;

    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 23
    :cond_16
    return-void
.end method

.method private sendMediaKeyEvent(ILjava/lang/String;)Z
    .registers 12

    .line 1
    const-string v0, "music_prev"

    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v1

    .line 7
    const-string v2, "music_pause"

    .line 9
    const/16 v3, 0x55

    .line 11
    const/16 v4, 0x57

    .line 13
    const-string v5, "music_play"

    .line 15
    const/16 v6, 0x58

    .line 17
    const-string v7, "music_next"

    .line 19
    const/4 v8, 0x0

    .line 20
    if-eqz v1, :cond_17

    .line 22
    move v1, v6

    .line 23
    goto :goto_2f

    .line 24
    :cond_17
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1f

    .line 30
    move v1, v4

    .line 31
    goto :goto_2f

    .line 32
    :cond_1f
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_2e

    .line 38
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2c

    .line 44
    goto :goto_2e

    .line 45
    :cond_2c
    move v1, v8

    .line 46
    goto :goto_2f

    .line 47
    :cond_2e
    :goto_2e
    move v1, v3

    .line 48
    :goto_2f
    if-ne v1, v6, :cond_36

    .line 50
    iget-boolean v6, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisablePrev:Z

    .line 52
    if-eqz v6, :cond_36

    .line 54
    return v8

    .line 55
    :cond_36
    if-ne v1, v4, :cond_3d

    .line 57
    iget-boolean v4, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisableNext:Z

    .line 59
    if-eqz v4, :cond_3d

    .line 61
    return v8

    .line 62
    :cond_3d
    if-ne v1, v3, :cond_44

    .line 64
    iget-boolean v3, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisablePlay:Z

    .line 66
    if-eqz v3, :cond_44

    .line 68
    return v8

    .line 69
    :cond_44
    iget-object v3, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicController:Lcom/miui/maml/elements/MusicController;

    .line 71
    invoke-virtual {v3, p1, v1}, Lcom/miui/maml/elements/MusicController;->sendMediaKeyEvent(II)Z

    .line 74
    move-result v1

    .line 75
    const/4 v3, 0x1

    .line 76
    if-eqz v1, :cond_4e

    .line 78
    return v3

    .line 79
    :cond_4e
    const-string v1, "MusicControlScreenE"

    .line 81
    const-string v4, "fail to dispatch by media controller, send to MiuiMusic."

    .line 83
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    if-nez p1, :cond_58

    .line 88
    return v3

    .line 89
    :cond_58
    const/4 p1, 0x0

    .line 90
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_82

    .line 96
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_66

    .line 102
    goto :goto_82

    .line 103
    :cond_66
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_74

    .line 109
    new-instance p1, Landroid/content/Intent;

    .line 111
    const-string p2, "com.miui.player.musicservicecommand.previous"

    .line 113
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    goto :goto_89

    .line 117
    :cond_74
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    move-result p2

    .line 121
    if-eqz p2, :cond_89

    .line 123
    new-instance p1, Landroid/content/Intent;

    .line 125
    const-string p2, "com.miui.player.musicservicecommand.next"

    .line 127
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    goto :goto_89

    .line 131
    :cond_82
    :goto_82
    new-instance p1, Landroid/content/Intent;

    .line 133
    const-string p2, "com.miui.player.musicservicecommand.togglepause"

    .line 135
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    :cond_89
    :goto_89
    if-eqz p1, :cond_b2

    .line 140
    const-string p2, "com.miui.player"

    .line 142
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mSender:Ljava/lang/String;

    .line 147
    const-string v0, "intent_sender"

    .line 149
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    iget-object p2, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 154
    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 157
    move-result-object p2

    .line 158
    iget-object p2, p2, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 160
    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 163
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {p1}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 170
    move-result-object p1

    .line 171
    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mResetMusicControllerRunable:Ljava/lang/Runnable;

    .line 173
    const-wide/16 v0, 0x3e8

    .line 175
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 178
    return v3

    .line 179
    :cond_b2
    return v8
.end method

.method private setupButton(Lcom/miui/maml/elements/ButtonScreenElement;)V
    .registers 2

    .line 1
    if-eqz p1, :cond_8

    .line 3
    invoke-virtual {p1, p0}, Lcom/miui/maml/elements/ButtonScreenElement;->setListener(Lcom/miui/maml/elements/ButtonScreenElement$ButtonActionListener;)V

    .line 6
    invoke-virtual {p1, p0}, Lcom/miui/maml/elements/ScreenElement;->setParent(Lcom/miui/maml/elements/ElementGroup;)V

    .line 9
    :cond_8
    return-void
.end method

.method private startProgressUpdate(ZJ)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    if-eqz p1, :cond_30

    .line 16
    const-wide/16 v0, 0x0

    .line 18
    cmp-long p1, p2, v0

    .line 20
    if-lez p1, :cond_23

    .line 22
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 29
    move-result-object p1

    .line 30
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    .line 32
    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    goto :goto_30

    .line 36
    :cond_23
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 43
    move-result-object p1

    .line 44
    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    .line 46
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    :cond_30
    :goto_30
    return-void
.end method

.method private updateAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 3
    if-eqz v0, :cond_13

    .line 5
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mTitleVar:Lcom/miui/maml/data/IndexedVariable;

    .line 7
    invoke-virtual {v0, p1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mArtistVar:Lcom/miui/maml/data/IndexedVariable;

    .line 12
    invoke-virtual {v0, p2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 15
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mAlbumVar:Lcom/miui/maml/data/IndexedVariable;

    .line 17
    invoke-virtual {v0, p3}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 20
    :cond_13
    iget-object p3, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lcom/miui/maml/elements/TextScreenElement;

    .line 22
    if-eqz p3, :cond_3a

    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    move-result p3

    .line 28
    if-eqz p3, :cond_1f

    .line 30
    move-object p1, p2

    .line 31
    goto :goto_35

    .line 32
    :cond_1f
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    move-result p3

    .line 36
    if-eqz p3, :cond_26

    .line 38
    goto :goto_35

    .line 39
    :cond_26
    const/4 p3, 0x2

    .line 40
    new-array p3, p3, [Ljava/lang/Object;

    .line 42
    const/4 v0, 0x0

    .line 43
    aput-object p1, p3, v0

    .line 45
    const/4 p1, 0x1

    .line 46
    aput-object p2, p3, p1

    .line 48
    const-string p1, "%s   %s"

    .line 50
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    :goto_35
    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lcom/miui/maml/elements/TextScreenElement;

    .line 56
    invoke-virtual {p2, p1}, Lcom/miui/maml/elements/TextScreenElement;->setText(Ljava/lang/String;)V

    .line 59
    :cond_3a
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 62
    return-void
.end method

.method private updateArtwork(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->cancelSetDefaultArtwork()V

    .line 4
    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 6
    if-eqz v0, :cond_c

    .line 8
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mArtworkVar:Lcom/miui/maml/data/IndexedVariable;

    .line 10
    invoke-virtual {v0, p1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 13
    :cond_c
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lcom/miui/maml/elements/ImageScreenElement;

    .line 15
    if-eqz v0, :cond_13

    .line 17
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 20
    :cond_13
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 23
    return-void
.end method

.method private updateLyric(Lcom/miui/maml/elements/MusicLyricParser$Lyric;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    if-nez p1, :cond_b

    .line 8
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->resetLyric()V

    .line 11
    return-void

    .line 12
    :cond_b
    invoke-virtual {p1}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->getTimeArr()[I

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->getStringArr()Ljava/util/ArrayList;

    .line 19
    move-result-object p1

    .line 20
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyric:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 22
    if-eqz v1, :cond_1a

    .line 24
    invoke-virtual {v1, v0, p1}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->set([ILjava/util/ArrayList;)V

    .line 27
    :cond_1a
    return-void
.end method

.method private updateLyricVar(J)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyric:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->getLyricShot(J)Lcom/miui/maml/elements/MusicLyricParser$LyricShot;

    .line 6
    move-result-object v0

    .line 7
    iget-wide v0, v0, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;->percent:D

    .line 9
    iget-object v2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricCurrentLineProgressVar:Lcom/miui/maml/data/IndexedVariable;

    .line 11
    invoke-virtual {v2, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 14
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyric:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 16
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->getLine(J)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricCurrentVar:Lcom/miui/maml/data/IndexedVariable;

    .line 22
    invoke-virtual {v1, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyric:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 27
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->getBeforeLines(J)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricBeforeVar:Lcom/miui/maml/data/IndexedVariable;

    .line 33
    invoke-virtual {v1, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyric:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 38
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->getAfterLines(J)Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricAfterVar:Lcom/miui/maml/data/IndexedVariable;

    .line 44
    invoke-virtual {v1, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyric:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 49
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->getLastLine(J)Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricLastVar:Lcom/miui/maml/data/IndexedVariable;

    .line 55
    invoke-virtual {v1, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 58
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricPrevVar:Lcom/miui/maml/data/IndexedVariable;

    .line 60
    invoke-virtual {v1, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyric:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 65
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->getNextLine(J)Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricNextVar:Lcom/miui/maml/data/IndexedVariable;

    .line 71
    invoke-virtual {p2, p1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method private updateProgress(JJ)V
    .registers 9

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mNeedUpdateProgress:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const-wide/16 v0, 0x0

    .line 8
    cmp-long v2, p1, v0

    .line 10
    if-lez v2, :cond_34

    .line 12
    cmp-long v2, p3, v0

    .line 14
    if-gez v2, :cond_10

    .line 16
    goto :goto_34

    .line 17
    :cond_10
    iget-object v2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDurationVar:Lcom/miui/maml/data/IndexedVariable;

    .line 19
    long-to-double p1, p1

    .line 20
    invoke-virtual {v2, p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 23
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPositionVar:Lcom/miui/maml/data/IndexedVariable;

    .line 25
    long-to-double v2, p3

    .line 26
    invoke-virtual {p1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 29
    iget-boolean p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    .line 31
    if-eqz p1, :cond_2b

    .line 33
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyric:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 35
    if-eqz p1, :cond_28

    .line 37
    invoke-direct {p0, p3, p4}, Lcom/miui/maml/elements/MusicControlScreenElement;->updateLyricVar(J)V

    .line 40
    goto :goto_2b

    .line 41
    :cond_28
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->resetLyric()V

    .line 44
    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 47
    iget-boolean p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlaying:Z

    .line 49
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->startProgressUpdate(ZJ)V

    .line 52
    return-void

    .line 53
    :cond_34
    :goto_34
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->resetProgress()V

    .line 56
    return-void
.end method

.method private updateUserRating(Landroid/media/Rating;)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mNeedUpdateUserRating:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    if-nez p1, :cond_b

    .line 8
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->resetUserRating()V

    .line 11
    return-void

    .line 12
    :cond_b
    invoke-virtual {p1}, Landroid/media/Rating;->getRatingStyle()I

    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingStyle:I

    .line 18
    const/high16 v1, 0x3f800000  # 1.0f

    .line 20
    const/4 v2, 0x0

    .line 21
    packed-switch v0, :pswitch_data_52

    .line 24
    iput v2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    .line 26
    goto :goto_3d

    .line 27
    :pswitch_1a  #0x6
    invoke-virtual {p1}, Landroid/media/Rating;->getPercentRating()F

    .line 30
    move-result p1

    .line 31
    iput p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    .line 33
    goto :goto_3d

    .line 34
    :pswitch_21  #0x3, 0x4, 0x5
    invoke-virtual {p1}, Landroid/media/Rating;->getStarRating()F

    .line 37
    move-result p1

    .line 38
    iput p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    .line 40
    goto :goto_3d

    .line 41
    :pswitch_28  #0x2
    invoke-virtual {p1}, Landroid/media/Rating;->isThumbUp()Z

    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_2f

    .line 47
    goto :goto_30

    .line 48
    :cond_2f
    move v1, v2

    .line 49
    :goto_30
    iput v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    .line 51
    goto :goto_3d

    .line 52
    :pswitch_33  #0x1
    invoke-virtual {p1}, Landroid/media/Rating;->hasHeart()Z

    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_3a

    .line 58
    goto :goto_3b

    .line 59
    :cond_3a
    move v1, v2

    .line 60
    :goto_3b
    iput v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    .line 62
    :goto_3d
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingStyleVar:Lcom/miui/maml/data/IndexedVariable;

    .line 64
    iget v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingStyle:I

    .line 66
    int-to-double v0, v0

    .line 67
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 70
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingValueVar:Lcom/miui/maml/data/IndexedVariable;

    .line 72
    iget v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    .line 74
    float-to-double v0, v0

    .line 75
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 78
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 81
    return-void

    .line 82
    nop

    .line 83
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_33  #00000001
        :pswitch_28  #00000002
        :pswitch_21  #00000003
        :pswitch_21  #00000004
        :pswitch_21  #00000005
        :pswitch_1a  #00000006
    .end packed-switch
.end method


# virtual methods
.method public finish()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->finish()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mArtworkVar:Lcom/miui/maml/data/IndexedVariable;

    .line 6
    if-eqz v0, :cond_b

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicController:Lcom/miui/maml/elements/MusicController;

    .line 14
    invoke-virtual {v0}, Lcom/miui/maml/elements/MusicController;->unregisterListener()V

    .line 17
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicController:Lcom/miui/maml/elements/MusicController;

    .line 19
    invoke-virtual {v0}, Lcom/miui/maml/elements/MusicController;->finish()V

    .line 22
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    .line 32
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 35
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDelayToSetArtworkRunnable:Ljava/lang/Runnable;

    .line 37
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 40
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mResetMusicControllerRunable:Ljava/lang/Runnable;

    .line 42
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 45
    return-void
.end method

.method public init()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->init()V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->initByPreference()V

    .line 7
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicController:Lcom/miui/maml/elements/MusicController;

    .line 9
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicUpdateListener:Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    .line 11
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/MusicController;->registerListener(Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;)V

    .line 14
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicController:Lcom/miui/maml/elements/MusicController;

    .line 16
    invoke-virtual {v0}, Lcom/miui/maml/elements/MusicController;->isMusicActive()Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_21

    .line 22
    iget-boolean v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mAutoShow:Z

    .line 24
    const/4 v1, 0x1

    .line 25
    if-eqz v0, :cond_1d

    .line 27
    invoke-virtual {p0, v1}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 30
    :cond_1d
    invoke-direct {p0, v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->onMusicStateChange(Z)V

    .line 33
    goto :goto_25

    .line 34
    :cond_21
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->onMusicStateChange(Z)V

    .line 38
    :goto_25
    return-void
.end method

.method public initByPreference()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMiuiMusicContext:Landroid/content/Context;

    .line 3
    if-eqz v0, :cond_2a

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_5
    const-string v2, "MiuiMusic"

    .line 8
    const/4 v3, 0x4

    .line 9
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 12
    move-result-object v0
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_c} :catch_d

    .line 13
    goto :goto_e

    .line 14
    :catch_d
    move-object v0, v1

    .line 15
    :goto_e
    if-eqz v0, :cond_2a

    .line 17
    const-string v2, "songName"

    .line 19
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    const-string v3, "artistName"

    .line 25
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    const-string v4, "albumName"

    .line 31
    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    invoke-direct {p0, v2, v3, v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->updateAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 40
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->updateArtwork(Landroid/graphics/Bitmap;)V

    .line 43
    :cond_2a
    return-void
.end method

.method public onButtonDoubleClick(Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onButtonDown(Ljava/lang/String;)Z
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->sendMediaKeyEvent(ILjava/lang/String;)Z

    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public onButtonLongClick(Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onButtonUp(Ljava/lang/String;)Z
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->sendMediaKeyEvent(ILjava/lang/String;)Z

    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_9

    .line 8
    const/4 p1, 0x0

    .line 9
    return p1

    .line 10
    :cond_9
    const-string v1, "music_prev"

    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_19

    .line 18
    const-string v1, "music_next"

    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_29

    .line 26
    :cond_19
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->cancelSetDefaultArtwork()V

    .line 29
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 36
    move-result-object p1

    .line 37
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    .line 39
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 42
    :cond_29
    return v0
.end method

.method public onVisibilityChange(Z)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->onVisibilityChange(Z)V

    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_1a

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 10
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;

    .line 12
    if-eqz p1, :cond_25

    .line 14
    iget-boolean v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlaying:Z

    .line 16
    if-eqz v1, :cond_16

    .line 18
    iget-boolean v1, p0, Lcom/miui/maml/elements/ScreenElement;->mResumed:Z

    .line 20
    if-eqz v1, :cond_16

    .line 22
    const/4 v0, 0x1

    .line 23
    :cond_16
    invoke-virtual {p1, v0}, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->enableUpdate(Z)V

    .line 26
    goto :goto_25

    .line 27
    :cond_1a
    const/4 p1, 0x0

    .line 28
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->requestFramerate(F)V

    .line 31
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;

    .line 33
    if-eqz p1, :cond_25

    .line 35
    invoke-virtual {p1, v0}, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->enableUpdate(Z)V

    .line 38
    :cond_25
    :goto_25
    return-void
.end method

.method public pause()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->pause()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;

    .line 6
    if-eqz v0, :cond_b

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->enableUpdate(Z)V

    .line 12
    :cond_b
    return-void
.end method

.method public ratingHeart()V
    .registers 4

    .line 1
    iget v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingStyle:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_1d

    .line 6
    iget v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    .line 8
    const/high16 v2, 0x3f800000  # 1.0f

    .line 10
    cmpl-float v0, v0, v2

    .line 12
    if-nez v0, :cond_f

    .line 14
    move v0, v1

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    :goto_10
    xor-int/2addr v0, v1

    .line 18
    invoke-static {v0}, Landroid/media/Rating;->newHeartRating(Z)Landroid/media/Rating;

    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicController:Lcom/miui/maml/elements/MusicController;

    .line 24
    invoke-virtual {v1, v0}, Lcom/miui/maml/elements/MusicController;->rating(Landroid/media/Rating;)V

    .line 27
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->updateUserRating(Landroid/media/Rating;)V

    .line 30
    :cond_1d
    return-void
.end method

.method public readPackageName()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlayerPackageVar:Lcom/miui/maml/data/IndexedVariable;

    .line 3
    if-eqz v0, :cond_51

    .line 5
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlayerClassVar:Lcom/miui/maml/data/IndexedVariable;

    .line 7
    if-nez v0, :cond_9

    .line 9
    goto :goto_51

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicController:Lcom/miui/maml/elements/MusicController;

    .line 12
    invoke-virtual {v0}, Lcom/miui/maml/elements/MusicController;->getClientPackageName()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "readPackage: "

    .line 18
    const-string v2, "MusicControlScreenE"

    .line 20
    invoke-static {v1, v0, v2}, La/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    if-eqz v0, :cond_51

    .line 25
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 27
    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 30
    move-result-object v1

    .line 31
    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 33
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_41

    .line 43
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 46
    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlayerPackageVar:Lcom/miui/maml/data/IndexedVariable;

    .line 49
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 56
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlayerClassVar:Lcom/miui/maml/data/IndexedVariable;

    .line 58
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v1, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 65
    goto :goto_51

    .line 66
    :cond_41
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlayerPackageVar:Lcom/miui/maml/data/IndexedVariable;

    .line 68
    invoke-virtual {v1, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlayerClassVar:Lcom/miui/maml/data/IndexedVariable;

    .line 73
    const/4 v1, 0x0

    .line 74
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 77
    const-string v0, "set player info fail."

    .line 79
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_51
    :goto_51
    return-void
.end method

.method public resume()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->resume()V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 7
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;

    .line 9
    if-eqz v0, :cond_f

    .line 11
    iget-boolean v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlaying:Z

    .line 13
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->enableUpdate(Z)V

    .line 16
    :cond_f
    return-void
.end method

.method public seekTo(D)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDurationVar:Lcom/miui/maml/data/IndexedVariable;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->getDouble()D

    .line 6
    move-result-wide v0

    .line 7
    mul-double/2addr v0, p1

    .line 8
    double-to-long p1, v0

    .line 9
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicController:Lcom/miui/maml/elements/MusicController;

    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/MusicController;->seekTo(J)Z

    .line 14
    return-void
.end method
