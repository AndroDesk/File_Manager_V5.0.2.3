.class Lmiuix/animation/property/ViewProperty$13;
.super Lmiuix/animation/property/ViewProperty;
.source "ViewProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/property/ViewProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/property/ViewProperty;-><init>(Ljava/lang/String;)V

    .line 4
    return-void
.end method


# virtual methods
.method public getValue(Landroid/view/View;)F
    .registers 4

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 3
    sget v1, Lmiuix/animation/R$id;->miuix_animation_tag_set_width:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    if-eqz v1, :cond_13

    .line 4
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    :cond_13
    if-nez v0, :cond_1f

    .line 5
    invoke-static {p1}, Lmiuix/animation/property/ViewProperty;->access$000(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :cond_1f
    int-to-float p1, v0

    return p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lmiuix/animation/property/ViewProperty$13;->getValue(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public setValue(Landroid/view/View;F)V
    .registers 5

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    float-to-int v1, p2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3
    sget v0, Lmiuix/animation/R$id;->miuix_animation_tag_set_width:I

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lmiuix/animation/property/ViewProperty$13;->setValue(Landroid/view/View;F)V

    return-void
.end method
