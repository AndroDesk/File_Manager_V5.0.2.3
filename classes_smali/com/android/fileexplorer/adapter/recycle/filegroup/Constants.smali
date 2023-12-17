.class public Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$PageSpanCount;,
        Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$KeyDownType;,
        Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$ShortcutType;,
        Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$ClickActionType;,
        Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$ViewType;,
        Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$Search;,
        Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$NavigationPosition;,
        Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$HomePage;
    }
.end annotation


# static fields
.field public static final CLIP_DATA_LABEL:Ljava/lang/String; = "FileExplorer"

.field public static final FRAGMENT_NAVIGATION_TITLE_EMPTY:Ljava/lang/String; = " "

.field public static final NAVIGATOR_MODE_C_J18_SMALL_WINDOW_SPAN_COUNT:I

.field public static final NAVIGATOR_MODE_C_SMALL_WINDOW_IMAGE_SPAN_COUNT:I

.field public static final NAVIGATOR_MODE_C_SMALL_WINDOW_SPAN_COUNT:I

.field public static final NAVIGATOR_MODE_NC_LARGE_WINDOW_IMAGE_SPAN_COUNT:I

.field public static final NAVIGATOR_MODE_NC_LARGE_WINDOW_SPAN_COUNT:I

.field public static final NAVIGATOR_MODE_NC_MIDDLE_WINDOW_IMAGE_SPAN_COUNT:I

.field public static final NAVIGATOR_MODE_NC_MIDDLE_WINDOW_SPAN_COUNT:I

.field public static final NAVIGATOR_MODE_NC_OVERSIZED_LARGE_IMAGE_WINDOW_SPAN_COUNT:I

.field public static final NAVIGATOR_MODE_NC_OVERSIZED_LARGE_WINDOW_SPAN_COUNT:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants;->NAVIGATOR_MODE_C_J18_SMALL_WINDOW_SPAN_COUNT:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants;->NAVIGATOR_MODE_C_SMALL_WINDOW_IMAGE_SPAN_COUNT:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants;->NAVIGATOR_MODE_C_SMALL_WINDOW_SPAN_COUNT:I

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants;->NAVIGATOR_MODE_NC_LARGE_WINDOW_IMAGE_SPAN_COUNT:I

    const v0, 0x92d91

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants;->NAVIGATOR_MODE_NC_LARGE_WINDOW_SPAN_COUNT:I

    const v0, 0x92d90

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants;->NAVIGATOR_MODE_NC_MIDDLE_WINDOW_IMAGE_SPAN_COUNT:I

    const v0, 0x92d90

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants;->NAVIGATOR_MODE_NC_MIDDLE_WINDOW_SPAN_COUNT:I

    const v0, 0x92d9c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants;->NAVIGATOR_MODE_NC_OVERSIZED_LARGE_IMAGE_WINDOW_SPAN_COUNT:I

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants;->NAVIGATOR_MODE_NC_OVERSIZED_LARGE_WINDOW_SPAN_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
