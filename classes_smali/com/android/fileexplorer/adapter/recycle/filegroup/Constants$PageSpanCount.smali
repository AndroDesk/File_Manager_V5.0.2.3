.class public Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$PageSpanCount;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageSpanCount"
.end annotation


# static fields
.field public static final CATEGORY_DEFAULT_SPAN_COUNT:I

.field public static final HOME_FILE_SPAN_COUNT:I

.field public static final LANDSCAPE_COMMON_SPAN_COUNT:I

.field public static final PAD_LANDSCAPE_COMMON_SPAN_COUNT:I

.field public static final PAD_LANDSCAPE_PICTURE_SPAN_COUNT:I

.field public static final RECENT_SPAN_COUNT:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$PageSpanCount;->CATEGORY_DEFAULT_SPAN_COUNT:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$PageSpanCount;->HOME_FILE_SPAN_COUNT:I

    const v0, 0x92d93

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$PageSpanCount;->LANDSCAPE_COMMON_SPAN_COUNT:I

    const v0, 0x92d90

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$PageSpanCount;->PAD_LANDSCAPE_COMMON_SPAN_COUNT:I

    const v0, 0x92d91

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$PageSpanCount;->PAD_LANDSCAPE_PICTURE_SPAN_COUNT:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$PageSpanCount;->RECENT_SPAN_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
