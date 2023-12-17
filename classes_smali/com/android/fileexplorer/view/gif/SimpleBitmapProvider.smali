.class final Lcom/android/fileexplorer/view/gif/SimpleBitmapProvider;
.super Ljava/lang/Object;
.source "SimpleBitmapProvider.java"

# interfaces
.implements Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public obtain(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 4

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public obtainByteArray(I)[B
    .registers 2

    new-array p1, p1, [B

    return-object p1
.end method

.method public obtainIntArray(I)[I
    .registers 2

    new-array p1, p1, [I

    return-object p1
.end method

.method public release(Landroid/graphics/Bitmap;)V
    .registers 2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public release([B)V
    .registers 2

    return-void
.end method

.method public release([I)V
    .registers 2

    return-void
.end method
