.class final Lcom/airbnb/lottie/parser/moshi/JsonScope;
.super Ljava/lang/Object;
.source "JsonScope.java"


# static fields
.field public static final CLOSED:I

.field public static final DANGLING_NAME:I

.field public static final EMPTY_ARRAY:I

.field public static final EMPTY_DOCUMENT:I

.field public static final EMPTY_OBJECT:I

.field public static final NONEMPTY_ARRAY:I

.field public static final NONEMPTY_DOCUMENT:I

.field public static final NONEMPTY_OBJECT:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/airbnb/lottie/parser/moshi/JsonScope;->CLOSED:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/airbnb/lottie/parser/moshi/JsonScope;->DANGLING_NAME:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/airbnb/lottie/parser/moshi/JsonScope;->EMPTY_ARRAY:I

    const v0, 0x92d90

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/airbnb/lottie/parser/moshi/JsonScope;->EMPTY_DOCUMENT:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/airbnb/lottie/parser/moshi/JsonScope;->EMPTY_OBJECT:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/airbnb/lottie/parser/moshi/JsonScope;->NONEMPTY_ARRAY:I

    const v0, 0x92d91

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/airbnb/lottie/parser/moshi/JsonScope;->NONEMPTY_DOCUMENT:I

    const v0, 0x92d93

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/airbnb/lottie/parser/moshi/JsonScope;->NONEMPTY_OBJECT:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPath(I[I[Ljava/lang/String;[I)Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_b
    if-ge v1, p0, :cond_3e

    aget v2, p1, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2c

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2c

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1f

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1f

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1f

    goto :goto_3b

    :cond_1f
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v2, p2, v1

    if-eqz v2, :cond_3b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3b

    :cond_2c
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget v2, p3, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3b
    :goto_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
