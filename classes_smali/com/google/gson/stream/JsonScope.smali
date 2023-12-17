.class final Lcom/google/gson/stream/JsonScope;
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

    sput v0, Lcom/google/gson/stream/JsonScope;->CLOSED:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/gson/stream/JsonScope;->DANGLING_NAME:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/gson/stream/JsonScope;->EMPTY_ARRAY:I

    const v0, 0x92d90

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/gson/stream/JsonScope;->EMPTY_DOCUMENT:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/gson/stream/JsonScope;->EMPTY_OBJECT:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/gson/stream/JsonScope;->NONEMPTY_ARRAY:I

    const v0, 0x92d91

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/gson/stream/JsonScope;->NONEMPTY_DOCUMENT:I

    const v0, 0x92d93

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/gson/stream/JsonScope;->NONEMPTY_OBJECT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
