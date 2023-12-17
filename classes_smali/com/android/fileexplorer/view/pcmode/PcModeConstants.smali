.class public Lcom/android/fileexplorer/view/pcmode/PcModeConstants;
.super Ljava/lang/Object;
.source "PcModeConstants.java"


# static fields
.field public static final OPEN_PATH:Ljava/lang/String; = "open_path"

.field public static final UI_MODE_PC_YES:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x90d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/pcmode/PcModeConstants;->UI_MODE_PC_YES:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
