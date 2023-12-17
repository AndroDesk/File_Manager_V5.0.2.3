.class Lcom/miui/maml/data/Expression$Tokenizer;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tokenizer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/Expression$Tokenizer$Token;,
        Lcom/miui/maml/data/Expression$Tokenizer$TokenType;
    }
.end annotation


# static fields
.field private static final BRACKET_MODE_NONE:I

.field private static final BRACKET_MODE_ROUND:I

.field private static final BRACKET_MODE_SQUARE:I


# instance fields
.field private mOpeParser:Lcom/miui/maml/data/Expression$OpeInfo$Parser;

.field private mPos:I

.field private mString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/miui/maml/data/Expression$Tokenizer;->BRACKET_MODE_NONE:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/miui/maml/data/Expression$Tokenizer;->BRACKET_MODE_ROUND:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/miui/maml/data/Expression$Tokenizer;->BRACKET_MODE_SQUARE:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;

    invoke-direct {v0}, Lcom/miui/maml/data/Expression$OpeInfo$Parser;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mOpeParser:Lcom/miui/maml/data/Expression$OpeInfo$Parser;

    iput-object p1, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression$Tokenizer;->reset()V

    return-void
.end method


# virtual methods
.method public getToken()Lcom/miui/maml/data/Expression$Tokenizer$Token;
    .registers 16

    sget-object v0, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->INVALID:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    iget-object v1, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mPos:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_10
    const-string v9, "Expression"

    if-ge v2, v1, :cond_187

    iget-object v10, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x5b

    const/16 v12, 0x28

    const/4 v13, 0x1

    if-nez v6, :cond_14c

    const/16 v14, 0x23

    if-eq v10, v14, :cond_112

    const/16 v14, 0x40

    if-ne v10, v14, :cond_2b

    goto/16 :goto_112

    :cond_2b
    const/16 v9, 0x27

    if-ne v10, v9, :cond_63

    add-int/2addr v2, v13

    move v0, v2

    move v3, v4

    :goto_32
    if-ge v0, v1, :cond_49

    iget-object v5, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-nez v3, :cond_3f

    if-ne v5, v9, :cond_3f

    goto :goto_49

    :cond_3f
    const/16 v3, 0x5c

    if-ne v5, v3, :cond_45

    move v3, v13

    goto :goto_46

    :cond_45
    move v3, v4

    :goto_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_49
    :goto_49
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mPos:I

    new-instance v1, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    sget-object v3, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->STR:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    iget-object v4, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\\'"

    const-string v4, "\'"

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/miui/maml/data/Expression$Tokenizer$Token;-><init>(Lcom/miui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    return-object v1

    :cond_63
    if-ne v10, v12, :cond_68

    move v6, v13

    goto/16 :goto_14c

    :cond_68
    if-ne v10, v11, :cond_6d

    const/4 v6, 0x2

    goto/16 :goto_14c

    :cond_6d
    invoke-static {v10}, Lcom/miui/maml/data/Expression;->access$300(C)Z

    move-result v9

    if-eqz v9, :cond_b0

    add-int/lit8 v0, v2, 0x1

    iget-object v3, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-ne v3, v4, :cond_8d

    if-ge v0, v1, :cond_8d

    iget-object v3, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x78

    if-ne v3, v4, :cond_8d

    move-object v3, p0

    goto :goto_9d

    :cond_8d
    move-object v3, p0

    :goto_8e
    if-ge v0, v1, :cond_a0

    iget-object v4, v3, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/miui/maml/data/Expression;->access$400(C)Z

    move-result v4

    if-nez v4, :cond_9d

    goto :goto_a0

    :cond_9d
    :goto_9d
    add-int/lit8 v0, v0, 0x1

    goto :goto_8e

    :cond_a0
    :goto_a0
    iput v0, v3, Lcom/miui/maml/data/Expression$Tokenizer;->mPos:I

    new-instance v1, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    sget-object v4, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->NUM:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    iget-object v3, v3, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lcom/miui/maml/data/Expression$Tokenizer$Token;-><init>(Lcom/miui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    return-object v1

    :cond_b0
    invoke-static {v10}, Lcom/miui/maml/data/Expression;->access$500(C)Z

    move-result v9

    if-eqz v9, :cond_da

    add-int/lit8 v0, v2, 0x1

    :goto_b8
    if-ge v0, v1, :cond_ca

    iget-object v3, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/miui/maml/data/Expression;->access$600(C)Z

    move-result v3

    if-nez v3, :cond_c7

    goto :goto_ca

    :cond_c7
    add-int/lit8 v0, v0, 0x1

    goto :goto_b8

    :cond_ca
    :goto_ca
    iput v0, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mPos:I

    new-instance v1, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    sget-object v3, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->FUN:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    iget-object v4, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/miui/maml/data/Expression$Tokenizer$Token;-><init>(Lcom/miui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    return-object v1

    :cond_da
    iget-object v9, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mOpeParser:Lcom/miui/maml/data/Expression$OpeInfo$Parser;

    invoke-virtual {v9, v10, v13}, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->accept(CZ)Z

    move-result v9

    if-eqz v9, :cond_14c

    add-int/lit8 v9, v2, 0x1

    :goto_e4
    if-ge v9, v1, :cond_f8

    iget-object v11, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mOpeParser:Lcom/miui/maml/data/Expression$OpeInfo$Parser;

    iget-object v14, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v14, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v11, v14, v4}, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->accept(CZ)Z

    move-result v11

    if-nez v11, :cond_f5

    goto :goto_f8

    :cond_f5
    add-int/lit8 v9, v9, 0x1

    goto :goto_e4

    :cond_f8
    :goto_f8
    iget-object v11, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mOpeParser:Lcom/miui/maml/data/Expression$OpeInfo$Parser;

    invoke-virtual {v11}, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->getMatch()Lcom/miui/maml/data/Expression$Ope;

    move-result-object v11

    sget-object v14, Lcom/miui/maml/data/Expression$Ope;->INVALID:Lcom/miui/maml/data/Expression$Ope;

    if-eq v11, v14, :cond_14c

    iput v9, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mPos:I

    new-instance v0, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    sget-object v1, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->OPE:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    iget-object v3, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v3, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v11}, Lcom/miui/maml/data/Expression$Tokenizer$Token;-><init>(Lcom/miui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;Lcom/miui/maml/data/Expression$Ope;)V

    return-object v0

    :cond_112
    :goto_112
    add-int/2addr v2, v13

    move v0, v2

    :goto_114
    if-ge v0, v1, :cond_126

    iget-object v3, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/miui/maml/data/Expression;->access$200(C)Z

    move-result v3

    if-nez v3, :cond_123

    goto :goto_126

    :cond_123
    add-int/lit8 v0, v0, 0x1

    goto :goto_114

    :cond_126
    :goto_126
    if-ne v0, v2, :cond_135

    const-string v0, "invalid variable name:"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-static {v0, v1, v9}, La/a;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_135
    iput v0, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mPos:I

    new-instance v1, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    const/16 v3, 0x23

    if-ne v10, v3, :cond_140

    sget-object v3, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->VAR_NUM:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    goto :goto_142

    :cond_140
    sget-object v3, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->VAR_STR:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    :goto_142
    iget-object v4, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/miui/maml/data/Expression$Tokenizer$Token;-><init>(Lcom/miui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    return-object v1

    :cond_14c
    :goto_14c
    if-eqz v6, :cond_183

    if-nez v5, :cond_168

    if-eq v6, v13, :cond_15f

    const/4 v3, 0x2

    if-eq v6, v3, :cond_156

    goto :goto_166

    :cond_156
    const/16 v0, 0x5d

    sget-object v3, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->BRACKET_SQUARE:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    const/16 v7, 0x5b

    move v8, v0

    move-object v0, v3

    goto :goto_166

    :cond_15f
    const/16 v0, 0x29

    sget-object v3, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->BRACKET_ROUND:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    move v8, v0

    move-object v0, v3

    move v7, v12

    :goto_166
    add-int/lit8 v3, v2, 0x1

    :cond_168
    if-ne v10, v7, :cond_16d

    add-int/lit8 v5, v5, 0x1

    goto :goto_183

    :cond_16d
    if-ne v10, v8, :cond_183

    add-int/lit8 v5, v5, -0x1

    if-nez v5, :cond_183

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mPos:I

    new-instance v1, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    iget-object v4, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/miui/maml/data/Expression$Tokenizer$Token;-><init>(Lcom/miui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    return-object v1

    :cond_183
    :goto_183
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_10

    :cond_187
    if-eqz v5, :cond_194

    const-string v0, "mismatched bracket:"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-static {v0, v1, v9}, La/a;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_194
    const/4 v0, 0x0

    return-object v0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mPos:I

    return-void
.end method
