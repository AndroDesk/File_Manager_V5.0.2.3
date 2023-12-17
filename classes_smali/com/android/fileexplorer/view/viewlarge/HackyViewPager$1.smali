.class Lcom/android/fileexplorer/view/viewlarge/HackyViewPager$1;
.super Ljava/lang/Object;
.source "HackyViewPager.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/viewlarge/HackyViewPager;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/viewlarge/HackyViewPager;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/viewlarge/HackyViewPager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/HackyViewPager$1;->this$0:Lcom/android/fileexplorer/view/viewlarge/HackyViewPager;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p2, v0

    .line 4
    const/high16 v2, 0x3f800000  # 1.0f

    .line 6
    if-ltz v1, :cond_2f

    .line 8
    cmpl-float v1, p2, v2

    .line 10
    if-ltz v1, :cond_c

    .line 12
    goto :goto_2f

    .line 13
    :cond_c
    neg-float v1, p2

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 17
    move-result v3

    .line 18
    int-to-float v3, v3

    .line 19
    mul-float/2addr v1, v3

    .line 20
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 23
    sub-float v1, v2, p2

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 28
    move-result v1

    .line 29
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 32
    const v1, 0x3e99999a  # 0.3f

    .line 35
    mul-float/2addr p2, v1

    .line 36
    sub-float/2addr v2, p2

    .line 37
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    .line 40
    move-result p2

    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 47
    goto :goto_3b

    .line 48
    :cond_2f
    :goto_2f
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 51
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 54
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 57
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 60
    :goto_3b
    return-void
.end method
