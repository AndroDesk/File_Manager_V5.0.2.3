.class public Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;
.super Ljava/lang/Object;
.source "DecodeGifImageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/graphics/gif/DecodeGifImageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GifDecodeResult"
.end annotation


# instance fields
.field public mGifDecoder:Lmiuix/graphics/gif/GifDecoder;

.field public mIsDecodeOk:Z


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
