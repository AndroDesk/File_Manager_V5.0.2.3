.class Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;
.super Landroid/widget/ImageView;
.source "XmasHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/XmasHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SantaClauseView"
.end annotation


# instance fields
.field private mRate:F

.field public final synthetic this$0:Lcom/android/fileexplorer/view/XmasHeader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/XmasHeader;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;->this$0:Lcom/android/fileexplorer/view/XmasHeader;

    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;->mRate:F

    const p1, 0x7f08063b

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public cutByPull(F)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;->mRate:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    iget v0, p0, Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;->mRate:F

    const/high16 v1, 0x42b40000  # 90.0f

    mul-float/2addr v0, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;->mRate:F

    mul-float/2addr v5, v1

    sub-float/2addr v4, v5

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
