.class Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;
.super Lr0/a;
.source "BaseSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/slider/BaseSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessibilityHelper"
.end annotation


# instance fields
.field private final slider:Lcom/google/android/material/slider/BaseSlider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/slider/BaseSlider<",
            "***>;"
        }
    .end annotation
.end field

.field public virtualViewBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/google/android/material/slider/BaseSlider;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/slider/BaseSlider<",
            "***>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lr0/a;-><init>(Landroid/view/View;)V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->virtualViewBounds:Landroid/graphics/Rect;

    .line 11
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 13
    return-void
.end method

.method private startOrEndDescription(I)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 13
    if-ne p1, v0, :cond_1b

    .line 15
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    move-result-object p1

    .line 21
    sget v0, Lcom/google/android/material/R$string;->material_slider_range_end:I

    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :cond_1b
    if-nez p1, :cond_2a

    .line 30
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 35
    move-result-object p1

    .line 36
    sget v0, Lcom/google/android/material/R$string;->material_slider_range_start:I

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    return-object p1

    .line 43
    :cond_2a
    const-string p1, ""

    .line 45
    return-object p1
.end method


# virtual methods
.method public getVirtualViewAt(FF)I
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    .line 7
    move-result-object v1

    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 11
    move-result v1

    .line 12
    if-ge v0, v1, :cond_22

    .line 14
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 16
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->virtualViewBounds:Landroid/graphics/Rect;

    .line 18
    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/slider/BaseSlider;->updateBoundsForVirturalViewId(ILandroid/graphics/Rect;)V

    .line 21
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->virtualViewBounds:Landroid/graphics/Rect;

    .line 23
    float-to-int v2, p1

    .line 24
    float-to-int v3, p2

    .line 25
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1f

    .line 31
    return v0

    .line 32
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    .line 34
    goto :goto_1

    .line 35
    :cond_22
    const/4 p1, -0x1

    .line 36
    return p1
.end method

