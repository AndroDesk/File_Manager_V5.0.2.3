.class public Lmiuix/graphics/shadow/DropShadowConfig$Builder;
.super Ljava/lang/Object;
.source "DropShadowConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/graphics/shadow/DropShadowConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private dropShadowConfig:Lmiuix/graphics/shadow/DropShadowConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(F)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiuix/graphics/shadow/DropShadowConfig;

    invoke-direct {v0, p1}, Lmiuix/graphics/shadow/DropShadowConfig;-><init>(F)V

    iput-object v0, p0, Lmiuix/graphics/shadow/DropShadowConfig$Builder;->dropShadowConfig:Lmiuix/graphics/shadow/DropShadowConfig;

    return-void
.end method


# virtual methods
.method public create()Lmiuix/graphics/shadow/DropShadowConfig;
    .registers 2

    iget-object v0, p0, Lmiuix/graphics/shadow/DropShadowConfig$Builder;->dropShadowConfig:Lmiuix/graphics/shadow/DropShadowConfig;

    return-object v0
.end method

.method public setBlurRadius(F)Lmiuix/graphics/shadow/DropShadowConfig$Builder;
    .registers 3

    iget-object v0, p0, Lmiuix/graphics/shadow/DropShadowConfig$Builder;->dropShadowConfig:Lmiuix/graphics/shadow/DropShadowConfig;

    iput p1, v0, Lmiuix/graphics/shadow/DropShadowConfig;->blurRadiusDp:F

    return-object p0
.end method

.method public setColor(II)Lmiuix/graphics/shadow/DropShadowConfig$Builder;
    .registers 4

    iget-object v0, p0, Lmiuix/graphics/shadow/DropShadowConfig$Builder;->dropShadowConfig:Lmiuix/graphics/shadow/DropShadowConfig;

    iput p1, v0, Lmiuix/graphics/shadow/DropShadowConfig;->shadowColor:I

    iput p2, v0, Lmiuix/graphics/shadow/DropShadowConfig;->shadowDarkColor:I

    return-object p0
.end method

.method public setOffsetXDp(I)Lmiuix/graphics/shadow/DropShadowConfig$Builder;
    .registers 3

    iget-object v0, p0, Lmiuix/graphics/shadow/DropShadowConfig$Builder;->dropShadowConfig:Lmiuix/graphics/shadow/DropShadowConfig;

    int-to-float p1, p1

    iput p1, v0, Lmiuix/graphics/shadow/DropShadowConfig;->offsetXDp:F

    return-object p0
.end method

.method public setOffsetYDp(I)Lmiuix/graphics/shadow/DropShadowConfig$Builder;
    .registers 3

    iget-object v0, p0, Lmiuix/graphics/shadow/DropShadowConfig$Builder;->dropShadowConfig:Lmiuix/graphics/shadow/DropShadowConfig;

    int-to-float p1, p1

    iput p1, v0, Lmiuix/graphics/shadow/DropShadowConfig;->offsetYDp:F

    return-object p0
.end method

.method public setStyle(Landroid/graphics/BlurMaskFilter$Blur;)Lmiuix/graphics/shadow/DropShadowConfig$Builder;
    .registers 3

    iget-object v0, p0, Lmiuix/graphics/shadow/DropShadowConfig$Builder;->dropShadowConfig:Lmiuix/graphics/shadow/DropShadowConfig;

    iput-object p1, v0, Lmiuix/graphics/shadow/DropShadowConfig;->blurStyle:Landroid/graphics/BlurMaskFilter$Blur;

    return-object p0
.end method
