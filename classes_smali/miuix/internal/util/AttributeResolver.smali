.class public Lmiuix/internal/util/AttributeResolver;
.super Ljava/lang/Object;
.source "AttributeResolver.java"


# static fields
.field private static final TYPED_VALUE:Landroid/util/TypedValue;

.field private static final TYPED_VALUE_THREAD_LOCAL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    .line 3
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 6
    sput-object v0, Lmiuix/internal/util/AttributeResolver;->TYPED_VALUE:Landroid/util/TypedValue;

    .line 8
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 10
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 13
    sput-object v0, Lmiuix/internal/util/AttributeResolver;->TYPED_VALUE_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/InstantiationException;

    .line 6
    const-string v1, "Cannot instantiate utility class"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    .line 11
    throw v0
.end method

.method private static getTypedValue(Landroid/content/Context;)Landroid/util/TypedValue;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 8
    move-result-object p0

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 12
    move-result-object v0

    .line 13
    if-ne p0, v0, :cond_11

    .line 15
    sget-object p0, Lmiuix/internal/util/AttributeResolver;->TYPED_VALUE:Landroid/util/TypedValue;

    .line 17
    return-object p0

    .line 18
    :cond_11
    sget-object p0, Lmiuix/internal/util/AttributeResolver;->TYPED_VALUE_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    .line 20
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/util/TypedValue;

    .line 26
    if-nez v0, :cond_23

    .line 28
    new-instance v0, Landroid/util/TypedValue;

    .line 30
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 36
    :cond_23
    return-object v0
.end method

.method private static innerResolveColor(Landroid/content/Context;I)Ljava/lang/Integer;
    .registers 5

    .line 1
    invoke-static {p0}, Lmiuix/internal/util/AttributeResolver;->getTypedValue(Landroid/content/Context;)Landroid/util/TypedValue;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_33

    .line 16
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 18
    if-lez p1, :cond_22

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    move-result-object p0

    .line 24
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 26
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    .line 29
    move-result p0

    .line 30
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_22
    iget p0, v0, Landroid/util/TypedValue;->type:I

    .line 37
    const/16 p1, 0x1c

    .line 39
    if-lt p0, p1, :cond_33

    .line 41
    const/16 p1, 0x1f

    .line 43
    if-gt p0, p1, :cond_33

    .line 45
    iget p0, v0, Landroid/util/TypedValue;->data:I

    .line 47
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_33
    const/4 p0, 0x0

    .line 53
    return-object p0
.end method

.method public static resolve(Landroid/content/Context;I)I
    .registers 4

    .line 1
    invoke-static {p0}, Lmiuix/internal/util/AttributeResolver;->getTypedValue(Landroid/content/Context;)Landroid/util/TypedValue;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 8
    move-result-object p0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_12

    .line 16
    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 p0, -0x1

    .line 20
    :goto_13
    return p0
.end method

.method public static resolveBoolean(Landroid/content/Context;IZ)Z
    .registers 5

    .line 1
    invoke-static {p0}, Lmiuix/internal/util/AttributeResolver;->getTypedValue(Landroid/content/Context;)Landroid/util/TypedValue;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 8
    move-result-object p0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_1d

    .line 16
    iget p0, v0, Landroid/util/TypedValue;->type:I

    .line 18
    const/16 p1, 0x12

    .line 20
    if-ne p0, p1, :cond_1b

    .line 22
    iget p0, v0, Landroid/util/TypedValue;->data:I

    .line 24
    if-eqz p0, :cond_1b

    .line 26
    move p2, v1

    .line 27
    goto :goto_1d

    .line 28
    :cond_1b
    const/4 p0, 0x0

    .line 29
    move p2, p0

    .line 30
    :cond_1d
    :goto_1d
    return p2
.end method

.method public static resolveColor(Landroid/content/Context;I)I
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lmiuix/internal/util/AttributeResolver;->innerResolveColor(Landroid/content/Context;I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 3
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static resolveColor(Landroid/content/Context;II)I
    .registers 3

    .line 4
    invoke-static {p0, p1}, Lmiuix/internal/util/AttributeResolver;->innerResolveColor(Landroid/content/Context;I)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 5
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_b
    return p2
.end method

.method public static resolveDimension(Landroid/content/Context;I)F
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, p1}, Lmiuix/internal/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    .line 8
    move-result p0

    .line 9
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static resolveDimensionPixelSize(Landroid/content/Context;I)I
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, p1}, Lmiuix/internal/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    .line 8
    move-result p0

    .line 9
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 1
    invoke-static {p0}, Lmiuix/internal/util/AttributeResolver;->getTypedValue(Landroid/content/Context;)Landroid/util/TypedValue;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_34

    .line 16
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 18
    if-lez p1, :cond_22

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    move-result-object p1

    .line 24
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p1, v0, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_22
    iget p0, v0, Landroid/util/TypedValue;->type:I

    .line 37
    const/16 p1, 0x1c

    .line 39
    if-lt p0, p1, :cond_34

    .line 41
    const/16 p1, 0x1f

    .line 43
    if-gt p0, p1, :cond_34

    .line 45
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    .line 47
    iget p1, v0, Landroid/util/TypedValue;->data:I

    .line 49
    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 52
    return-object p0

    .line 53
    :cond_34
    const/4 p0, 0x0

    .line 54
    return-object p0
.end method

.method public static resolveFloat(Landroid/content/Context;IF)F
    .registers 5

    .line 1
    invoke-static {p0}, Lmiuix/internal/util/AttributeResolver;->getTypedValue(Landroid/content/Context;)Landroid/util/TypedValue;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 8
    move-result-object p0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_17

    .line 16
    iget p0, v0, Landroid/util/TypedValue;->type:I

    .line 18
    const/4 p1, 0x4

    .line 19
    if-ne p0, p1, :cond_17

    .line 21
    iget p0, v0, Landroid/util/TypedValue;->data:I

    .line 23
    int-to-float p2, p0

    .line 24
    :cond_17
    return p2
.end method

.method public static resolveInt(Landroid/content/Context;II)I
    .registers 5

    .line 1
    invoke-static {p0}, Lmiuix/internal/util/AttributeResolver;->getTypedValue(Landroid/content/Context;)Landroid/util/TypedValue;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 8
    move-result-object p0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_1b

    .line 16
    iget p0, v0, Landroid/util/TypedValue;->type:I

    .line 18
    const/16 p1, 0x10

    .line 20
    if-lt p0, p1, :cond_1b

    .line 22
    const/16 p1, 0x1f

    .line 24
    if-gt p0, p1, :cond_1b

    .line 26
    iget p2, v0, Landroid/util/TypedValue;->data:I

    .line 28
    :cond_1b
    return p2
.end method

.method public static resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;
    .registers 4

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    .line 3
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 9
    move-result-object p0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_11

    .line 17
    return-object v0

    .line 18
    :cond_11
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method
