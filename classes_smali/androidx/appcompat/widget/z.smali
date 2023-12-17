.class public final Landroidx/appcompat/widget/z;
.super Ljava/lang/Object;
.source "AppCompatTextViewAutoSizeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/z$a;,
        Landroidx/appcompat/widget/z$b;,
        Landroidx/appcompat/widget/z$c;,
        Landroidx/appcompat/widget/z$e;,
        Landroidx/appcompat/widget/z$d;,
        Landroidx/appcompat/widget/z$f;
    }
.end annotation


# static fields
.field public static final l:Landroid/graphics/RectF;

.field public static m:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BanConcurrentHashMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:Z

.field public c:F

.field public d:F

.field public e:F

.field public f:[I

.field public g:Z

.field public h:Landroid/text/TextPaint;

.field public final i:Landroid/widget/TextView;

.field public final j:Landroid/content/Context;

.field public final k:Landroidx/appcompat/widget/z$d;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/z;->l:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/z;->m:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/z;->a:I

    iput-boolean v0, p0, Landroidx/appcompat/widget/z;->b:Z

    const/high16 v1, -0x40800000  # -1.0f

    iput v1, p0, Landroidx/appcompat/widget/z;->c:F

    iput v1, p0, Landroidx/appcompat/widget/z;->d:F

    iput v1, p0, Landroidx/appcompat/widget/z;->e:F

    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/appcompat/widget/z;->f:[I

    iput-boolean v0, p0, Landroidx/appcompat/widget/z;->g:Z

    iput-object p1, p0, Landroidx/appcompat/widget/z;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/z;->j:Landroid/content/Context;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_2c

    new-instance p1, Landroidx/appcompat/widget/z$e;

    invoke-direct {p1}, Landroidx/appcompat/widget/z$e;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/z;->k:Landroidx/appcompat/widget/z$d;

    goto :goto_33

    :cond_2c
    new-instance p1, Landroidx/appcompat/widget/z$d;

    invoke-direct {p1}, Landroidx/appcompat/widget/z$d;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/z;->k:Landroidx/appcompat/widget/z$d;

    :goto_33
    return-void
.end method

.method public static b([I)[I
    .registers 7

    array-length v0, p0

    if-nez v0, :cond_4

    return-object p0

    :cond_4
    invoke-static {p0}, Ljava/util/Arrays;->sort([I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v0, :cond_28

    aget v4, p0, v3

    if-lez v4, :cond_25

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_25

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_28
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v0, v3, :cond_2f

    return-object p0

    :cond_2f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array v0, p0, [I

    :goto_35
    if-ge v2, p0, :cond_46

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_46
    return-object v0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 4

    :try_start_0
    sget-object v0, Landroidx/appcompat/widget/z;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_1e

    const-class v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1e

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sget-object v1, Landroidx/appcompat/widget/z;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    :cond_1e
    return-object v0

    :catch_1f
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to retrieve TextView#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "() method"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ACTVAutoSizeHelper"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Landroidx/appcompat/widget/z;->d(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_e
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    goto :goto_2a

    :catchall_c
    move-exception p0

    goto :goto_2b

    :catch_e
    move-exception p0

    :try_start_f
    const-string v0, "ACTVAutoSizeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to invoke TextView#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "() method"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_f .. :try_end_2a} :catchall_c

    :goto_2a
    return-object p2

    :goto_2b
    throw p0
.end method


# virtual methods
.method public final a()V
    .registers 6

    invoke-virtual {p0}, Landroidx/appcompat/widget/z;->i()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    iget v0, p0, Landroidx/appcompat/widget/z;->a:I

    if-eqz v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    if-nez v0, :cond_12

    return-void

    :cond_12
    iget-boolean v0, p0, Landroidx/appcompat/widget/z;->b:Z

    if-eqz v0, :cond_85

    iget-object v0, p0, Landroidx/appcompat/widget/z;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_84

    iget-object v0, p0, Landroidx/appcompat/widget/z;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_27

    goto :goto_84

    :cond_27
    iget-object v0, p0, Landroidx/appcompat/widget/z;->k:Landroidx/appcompat/widget/z$d;

    iget-object v3, p0, Landroidx/appcompat/widget/z;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/z$f;->b(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/high16 v0, 0x100000

    goto :goto_48

    :cond_34
    iget-object v0, p0, Landroidx/appcompat/widget/z;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v3, p0, Landroidx/appcompat/widget/z;->i:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Landroidx/appcompat/widget/z;->i:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    :goto_48
    iget-object v3, p0, Landroidx/appcompat/widget/z;->i:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroidx/appcompat/widget/z;->i:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroidx/appcompat/widget/z;->i:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    if-lez v0, :cond_84

    if-gtz v3, :cond_61

    goto :goto_84

    :cond_61
    sget-object v4, Landroidx/appcompat/widget/z;->l:Landroid/graphics/RectF;

    monitor-enter v4

    :try_start_64
    invoke-virtual {v4}, Landroid/graphics/RectF;->setEmpty()V

    int-to-float v0, v0

    iput v0, v4, Landroid/graphics/RectF;->right:F

    int-to-float v0, v3

    iput v0, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/z;->c(Landroid/graphics/RectF;)I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Landroidx/appcompat/widget/z;->i:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_7f

    invoke-virtual {p0, v0, v2}, Landroidx/appcompat/widget/z;->f(FI)V

    :cond_7f
    monitor-exit v4

    goto :goto_85

    :catchall_81
    move-exception v0

    monitor-exit v4
    :try_end_83
    .catchall {:try_start_64 .. :try_end_83} :catchall_81

    throw v0

    :cond_84
    :goto_84
    return-void

    :cond_85
    :goto_85
    iput-boolean v1, p0, Landroidx/appcompat/widget/z;->b:Z

    return-void
.end method

.method public final c(Landroid/graphics/RectF;)I
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/appcompat/widget/z;->f:[I

    array-length v2, v2

    if-eqz v2, :cond_b2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    move v5, v3

    move v6, v4

    :goto_e
    if-gt v5, v2, :cond_ad

    add-int v6, v5, v2

    div-int/lit8 v6, v6, 0x2

    iget-object v7, v0, Landroidx/appcompat/widget/z;->f:[I

    aget v7, v7, v6

    iget-object v8, v0, Landroidx/appcompat/widget/z;->i:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    iget-object v9, v0, Landroidx/appcompat/widget/z;->i:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v9

    if-eqz v9, :cond_2f

    iget-object v10, v0, Landroidx/appcompat/widget/z;->i:Landroid/widget/TextView;

    invoke-interface {v9, v8, v10}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_2f

    move-object v8, v9

    :cond_2f
    iget-object v9, v0, Landroidx/appcompat/widget/z;->i:Landroid/widget/TextView;

    invoke-static {v9}, Landroidx/appcompat/widget/z$a;->b(Landroid/widget/TextView;)I

    move-result v9

    iget-object v10, v0, Landroidx/appcompat/widget/z;->h:Landroid/text/TextPaint;

    if-nez v10, :cond_41

    new-instance v10, Landroid/text/TextPaint;

    invoke-direct {v10}, Landroid/text/TextPaint;-><init>()V

    iput-object v10, v0, Landroidx/appcompat/widget/z;->h:Landroid/text/TextPaint;

    goto :goto_44

    :cond_41
    invoke-virtual {v10}, Landroid/graphics/Paint;->reset()V

    :goto_44
    iget-object v10, v0, Landroidx/appcompat/widget/z;->h:Landroid/text/TextPaint;

    iget-object v11, v0, Landroidx/appcompat/widget/z;->i:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iget-object v10, v0, Landroidx/appcompat/widget/z;->h:Landroid/text/TextPaint;

    int-to-float v7, v7

    invoke-virtual {v10, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v7, v0, Landroidx/appcompat/widget/z;->i:Landroid/widget/TextView;

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const-string v11, "getLayoutAlignment"

    invoke-static {v7, v11, v10}, Landroidx/appcompat/widget/z;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Landroid/text/Layout$Alignment;

    iget v7, v1, Landroid/graphics/RectF;->right:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v12

    iget-object v14, v0, Landroidx/appcompat/widget/z;->i:Landroid/widget/TextView;

    iget-object v15, v0, Landroidx/appcompat/widget/z;->h:Landroid/text/TextPaint;

    iget-object v7, v0, Landroidx/appcompat/widget/z;->k:Landroidx/appcompat/widget/z$d;

    move-object v10, v8

    move v13, v9

    move-object/from16 v16, v7

    invoke-static/range {v10 .. v16}, Landroidx/appcompat/widget/z$c;->a(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;IILandroid/widget/TextView;Landroid/text/TextPaint;Landroidx/appcompat/widget/z$f;)Landroid/text/StaticLayout;

    move-result-object v7

    const/4 v10, -0x1

    if-eq v9, v10, :cond_8f

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v10

    if-gt v10, v9, :cond_9a

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-virtual {v7, v9}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v9

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-eq v9, v8, :cond_8f

    goto :goto_9a

    :cond_8f
    invoke-virtual {v7}, Landroid/text/Layout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget v8, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_9c

    :cond_9a
    :goto_9a
    move v7, v4

    goto :goto_9d

    :cond_9c
    move v7, v3

    :goto_9d
    if-eqz v7, :cond_a8

    add-int/lit8 v6, v6, 0x1

    move/from16 v17, v6

    move v6, v5

    move/from16 v5, v17

    goto/16 :goto_e

    :cond_a8
    add-int/lit8 v6, v6, -0x1

    move v2, v6

    goto/16 :goto_e

    :cond_ad
    iget-object v1, v0, Landroidx/appcompat/widget/z;->f:[I

    aget v1, v1, v6

    return v1

    :cond_b2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No available text sizes to choose from."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final f(FI)V
    .registers 5

    iget-object v0, p0, Landroidx/appcompat/widget/z;->j:Landroid/content/Context;

    if-nez v0, :cond_9

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_d

    :cond_9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_d
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p2, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iget-object p2, p0, Landroidx/appcompat/widget/z;->i:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result p2

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_67

    iget-object p2, p0, Landroidx/appcompat/widget/z;->i:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Landroidx/appcompat/widget/z;->i:Landroid/widget/TextView;

    invoke-static {p1}, Landroidx/appcompat/widget/z$b;->a(Landroid/view/View;)Z

    move-result p1

    iget-object p2, p0, Landroidx/appcompat/widget/z;->i:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p2

    if-eqz p2, :cond_67

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroidx/appcompat/widget/z;->b:Z

    :try_start_3d
    const-string v0, "nullLayouts"

    invoke-static {v0}, Landroidx/appcompat/widget/z;->d(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_55

    iget-object v1, p0, Landroidx/appcompat/widget/z;->i:Landroid/widget/TextView;

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_4c} :catch_4d

    goto :goto_55

    :catch_4d
    move-exception p2

    const-string v0, "ACTVAutoSizeHelper"

    const-string v1, "Failed to invoke TextView#nullLayouts() method"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_55
    :goto_55
    if-nez p1, :cond_5d

    iget-object p1, p0, Landroidx/appcompat/widget/z;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    goto :goto_62

    :cond_5d
    iget-object p1, p0, Landroidx/appcompat/widget/z;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    :goto_62
    iget-object p1, p0, Landroidx/appcompat/widget/z;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_67
    return-void
.end method

.method public final g()Z
    .registers 8

    invoke-virtual {p0}, Landroidx/appcompat/widget/z;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_41

    iget v0, p0, Landroidx/appcompat/widget/z;->a:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_41

    iget-boolean v0, p0, Landroidx/appcompat/widget/z;->g:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroidx/appcompat/widget/z;->f:[I

    array-length v0, v0

    if-nez v0, :cond_3e

    :cond_15
    iget v0, p0, Landroidx/appcompat/widget/z;->e:F

    iget v3, p0, Landroidx/appcompat/widget/z;->d:F

    sub-float/2addr v0, v3

    iget v3, p0, Landroidx/appcompat/widget/z;->c:F

    div-float/2addr v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v0, v3

    add-int/2addr v0, v2

    new-array v3, v0, [I

    :goto_26
    if-ge v1, v0, :cond_38

    iget v4, p0, Landroidx/appcompat/widget/z;->d:F

    int-to-float v5, v1

    iget v6, p0, Landroidx/appcompat/widget/z;->c:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_38
    invoke-static {v3}, Landroidx/appcompat/widget/z;->b([I)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/z;->f:[I

    :cond_3e
    iput-boolean v2, p0, Landroidx/appcompat/widget/z;->b:Z

    goto :goto_43

    :cond_41
    iput-boolean v1, p0, Landroidx/appcompat/widget/z;->b:Z

    :goto_43
    iget-boolean v0, p0, Landroidx/appcompat/widget/z;->b:Z

    return v0
.end method

.method public final h()Z
    .registers 6

    iget-object v0, p0, Landroidx/appcompat/widget/z;->f:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_9

    move v4, v3

    goto :goto_a

    :cond_9
    move v4, v2

    :goto_a
    iput-boolean v4, p0, Landroidx/appcompat/widget/z;->g:Z

    if-eqz v4, :cond_1f

    iput v3, p0, Landroidx/appcompat/widget/z;->a:I

    aget v2, v0, v2

    int-to-float v2, v2

    iput v2, p0, Landroidx/appcompat/widget/z;->d:F

    sub-int/2addr v1, v3

    aget v0, v0, v1

    int-to-float v0, v0

    iput v0, p0, Landroidx/appcompat/widget/z;->e:F

    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Landroidx/appcompat/widget/z;->c:F

    :cond_1f
    return v4
.end method

.method public final i()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/z;->i:Landroid/widget/TextView;

    instance-of v0, v0, Landroidx/appcompat/widget/h;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final j(FFF)V
    .registers 7

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const-string v2, "px) is less or equal to (0px)"

    if-lez v1, :cond_5a

    cmpg-float v1, p2, p1

    if-lez v1, :cond_36

    cmpg-float v0, p3, v0

    if-lez v0, :cond_1c

    const/4 v0, 0x1

    iput v0, p0, Landroidx/appcompat/widget/z;->a:I

    iput p1, p0, Landroidx/appcompat/widget/z;->d:F

    iput p2, p0, Landroidx/appcompat/widget/z;->e:F

    iput p3, p0, Landroidx/appcompat/widget/z;->c:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/widget/z;->g:Z

    return-void

    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The auto-size step granularity ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Maximum auto-size text size ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "px) is less or equal to minimum auto-size text size ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "px)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_5a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Minimum auto-size text size ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
