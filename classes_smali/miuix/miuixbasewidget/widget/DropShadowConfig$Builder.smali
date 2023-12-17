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
.method public constructor <init>(F)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lmiuix/miuixbasewidget/widget/DropShadowConfig;

    .line 6
    invoke-direct {v0, p1}, Lmiuix/miuixbasewidget/widget/DropShadowConfig;-><init>(F)V

    .line 9
    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/DropShadowConfig$Builder;->dropShadowConfig:Lmiuix/miuixbasewidget/widget/DropShadowConfig;

    .line 11
    return-void
.end method


# virtual methods
.method public create()Lmiuix/miuixbasewidget/widget/DropShadowConfig;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/DropShadowConfig$Builder;->dropShadowConfig:Lmiuix/miuixbasewidget/widget/DropShadowConfig;

    .line 3
    return-object v0
.end method

.method public setBlurRadius(F)Lmiuix/miuixbasewidget/widget/DropShadowConfig$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/DropShadowConfig$Builder;->dropShadowConfig:Lmiuix/miuixbasewidget/widget/DropShadowConfig;

    .line 3
    iput p1, v0, Lmiuix/miuixbasewidget/widget/DropShadowConfig;->blurRadiusDp:F

    .line 5
    return-object p0
.end method

.method public setColor(II)Lmiuix/miuixbasewidget/widget/DropShadowConfig$Builder;
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/DropShadowConfig$Builder;->dropShadowConfig:Lmiuix/miuixbasewidget/widget/DropShadowConfig;

    .line 3
    iput p1, v0, Lmiuix/miuixbasewidget/widget/DropShadowConfig;->shadowColor:I

    .line 5
    iput p2, v0, Lmiuix/miuixbasewidget/widget/DropShadowConfig;->shadowDarkColor:I

    .line 7
    return-object p0
.end method

.method public setOffsetXDp(I)Lmiuix/miuixbasewidget/widget/DropShadowConfig$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/DropShadowConfig$Builder;->dropShadowConfig:Lmiuix/miuixbasewidget/widget/DropShadowConfig;

    .line 3
    int-to-float p1, p1

    .line 4
    iput p1, v0, Lmiuix/miuixbasewidget/widget/DropShadowConfig;->offsetXDp:F

    .line 6
    return-object p0
.end method

.method public setOffsetYDp(I)Lmiuix/miuixbasewidget/widget/DropShadowConfig$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/DropShadowConfig$Builder;->dropShadowConfig:Lmiuix/miuixbasewidget/widget/DropShadowConfig;

    .line 3
    int-to-float p1, p1

    .line 4
    iput p1, v0, Lmiuix/miuixbasewidget/widget/DropShadowConfig;->offsetYDp:F

    .line 6
    return-object p0
.end method

.method public setStyle(Landroid/graphics/BlurMaskFilter$Blur;)Lmiuix/miuixbasewidget/widget/DropShadowConfig$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/DropShadowConfig$Builder;->dropShadowConfig:Lmiuix/miuixbasewidget/widget/DropShadowConfig;

    .line 3
    iput-object p1, v0, Lmiuix/miuixbasewidget/widget/DropShadowConfig;->blurStyle:Landroid/graphics/BlurMaskFilter$Blur;

    .line 5
    return-object p0
.end method
