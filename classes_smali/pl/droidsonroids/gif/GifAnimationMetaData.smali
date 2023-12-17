.class public Lpl/droidsonroids/gif/GifAnimationMetaData;
.super Ljava/lang/Object;
.source "GifAnimationMetaData.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lpl/droidsonroids/gif/GifAnimationMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x4eff56d4f010140dL


# instance fields
.field private final mDuration:I

.field private final mHeight:I

.field private final mImageCount:I

.field private final mLoopCount:I

.field private final mMetadataBytesCount:J

.field private final mPixelsBytesCount:J

.field private final mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lpl/droidsonroids/gif/GifAnimationMetaData$a;

    .line 3
    invoke-direct {v0}, Lpl/droidsonroids/gif/GifAnimationMetaData$a;-><init>()V

    .line 6
    sput-object v0, Lpl/droidsonroids/gif/GifAnimationMetaData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 5

    .line 10
    sget v0, Lpl/droidsonroids/gif/GifInfoHandle;->b:I

    .line 11
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 12
    new-instance p1, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>(Ljava/lang/String;)V

    goto :goto_26

    :cond_18
    const-string v0, "r"

    .line 13
    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 14
    new-instance p2, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-direct {p2, p1}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    move-object p1, p2

    .line 15
    :goto_26
    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifAnimationMetaData;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;)V

    return-void

    .line 16
    :cond_2a
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Could not open AssetFileDescriptor for "

    .line 17
    invoke-static {v0, p2}, La/a;->i(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    .line 18
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/res/AssetFileDescriptor;)V
    .registers 3

    .line 6
    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/GifAnimationMetaData;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifAnimationMetaData;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .registers 3

    .line 1
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifAnimationMetaData;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Lpl/droidsonroids/gif/GifAnimationMetaData$a;)V
    .registers 5

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mLoopCount:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mDuration:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mHeight:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mWidth:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mImageCount:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mMetadataBytesCount:J

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    iput-wide p1, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mPixelsBytesCount:J

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 2

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifAnimationMetaData;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .registers 3

    .line 7
    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/GifAnimationMetaData;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    .line 5
    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/GifAnimationMetaData;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 3
    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/GifAnimationMetaData;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 9
    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/GifAnimationMetaData;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;)V

    return-void
.end method

.method public constructor <init>(Lpl/droidsonroids/gif/GifInfoHandle;)V
    .registers 4

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->g()I

    move-result v0

    iput v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mLoopCount:I

    .line 26
    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->e()I

    move-result v0

    iput v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mDuration:I

    .line 27
    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->k()I

    move-result v0

    iput v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mWidth:I

    .line 28
    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->f()I

    move-result v0

    iput v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mHeight:I

    .line 29
    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->j()I

    move-result v0

    iput v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mImageCount:I

    .line 30
    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->h()J

    move-result-wide v0

    iput-wide v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mMetadataBytesCount:J

    .line 31
    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mPixelsBytesCount:J

    .line 32
    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->n()V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    .line 8
    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>([B)V

    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/GifAnimationMetaData;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAllocationByteCount()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mPixelsBytesCount:J

    .line 3
    return-wide v0
.end method

.method public getDrawableAllocationByteCount(Lpl/droidsonroids/gif/GifDrawable;I)J
    .registers 7

    .line 1
    const v0, 0xffff

    .line 4
    const/4 v1, 0x1

    .line 5
    if-lt p2, v1, :cond_29

    .line 7
    if-gt p2, v0, :cond_29

    .line 9
    mul-int/2addr p2, p2

    .line 10
    if-eqz p1, :cond_1a

    .line 12
    iget-object v0, p1, Lpl/droidsonroids/gif/GifDrawable;->f:Landroid/graphics/Bitmap;

    .line 14
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1a

    .line 20
    iget-object p1, p1, Lpl/droidsonroids/gif/GifDrawable;->f:Landroid/graphics/Bitmap;

    .line 22
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    .line 25
    move-result p1

    .line 26
    goto :goto_22

    .line 27
    :cond_1a
    iget p1, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mWidth:I

    .line 29
    iget v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mHeight:I

    .line 31
    mul-int/2addr p1, v0

    .line 32
    mul-int/lit8 p1, p1, 0x4

    .line 34
    div-int/2addr p1, p2

    .line 35
    :goto_22
    int-to-long v0, p1

    .line 36
    iget-wide v2, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mPixelsBytesCount:J

    .line 38
    int-to-long p1, p2

    .line 39
    div-long/2addr v2, p1

    .line 40
    add-long/2addr v2, v0

    .line 41
    return-wide v2

    .line 42
    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    const-string v2, "Sample size "

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    const-string p2, " out of range <1, "

    .line 59
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    const-string p2, ">"

    .line 67
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p2

    .line 74
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    throw p1
.end method

.method public getDuration()I
    .registers 2

    .line 1
    iget v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mDuration:I

    .line 3
    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mHeight:I

    .line 3
    return v0
.end method

.method public getLoopCount()I
    .registers 2

    .line 1
    iget v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mLoopCount:I

    .line 3
    return v0
.end method

.method public getMetadataAllocationByteCount()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mMetadataBytesCount:J

    .line 3
    return-wide v0
.end method

.method public getNumberOfFrames()I
    .registers 2

    .line 1
    iget v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mImageCount:I

    .line 3
    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mWidth:I

    .line 3
    return v0
.end method

.method public isAnimated()Z
    .registers 3

    .line 1
    iget v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mImageCount:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-le v0, v1, :cond_a

    .line 6
    iget v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mDuration:I

    .line 8
    if-lez v0, :cond_a

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v1, 0x0

    .line 12
    :goto_b
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    iget v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mLoopCount:I

    .line 3
    if-nez v0, :cond_7

    .line 5
    const-string v0, "Infinity"

    .line 7
    goto :goto_b

    .line 8
    :cond_7
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    :goto_b
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 14
    const/4 v2, 0x5

    .line 15
    new-array v2, v2, [Ljava/lang/Object;

    .line 17
    const/4 v3, 0x0

    .line 18
    iget v4, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mWidth:I

    .line 20
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v4

    .line 24
    aput-object v4, v2, v3

    .line 26
    const/4 v3, 0x1

    .line 27
    iget v4, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mHeight:I

    .line 29
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v4

    .line 33
    aput-object v4, v2, v3

    .line 35
    const/4 v3, 0x2

    .line 36
    iget v4, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mImageCount:I

    .line 38
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v4

    .line 42
    aput-object v4, v2, v3

    .line 44
    const/4 v3, 0x3

    .line 45
    aput-object v0, v2, v3

    .line 47
    const/4 v0, 0x4

    .line 48
    iget v3, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mDuration:I

    .line 50
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v3

    .line 54
    aput-object v3, v2, v0

    .line 56
    const-string v0, "GIF: size: %dx%d, frames: %d, loops: %s, duration: %d"

    .line 58
    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifAnimationMetaData;->isAnimated()Z

    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_49

    .line 68
    const-string v1, "Animated "

    .line 70
    invoke-static {v1, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    :cond_49
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 1
    iget p2, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mLoopCount:I

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mDuration:I

    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget p2, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mHeight:I

    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    iget p2, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mWidth:I

    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    iget p2, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mImageCount:I

    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mMetadataBytesCount:J

    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 31
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mPixelsBytesCount:J

    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 36
    return-void
.end method
