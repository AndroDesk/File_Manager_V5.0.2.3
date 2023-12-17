.class public Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;
.super Ljava/lang/Object;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VersionedBitmap"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mVersion:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 6
    return-void
.end method

.method public static synthetic access$002(Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 3
    return-object p1
.end method

.method public static equals(Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;)Z
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_13

    .line 4
    if-nez p1, :cond_6

    .line 6
    goto :goto_13

    .line 7
    :cond_6
    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 9
    iget-object v2, p1, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 11
    if-ne v1, v2, :cond_13

    .line 13
    iget p0, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    .line 15
    iget p1, p1, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    .line 17
    if-ne p0, p1, :cond_13

    .line 19
    const/4 v0, 0x1

    .line 20
    :cond_13
    :goto_13
    return v0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 3
    return-object v0
.end method

.method public reset()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    .line 7
    return-void
.end method

.method public set(Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_b

    .line 3
    iget-object v0, p1, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 5
    iput-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 7
    iget p1, p1, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    .line 9
    iput p1, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    .line 11
    goto :goto_e

    .line 12
    :cond_b
    invoke-virtual {p0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    .line 15
    :goto_e
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq p1, v0, :cond_c

    .line 6
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 8
    iget v0, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    .line 10
    add-int/2addr v0, v1

    .line 11
    iput v0, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    .line 13
    :cond_c
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 15
    if-eq p1, v0, :cond_11

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    const/4 v1, 0x0

    .line 19
    :goto_12
    return v1
.end method

.method public updateVersion()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 5
    iput v1, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    .line 7
    return v0
.end method
