.class public Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;
.super Ljava/lang/Object;
.source "DecodeGifImageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/graphics/gif/DecodeGifImageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GifFrame"
.end annotation


# instance fields
.field public mDuration:I

.field public mImage:Landroid/graphics/Bitmap;

.field public mIndex:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;->mImage:Landroid/graphics/Bitmap;

    .line 6
    iput p2, p0, Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;->mDuration:I

    .line 8
    iput p3, p0, Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;->mIndex:I

    .line 10
    return-void
.end method
