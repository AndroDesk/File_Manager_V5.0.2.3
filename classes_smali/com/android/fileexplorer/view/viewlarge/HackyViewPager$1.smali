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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/viewlarge/HackyViewPager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/HackyViewPager$1;->this$0:Lcom/android/fileexplorer/view/viewlarge/HackyViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .registers 7

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    const/high16 v2, 0x3f800000  # 1.0f

    if-ltz v1, :cond_2f

    cmpl-float v1, p2, v2

    if-ltz v1, :cond_c

    goto :goto_2f

    :cond_c
    neg-float v1, p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    sub-float v1, v2, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    const v1, 0x3e99999a  # 0.3f

    mul-float/2addr p2, v1

    sub-float/2addr v2, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    goto :goto_3b

    :cond_2f
    :goto_2f
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    :goto_3b
    return-void
.end method
