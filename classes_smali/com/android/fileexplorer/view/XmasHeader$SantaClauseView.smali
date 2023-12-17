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
.method public constructor <init>(Lcom/android/fileexplorer/view/XmasHeader;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;->this$0:Lcom/android/fileexplorer/view/XmasHeader;

    .line 3
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;->mRate:F

    .line 9
    const p1, 0x7f08063b

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    return-void
.end method


# virtual methods
.method public cutByPull(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;->mRate:F

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;->mRate:F

    .line 3
    const/high16 v1, 0x42b40000  # 90.0f

    .line 5
    mul-float/2addr v0, v1

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 13
    move-result v0

    .line 14
    int-to-float v0, v0

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 18
    move-result v2

    .line 19
    int-to-float v2, v2

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 23
    move-result v3

    .line 24
    int-to-float v3, v3

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 28
    move-result v4

    .line 29
    int-to-float v4, v4

    .line 30
    iget v5, p0, Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;->mRate:F

    .line 32
    mul-float/2addr v5, v1

    .line 33
    sub-float/2addr v4, v5

    .line 34
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 37
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 40
    return-void
.end method
