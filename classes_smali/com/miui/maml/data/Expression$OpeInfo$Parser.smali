.class public Lcom/miui/maml/data/Expression$OpeInfo$Parser;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Expression$OpeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parser"
.end annotation


# instance fields
.field private mFlags:[I

.field private mMatch:I

.field private mStep:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Lcom/miui/maml/data/Expression$OpeInfo;->access$000()I

    .line 7
    move-result v0

    .line 8
    new-array v0, v0, [I

    .line 10
    iput-object v0, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    .line 12
    return-void
.end method


# virtual methods
.method public accept(CZ)Z
    .registers 10

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p2, :cond_16

    .line 5
    move p2, v1

    .line 6
    :goto_5
    invoke-static {}, Lcom/miui/maml/data/Expression$OpeInfo;->access$000()I

    .line 9
    move-result v2

    .line 10
    if-ge p2, v2, :cond_12

    .line 12
    iget-object v2, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    .line 14
    aput v1, v2, p2

    .line 16
    add-int/lit8 p2, p2, 0x1

    .line 18
    goto :goto_5

    .line 19
    :cond_12
    iput v1, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    .line 21
    iput v0, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mMatch:I

    .line 23
    :cond_16
    move p2, v1

    .line 24
    move v2, p2

    .line 25
    :goto_18
    invoke-static {}, Lcom/miui/maml/data/Expression$OpeInfo;->access$000()I

    .line 28
    move-result v3

    .line 29
    const/4 v4, 0x1

    .line 30
    if-ge p2, v3, :cond_57

    .line 32
    iget-object v3, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    .line 34
    aget v3, v3, p2

    .line 36
    if-ne v3, v0, :cond_26

    .line 38
    goto :goto_54

    .line 39
    :cond_26
    invoke-static {}, Lcom/miui/maml/data/Expression$OpeInfo;->access$100()[Ljava/lang/String;

    .line 42
    move-result-object v3

    .line 43
    aget-object v3, v3, p2

    .line 45
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 48
    move-result v5

    .line 49
    iget v6, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    .line 51
    if-le v5, v6, :cond_50

    .line 53
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    .line 56
    move-result v5

    .line 57
    if-ne v5, p1, :cond_50

    .line 59
    iget v2, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    .line 61
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 64
    move-result v3

    .line 65
    sub-int/2addr v3, v4

    .line 66
    if-ne v2, v3, :cond_45

    .line 68
    move v2, v4

    .line 69
    goto :goto_46

    .line 70
    :cond_45
    move v2, v1

    .line 71
    :goto_46
    iget-object v3, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    .line 73
    aput v1, v3, p2

    .line 75
    if-eqz v2, :cond_4e

    .line 77
    iput p2, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mMatch:I

    .line 79
    :cond_4e
    move v2, v4

    .line 80
    goto :goto_54

    .line 81
    :cond_50
    iget-object v3, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    .line 83
    aput v0, v3, p2

    .line 85
    :goto_54
    add-int/lit8 p2, p2, 0x1

    .line 87
    goto :goto_18

    .line 88
    :cond_57
    if-eqz v2, :cond_5e

    .line 90
    iget p1, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    .line 92
    add-int/2addr p1, v4

    .line 93
    iput p1, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    .line 95
    :cond_5e
    return v2
.end method

.method public getMatch()Lcom/miui/maml/data/Expression$Ope;
    .registers 3

    .line 1
    iget v0, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mMatch:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_8

    .line 6
    sget-object v0, Lcom/miui/maml/data/Expression$Ope;->INVALID:Lcom/miui/maml/data/Expression$Ope;

    .line 8
    goto :goto_10

    .line 9
    :cond_8
    invoke-static {}, Lcom/miui/maml/data/Expression$Ope;->values()[Lcom/miui/maml/data/Expression$Ope;

    .line 12
    move-result-object v0

    .line 13
    iget v1, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mMatch:I

    .line 15
    aget-object v0, v0, v1

    .line 17
    :goto_10
    return-object v0
.end method
