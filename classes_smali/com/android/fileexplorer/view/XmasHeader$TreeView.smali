.class Lcom/android/fileexplorer/view/XmasHeader$TreeView;
.super Landroid/widget/ImageView;
.source "XmasHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/XmasHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TreeView"
.end annotation


# instance fields
.field private final mDefaultRate:F

.field private mRate:F

.field public final synthetic this$0:Lcom/android/fileexplorer/view/XmasHeader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/XmasHeader;Landroid/content/Context;F)V
    .registers 4

    iput-object p1, p0, Lcom/android/fileexplorer/view/XmasHeader$TreeView;->this$0:Lcom/android/fileexplorer/view/XmasHeader;

    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/fileexplorer/view/XmasHeader$TreeView;->mRate:F

    iput p3, p0, Lcom/android/fileexplorer/view/XmasHeader$TreeView;->mDefaultRate:F

    const p1, 0x7f0801ae

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    iget v0, p0, Lcom/android/fileexplorer/view/XmasHeader$TreeView;->mDefaultRate:F

    iget v1, p0, Lcom/android/fileexplorer/view/XmasHeader$TreeView;->mRate:F

    const/high16 v2, 0x3e800000  # 0.25f

    mul-float v3, v1, v2

    const/high16 v4, 0x3f800000  # 1.0f

    sub-float v3, v4, v3

    mul-float/2addr v3, v0

    mul-float/2addr v1, v2

    sub-float/2addr v4, v1

    mul-float/2addr v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v3, v4, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public scaleByPull(F)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/view/XmasHeader$TreeView;->mRate:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
