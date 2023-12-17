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
.field public static final DISPLAY_ALL_DIR:I = 0xa

.field public static final DISPLAY_GRID:I = 0x2

.field public static final DISPLAY_HIDE_SYS_DIR:I = 0xb

.field public static final DISPLAY_LIST:I = 0x1

.field public static final DISPLAY_MODE:I = 0x0

.field public static final DISPLAY_SORT_DATE:I = 0x4

.field public static final DISPLAY_SORT_NAME:I = 0x3

.field public static final DISPLAY_SORT_POSITIVE_ORDER:I = 0x8

.field public static final DISPLAY_SORT_REVERSE_ORDER:I = 0x9

.field public static final DISPLAY_SORT_SIZE:I = 0x6

.field public static final DISPLAY_SORT_SOURCE:I = 0x7

.field public static final DISPLAY_SORT_TYPE:I = 0x5


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/constant/DisplayConstant;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/constant/DisplayConstant;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/constant/DisplayConstant$ControlType;->this$0:Lcom/android/fileexplorer/constant/DisplayConstant;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method
