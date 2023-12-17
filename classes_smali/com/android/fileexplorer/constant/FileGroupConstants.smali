.class public Lcom/android/fileexplorer/constant/FileGroupConstants;
.super Ljava/lang/Object;
.source "FileGroupConstants.java"


# static fields
.field public static final MIRROR_SPAN_COUNT:I

.field public static final SPAN_COUNT:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d86

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/constant/FileGroupConstants;->MIRROR_SPAN_COUNT:I

    const v0, 0x92d9a

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/constant/FileGroupConstants;->SPAN_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
