.class public final Lcn/kuaipan/android/utils/a;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Landroidx/appcompat/app/u;

.field public final b:Ljava/io/Reader;

.field public final c:[C

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public final h:Ljava/util/ArrayList;

.field public i:Lcn/kuaipan/android/utils/JsonToken;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:I

.field public m:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/appcompat/app/u;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroidx/appcompat/app/u;-><init>(I)V

    iput-object v0, p0, Lcn/kuaipan/android/utils/a;->a:Landroidx/appcompat/app/u;

    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcn/kuaipan/android/utils/a;->c:[C

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuaipan/android/utils/a;->d:I

    iput v0, p0, Lcn/kuaipan/android/utils/a;->e:I

    const/4 v0, 0x1

    iput v0, p0, Lcn/kuaipan/android/utils/a;->f:I

    iput v0, p0, Lcn/kuaipan/android/utils/a;->g:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuaipan/android/utils/a;->h:Ljava/util/ArrayList;

    sget-object v1, Lcn/kuaipan/android/utils/JsonScope;->EMPTY_DOCUMENT:Lcn/kuaipan/android/utils/JsonScope;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcn/kuaipan/android/utils/a;->b:Ljava/io/Reader;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->r()Lcn/kuaipan/android/utils/JsonToken;

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    iput-object v0, p0, Lcn/kuaipan/android/utils/a;->k:Ljava/lang/String;

    iput-object v0, p0, Lcn/kuaipan/android/utils/a;->j:Ljava/lang/String;

    return-void
.end method

.method public final close()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuaipan/android/utils/a;->k:Ljava/lang/String;

    iput-object v0, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->h:Ljava/util/ArrayList;

    sget-object v1, Lcn/kuaipan/android/utils/JsonScope;->CLOSED:Lcn/kuaipan/android/utils/JsonScope;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->b:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public final e()V
    .registers 2

    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-virtual {p0, v0}, Lcn/kuaipan/android/utils/a;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final g(Lcn/kuaipan/android/utils/JsonToken;)V
    .registers 5

    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->r()Lcn/kuaipan/android/utils/JsonToken;

    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    if-ne v0, p1, :cond_b

    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->a()V

    return-void

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " but was "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->r()Lcn/kuaipan/android/utils/JsonToken;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h(I)Z
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget v2, p0, Lcn/kuaipan/android/utils/a;->d:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1f

    iget-object v2, p0, Lcn/kuaipan/android/utils/a;->c:[C

    aget-char v2, v2, v1

    const/16 v4, 0xa

    if-ne v2, v4, :cond_17

    iget v2, p0, Lcn/kuaipan/android/utils/a;->f:I

    add-int/2addr v2, v3

    iput v2, p0, Lcn/kuaipan/android/utils/a;->f:I

    iput v3, p0, Lcn/kuaipan/android/utils/a;->g:I

    goto :goto_1c

    :cond_17
    iget v2, p0, Lcn/kuaipan/android/utils/a;->g:I

    add-int/2addr v2, v3

    iput v2, p0, Lcn/kuaipan/android/utils/a;->g:I

    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1f
    iget v1, p0, Lcn/kuaipan/android/utils/a;->e:I

    if-eq v1, v2, :cond_2c

    sub-int/2addr v1, v2

    iput v1, p0, Lcn/kuaipan/android/utils/a;->e:I

    iget-object v4, p0, Lcn/kuaipan/android/utils/a;->c:[C

    invoke-static {v4, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2e

    :cond_2c
    iput v0, p0, Lcn/kuaipan/android/utils/a;->e:I

    :goto_2e
    iput v0, p0, Lcn/kuaipan/android/utils/a;->d:I

    :cond_30
    iget-object v1, p0, Lcn/kuaipan/android/utils/a;->b:Ljava/io/Reader;

    iget-object v2, p0, Lcn/kuaipan/android/utils/a;->c:[C

    iget v4, p0, Lcn/kuaipan/android/utils/a;->e:I

    array-length v5, v2

    sub-int/2addr v5, v4

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_63

    iget v2, p0, Lcn/kuaipan/android/utils/a;->e:I

    add-int/2addr v2, v1

    iput v2, p0, Lcn/kuaipan/android/utils/a;->e:I

    iget v1, p0, Lcn/kuaipan/android/utils/a;->f:I

    if-ne v1, v3, :cond_60

    iget v1, p0, Lcn/kuaipan/android/utils/a;->g:I

    if-ne v1, v3, :cond_60

    if-lez v2, :cond_60

    iget-object v4, p0, Lcn/kuaipan/android/utils/a;->c:[C

    aget-char v4, v4, v0

    const v5, 0xfeff

    if-ne v4, v5, :cond_60

    iget v4, p0, Lcn/kuaipan/android/utils/a;->d:I

    add-int/2addr v4, v3

    iput v4, p0, Lcn/kuaipan/android/utils/a;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcn/kuaipan/android/utils/a;->g:I

    :cond_60
    if-lt v2, p1, :cond_30

    return v3

    :cond_63
    return v0
.end method

.method public final i(Z)Lcn/kuaipan/android/utils/JsonToken;
    .registers 7

    const/4 v0, 0x0

    const/16 v1, 0x5d

    const/16 v2, 0x3b

    const/16 v3, 0x2c

    if-eqz p1, :cond_f

    sget-object v4, Lcn/kuaipan/android/utils/JsonScope;->NONEMPTY_ARRAY:Lcn/kuaipan/android/utils/JsonScope;

    invoke-virtual {p0, v4}, Lcn/kuaipan/android/utils/a;->t(Lcn/kuaipan/android/utils/JsonScope;)V

    goto :goto_2b

    :cond_f
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->o()I

    move-result v4

    if-eq v4, v3, :cond_2b

    if-eq v4, v2, :cond_27

    if-ne v4, v1, :cond_21

    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->s()V

    sget-object p1, Lcn/kuaipan/android/utils/JsonToken;->END_ARRAY:Lcn/kuaipan/android/utils/JsonToken;

    iput-object p1, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    return-object p1

    :cond_21
    const-string p1, "Unterminated array"

    invoke-virtual {p0, p1}, Lcn/kuaipan/android/utils/a;->u(Ljava/lang/String;)V

    throw v0

    :cond_27
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->e()V

    throw v0

    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->o()I

    move-result v4

    if-eq v4, v3, :cond_4a

    if-eq v4, v2, :cond_4a

    if-eq v4, v1, :cond_40

    iget p1, p0, Lcn/kuaipan/android/utils/a;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcn/kuaipan/android/utils/a;->d:I

    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->q()Lcn/kuaipan/android/utils/JsonToken;

    move-result-object p1

    return-object p1

    :cond_40
    if-eqz p1, :cond_4a

    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->s()V

    sget-object p1, Lcn/kuaipan/android/utils/JsonToken;->END_ARRAY:Lcn/kuaipan/android/utils/JsonToken;

    iput-object p1, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    return-object p1

    :cond_4a
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->e()V

    throw v0
.end method

.method public final j(Z)Lcn/kuaipan/android/utils/JsonToken;
    .registers 5

    const/4 v0, 0x0

    const/16 v1, 0x7d

    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->o()I

    move-result p1

    if-eq p1, v1, :cond_12

    iget p1, p0, Lcn/kuaipan/android/utils/a;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcn/kuaipan/android/utils/a;->d:I

    goto :goto_36

    :cond_12
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->s()V

    sget-object p1, Lcn/kuaipan/android/utils/JsonToken;->END_OBJECT:Lcn/kuaipan/android/utils/JsonToken;

    iput-object p1, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    return-object p1

    :cond_1a
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->o()I

    move-result p1

    const/16 v2, 0x2c

    if-eq p1, v2, :cond_36

    const/16 v2, 0x3b

    if-eq p1, v2, :cond_36

    if-ne p1, v1, :cond_30

    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->s()V

    sget-object p1, Lcn/kuaipan/android/utils/JsonToken;->END_OBJECT:Lcn/kuaipan/android/utils/JsonToken;

    iput-object p1, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    return-object p1

    :cond_30
    const-string p1, "Unterminated object"

    invoke-virtual {p0, p1}, Lcn/kuaipan/android/utils/a;->u(Ljava/lang/String;)V

    throw v0

    :cond_36
    :goto_36
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->o()I

    move-result p1

    const/16 v1, 0x22

    if-eq p1, v1, :cond_4a

    const/16 v1, 0x27

    if-eq p1, v1, :cond_46

    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->e()V

    throw v0

    :cond_46
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->e()V

    throw v0

    :cond_4a
    int-to-char p1, p1

    invoke-virtual {p0, p1}, Lcn/kuaipan/android/utils/a;->p(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/kuaipan/android/utils/a;->j:Ljava/lang/String;

    sget-object p1, Lcn/kuaipan/android/utils/JsonScope;->DANGLING_NAME:Lcn/kuaipan/android/utils/JsonScope;

    invoke-virtual {p0, p1}, Lcn/kuaipan/android/utils/a;->t(Lcn/kuaipan/android/utils/JsonScope;)V

    sget-object p1, Lcn/kuaipan/android/utils/JsonToken;->NAME:Lcn/kuaipan/android/utils/JsonToken;

    iput-object p1, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    return-object p1
.end method

.method public final k()I
    .registers 6

    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->r()Lcn/kuaipan/android/utils/JsonToken;

    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->STRING:Lcn/kuaipan/android/utils/JsonToken;

    if-eq v0, v1, :cond_23

    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->NUMBER:Lcn/kuaipan/android/utils/JsonToken;

    if-ne v0, v1, :cond_e

    goto :goto_23

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected an int but was "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    :goto_23
    :try_start_23
    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_29} :catch_2a

    goto :goto_37

    :catch_2a
    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v2, v0

    int-to-double v3, v2

    cmpl-double v0, v3, v0

    if-nez v0, :cond_3b

    move v0, v2

    :goto_37
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->a()V

    return v0

    :cond_3b
    new-instance v0, Ljava/lang/NumberFormatException;

    iget-object v1, p0, Lcn/kuaipan/android/utils/a;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final l()J
    .registers 7

    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->r()Lcn/kuaipan/android/utils/JsonToken;

    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->STRING:Lcn/kuaipan/android/utils/JsonToken;

    if-eq v0, v1, :cond_23

    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->NUMBER:Lcn/kuaipan/android/utils/JsonToken;

    if-ne v0, v1, :cond_e

    goto :goto_23

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected a long but was "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    :goto_23
    :try_start_23
    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_29} :catch_2a

    goto :goto_37

    :catch_2a
    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v2, v0

    long-to-double v4, v2

    cmpl-double v0, v4, v0

    if-nez v0, :cond_3b

    move-wide v0, v2

    :goto_37
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->a()V

    return-wide v0

    :cond_3b
    new-instance v0, Ljava/lang/NumberFormatException;

    iget-object v1, p0, Lcn/kuaipan/android/utils/a;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final m()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->r()Lcn/kuaipan/android/utils/JsonToken;

    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->NAME:Lcn/kuaipan/android/utils/JsonToken;

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->a()V

    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected a name but was "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->r()Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final o()I
    .registers 6

    :cond_0
    iget v0, p0, Lcn/kuaipan/android/utils/a;->d:I

    iget v1, p0, Lcn/kuaipan/android/utils/a;->e:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_16

    invoke-virtual {p0, v2}, Lcn/kuaipan/android/utils/a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_16

    :cond_e
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "End of input"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_16
    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->c:[C

    iget v1, p0, Lcn/kuaipan/android/utils/a;->d:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcn/kuaipan/android/utils/a;->d:I

    aget-char v0, v0, v1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x23

    const/4 v4, 0x0

    if-eq v0, v1, :cond_49

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_3a

    return v0

    :cond_3a
    iget v1, p0, Lcn/kuaipan/android/utils/a;->e:I

    if-ne v3, v1, :cond_45

    invoke-virtual {p0, v2}, Lcn/kuaipan/android/utils/a;->h(I)Z

    move-result v1

    if-nez v1, :cond_45

    return v0

    :cond_45
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->e()V

    throw v4

    :cond_49
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->e()V

    throw v4
.end method

.method public final p(C)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    move-object v1, v0

    :goto_2
    iget v2, p0, Lcn/kuaipan/android/utils/a;->d:I

    :cond_4
    :goto_4
    iget v3, p0, Lcn/kuaipan/android/utils/a;->d:I

    iget v4, p0, Lcn/kuaipan/android/utils/a;->e:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_b2

    iget-object v4, p0, Lcn/kuaipan/android/utils/a;->c:[C

    add-int/lit8 v6, v3, 0x1

    iput v6, p0, Lcn/kuaipan/android/utils/a;->d:I

    aget-char v3, v4, v3

    if-ne v3, p1, :cond_2a

    if-nez v1, :cond_20

    iget-object p1, p0, Lcn/kuaipan/android/utils/a;->a:Landroidx/appcompat/app/u;

    sub-int/2addr v6, v2

    sub-int/2addr v6, v5

    invoke-virtual {p1, v4, v2, v6}, Landroidx/appcompat/app/u;->a([CII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_20
    sub-int/2addr v6, v2

    sub-int/2addr v6, v5

    invoke-virtual {v1, v4, v2, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2a
    const/16 v4, 0x5c

    if-ne v3, v4, :cond_4

    if-nez v1, :cond_35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :cond_35
    iget-object v3, p0, Lcn/kuaipan/android/utils/a;->c:[C

    iget v4, p0, Lcn/kuaipan/android/utils/a;->d:I

    sub-int/2addr v4, v2

    sub-int/2addr v4, v5

    invoke-virtual {v1, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/kuaipan/android/utils/a;->d:I

    iget v3, p0, Lcn/kuaipan/android/utils/a;->e:I

    const-string v4, "Unterminated escape sequence"

    if-ne v2, v3, :cond_51

    invoke-virtual {p0, v5}, Lcn/kuaipan/android/utils/a;->h(I)Z

    move-result v2

    if-eqz v2, :cond_4d

    goto :goto_51

    :cond_4d
    invoke-virtual {p0, v4}, Lcn/kuaipan/android/utils/a;->u(Ljava/lang/String;)V

    throw v0

    :cond_51
    :goto_51
    iget-object v2, p0, Lcn/kuaipan/android/utils/a;->c:[C

    iget v3, p0, Lcn/kuaipan/android/utils/a;->d:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcn/kuaipan/android/utils/a;->d:I

    aget-char v2, v2, v3

    const/16 v3, 0x62

    if-eq v2, v3, :cond_a9

    const/16 v3, 0x66

    if-eq v2, v3, :cond_a6

    const/16 v3, 0x6e

    if-eq v2, v3, :cond_a3

    const/16 v3, 0x72

    if-eq v2, v3, :cond_a0

    const/16 v3, 0x74

    if-eq v2, v3, :cond_9d

    const/16 v3, 0x75

    if-eq v2, v3, :cond_74

    goto :goto_ab

    :cond_74
    add-int/lit8 v5, v5, 0x4

    iget v2, p0, Lcn/kuaipan/android/utils/a;->e:I

    const/4 v3, 0x4

    if-le v5, v2, :cond_86

    invoke-virtual {p0, v3}, Lcn/kuaipan/android/utils/a;->h(I)Z

    move-result v2

    if-eqz v2, :cond_82

    goto :goto_86

    :cond_82
    invoke-virtual {p0, v4}, Lcn/kuaipan/android/utils/a;->u(Ljava/lang/String;)V

    throw v0

    :cond_86
    :goto_86
    iget-object v2, p0, Lcn/kuaipan/android/utils/a;->a:Landroidx/appcompat/app/u;

    iget-object v4, p0, Lcn/kuaipan/android/utils/a;->c:[C

    iget v5, p0, Lcn/kuaipan/android/utils/a;->d:I

    invoke-virtual {v2, v4, v5, v3}, Landroidx/appcompat/app/u;->a([CII)Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcn/kuaipan/android/utils/a;->d:I

    add-int/2addr v4, v3

    iput v4, p0, Lcn/kuaipan/android/utils/a;->d:I

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    goto :goto_ab

    :cond_9d
    const/16 v2, 0x9

    goto :goto_ab

    :cond_a0
    const/16 v2, 0xd

    goto :goto_ab

    :cond_a3
    const/16 v2, 0xa

    goto :goto_ab

    :cond_a6
    const/16 v2, 0xc

    goto :goto_ab

    :cond_a9
    const/16 v2, 0x8

    :goto_ab
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/kuaipan/android/utils/a;->d:I

    goto/16 :goto_4

    :cond_b2
    if-nez v1, :cond_b9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :cond_b9
    iget-object v3, p0, Lcn/kuaipan/android/utils/a;->c:[C

    iget v4, p0, Lcn/kuaipan/android/utils/a;->d:I

    sub-int/2addr v4, v2

    invoke-virtual {v1, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Lcn/kuaipan/android/utils/a;->h(I)Z

    move-result v2

    if-eqz v2, :cond_c9

    goto/16 :goto_2

    :cond_c9
    const-string p1, "Unterminated string"

    invoke-virtual {p0, p1}, Lcn/kuaipan/android/utils/a;->u(Ljava/lang/String;)V

    throw v0
.end method

.method public final q()Lcn/kuaipan/android/utils/JsonToken;
    .registers 15

    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->o()I

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_21c

    const/16 v1, 0x27

    const/4 v2, 0x0

    if-eq v0, v1, :cond_218

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_20c

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_200

    iget v0, p0, Lcn/kuaipan/android/utils/a;->d:I

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    iput v0, p0, Lcn/kuaipan/android/utils/a;->d:I

    const/4 v0, -0x1

    iput v0, p0, Lcn/kuaipan/android/utils/a;->l:I

    const/4 v4, 0x0

    iput v4, p0, Lcn/kuaipan/android/utils/a;->m:I

    move-object v6, v2

    :cond_22
    move v5, v4

    :goto_23
    iget v7, p0, Lcn/kuaipan/android/utils/a;->d:I

    add-int/2addr v7, v5

    iget v8, p0, Lcn/kuaipan/android/utils/a;->e:I

    if-ge v7, v8, :cond_6a

    iget-object v8, p0, Lcn/kuaipan/android/utils/a;->c:[C

    aget-char v7, v8, v7

    const/16 v8, 0x9

    if-eq v7, v8, :cond_7e

    const/16 v8, 0xa

    if-eq v7, v8, :cond_7e

    const/16 v8, 0xc

    if-eq v7, v8, :cond_7e

    const/16 v8, 0xd

    if-eq v7, v8, :cond_7e

    const/16 v8, 0x20

    if-eq v7, v8, :cond_7e

    const/16 v8, 0x23

    if-eq v7, v8, :cond_66

    const/16 v8, 0x2c

    if-eq v7, v8, :cond_7e

    const/16 v8, 0x2f

    if-eq v7, v8, :cond_66

    const/16 v8, 0x3d

    if-eq v7, v8, :cond_66

    if-eq v7, v1, :cond_7e

    const/16 v8, 0x7d

    if-eq v7, v8, :cond_7e

    const/16 v8, 0x3a

    if-eq v7, v8, :cond_7e

    const/16 v8, 0x3b

    if-eq v7, v8, :cond_66

    packed-switch v7, :pswitch_data_228

    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    :cond_66
    :pswitch_66  #0x5c
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->e()V

    throw v2

    :cond_6a
    iget-object v7, p0, Lcn/kuaipan/android/utils/a;->c:[C

    array-length v7, v7

    if-ge v5, v7, :cond_80

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v7}, Lcn/kuaipan/android/utils/a;->h(I)Z

    move-result v7

    if-eqz v7, :cond_78

    goto :goto_23

    :cond_78
    iget-object v1, p0, Lcn/kuaipan/android/utils/a;->c:[C

    iget v7, p0, Lcn/kuaipan/android/utils/a;->e:I

    aput-char v4, v1, v7

    :cond_7e
    :pswitch_7e  #0x5b, 0x5d
    move v4, v5

    goto :goto_9e

    :cond_80
    if-nez v6, :cond_87

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :cond_87
    iget-object v7, p0, Lcn/kuaipan/android/utils/a;->c:[C

    iget v8, p0, Lcn/kuaipan/android/utils/a;->d:I

    invoke-virtual {v6, v7, v8, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v7, p0, Lcn/kuaipan/android/utils/a;->m:I

    add-int/2addr v7, v5

    iput v7, p0, Lcn/kuaipan/android/utils/a;->m:I

    iget v7, p0, Lcn/kuaipan/android/utils/a;->d:I

    add-int/2addr v7, v5

    iput v7, p0, Lcn/kuaipan/android/utils/a;->d:I

    invoke-virtual {p0, v3}, Lcn/kuaipan/android/utils/a;->h(I)Z

    move-result v5

    if-nez v5, :cond_22

    :goto_9e
    if-nez v6, :cond_a6

    iget v1, p0, Lcn/kuaipan/android/utils/a;->d:I

    iput v1, p0, Lcn/kuaipan/android/utils/a;->l:I

    move-object v1, v2

    goto :goto_b1

    :cond_a6
    iget-object v1, p0, Lcn/kuaipan/android/utils/a;->c:[C

    iget v5, p0, Lcn/kuaipan/android/utils/a;->d:I

    invoke-virtual {v6, v1, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_b1
    iget v5, p0, Lcn/kuaipan/android/utils/a;->m:I

    add-int/2addr v5, v4

    iput v5, p0, Lcn/kuaipan/android/utils/a;->m:I

    iget v6, p0, Lcn/kuaipan/android/utils/a;->d:I

    add-int/2addr v6, v4

    iput v6, p0, Lcn/kuaipan/android/utils/a;->d:I

    iput-object v1, p0, Lcn/kuaipan/android/utils/a;->k:Ljava/lang/String;

    if-eqz v5, :cond_1fa

    iget v1, p0, Lcn/kuaipan/android/utils/a;->l:I

    if-ne v1, v0, :cond_c7

    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->STRING:Lcn/kuaipan/android/utils/JsonToken;

    goto/16 :goto_1ef

    :cond_c7
    const/16 v0, 0x55

    const/16 v4, 0x75

    const/16 v6, 0x4c

    const/16 v7, 0x6c

    const/4 v8, 0x4

    if-ne v5, v8, :cond_fe

    const/16 v9, 0x6e

    iget-object v10, p0, Lcn/kuaipan/android/utils/a;->c:[C

    aget-char v11, v10, v1

    if-eq v9, v11, :cond_de

    const/16 v9, 0x4e

    if-ne v9, v11, :cond_fe

    :cond_de
    add-int/lit8 v9, v1, 0x1

    aget-char v9, v10, v9

    if-eq v4, v9, :cond_e6

    if-ne v0, v9, :cond_fe

    :cond_e6
    add-int/lit8 v9, v1, 0x2

    aget-char v9, v10, v9

    if-eq v7, v9, :cond_ee

    if-ne v6, v9, :cond_fe

    :cond_ee
    add-int/lit8 v9, v1, 0x3

    aget-char v9, v10, v9

    if-eq v7, v9, :cond_f6

    if-ne v6, v9, :cond_fe

    :cond_f6
    const-string v0, "null"

    iput-object v0, p0, Lcn/kuaipan/android/utils/a;->k:Ljava/lang/String;

    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->NULL:Lcn/kuaipan/android/utils/JsonToken;

    goto/16 :goto_1ef

    :cond_fe
    const/16 v9, 0x45

    const/16 v10, 0x65

    if-ne v5, v8, :cond_134

    const/16 v8, 0x74

    iget-object v11, p0, Lcn/kuaipan/android/utils/a;->c:[C

    aget-char v12, v11, v1

    if-eq v8, v12, :cond_110

    const/16 v8, 0x54

    if-ne v8, v12, :cond_134

    :cond_110
    const/16 v8, 0x72

    add-int/lit8 v12, v1, 0x1

    aget-char v12, v11, v12

    if-eq v8, v12, :cond_11c

    const/16 v8, 0x52

    if-ne v8, v12, :cond_134

    :cond_11c
    add-int/lit8 v8, v1, 0x2

    aget-char v8, v11, v8

    if-eq v4, v8, :cond_124

    if-ne v0, v8, :cond_134

    :cond_124
    add-int/lit8 v0, v1, 0x3

    aget-char v0, v11, v0

    if-eq v10, v0, :cond_12c

    if-ne v9, v0, :cond_134

    :cond_12c
    const-string v0, "true"

    iput-object v0, p0, Lcn/kuaipan/android/utils/a;->k:Ljava/lang/String;

    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->BOOLEAN:Lcn/kuaipan/android/utils/JsonToken;

    goto/16 :goto_1ef

    :cond_134
    const/4 v0, 0x5

    if-ne v5, v0, :cond_173

    const/16 v0, 0x66

    iget-object v4, p0, Lcn/kuaipan/android/utils/a;->c:[C

    aget-char v8, v4, v1

    if-eq v0, v8, :cond_143

    const/16 v0, 0x46

    if-ne v0, v8, :cond_173

    :cond_143
    const/16 v0, 0x61

    add-int/lit8 v8, v1, 0x1

    aget-char v8, v4, v8

    if-eq v0, v8, :cond_14f

    const/16 v0, 0x41

    if-ne v0, v8, :cond_173

    :cond_14f
    add-int/lit8 v0, v1, 0x2

    aget-char v0, v4, v0

    if-eq v7, v0, :cond_157

    if-ne v6, v0, :cond_173

    :cond_157
    const/16 v0, 0x73

    add-int/lit8 v6, v1, 0x3

    aget-char v6, v4, v6

    if-eq v0, v6, :cond_163

    const/16 v0, 0x53

    if-ne v0, v6, :cond_173

    :cond_163
    add-int/lit8 v0, v1, 0x4

    aget-char v0, v4, v0

    if-eq v10, v0, :cond_16b

    if-ne v9, v0, :cond_173

    :cond_16b
    const-string v0, "false"

    iput-object v0, p0, Lcn/kuaipan/android/utils/a;->k:Ljava/lang/String;

    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->BOOLEAN:Lcn/kuaipan/android/utils/JsonToken;

    goto/16 :goto_1ef

    :cond_173
    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->a:Landroidx/appcompat/app/u;

    iget-object v4, p0, Lcn/kuaipan/android/utils/a;->c:[C

    invoke-virtual {v0, v4, v1, v5}, Landroidx/appcompat/app/u;->a([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/kuaipan/android/utils/a;->k:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->c:[C

    iget v1, p0, Lcn/kuaipan/android/utils/a;->l:I

    iget v4, p0, Lcn/kuaipan/android/utils/a;->m:I

    aget-char v5, v0, v1

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_191

    add-int/lit8 v5, v1, 0x1

    aget-char v7, v0, v5

    move v13, v7

    move v7, v5

    move v5, v13

    goto :goto_192

    :cond_191
    move v7, v1

    :goto_192
    const/16 v8, 0x39

    const/16 v11, 0x30

    if-ne v5, v11, :cond_19c

    add-int/2addr v7, v3

    aget-char v5, v0, v7

    goto :goto_1ae

    :cond_19c
    const/16 v12, 0x31

    if-lt v5, v12, :cond_1ed

    if-gt v5, v8, :cond_1ed

    add-int/2addr v7, v3

    aget-char v5, v0, v7

    :goto_1a5
    if-lt v5, v11, :cond_1ae

    if-gt v5, v8, :cond_1ae

    add-int/lit8 v7, v7, 0x1

    aget-char v5, v0, v7

    goto :goto_1a5

    :cond_1ae
    :goto_1ae
    const/16 v12, 0x2e

    if-ne v5, v12, :cond_1bf

    add-int/lit8 v7, v7, 0x1

    aget-char v5, v0, v7

    :goto_1b6
    if-lt v5, v11, :cond_1bf

    if-gt v5, v8, :cond_1bf

    add-int/lit8 v7, v7, 0x1

    aget-char v5, v0, v7

    goto :goto_1b6

    :cond_1bf
    if-eq v5, v10, :cond_1c3

    if-ne v5, v9, :cond_1e1

    :cond_1c3
    add-int/lit8 v7, v7, 0x1

    aget-char v5, v0, v7

    const/16 v9, 0x2b

    if-eq v5, v9, :cond_1cd

    if-ne v5, v6, :cond_1d1

    :cond_1cd
    add-int/lit8 v7, v7, 0x1

    aget-char v5, v0, v7

    :cond_1d1
    if-lt v5, v11, :cond_1ea

    if-gt v5, v8, :cond_1ea

    add-int/2addr v7, v3

    aget-char v3, v0, v7

    :goto_1d8
    if-lt v3, v11, :cond_1e1

    if-gt v3, v8, :cond_1e1

    add-int/lit8 v7, v7, 0x1

    aget-char v3, v0, v7

    goto :goto_1d8

    :cond_1e1
    add-int/2addr v1, v4

    if-ne v7, v1, :cond_1e7

    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->NUMBER:Lcn/kuaipan/android/utils/JsonToken;

    goto :goto_1ef

    :cond_1e7
    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->STRING:Lcn/kuaipan/android/utils/JsonToken;

    goto :goto_1ef

    :cond_1ea
    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->STRING:Lcn/kuaipan/android/utils/JsonToken;

    goto :goto_1ef

    :cond_1ed
    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->STRING:Lcn/kuaipan/android/utils/JsonToken;

    :goto_1ef
    iput-object v0, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->STRING:Lcn/kuaipan/android/utils/JsonToken;

    if-eq v0, v1, :cond_1f6

    return-object v0

    :cond_1f6
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->e()V

    throw v2

    :cond_1fa
    const-string v0, "Expected literal value"

    invoke-virtual {p0, v0}, Lcn/kuaipan/android/utils/a;->u(Ljava/lang/String;)V

    throw v2

    :cond_200
    sget-object v0, Lcn/kuaipan/android/utils/JsonScope;->EMPTY_OBJECT:Lcn/kuaipan/android/utils/JsonScope;

    iget-object v1, p0, Lcn/kuaipan/android/utils/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->BEGIN_OBJECT:Lcn/kuaipan/android/utils/JsonToken;

    iput-object v0, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    return-object v0

    :cond_20c
    sget-object v0, Lcn/kuaipan/android/utils/JsonScope;->EMPTY_ARRAY:Lcn/kuaipan/android/utils/JsonScope;

    iget-object v1, p0, Lcn/kuaipan/android/utils/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->BEGIN_ARRAY:Lcn/kuaipan/android/utils/JsonToken;

    iput-object v0, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    return-object v0

    :cond_218
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->e()V

    throw v2

    :cond_21c
    int-to-char v0, v0

    invoke-virtual {p0, v0}, Lcn/kuaipan/android/utils/a;->p(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/kuaipan/android/utils/a;->k:Ljava/lang/String;

    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->STRING:Lcn/kuaipan/android/utils/JsonToken;

    iput-object v0, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    return-object v0

    :pswitch_data_228
    .packed-switch 0x5b
        :pswitch_7e  #0000005b
        :pswitch_66  #0000005c
        :pswitch_7e  #0000005d
    .end packed-switch
.end method

.method public final r()Lcn/kuaipan/android/utils/JsonToken;
    .registers 5

    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    sget-object v0, Lcn/kuaipan/android/utils/a$a;->a:[I

    iget-object v1, p0, Lcn/kuaipan/android/utils/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/kuaipan/android/utils/JsonScope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_9c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_27  #0x8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2f  #0x7
    :try_start_2f
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->q()Lcn/kuaipan/android/utils/JsonToken;

    const-string v0, "Expected EOF"

    invoke-virtual {p0, v0}, Lcn/kuaipan/android/utils/a;->u(Ljava/lang/String;)V

    throw v3
    :try_end_38
    .catch Ljava/io/EOFException; {:try_start_2f .. :try_end_38} :catch_38

    :catch_38
    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->END_DOCUMENT:Lcn/kuaipan/android/utils/JsonToken;

    iput-object v0, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    return-object v0

    :pswitch_3d  #0x6
    invoke-virtual {p0, v1}, Lcn/kuaipan/android/utils/a;->j(Z)Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v0

    return-object v0

    :pswitch_42  #0x5
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->o()I

    move-result v0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_58

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_54

    const-string v0, "Expected \':\'"

    invoke-virtual {p0, v0}, Lcn/kuaipan/android/utils/a;->u(Ljava/lang/String;)V

    throw v3

    :cond_54
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->e()V

    throw v3

    :cond_58
    sget-object v0, Lcn/kuaipan/android/utils/JsonScope;->NONEMPTY_OBJECT:Lcn/kuaipan/android/utils/JsonScope;

    invoke-virtual {p0, v0}, Lcn/kuaipan/android/utils/a;->t(Lcn/kuaipan/android/utils/JsonScope;)V

    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->q()Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v0

    return-object v0

    :pswitch_62  #0x4
    invoke-virtual {p0, v2}, Lcn/kuaipan/android/utils/a;->j(Z)Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v0

    return-object v0

    :pswitch_67  #0x3
    invoke-virtual {p0, v1}, Lcn/kuaipan/android/utils/a;->i(Z)Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v0

    return-object v0

    :pswitch_6c  #0x2
    invoke-virtual {p0, v2}, Lcn/kuaipan/android/utils/a;->i(Z)Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v0

    return-object v0

    :pswitch_71  #0x1
    sget-object v0, Lcn/kuaipan/android/utils/JsonScope;->NONEMPTY_DOCUMENT:Lcn/kuaipan/android/utils/JsonScope;

    invoke-virtual {p0, v0}, Lcn/kuaipan/android/utils/a;->t(Lcn/kuaipan/android/utils/JsonScope;)V

    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->q()Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v0

    iget-object v1, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    sget-object v2, Lcn/kuaipan/android/utils/JsonToken;->BEGIN_ARRAY:Lcn/kuaipan/android/utils/JsonToken;

    if-eq v1, v2, :cond_9a

    sget-object v2, Lcn/kuaipan/android/utils/JsonToken;->BEGIN_OBJECT:Lcn/kuaipan/android/utils/JsonToken;

    if-ne v1, v2, :cond_85

    goto :goto_9a

    :cond_85
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Expected JSON document to start with \'[\' or \'{\' but was "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9a
    :goto_9a
    return-object v0

    nop

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_71  #00000001
        :pswitch_6c  #00000002
        :pswitch_67  #00000003
        :pswitch_62  #00000004
        :pswitch_42  #00000005
        :pswitch_3d  #00000006
        :pswitch_2f  #00000007
        :pswitch_27  #00000008
    .end packed-switch
.end method

.method public final s()V
    .registers 3

    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuaipan/android/utils/JsonScope;

    return-void
.end method

.method public final t(Lcn/kuaipan/android/utils/JsonScope;)V
    .registers 4

    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcn/kuaipan/android/utils/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " near "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcn/kuaipan/android/utils/a;->d:I

    const/16 v3, 0x14

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v4, p0, Lcn/kuaipan/android/utils/a;->c:[C

    iget v5, p0, Lcn/kuaipan/android/utils/a;->d:I

    sub-int/2addr v5, v2

    invoke-virtual {v1, v4, v5, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/kuaipan/android/utils/a;->e:I

    iget v4, p0, Lcn/kuaipan/android/utils/a;->d:I

    sub-int/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcn/kuaipan/android/utils/a;->c:[C

    iget v4, p0, Lcn/kuaipan/android/utils/a;->d:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Ljava/lang/String;)V
    .registers 8

    new-instance v0, Lcn/kuaipan/android/utils/MalformedJsonException;

    const-string v1, " at line "

    invoke-static {p1, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcn/kuaipan/android/utils/a;->f:I

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    iget v4, p0, Lcn/kuaipan/android/utils/a;->d:I

    const/16 v5, 0xa

    if-ge v3, v4, :cond_1d

    iget-object v4, p0, Lcn/kuaipan/android/utils/a;->c:[C

    aget-char v4, v4, v3

    if-ne v4, v5, :cond_1a

    add-int/lit8 v1, v1, 0x1

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1d
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " column "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/kuaipan/android/utils/a;->g:I

    :goto_27
    iget v3, p0, Lcn/kuaipan/android/utils/a;->d:I

    if-ge v2, v3, :cond_38

    iget-object v3, p0, Lcn/kuaipan/android/utils/a;->c:[C

    aget-char v3, v3, v2

    if-ne v3, v5, :cond_33

    const/4 v1, 0x1

    goto :goto_35

    :cond_33
    add-int/lit8 v1, v1, 0x1

    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_38
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcn/kuaipan/android/utils/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
