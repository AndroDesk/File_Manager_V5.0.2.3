.class public final Lu/e$a;
.super Ljava/lang/Object;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lu/h;

.field public b:[F

.field public c:[D

.field public d:[F

.field public e:[F

.field public f:[F

.field public g:Lu/b;

.field public h:[D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .registers 25

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lu/h;

    invoke-direct {v3}, Lu/h;-><init>()V

    iput-object v3, v0, Lu/e$a;->a:Lu/h;

    move/from16 v4, p1

    iput v4, v3, Lu/h;->e:I

    if-eqz v2, :cond_c3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    div-int/2addr v4, v5

    new-array v4, v4, [D

    const/16 v6, 0x28

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    const/16 v8, 0x2c

    invoke-virtual {v2, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    const/4 v10, 0x0

    move v11, v10

    :goto_2e
    const/4 v12, -0x1

    if-eq v9, v12, :cond_49

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v12, v11, 0x1

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    aput-wide v13, v4, v11

    add-int/lit8 v6, v9, 0x1

    invoke-virtual {v2, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    move v11, v12

    goto :goto_2e

    :cond_49
    const/16 v8, 0x29

    invoke-virtual {v2, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    invoke-virtual {v2, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v6, v11, 0x1

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    aput-wide v8, v4, v11

    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v2

    array-length v4, v2

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v4, v5

    array-length v6, v2

    sub-int/2addr v6, v7

    int-to-double v8, v6

    const-wide/high16 v11, 0x3ff0000000000000L  # 1.0

    div-double v8, v11, v8

    new-array v5, v5, [I

    aput v7, v5, v7

    aput v4, v5, v10

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    new-array v4, v4, [D

    move v7, v10

    :goto_7f
    array-length v13, v2

    if-ge v7, v13, :cond_bc

    aget-wide v13, v2, v7

    add-int v15, v7, v6

    aget-object v16, v5, v15

    aput-wide v13, v16, v10

    int-to-double v10, v7

    mul-double/2addr v10, v8

    aput-wide v10, v4, v15

    if-lez v7, :cond_b1

    mul-int/lit8 v12, v6, 0x2

    add-int/2addr v12, v7

    aget-object v15, v5, v12

    const-wide/high16 v16, 0x3ff0000000000000L  # 1.0

    add-double v18, v13, v16

    const/16 v20, 0x0

    aput-wide v18, v15, v20

    add-double v18, v10, v16

    aput-wide v18, v4, v12

    add-int/lit8 v12, v7, -0x1

    aget-object v15, v5, v12

    sub-double v13, v13, v16

    sub-double/2addr v13, v8

    aput-wide v13, v15, v20

    const-wide/high16 v13, -0x4010000000000000L  # -1.0

    add-double/2addr v10, v13

    sub-double/2addr v10, v8

    aput-wide v10, v4, v12

    goto :goto_b5

    :cond_b1
    const-wide/high16 v16, 0x3ff0000000000000L  # 1.0

    const/16 v20, 0x0

    :goto_b5
    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v11, v16

    move/from16 v10, v20

    goto :goto_7f

    :cond_bc
    new-instance v2, Lu/g;

    invoke-direct {v2, v4, v5}, Lu/g;-><init>([D[[D)V

    iput-object v2, v3, Lu/h;->d:Lu/g;

    :cond_c3
    new-array v2, v1, [F

    iput-object v2, v0, Lu/e$a;->b:[F

    new-array v2, v1, [D

    iput-object v2, v0, Lu/e$a;->c:[D

    new-array v2, v1, [F

    iput-object v2, v0, Lu/e$a;->d:[F

    new-array v2, v1, [F

    iput-object v2, v0, Lu/e$a;->e:[F

    new-array v2, v1, [F

    iput-object v2, v0, Lu/e$a;->f:[F

    new-array v1, v1, [F

    return-void
.end method
