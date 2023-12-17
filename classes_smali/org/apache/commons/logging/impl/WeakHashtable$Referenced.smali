.class final Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
.super Ljava/lang/Object;
.source "WeakHashtable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/logging/impl/WeakHashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Referenced"
.end annotation


# instance fields
.field private final hashCode:I

.field private final reference:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->reference:Ljava/lang/ref/WeakReference;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->hashCode:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .registers 5

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;Lorg/apache/commons/logging/impl/WeakHashtable$1;)V

    iput-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->reference:Ljava/lang/ref/WeakReference;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->hashCode:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lorg/apache/commons/logging/impl/WeakHashtable$1;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lorg/apache/commons/logging/impl/WeakHashtable$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$100(Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;)Ljava/lang/Object;
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private getValue()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->reference:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2b

    .line 6
    check-cast p1, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    .line 8
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->getValue()Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p1}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->getValue()Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    if-nez v0, :cond_27

    .line 18
    const/4 v0, 0x1

    .line 19
    if-nez v2, :cond_16

    .line 21
    move v2, v0

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move v2, v1

    .line 24
    :goto_17
    if-ne v2, v0, :cond_25

    .line 26
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->hashCode()I

    .line 29
    move-result v2

    .line 30
    invoke-virtual {p1}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->hashCode()I

    .line 33
    move-result p1

    .line 34
    if-ne v2, p1, :cond_2b

    .line 36
    move v1, v0

    .line 37
    goto :goto_2b

    .line 38
    :cond_25
    move v1, v2

    .line 39
    goto :goto_2b

    .line 40
    :cond_27
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result v1

    .line 44
    :cond_2b
    :goto_2b
    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->hashCode:I

    .line 3
    return v0
.end method