.method public getVisibleVirtualViews(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    .line 7
    move-result-object v1

    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 11
    move-result v1

    .line 12
    if-ge v0, v1, :cond_17

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v1

    .line 18
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 23
    goto :goto_1

    .line 24
    :cond_17
    return-void
.end method

.method public onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_a

    .line 10
    return v1

    .line 11
    :cond_a
    const/16 v0, 0x1000

    .line 13
    const/4 v2, 0x1

    .line 14
    const/16 v3, 0x2000

    .line 16
    if-eq p2, v0, :cond_3f

    .line 18
    if-eq p2, v3, :cond_3f

    .line 20
    const v0, 0x102003d

    .line 23
    if-eq p2, v0, :cond_19

    .line 25
    return v1

    .line 26
    :cond_19
    if-eqz p3, :cond_3e

    .line 28
    const-string p2, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    .line 30
    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_24

    .line 36
    goto :goto_3e

    .line 37
    :cond_24
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 40
    move-result p2

    .line 41
    iget-object p3, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 43
    invoke-static {p3, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->access$600(Lcom/google/android/material/slider/BaseSlider;IF)Z

    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_3e

    .line 49
    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 51
    invoke-static {p2}, Lcom/google/android/material/slider/BaseSlider;->access$700(Lcom/google/android/material/slider/BaseSlider;)V

    .line 54
    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 56
    invoke-virtual {p2}, Landroid/view/View;->postInvalidate()V

    .line 59
    invoke-virtual {p0, p1}, Lr0/a;->invalidateVirtualView(I)V

    .line 62
    return v2

    .line 63
    :cond_3e
    :goto_3e
    return v1

    .line 64
    :cond_3f
    iget-object p3, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 66
    const/16 v0, 0x14

    .line 68
    invoke-static {p3, v0}, Lcom/google/android/material/slider/BaseSlider;->access$800(Lcom/google/android/material/slider/BaseSlider;I)F

    .line 71
    move-result p3

    .line 72
    if-ne p2, v3, :cond_4a

    .line 74
    neg-float p3, p3

    .line 75
    :cond_4a
    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 77
    invoke-virtual {p2}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    .line 80
    move-result p2

    .line 81
    if-eqz p2, :cond_53

    .line 83
    neg-float p3, p3

    .line 84
    :cond_53
    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 86
    invoke-virtual {p2}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    .line 89
    move-result-object p2

    .line 90
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    move-result-object p2

    .line 94
    check-cast p2, Ljava/lang/Float;

    .line 96
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 99
    move-result p2

    .line 100
    add-float/2addr p2, p3

    .line 101
    iget-object p3, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 103
    invoke-virtual {p3}, Lcom/google/android/material/slider/BaseSlider;->getValueFrom()F

    .line 106
    move-result p3

    .line 107
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 109
    invoke-virtual {v0}, Lcom/google/android/material/slider/BaseSlider;->getValueTo()F

    .line 112
    move-result v0

    .line 113
    invoke-static {p2, p3, v0}, La/b;->p(FFF)F

    .line 116
    move-result p2

    .line 117
    iget-object p3, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 119
    invoke-static {p3, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->access$600(Lcom/google/android/material/slider/BaseSlider;IF)Z

    .line 122
    move-result p2

    .line 123
    if-eqz p2, :cond_8a

    .line 125
    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 127
    invoke-static {p2}, Lcom/google/android/material/slider/BaseSlider;->access$700(Lcom/google/android/material/slider/BaseSlider;)V

    .line 130
    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 132
    invoke-virtual {p2}, Landroid/view/View;->postInvalidate()V

    .line 135
    invoke-virtual {p0, p1}, Lr0/a;->invalidateVirtualView(I)V

    .line 138
    return v2

    .line 139
    :cond_8a
    return v1
.end method

.method public onPopulateNodeForVirtualView(ILn0/c;)V
    .registers 9

    .line 1
    sget-object v0, Ln0/c$a;->m:Ln0/c$a;

    .line 3
    invoke-virtual {p2, v0}, Ln0/c;->b(Ln0/c$a;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/Float;

    .line 18
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 21
    move-result v1

    .line 22
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 24
    invoke-virtual {v2}, Lcom/google/android/material/slider/BaseSlider;->getValueFrom()F

    .line 27
    move-result v2

    .line 28
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 30
    invoke-virtual {v3}, Lcom/google/android/material/slider/BaseSlider;->getValueTo()F

    .line 33
    move-result v3

    .line 34
    iget-object v4, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 36
    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_3b

    .line 42
    cmpl-float v4, v1, v2

    .line 44
    if-lez v4, :cond_32

    .line 46
    const/16 v4, 0x2000

    .line 48
    invoke-virtual {p2, v4}, Ln0/c;->a(I)V

    .line 51
    :cond_32
    cmpg-float v4, v1, v3

    .line 53
    if-gez v4, :cond_3b

    .line 55
    const/16 v4, 0x1000

    .line 57
    invoke-virtual {p2, v4}, Ln0/c;->a(I)V

    .line 60
    :cond_3b
    const/4 v4, 0x1

    .line 61
    invoke-static {v4, v2, v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 64
    move-result-object v2

    .line 65
    iget-object v3, p2, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 67
    move-object v5, v2

    .line 68
    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 70
    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    .line 73
    const-class v2, Landroid/widget/SeekBar;

    .line 75
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {p2, v2}, Ln0/c;->i(Ljava/lang/CharSequence;)V

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 89
    invoke-virtual {v3}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 92
    move-result-object v3

    .line 93
    if-eqz v3, :cond_6c

    .line 95
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 97
    invoke-virtual {v3}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 104
    const-string v3, ","

    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_6c
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 112
    move-result v0

    .line 113
    if-le v0, v4, :cond_82

    .line 115
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->startOrEndDescription(I)Ljava/lang/String;

    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 124
    invoke-static {v0, v1}, Lcom/google/android/material/slider/BaseSlider;->access$500(Lcom/google/android/material/slider/BaseSlider;F)Ljava/lang/String;

    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    :cond_82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {p2, v0}, Ln0/c;->l(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 140
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->virtualViewBounds:Landroid/graphics/Rect;

    .line 142
    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/slider/BaseSlider;->updateBoundsForVirturalViewId(ILandroid/graphics/Rect;)V

    .line 145
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->virtualViewBounds:Landroid/graphics/Rect;

    .line 147
    invoke-virtual {p2, p1}, Ln0/c;->h(Landroid/graphics/Rect;)V

    .line 150
    return-void
.end method
