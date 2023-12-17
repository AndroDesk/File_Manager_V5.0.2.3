.class public Lcom/android/fileexplorer/constant/DisplayConstant$ControlType;
.super Ljava/lang/Object;
.source "DisplayConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/constant/DisplayConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ControlType"
.end annotation


# static fields
.field public static final DISPLAY_ALL_DIR:I

.field public static final DISPLAY_GRID:I

.field public static final DISPLAY_HIDE_SYS_DIR:I

.field public static final DISPLAY_LIST:I

.field public static final DISPLAY_MODE:I

.field public static final DISPLAY_SORT_DATE:I

.field public static final DISPLAY_SORT_NAME:I

.field public static final DISPLAY_SORT_POSITIVE_ORDER:I

.field public static final DISPLAY_SORT_REVERSE_ORDER:I

.field public static final DISPLAY_SORT_SIZE:I

.field public static final DISPLAY_SORT_SOURCE:I

.field public static final DISPLAY_SORT_TYPE:I


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/constant/DisplayConstant;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d9c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/constant/DisplayConstant$ControlType;->DISPLAY_ALL_DIR:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/constant/DisplayConstant$ControlType;->DISPLAY_GRID:I

    const v0, 0x92d9d

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/constant/DisplayConstant$ControlType;->DISPLAY_HIDE_SYS_DIR:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/constant/DisplayConstant$ControlType;->DISPLAY_LIST:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/constant/DisplayConstant$ControlType;->DISPLAY_MODE:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/constant/DisplayConstant$ControlType;->DISPLAY_SORT_DATE:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/constant/DisplayConstant$ControlType;->DISPLAY_SORT_NAME:I

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/constant/DisplayConstant$ControlType;->DISPLAY_SORT_POSITIVE_ORDER:I

    const v0, 0x92d9f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/constant/DisplayConstant$ControlType;->DISPLAY_SORT_REVERSE_ORDER:I

    const v0, 0x92d90

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/constant/DisplayConstant$ControlType;->DISPLAY_SORT_SIZE:I

    const v0, 0x92d91

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/constant/DisplayConstant$ControlType;->DISPLAY_SORT_SOURCE:I

    const v0, 0x92d93

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/constant/DisplayConstant$ControlType;->DISPLAY_SORT_TYPE:I

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/constant/DisplayConstant;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/constant/DisplayConstant$ControlType;->this$0:Lcom/android/fileexplorer/constant/DisplayConstant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
