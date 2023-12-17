.class public Lmiuix/animation/font/FontWeightProperty;
.super Lmiuix/animation/property/ViewProperty;
.source "FontWeightProperty.java"

# interfaces
.implements Lmiuix/animation/property/ISpecificProperty;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# static fields
.field private static final NAME:Ljava/lang/String; = "fontweight"


# instance fields
.field private mCurWeight:F

.field private mFontType:I

.field private mTextViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/TextView;I)V
    .registers 4

    .line 1
    const-string v0, "fontweight"

    .line 3
    invoke-direct {p0, v0}, Lmiuix/animation/property/ViewProperty;-><init>(Ljava/lang/String;)V

    .line 6
    const v0, 0x7f7fffff  # Float.MAX_VALUE

    .line 9
    iput v0, p0, Lmiuix/animation/font/FontWeightProperty;->mCurWeight:F

    .line 11
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 13
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 16
    iput-object v0, p0, Lmiuix/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    .line 18
    iput p2, p0, Lmiuix/animation/font/FontWeightProperty;->mFontType:I

    .line 20
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_36

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_12

    .line 18
    goto :goto_36

    .line 19
    :cond_12
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_19

    .line 25
    return v1

    .line 26
    :cond_19
    check-cast p1, Lmiuix/animation/font/FontWeightProperty;

    .line 28
    iget-object v2, p0, Lmiuix/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    .line 30
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Landroid/widget/TextView;

    .line 36
    iget-object p1, p1, Lmiuix/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    .line 38
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Landroid/widget/TextView;

    .line 44
    if-eqz v2, :cond_34

    .line 46
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_34

    .line 52
    goto :goto_35

    .line 53
    :cond_34
    move v0, v1

    .line 54
    :goto_35
    return v0

    .line 55
    :cond_36
    :goto_36
    return v1
.end method

.method public getScaledTextSize()F
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 9
    if-eqz v0, :cond_1a

    .line 11
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 22
    move-result-object v0

    .line 23
    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 25
    div-float/2addr v1, v0

    .line 26
    return v1

    .line 27
    :cond_1a
    const/4 v0, 0x0

    .line 28
    return v0
.end method

.method public getSpecificValue(F)F
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 9
    sget v1, Lmiuix/animation/font/VarFontUtils;->MIN_WGHT:I

    .line 11
    int-to-float v1, v1

    .line 12
    cmpg-float v1, p1, v1

    .line 14
    if-gez v1, :cond_25

    .line 16
    if-eqz v0, :cond_25

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lmiuix/animation/font/VarFontUtils;->getSysFontScale(Landroid/content/Context;)I

    .line 25
    move-result v0

    .line 26
    float-to-int p1, p1

    .line 27
    invoke-virtual {p0}, Lmiuix/animation/font/FontWeightProperty;->getScaledTextSize()F

    .line 30
    move-result v1

    .line 31
    iget v2, p0, Lmiuix/animation/font/FontWeightProperty;->mFontType:I

    .line 33
    invoke-static {p1, v1, v2, v0}, Lmiuix/animation/font/VarFontUtils;->getScaleWeight(IFII)I

    .line 36
    move-result p1

    .line 37
    int-to-float p1, p1

    .line 38
    :cond_25
    return p1
.end method

.method public getTextView()Landroid/widget/TextView;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 9
    return-object v0
.end method

.method public getValue(Landroid/view/View;)F
    .registers 2

    .line 2
    iget p1, p0, Lmiuix/animation/font/FontWeightProperty;->mCurWeight:F

    return p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lmiuix/animation/font/FontWeightProperty;->getValue(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x2

    .line 12
    if-eqz v0, :cond_20

    .line 14
    new-array v3, v3, [Ljava/lang/Object;

    .line 16
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    .line 19
    move-result v4

    .line 20
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v4

    .line 24
    aput-object v4, v3, v2

    .line 26
    aput-object v0, v3, v1

    .line 28
    invoke-static {v3}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 31
    move-result v0

    .line 32
    return v0

    .line 33
    :cond_20
    new-array v0, v3, [Ljava/lang/Object;

    .line 35
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    .line 38
    move-result v3

    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object v3

    .line 43
    aput-object v3, v0, v2

    .line 45
    iget-object v2, p0, Lmiuix/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    .line 47
    aput-object v2, v0, v1

    .line 49
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 52
    move-result v0

    .line 53
    return v0
.end method

.method public setValue(Landroid/view/View;F)V
    .registers 3

    .line 2
    iput p2, p0, Lmiuix/animation/font/FontWeightProperty;->mCurWeight:F

    .line 3
    iget-object p1, p0, Lmiuix/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_10

    float-to-int p2, p2

    .line 4
    invoke-static {p1, p2}, Lmiuix/animation/font/VarFontUtils;->setVariationFont(Landroid/widget/TextView;I)V

    :cond_10
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lmiuix/animation/font/FontWeightProperty;->setValue(Landroid/view/View;F)V

    return-void
.end method
