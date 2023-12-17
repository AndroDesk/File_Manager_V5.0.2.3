.class public Lcom/miui/maml/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;,
        Lcom/miui/maml/ResourceManager$AsyncLoadListener;,
        Lcom/miui/maml/ResourceManager$BitmapInfo;
    }
.end annotation


# static fields
.field private static final DEF_CACHE_SIZE:I = 0x10000000

.field private static final DENSITY_HIGH_R:I = 0xf0

.field private static final DENSITY_XHIGH_R:I = 0x168

.field private static final DENSITY_XXHIGH_R:I = 0x21c

.field private static final DENSITY_XXXHIGH:I = 0x280

.field private static final DENSITY_XXXHIGH_R:I = 0x2d0

.field private static final LOG_TAG:Ljava/lang/String; = "ResourceManager"

.field private static final RESOURCE_FALLBACK_DENSITY:I = 0x1e0

.field private static final RESOURCE_FALLBACK_EXTRA_FOLDER:Ljava/lang/String; = "den480/"

.field public static sBitmapsCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/miui/maml/ResourceManager$BitmapInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;

.field private static volatile sRef:I

.field private static sWeakRefBitmapsCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/ResourceManager$BitmapInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public mBitmapKeys:Landroidx/collection/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mBitmapKeysLock:Ljava/lang/Object;

.field private mDefaultResourceDensity:I

.field private mExtraResourceDensity:I

.field private mExtraResourceFolder:Ljava/lang/String;

.field private final mLoadingBitmaps:Landroidx/collection/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResourceLoader:Lcom/miui/maml/ResourceLoader;

.field private mTargetDensity:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/miui/maml/ResourceManager;->sLock:Ljava/lang/Object;

    .line 8
    new-instance v0, Lcom/miui/maml/ResourceManager$1;

    .line 10
    const/high16 v1, 0x10000000

    .line 12
    invoke-direct {v0, v1}, Lcom/miui/maml/ResourceManager$1;-><init>(I)V

    .line 15
    sput-object v0, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 22
    sput-object v0, Lcom/miui/maml/ResourceManager;->sWeakRefBitmapsCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/ResourceLoader;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeysLock:Ljava/lang/Object;

    .line 11
    new-instance v0, Landroidx/collection/b;

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Landroidx/collection/b;-><init>(I)V

    .line 17
    iput-object v0, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeys:Landroidx/collection/b;

    .line 19
    new-instance v0, Landroidx/collection/b;

    .line 21
    invoke-direct {v0, v1}, Landroidx/collection/b;-><init>(I)V

    .line 24
    iput-object v0, p0, Lcom/miui/maml/ResourceManager;->mLoadingBitmaps:Landroidx/collection/b;

    .line 26
    sget-object v0, Lcom/miui/maml/ResourceManager;->sLock:Ljava/lang/Object;

    .line 28
    monitor-enter v0

    .line 29
    :try_start_1c
    sget v1, Lcom/miui/maml/ResourceManager;->sRef:I

    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 33
    sput v1, Lcom/miui/maml/ResourceManager;->sRef:I

    .line 35
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_26

    .line 36
    iput-object p1, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    .line 38
    return-void

    .line 39
    :catchall_26
    move-exception p1

    .line 40
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    .line 41
    throw p1
.end method

