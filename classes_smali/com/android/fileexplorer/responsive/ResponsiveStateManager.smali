.class public Lcom/android/fileexplorer/responsive/ResponsiveStateManager;
.super Ljava/lang/Object;
.source "ResponsiveStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/responsive/ResponsiveStateManager$Singleton;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ResponsiveStateManager"

.field private static isFreeFormWindow:Z = false

.field private static sState:I = 0x1007


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/responsive/ResponsiveStateManager$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;-><init>()V

    return-void
.end method

.method public static displayNavigationFragment()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;->sState:I

    const/16 v1, 0x1007

    if-eq v0, v1, :cond_11

    const/16 v1, 0x1004

    if-eq v0, v1, :cond_11

    const/16 v1, 0x2003

    if-ne v0, v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public static getCurrentState()I
    .registers 1

    sget v0, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;->sState:I

    return v0
.end method

.method public static getInstance()Lcom/android/fileexplorer/responsive/ResponsiveStateManager;
    .registers 1

    invoke-static {}, Lcom/android/fileexplorer/responsive/ResponsiveStateManager$Singleton;->access$100()Lcom/android/fileexplorer/responsive/ResponsiveStateManager;

    move-result-object v0

    return-object v0
.end method

.method public static isFreeFormWindow()Z
    .registers 1

    sget-boolean v0, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;->isFreeFormWindow:Z

    return v0
.end method

.method public static updateCurrentState(I)V
    .registers 1

    sput p0, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;->sState:I

    return-void
.end method

.method public static updateWindowState(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;->isFreeFormWindow:Z

    return-void
.end method
