.class public Lmiuix/miuixbasewidget/widget/DropShadowConfig$Builder;
.super Ljava/lang/Object;
.source "DropShadowConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/miuixbasewidget/widget/DropShadowConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private dropShadowConfig:Lmiuix/miuixbasewidget/widget/DropShadowConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(F)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiuix/miuixbasewidget/widget/DropShadowConfig;

    invoke-direct {v0, p1}, Lmiuix/miuixbasewidget/widget/DropShadowConfig;-><init>(F)V

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/DropShadowConfig$Builder;->dropShadowConfig:Lmiuix/miuixbasewidget/widget/DropShadowConfig;

    return-void
.end method


# virtual methods
.method public create()Lmiuix/miuixbasewidget/widget/DropShadowConfig;
    .registers 2

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/DropShadowConfig$Builder;->dropShadowConfig:Lmiuix/miuixbasewidget/widget/DropShadowConfig;

    return-object v0
.end method

.method public setBlurRadius(F)Lmiuix/miuixbasewidget/widget/DropShadowConfig$Builder;
    .registers 3

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/DropShadowConfig$Builder;->dropShadowConfig:Lmiuix/miuixbasewidget/widget/DropShadowConfig;

    iput p1, v0, Lmiuix/miuixbasewidget/widget/DropShadowConfig;->blurRadiusDp:F

    return-object p0
.end method

.method public setColor(II)Lmiuix/miuixbasewidget/widget/DropShadowConfig$Builder;
    .registers 4

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/DropShadowConfig$Builder;->dropShadowConfig:Lmiuix/miuixbasewidget/widget/DropShadowConfig;

    iput p1, v0, Lmiuix/miuixbasewidget/widget/DropShadowConfig;->shadowColor:I

    iput p2, v0, Lmiuix/miuixbasewidget/widget/DropShadowConfig;->shadowDarkColor:I

    return-object p0
.end method

.method public setOffsetXDp(I)Lmiuix/miuixbasewidget/widget/DropShadowConfig$Builder;
    .registers 3

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/DropShadowConfig$Builder;->dropShadowConfig:Lmiuix/miuixbasewidget/widget/DropShadowConfig;

    int-to-float p1, p1

    iput p1, v0, Lmiuix/miuixbasewidget/widget/DropShadowConfig;->offsetXDp:F

    return-object p0
.end method

.method public setOffsetYDp(I)Lmiuix/miuixbasewidget/widget/DropShadowConfig$Builder;
    .registers 3

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/DropShadowConfig$Builder;->dropShadowConfig:Lmiuix/miuixbasewidget/widget/DropShadowConfig;

    int-to-float p1, p1

    iput p1, v0, Lmiuix/miuixbasewidget/widget/DropShadowConfig;->offsetYDp:F

    return-object p0
.end method

.method public setStyle(Landroid/graphics/BlurMaskFilter$Blur;)Lmiuix/miuixbasewidget/widget/DropShadowConfig$Builder;
    .registers 3

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/DropShadowConfig$Builder;->dropShadowConfig:Lmiuix/miuixbasewidget/widget/DropShadowConfig;

    iput-object p1, v0, Lmiuix/miuixbasewidget/widget/DropShadowConfig;->blurStyle:Landroid/graphics/BlurMaskFilter$Blur;

    return-object p0
.end method