.method public static synthetic access$000(Lcom/miui/maml/ResourceManager;Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/ResourceManager;->loadBitmap(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$100(Lcom/miui/maml/ResourceManager;)Landroidx/collection/b;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ResourceManager;->mLoadingBitmaps:Landroidx/collection/b;

    .line 3
    return-object p0
.end method

.method public static clear()V
    .registers 1

    .line 1
    sget-object v0, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 2
    sget-object v0, Lcom/miui/maml/ResourceManager;->sWeakRefBitmapsCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method private getCache(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    .line 8
    invoke-virtual {v1}, Lcom/miui/maml/ResourceLoader;->getID()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    sget-object v0, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    .line 24
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/miui/maml/ResourceManager$BitmapInfo;

    .line 30
    sget-object v1, Lcom/miui/maml/ResourceManager;->sWeakRefBitmapsCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 38
    if-eqz v0, :cond_40

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 43
    move-result-wide v2

    .line 44
    iput-wide v2, v0, Lcom/miui/maml/ResourceManager$BitmapInfo;->mLastVisitTime:J

    .line 46
    if-eqz v1, :cond_35

    .line 48
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 51
    move-result-object v1

    .line 52
    if-nez v1, :cond_67

    .line 54
    :cond_35
    sget-object v1, Lcom/miui/maml/ResourceManager;->sWeakRefBitmapsCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 58
    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    goto :goto_67

    .line 65
    :cond_40
    if-eqz v1, :cond_67

    .line 67
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lcom/miui/maml/ResourceManager$BitmapInfo;

    .line 73
    if-eqz v0, :cond_62

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 78
    move-result-wide v1

    .line 79
    iput-wide v1, v0, Lcom/miui/maml/ResourceManager$BitmapInfo;->mLastVisitTime:J

    .line 81
    iget-object v1, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeysLock:Ljava/lang/Object;

    .line 83
    monitor-enter v1

    .line 84
    :try_start_53
    iget-object v2, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeys:Landroidx/collection/b;

    .line 86
    invoke-virtual {v2, p1}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z

    .line 89
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_53 .. :try_end_59} :catchall_5f

    .line 90
    sget-object v1, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    .line 92
    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    goto :goto_67

    .line 96
    :catchall_5f
    move-exception p1

    .line 97
    :try_start_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    .line 98
    throw p1

    .line 99
    :cond_62
    sget-object v1, Lcom/miui/maml/ResourceManager;->sWeakRefBitmapsCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 101
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_67
    :goto_67
    return-object v0
.end method

.method private loadBitmap(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;
    .registers 7

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 3
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 9
    iget v2, p0, Lcom/miui/maml/ResourceManager;->mTargetDensity:I

    .line 11
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 13
    iget-object v2, p0, Lcom/miui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    .line 15
    if-eqz v2, :cond_51

    .line 17
    const-string v2, "ResourceManager"

    .line 19
    const-string v3, "try to load resource from extra resource: "

    .line 21
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    move-result-object v3

    .line 25
    iget-object v4, p0, Lcom/miui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const-string v4, " of "

    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v3

    .line 42
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget v2, p0, Lcom/miui/maml/ResourceManager;->mExtraResourceDensity:I

    .line 47
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 49
    iget-object v2, p0, Lcom/miui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    .line 51
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_3a

    .line 57
    move-object v2, p1

    .line 58
    goto :goto_47

    .line 59
    :cond_3a
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    iget-object v3, p0, Lcom/miui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    .line 66
    const-string v4, "/"

    .line 68
    invoke-static {v2, v3, v4, p1}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 72
    :goto_47
    iget-object v3, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    .line 74
    invoke-virtual {v3, v2, v0}, Lcom/miui/maml/ResourceLoader;->getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    .line 77
    move-result-object v2

    .line 78
    if-eqz v2, :cond_52

    .line 80
    const/4 v1, 0x0

    .line 81
    goto :goto_52

    .line 82
    :cond_51
    const/4 v2, 0x0

    .line 83
    :cond_52
    :goto_52
    if-nez v2, :cond_5e

    .line 85
    iget v2, p0, Lcom/miui/maml/ResourceManager;->mDefaultResourceDensity:I

    .line 87
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 89
    iget-object v2, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    .line 91
    invoke-virtual {v2, p1, v0}, Lcom/miui/maml/ResourceLoader;->getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    .line 94
    move-result-object v2

    .line 95
    :cond_5e
    if-nez v2, :cond_70

    .line 97
    const/16 v2, 0x1e0

    .line 99
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 101
    const-string v2, "den480/"

    .line 103
    invoke-static {v2, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    move-result-object v2

    .line 107
    iget-object v3, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    .line 109
    invoke-virtual {v3, v2, v0}, Lcom/miui/maml/ResourceLoader;->getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    .line 112
    move-result-object v2

    .line 113
    :cond_70
    if-eqz v2, :cond_d6

    .line 115
    if-nez v1, :cond_90

    .line 117
    const-string v0, "ResourceManager"

    .line 119
    const-string v1, "load image from extra resource: "

    .line 121
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    move-result-object v1

    .line 125
    iget-object v3, p0, Lcom/miui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    .line 127
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v3, " of "

    .line 132
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object v1

    .line 142
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_90
    new-instance v0, Ljava/lang/StringBuilder;

    .line 147
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    iget-object v1, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    .line 152
    invoke-virtual {v1}, Lcom/miui/maml/ResourceLoader;->getID()Ljava/lang/String;

    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    move-result-object p1

    .line 166
    iput-object p1, v2, Lcom/miui/maml/ResourceManager$BitmapInfo;->mKey:Ljava/lang/String;

    .line 168
    iget-object p1, v2, Lcom/miui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 170
    iget v0, p0, Lcom/miui/maml/ResourceManager;->mTargetDensity:I

    .line 172
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 178
    move-result-wide v0

    .line 179
    iput-wide v0, v2, Lcom/miui/maml/ResourceManager$BitmapInfo;->mLastVisitTime:J

    .line 181
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeysLock:Ljava/lang/Object;

    .line 183
    monitor-enter v0

    .line 184
    :try_start_b7
    iget-object p1, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeys:Landroidx/collection/b;

    .line 186
    iget-object v1, v2, Lcom/miui/maml/ResourceManager$BitmapInfo;->mKey:Ljava/lang/String;

    .line 188
    invoke-virtual {p1, v1}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z

    .line 191
    monitor-exit v0
    :try_end_bf
    .catchall {:try_start_b7 .. :try_end_bf} :catchall_d3

    .line 192
    sget-object p1, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    .line 194
    iget-object v0, v2, Lcom/miui/maml/ResourceManager$BitmapInfo;->mKey:Ljava/lang/String;

    .line 196
    invoke-virtual {p1, v0, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object p1, Lcom/miui/maml/ResourceManager;->sWeakRefBitmapsCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 201
    iget-object v0, v2, Lcom/miui/maml/ResourceManager$BitmapInfo;->mKey:Ljava/lang/String;

    .line 203
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 205
    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 208
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    goto :goto_ec

    .line 212
    :catchall_d3
    move-exception p1

    .line 213
    :try_start_d4
    monitor-exit v0
    :try_end_d5
    .catchall {:try_start_d4 .. :try_end_d5} :catchall_d3

    .line 214
    throw p1

    .line 215
    :cond_d6
    const-string v0, "ResourceManager"

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    .line 219
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    const-string v3, "fail to load image: "

    .line 224
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    move-result-object p1

    .line 234
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :goto_ec
    return-object v2
.end method

.method public static retranslateDensity(I)I
    .registers 7

    const/16 v0, 0x168

    const/16 v1, 0xf0

    if-le p0, v1, :cond_13

    if-gt p0, v0, :cond_13

    const-wide v2, 0x3fe5555555555555L  # 0.6666666666666666

    sub-int/2addr p0, v1

    int-to-double v4, p0

    mul-double/2addr v4, v2

    double-to-int p0, v4

    add-int/2addr p0, v1

    return p0

    :cond_13
    const-wide v1, 0x3fec71c71c71c71cL  # 0.8888888888888888

    const/16 v3, 0x21c

    if-le p0, v0, :cond_25

    if-gt p0, v3, :cond_25

    sub-int/2addr p0, v0

    int-to-double v3, p0

    mul-double/2addr v3, v1

    double-to-int p0, v3

    add-int/lit16 p0, p0, 0x140

    return p0

    :cond_25
    if-le p0, v3, :cond_31

    const/16 v0, 0x2d0

    if-gt p0, v0, :cond_31

    sub-int/2addr p0, v3

    int-to-double v3, p0

    mul-double/2addr v3, v1

    double-to-int p0, v3

    add-int/lit16 p0, p0, 0x1e0

    :cond_31
    return p0
.end method

.method public static translateDensity(I)I
    .registers 7

    const/16 v0, 0x140

    const/16 v1, 0xf0

    if-le p0, v1, :cond_10

    if-gt p0, v0, :cond_10

    const-wide/high16 v2, 0x3ff8000000000000L  # 1.5

    sub-int/2addr p0, v1

    int-to-double v4, p0

    mul-double/2addr v4, v2

    double-to-int p0, v4

    add-int/2addr p0, v1

    return p0

    :cond_10
    const-wide/high16 v1, 0x3ff2000000000000L  # 1.125

    const/16 v3, 0x1e0

    if-le p0, v0, :cond_1f

    if-gt p0, v3, :cond_1f

    sub-int/2addr p0, v0

    int-to-double v3, p0

    mul-double/2addr v3, v1

    double-to-int p0, v3

    add-int/lit16 p0, p0, 0x168

    return p0

    :cond_1f
    if-le p0, v3, :cond_2b

    const/16 v0, 0x280

    if-gt p0, v0, :cond_2b

    sub-int/2addr p0, v3

    int-to-double v3, p0

    mul-double/2addr v3, v1

    double-to-int p0, v3

    add-int/lit16 p0, p0, 0x21c

    :cond_2b
    return p0
.end method


# virtual methods
.method public clear(Ljava/lang/String;)V
    .registers 4

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {v1}, Lcom/miui/maml/ResourceLoader;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    sget-object v0, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeysLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_1d
    iget-object v1, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeys:Landroidx/collection/b;

    invoke-virtual {v1, p1}, Landroidx/collection/b;->remove(Ljava/lang/Object;)Z

    .line 7
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_24

    throw p1
.end method

.method public clearByKeys()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeysLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeys:Landroidx/collection/b;

    .line 6
    iget v1, v1, Landroidx/collection/b;->c:I

    .line 8
    :goto_7
    add-int/lit8 v1, v1, -0x1

    .line 10
    if-ltz v1, :cond_23

    .line 12
    iget-object v2, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeys:Landroidx/collection/b;

    .line 14
    iget-object v2, v2, Landroidx/collection/b;->b:[Ljava/lang/Object;

    .line 16
    aget-object v2, v2, v1

    .line 18
    check-cast v2, Ljava/lang/String;

    .line 20
    sget-object v3, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    .line 22
    invoke-virtual {v3, v2}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v3, Lcom/miui/maml/ResourceManager;->sWeakRefBitmapsCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v2, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeys:Landroidx/collection/b;

    .line 32
    invoke-virtual {v2, v1}, Landroidx/collection/b;->e(I)V

    .line 35
    goto :goto_7

    .line 36
    :cond_23
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :catchall_25
    move-exception v1

    .line 39
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    .line 40
    throw v1
.end method

.method public finalize()V
    .registers 4

    .line 1
    sget-object v0, Lcom/miui/maml/ResourceManager;->sLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget v1, Lcom/miui/maml/ResourceManager;->sRef:I

    .line 6
    const/4 v2, 0x1

    .line 7
    sub-int/2addr v1, v2

    .line 8
    sput v1, Lcom/miui/maml/ResourceManager;->sRef:I

    .line 10
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_17

    .line 11
    sget v0, Lcom/miui/maml/ResourceManager;->sRef:I

    .line 13
    if-lez v0, :cond_f

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 v2, 0x0

    .line 17
    :goto_10
    invoke-virtual {p0, v2}, Lcom/miui/maml/ResourceManager;->finish(Z)V

    .line 20
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 23
    return-void

    .line 24
    :catchall_17
    move-exception v1

    .line 25
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    .line 26
    throw v1
.end method

.method public finish(Z)V
    .registers 3

    .line 1
    if-nez p1, :cond_19

    .line 3
    sget-object p1, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    .line 5
    invoke-virtual {p1}, Landroid/util/LruCache;->evictAll()V

    .line 8
    iget-object p1, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeysLock:Ljava/lang/Object;

    .line 10
    monitor-enter p1

    .line 11
    :try_start_a
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeys:Landroidx/collection/b;

    .line 13
    invoke-virtual {v0}, Landroidx/collection/b;->clear()V

    .line 16
    monitor-exit p1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_16

    .line 17
    sget-object p1, Lcom/miui/maml/ResourceManager;->sWeakRefBitmapsCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 22
    goto :goto_19

    .line 23
    :catchall_16
    move-exception v0

    .line 24
    :try_start_17
    monitor-exit p1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    .line 25
    throw v0

    .line 26
    :cond_19
    :goto_19
    iget-object p1, p0, Lcom/miui/maml/ResourceManager;->mLoadingBitmaps:Landroidx/collection/b;

    .line 28
    monitor-enter p1

    .line 29
    :try_start_1c
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mLoadingBitmaps:Landroidx/collection/b;

    .line 31
    invoke-virtual {v0}, Landroidx/collection/b;->clear()V

    .line 34
    monitor-exit p1
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_28

    .line 35
    iget-object p1, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    .line 37
    invoke-virtual {p1}, Lcom/miui/maml/ResourceLoader;->finish()V

    .line 40
    return-void

    .line 41
    :catchall_28
    move-exception v0

    .line 42
    :try_start_29
    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    .line 43
    throw v0
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/maml/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_9

    .line 7
    iget-object p1, p1, Lcom/miui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    :goto_a
    return-object p1
.end method

.method public getBitmapInfo(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;
    .registers 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_8
    invoke-direct {p0, p1}, Lcom/miui/maml/ResourceManager;->getCache(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_f

    .line 15
    return-object v0

    .line 16
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    const-string v1, "load image "

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    const-string v1, "ResourceManager"

    .line 35
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-direct {p0, p1}, Lcom/miui/maml/ResourceManager;->loadBitmap(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    .line 41
    move-result-object p1

    .line 42
    return-object p1
.end method

.method public getBitmapInfoAsync(Ljava/lang/String;Lcom/miui/maml/ResourceManager$AsyncLoadListener;)Lcom/miui/maml/ResourceManager$BitmapInfo;
    .registers 8

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_8
    invoke-direct {p0, p1}, Lcom/miui/maml/ResourceManager;->getCache(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_f

    .line 15
    return-object v0

    .line 16
    :cond_f
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mLoadingBitmaps:Landroidx/collection/b;

    .line 18
    monitor-enter v0

    .line 19
    :try_start_12
    iget-object v1, p0, Lcom/miui/maml/ResourceManager;->mLoadingBitmaps:Landroidx/collection/b;

    .line 21
    invoke-virtual {v1, p1}, Landroidx/collection/b;->contains(Ljava/lang/Object;)Z

    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x1

    .line 26
    if-nez v1, :cond_4d

    .line 28
    invoke-direct {p0, p1}, Lcom/miui/maml/ResourceManager;->getCache(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_23

    .line 34
    monitor-exit v0

    .line 35
    return-object v1

    .line 36
    :cond_23
    iget-object v1, p0, Lcom/miui/maml/ResourceManager;->mLoadingBitmaps:Landroidx/collection/b;

    .line 38
    invoke-virtual {v1, p1}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z

    .line 41
    const-string v1, "ResourceManager"

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    const-string v4, "load image async: "

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v3

    .line 60
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v1, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;

    .line 65
    invoke-direct {v1, p0, p2}, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;-><init>(Lcom/miui/maml/ResourceManager;Lcom/miui/maml/ResourceManager$AsyncLoadListener;)V

    .line 68
    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 70
    new-array v3, v2, [Ljava/lang/String;

    .line 72
    const/4 v4, 0x0

    .line 73
    aput-object p1, v3, v4

    .line 75
    invoke-virtual {v1, p2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 78
    :cond_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_12 .. :try_end_4e} :catchall_56

    .line 79
    new-instance p1, Lcom/miui/maml/ResourceManager$BitmapInfo;

    .line 81
    invoke-direct {p1}, Lcom/miui/maml/ResourceManager$BitmapInfo;-><init>()V

    .line 84
    iput-boolean v2, p1, Lcom/miui/maml/ResourceManager$BitmapInfo;->mLoading:Z

    .line 86
    return-object p1

    .line 87
    :catchall_56
    move-exception p1

    .line 88
    :try_start_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    .line 89
    throw p1
.end method

.method public getConfigRoot()Lorg/w3c/dom/Element;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/ResourceLoader;->getConfigRoot()Lorg/w3c/dom/Element;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 11

    .line 1
    invoke-virtual {p0, p2}, Lcom/miui/maml/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2e

    .line 7
    iget-object v3, v0, Lcom/miui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 9
    if-nez v3, :cond_b

    .line 11
    goto :goto_2e

    .line 12
    :cond_b
    iget-object v1, v0, Lcom/miui/maml/ResourceManager$BitmapInfo;->mNinePatch:Landroid/graphics/NinePatch;

    .line 14
    if-eqz v1, :cond_23

    .line 16
    new-instance v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 18
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    .line 21
    move-result-object v4

    .line 22
    iget-object v5, v0, Lcom/miui/maml/ResourceManager$BitmapInfo;->mPadding:Landroid/graphics/Rect;

    .line 24
    move-object v1, v7

    .line 25
    move-object v2, p1

    .line 26
    move-object v6, p2

    .line 27
    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 30
    iget p1, p0, Lcom/miui/maml/ResourceManager;->mTargetDensity:I

    .line 32
    invoke-virtual {v7, p1}, Landroid/graphics/drawable/NinePatchDrawable;->setTargetDensity(I)V

    .line 35
    return-object v7

    .line 36
    :cond_23
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    .line 38
    invoke-direct {p2, p1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 41
    iget p1, p0, Lcom/miui/maml/ResourceManager;->mTargetDensity:I

    .line 43
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    .line 46
    return-object p2

    .line 47
    :cond_2e
    :goto_2e
    const/4 p1, 0x0

    .line 48
    return-object p1
.end method

.method public getFile(Ljava/lang/String;)Landroid/os/MemoryFile;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    .line 3
    invoke-virtual {v0, p1}, Lcom/miui/maml/ResourceLoader;->getFile(Ljava/lang/String;)Landroid/os/MemoryFile;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {v0, p1}, Lcom/miui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public final getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public getManifestRoot()Lorg/w3c/dom/Element;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/ResourceLoader;->getManifestRoot()Lorg/w3c/dom/Element;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getNinePatch(Ljava/lang/String;)Landroid/graphics/NinePatch;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/maml/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_9

    .line 7
    iget-object p1, p1, Lcom/miui/maml/ResourceManager$BitmapInfo;->mNinePatch:Landroid/graphics/NinePatch;

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    :goto_a
    return-object p1
.end method

.method public getPathForLanguage(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    .line 3
    invoke-virtual {v0, p1}, Lcom/miui/maml/ResourceLoader;->getPathForLanguage(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public init()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/ResourceLoader;->init()V

    .line 6
    return-void
.end method

.method public pause()V
    .registers 1

    return-void
.end method

.method public final resourceExists(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    .line 3
    invoke-virtual {v0, p1}, Lcom/miui/maml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public resume()V
    .registers 1

    return-void
.end method

.method public setCacheSize(I)V
    .registers 3

    .line 1
    sget-object v0, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->resize(I)V

    .line 6
    return-void
.end method

.method public setDefaultResourceDensity(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/miui/maml/ResourceManager;->mDefaultResourceDensity:I

    .line 3
    return-void
.end method

.method public setExtraResource(Ljava/lang/String;)V
    .registers 2

    .line 3
    iput-object p1, p0, Lcom/miui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    return-void
.end method

.method public setExtraResource(Ljava/lang/String;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/miui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    .line 2
    iput p2, p0, Lcom/miui/maml/ResourceManager;->mExtraResourceDensity:I

    return-void
.end method

.method public setExtraResourceDensity(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/miui/maml/ResourceManager;->mExtraResourceDensity:I

    .line 3
    return-void
.end method

.method public setLocal(Ljava/util/Locale;)V
    .registers 3

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    .line 6
    invoke-virtual {v0}, Lcom/miui/maml/ResourceLoader;->getLocale()Ljava/util/Locale;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_18

    .line 16
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    .line 18
    invoke-virtual {v0, p1}, Lcom/miui/maml/ResourceLoader;->setLocal(Ljava/util/Locale;)Lcom/miui/maml/ResourceLoader;

    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1}, Lcom/miui/maml/ResourceManager;->finish(Z)V

    .line 25
    :cond_18
    return-void
.end method

.method public setTargetDensity(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/miui/maml/ResourceManager;->mTargetDensity:I

    .line 3
    return-void
.end method
