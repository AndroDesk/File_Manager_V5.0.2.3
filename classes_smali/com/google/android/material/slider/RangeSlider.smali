.class public Lcom/google/android/material/slider/RangeSlider;
.super Lcom/google/android/material/slider/BaseSlider;
.source "RangeSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/slider/RangeSlider$OnSliderTouchListener;,
        Lcom/google/android/material/slider/RangeSlider$OnChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/slider/BaseSlider<",
        "Lcom/google/android/material/slider/RangeSlider;",
        "Lcom/google/android/material/slider/RangeSlider$OnChangeListener;",
        "Lcom/google/android/material/slider/RangeSlider$OnSliderTouchListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/slider/RangeSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, Lcom/google/android/material/R$attr;->sliderStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/slider/RangeSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/slider/BaseSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    new-array p3, p3, [I

    .line 4
    sget v0, Lcom/google/android/material/R$attr;->values:I

    const/4 v1, 0x0

    aput v0, p3, v1

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_28

    .line 6
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 8
    invoke-static {p2}, Lcom/google/android/material/slider/RangeSlider;->convertToFloat(Landroid/content/res/TypedArray;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/slider/RangeSlider;->setValues(Ljava/util/List;)V

    .line 9
    :cond_28
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static convertToFloat(Landroid/content/res/TypedArray;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/TypedArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_6
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_1c

    .line 13
    const/high16 v2, -0x40800000  # -1.0f

    .line 15
    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 18
    move-result v2

    .line 19
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 28
    goto :goto_6

    .line 29
    :cond_1c
    return-object v0
.end method


# virtual methods
.method public bridge synthetic clearOnChangeListeners()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->clearOnChangeListeners()V

    .line 4
    return-void
.end method

.method public bridge synthetic clearOnSliderTouchListeners()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->clearOnSliderTouchListeners()V

    .line 4
    return-void
.end method

.method public bridge synthetic dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getAccessibilityClassName()Ljava/lang/CharSequence;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic getActiveThumbIndex()I
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getActiveThumbIndex()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic getFocusedThumbIndex()I
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getFocusedThumbIndex()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic getHaloRadius()I
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getHaloRadius()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic getHaloTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getHaloTintList()Landroid/content/res/ColorStateList;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic getLabelBehavior()I
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getLabelBehavior()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic getStepSize()F
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getStepSize()F

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic getThumbElevation()F
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getThumbElevation()F

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic getThumbRadius()I
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getThumbRadius()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic getThumbTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getThumbTintList()Landroid/content/res/ColorStateList;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic getTickActiveTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTickActiveTintList()Landroid/content/res/ColorStateList;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic getTickInactiveTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTickInactiveTintList()Landroid/content/res/ColorStateList;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic getTickTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTickTintList()Landroid/content/res/ColorStateList;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic getTrackActiveTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTrackActiveTintList()Landroid/content/res/ColorStateList;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic getTrackHeight()I
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTrackHeight()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic getTrackInactiveTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTrackInactiveTintList()Landroid/content/res/ColorStateList;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic getTrackSidePadding()I
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTrackSidePadding()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic getTrackTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTrackTintList()Landroid/content/res/ColorStateList;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic getTrackWidth()I
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTrackWidth()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic getValueFrom()F
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getValueFrom()F

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic getValueTo()F
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getValueTo()F

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getValues()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic hasLabelFormatter()Z
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->hasLabelFormatter()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic setEnabled(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setEnabled(Z)V

    .line 4
    return-void
.end method

.method public bridge synthetic setFocusedThumbIndex(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setFocusedThumbIndex(I)V

    .line 4
    return-void
.end method

.method public bridge synthetic setHaloRadius(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setHaloRadius(I)V

    .line 4
    return-void
.end method

.method public bridge synthetic setHaloRadiusResource(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setHaloRadiusResource(I)V

    .line 4
    return-void
.end method

.method public bridge synthetic setHaloTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setHaloTintList(Landroid/content/res/ColorStateList;)V

    .line 4
    return-void
.end method

.method public bridge synthetic setLabelBehavior(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setLabelBehavior(I)V

    .line 4
    return-void
.end method

.method public bridge synthetic setLabelFormatter(Lcom/google/android/material/slider/LabelFormatter;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setLabelFormatter(Lcom/google/android/material/slider/LabelFormatter;)V

    .line 4
    return-void
.end method

.method public bridge synthetic setStepSize(F)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setStepSize(F)V

    .line 4
    return-void
.end method

.method public bridge synthetic setThumbElevation(F)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbElevation(F)V

    .line 4
    return-void
.end method

.method public bridge synthetic setThumbElevationResource(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbElevationResource(I)V

    .line 4
    return-void
.end method

.method public bridge synthetic setThumbRadius(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbRadius(I)V

    .line 4
    return-void
.end method

.method public bridge synthetic setThumbRadiusResource(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbRadiusResource(I)V

    .line 4
    return-void
.end method

.method public bridge synthetic setThumbTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 4
    return-void
.end method

.method public bridge synthetic setTickActiveTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickActiveTintList(Landroid/content/res/ColorStateList;)V

    .line 4
    return-void
.end method

.method public bridge synthetic setTickInactiveTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickInactiveTintList(Landroid/content/res/ColorStateList;)V

    .line 4
    return-void
.end method

.method public bridge synthetic setTickTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickTintList(Landroid/content/res/ColorStateList;)V

    .line 4
    return-void
.end method

.method public bridge synthetic setTrackActiveTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackActiveTintList(Landroid/content/res/ColorStateList;)V

    .line 4
    return-void
.end method

.method public bridge synthetic setTrackHeight(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackHeight(I)V

    .line 4
    return-void
.end method

.method public bridge synthetic setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V

    .line 4
    return-void
.end method

.method public bridge synthetic setTrackTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    .line 4
    return-void
.end method

.method public bridge synthetic setValueFrom(F)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setValueFrom(F)V

    .line 4
    return-void
.end method

.method public bridge synthetic setValueTo(F)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setValueTo(F)V

    .line 4
    return-void
.end method

.method public setValues(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setValues(Ljava/util/List;)V

    return-void
.end method

.method public varargs setValues([Ljava/lang/Float;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setValues([Ljava/lang/Float;)V

    return-void
.end method
