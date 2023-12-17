.class public Lcom/android/fileexplorer/widget/helper/PadWidgetHelper;
.super Ljava/lang/Object;
.source "PadWidgetHelper.java"


# static fields
.field public static currentIsPadWidgetActivity:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPadWidgetActivity()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/android/fileexplorer/widget/helper/PadWidgetHelper;->currentIsPadWidgetActivity:Z

    .line 3
    return v0
.end method

.method public static setPadWidgetActivity(Z)V
    .registers 1

    .line 1
    sput-boolean p0, Lcom/android/fileexplorer/widget/helper/PadWidgetHelper;->currentIsPadWidgetActivity:Z

    .line 3
    return-void
.end method
