.class Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$TreeView;
.super Landroid/widget/ImageView;
.source "RXmasHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TreeView"
.end annotation


# instance fields
.field private final mDefaultRate:F

.field private mRate:F

.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;Landroid/content/Context;F)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$TreeView;->this$0:Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;

    .line 3
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$TreeView;->mRate:F

    .line 9
    iput p3, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$TreeView;->mDefaultRate:F

    .line 11
    const p1, 0x7f0801ae

    .line 14
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$TreeView;->mDefaultRate:F

    .line 3
    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$TreeView;->mRate:F

    .line 5
    const/high16 v2, 0x3e800000  # 0.25f

    .line 7
    mul-float v3, v1, v2

    .line 9
    const/high16 v4, 0x3f800000  # 1.0f

    .line 11
    sub-float v3, v4, v3

    .line 13
    mul-float/2addr v3, v0

    .line 14
    mul-float/2addr v1, v2

    .line 15
    sub-float/2addr v4, v1

    .line 16
    mul-float/2addr v4, v0

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 20
    move-result v0

    .line 21
    int-to-float v0, v0

    .line 22
    const/high16 v1, 0x40000000  # 2.0f

    .line 24
    div-float/2addr v0, v1

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 28
    move-result v1

    .line 29
    int-to-float v1, v1

    .line 30
    invoke-virtual {p1, v3, v4, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 33
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 36
    return-void
.end method

.method public scaleByPull(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$TreeView;->mRate:F

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method
