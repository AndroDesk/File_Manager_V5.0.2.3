.class public Lcom/google/android/material/internal/TextDrawableHelper;
.super Ljava/lang/Object;
.source "TextDrawableHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;
    }
.end annotation


# instance fields
.field private delegate:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final fontCallback:Lcom/google/android/material/resources/TextAppearanceFontCallback;

.field private textAppearance:Lcom/google/android/material/resources/TextAppearance;

.field private final textPaint:Landroid/text/TextPaint;

.field private textWidth:F

.field private textWidthDirty:Z


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/text/TextPaint;

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    .line 10
    iput-object v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textPaint:Landroid/text/TextPaint;

    .line 12
    new-instance v0, Lcom/google/android/material/internal/TextDrawableHelper$1;

    .line 14
    invoke-direct {v0, p0}, Lcom/google/android/material/internal/TextDrawableHelper$1;-><init>(Lcom/google/android/material/internal/TextDrawableHelper;)V

    .line 17
    iput-object v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->fontCallback:Lcom/google/android/material/resources/TextAppearanceFontCallback;

    .line 19
    iput-boolean v1, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textWidthDirty:Z

    .line 21
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 27
    iput-object v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->delegate:Ljava/lang/ref/WeakReference;

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/TextDrawableHelper;->setDelegate(Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;)V

    .line 32
    return-void
.end method

.method public static synthetic access$002(Lcom/google/android/material/internal/TextDrawableHelper;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textWidthDirty:Z

    .line 3
    return p1
.end method

.method public static synthetic access$100(Lcom/google/android/material/internal/TextDrawableHelper;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->delegate:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method private calculateTextWidth(Ljava/lang/CharSequence;)F
    .registers 5

    .line 1
    if-nez p1, :cond_4

    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textPaint:Landroid/text/TextPaint;

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 11
    move-result v2

    .line 12
    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    .line 15
    move-result p1

    .line 16
    return p1
.end method


# virtual methods
.method public getTextAppearance()Lcom/google/android/material/resources/TextAppearance;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textAppearance:Lcom/google/android/material/resources/TextAppearance;

    .line 3
    return-object v0
.end method

.method public getTextPaint()Landroid/text/TextPaint;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textPaint:Landroid/text/TextPaint;

    .line 3
    return-object v0
.end method

.method public getTextWidth(Ljava/lang/String;)F
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textWidthDirty:Z

    .line 3
    if-nez v0, :cond_7

    .line 5
    iget p1, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textWidth:F

    .line 7
    return p1

    .line 8
    :cond_7
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/TextDrawableHelper;->calculateTextWidth(Ljava/lang/CharSequence;)F

    .line 11
    move-result p1

    .line 12
    iput p1, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textWidth:F

    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textWidthDirty:Z

    .line 17
    return p1
.end method

.method public isTextWidthDirty()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textWidthDirty:Z

    .line 3
    return v0
.end method

.method public setDelegate(Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;)V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 6
    iput-object v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->delegate:Ljava/lang/ref/WeakReference;

    .line 8
    return-void
.end method

.method public setTextAppearance(Lcom/google/android/material/resources/TextAppearance;Landroid/content/Context;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textAppearance:Lcom/google/android/material/resources/TextAppearance;

    .line 3
    if-eq v0, p1, :cond_3f

    .line 5
    iput-object p1, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textAppearance:Lcom/google/android/material/resources/TextAppearance;

    .line 7
    if-eqz p1, :cond_2b

    .line 9
    iget-object v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textPaint:Landroid/text/TextPaint;

    .line 11
    iget-object v1, p0, Lcom/google/android/material/internal/TextDrawableHelper;->fontCallback:Lcom/google/android/material/resources/TextAppearanceFontCallback;

    .line 13
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/material/resources/TextAppearance;->updateMeasureState(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    .line 16
    iget-object v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->delegate:Ljava/lang/ref/WeakReference;

    .line 18
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;

    .line 24
    if-eqz v0, :cond_21

    .line 26
    iget-object v1, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textPaint:Landroid/text/TextPaint;

    .line 28
    invoke-interface {v0}, Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;->getState()[I

    .line 31
    move-result-object v0

    .line 32
    iput-object v0, v1, Landroid/text/TextPaint;->drawableState:[I

    .line 34
    :cond_21
    iget-object v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textPaint:Landroid/text/TextPaint;

    .line 36
    iget-object v1, p0, Lcom/google/android/material/internal/TextDrawableHelper;->fontCallback:Lcom/google/android/material/resources/TextAppearanceFontCallback;

    .line 38
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/material/resources/TextAppearance;->updateDrawState(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    .line 41
    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textWidthDirty:Z

    .line 44
    :cond_2b
    iget-object p1, p0, Lcom/google/android/material/internal/TextDrawableHelper;->delegate:Ljava/lang/ref/WeakReference;

    .line 46
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;

    .line 52
    if-eqz p1, :cond_3f

    .line 54
    invoke-interface {p1}, Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;->onTextSizeChange()V

    .line 57
    invoke-interface {p1}, Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;->getState()[I

    .line 60
    move-result-object p2

    .line 61
    invoke-interface {p1, p2}, Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;->onStateChange([I)Z

    .line 64
    :cond_3f
    return-void
.end method

.method public setTextWidthDirty(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textWidthDirty:Z

    .line 3
    return-void
.end method

.method public updateTextPaintDrawState(Landroid/content/Context;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textAppearance:Lcom/google/android/material/resources/TextAppearance;

    .line 3
    iget-object v1, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textPaint:Landroid/text/TextPaint;

    .line 5
    iget-object v2, p0, Lcom/google/android/material/internal/TextDrawableHelper;->fontCallback:Lcom/google/android/material/resources/TextAppearanceFontCallback;

    .line 7
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/material/resources/TextAppearance;->updateDrawState(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    .line 10
    return-void
.end method
