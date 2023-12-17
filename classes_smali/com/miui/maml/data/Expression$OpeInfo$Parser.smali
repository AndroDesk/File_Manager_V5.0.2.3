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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/miui/maml/data/Expression$OpeInfo;->access$000()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    return-void
.end method


# virtual methods
.method public accept(CZ)Z
    .registers 10

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_16

    move p2, v1

    :goto_5
    invoke-static {}, Lcom/miui/maml/data/Expression$OpeInfo;->access$000()I

    move-result v2

    if-ge p2, v2, :cond_12

    iget-object v2, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    aput v1, v2, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_12
    iput v1, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    iput v0, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mMatch:I

    :cond_16
    move p2, v1

    move v2, p2

    :goto_18
    invoke-static {}, Lcom/miui/maml/data/Expression$OpeInfo;->access$000()I

    move-result v3

    const/4 v4, 0x1

    if-ge p2, v3, :cond_57

    iget-object v3, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    aget v3, v3, p2

    if-ne v3, v0, :cond_26

    goto :goto_54

    :cond_26
    invoke-static {}, Lcom/miui/maml/data/Expression$OpeInfo;->access$100()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    if-le v5, v6, :cond_50

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, p1, :cond_50

    iget v2, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_45

    move v2, v4

    goto :goto_46

    :cond_45
    move v2, v1

    :goto_46
    iget-object v3, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    aput v1, v3, p2

    if-eqz v2, :cond_4e

    iput p2, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mMatch:I

    :cond_4e
    move v2, v4

    goto :goto_54

    :cond_50
    iget-object v3, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    aput v0, v3, p2

    :goto_54
    add-int/lit8 p2, p2, 0x1

    goto :goto_18

    :cond_57
    if-eqz v2, :cond_5e

    iget p1, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    :cond_5e
    return v2
.end method

.method public getMatch()Lcom/miui/maml/data/Expression$Ope;
    .registers 3

    iget v0, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mMatch:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    sget-object v0, Lcom/miui/maml/data/Expression$Ope;->INVALID:Lcom/miui/maml/data/Expression$Ope;

    goto :goto_10

    :cond_8
    invoke-static {}, Lcom/miui/maml/data/Expression$Ope;->values()[Lcom/miui/maml/data/Expression$Ope;

    move-result-object v0

    iget v1, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mMatch:I

    aget-object v0, v0, v1

    :goto_10
    return-object v0
.end method
