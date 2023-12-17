.class public final Lcom/google/firebase/components/Dependency;
.super Ljava/lang/Object;
.source "Dependency.java"


# instance fields
.field private final anInterface:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final injection:I

.field private final type:I


# direct methods
.method private constructor <init>(Ljava/lang/Class;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "Null dependency anInterface."

    .line 6
    invoke-static {p1, v0}, Lcom/google/firebase/components/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Class;

    .line 12
    iput-object p1, p0, Lcom/google/firebase/components/Dependency;->anInterface:Ljava/lang/Class;

    .line 14
    iput p2, p0, Lcom/google/firebase/components/Dependency;->type:I

    .line 16
    iput p3, p0, Lcom/google/firebase/components/Dependency;->injection:I

    .line 18
    return-void
.end method

.method public static deferred(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/firebase/components/Dependency;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/components/Dependency;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/components/Dependency;-><init>(Ljava/lang/Class;II)V

    .line 8
    return-object v0
.end method

.method private static describeInjection(I)Ljava/lang/String;
    .registers 3

    .line 1
    if-eqz p0, :cond_1a

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_17

    .line 6
    const/4 v0, 0x2

    .line 7
    if-ne p0, v0, :cond_b

    .line 9
    const-string p0, "deferred"

    .line 11
    return-object p0

    .line 12
    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    .line 14
    const-string v1, "Unsupported injection: "

    .line 16
    invoke-static {v1, p0}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 23
    throw v0

    .line 24
    :cond_17
    const-string p0, "provider"

    .line 26
    return-object p0

    .line 27
    :cond_1a
    const-string p0, "direct"

    .line 29
    return-object p0
.end method

.method public static optional(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/firebase/components/Dependency;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/components/Dependency;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1, v1}, Lcom/google/firebase/components/Dependency;-><init>(Ljava/lang/Class;II)V

    .line 7
    return-object v0
.end method

.method public static optionalProvider(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/firebase/components/Dependency;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/components/Dependency;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/components/Dependency;-><init>(Ljava/lang/Class;II)V

    .line 8
    return-object v0
.end method

.method public static required(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/firebase/components/Dependency;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/components/Dependency;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/components/Dependency;-><init>(Ljava/lang/Class;II)V

    .line 8
    return-object v0
.end method

.method public static requiredProvider(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/firebase/components/Dependency;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/components/Dependency;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1, v1}, Lcom/google/firebase/components/Dependency;-><init>(Ljava/lang/Class;II)V

    .line 7
    return-object v0
.end method

.method public static setOf(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/firebase/components/Dependency;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/components/Dependency;

    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/components/Dependency;-><init>(Ljava/lang/Class;II)V

    .line 8
    return-object v0
.end method

.method public static setOfProvider(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/firebase/components/Dependency;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/components/Dependency;

    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/components/Dependency;-><init>(Ljava/lang/Class;II)V

    .line 8
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lcom/google/firebase/components/Dependency;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1a

    .line 6
    check-cast p1, Lcom/google/firebase/components/Dependency;

    .line 8
    iget-object v0, p0, Lcom/google/firebase/components/Dependency;->anInterface:Ljava/lang/Class;

    .line 10
    iget-object v2, p1, Lcom/google/firebase/components/Dependency;->anInterface:Ljava/lang/Class;

    .line 12
    if-ne v0, v2, :cond_1a

    .line 14
    iget v0, p0, Lcom/google/firebase/components/Dependency;->type:I

    .line 16
    iget v2, p1, Lcom/google/firebase/components/Dependency;->type:I

    .line 18
    if-ne v0, v2, :cond_1a

    .line 20
    iget v0, p0, Lcom/google/firebase/components/Dependency;->injection:I

    .line 22
    iget p1, p1, Lcom/google/firebase/components/Dependency;->injection:I

    .line 24
    if-ne v0, p1, :cond_1a

    .line 26
    const/4 v1, 0x1

    .line 27
    :cond_1a
    return v1
.end method

.method public getInterface()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/components/Dependency;->anInterface:Ljava/lang/Class;

    .line 3
    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/components/Dependency;->anInterface:Ljava/lang/Class;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    move-result v0

    .line 7
    const v1, 0xf4243

    .line 10
    xor-int/2addr v0, v1

    .line 11
    mul-int/2addr v0, v1

    .line 12
    iget v2, p0, Lcom/google/firebase/components/Dependency;->type:I

    .line 14
    xor-int/2addr v0, v2

    .line 15
    mul-int/2addr v0, v1

    .line 16
    iget v1, p0, Lcom/google/firebase/components/Dependency;->injection:I

    .line 18
    xor-int/2addr v0, v1

    .line 19
    return v0
.end method

.method public isDeferred()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/firebase/components/Dependency;->injection:I

    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_7

    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    return v0
.end method

.method public isDirectInjection()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/firebase/components/Dependency;->injection:I

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public isRequired()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/firebase/components/Dependency;->type:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_6

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v1, 0x0

    .line 8
    :goto_7
    return v1
.end method

.method public isSet()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/firebase/components/Dependency;->type:I

    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_7

    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Dependency{anInterface="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/google/firebase/components/Dependency;->anInterface:Ljava/lang/Class;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", type="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget v1, p0, Lcom/google/firebase/components/Dependency;->type:I

    .line 20
    const/4 v2, 0x1

    .line 21
    if-ne v1, v2, :cond_19

    .line 23
    const-string v1, "required"

    .line 25
    goto :goto_20

    .line 26
    :cond_19
    if-nez v1, :cond_1e

    .line 28
    const-string v1, "optional"

    .line 30
    goto :goto_20

    .line 31
    :cond_1e
    const-string v1, "set"

    .line 33
    :goto_20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", injection="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget v1, p0, Lcom/google/firebase/components/Dependency;->injection:I

    .line 43
    invoke-static {v1}, Lcom/google/firebase/components/Dependency;->describeInjection(I)Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    const-string v2, "}"

    .line 49
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    return-object v0
.end method
