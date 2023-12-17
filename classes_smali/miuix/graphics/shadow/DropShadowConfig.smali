.class public Lmiuix/graphics/shadow/DropShadowConfig;
.super Ljava/lang/Object;
.source "DropShadowConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/graphics/shadow/DropShadowConfig$Builder;
    }
.end annotation


# instance fields
.field public blurRadiusDp:F

.field public blurStyle:Landroid/graphics/BlurMaskFilter$Blur;

.field public offsetXDp:F

.field public offsetYDp:F

.field public shadowColor:I

.field public shadowDarkColor:I

.field public spread:F


# direct methods
.method public constructor <init>(F)V
    .registers 3

    .line 1
    sget-object v0, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {p0, p1, v0}, Lmiuix/graphics/shadow/DropShadowConfig;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    return-void
.end method

.method public constructor <init>(FLandroid/graphics/BlurMaskFilter$Blur;)V
    .registers 11

    const-string v0, "#0D000000"

    .line 2
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string v0, "#0DFFFFFF"

    .line 3
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v6, p1

    move-object v7, p2

    .line 4
    invoke-direct/range {v1 .. v7}, Lmiuix/graphics/shadow/DropShadowConfig;-><init>(IIFFFLandroid/graphics/BlurMaskFilter$Blur;)V

    return-void
.end method

.method public constructor <init>(IIFFFLandroid/graphics/BlurMaskFilter$Blur;)V
    .registers 8

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lmiuix/graphics/shadow/DropShadowConfig;->spread:F

    .line 7
    iput p1, p0, Lmiuix/graphics/shadow/DropShadowConfig;->shadowColor:I

    .line 8
    iput p2, p0, Lmiuix/graphics/shadow/DropShadowConfig;->shadowDarkColor:I

    .line 9
    iput p3, p0, Lmiuix/graphics/shadow/DropShadowConfig;->offsetXDp:F

    .line 10
    iput p4, p0, Lmiuix/graphics/shadow/DropShadowConfig;->offsetYDp:F

    .line 11
    iput p5, p0, Lmiuix/graphics/shadow/DropShadowConfig;->blurRadiusDp:F

    .line 12
    iput-object p6, p0, Lmiuix/graphics/shadow/DropShadowConfig;->blurStyle:Landroid/graphics/BlurMaskFilter$Blur;

    return-void
.end method
