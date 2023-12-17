.class public Lcom/miui/maml/data/RootExpression;
.super Lcom/miui/maml/data/Expression;
.source "RootExpression.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/RootExpression$VarVersionVisitor;,
        Lcom/miui/maml/data/RootExpression$VarVersion;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "RootExression"


# instance fields
.field private mAlwaysEvaluate:Z

.field private mDoubleValue:D

.field private mExp:Lcom/miui/maml/data/Expression;

.field private mIsNumInit:Z

.field private mIsStrInit:Z

.field private mStringValue:Ljava/lang/String;

.field private mVarVersionVisitor:Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

.field private mVars:Lcom/miui/maml/data/Variables;

.field private mVersionSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/miui/maml/data/RootExpression$VarVersion;",
            ">;"
        }
    .end annotation
.end field

.field private mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/data/Expression;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/miui/maml/data/RootExpression;->mIsNumInit:Z

    .line 14
    iput-boolean v0, p0, Lcom/miui/maml/data/RootExpression;->mIsStrInit:Z

    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVarVersionVisitor:Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    .line 19
    iput-object p1, p0, Lcom/miui/maml/data/RootExpression;->mVars:Lcom/miui/maml/data/Variables;

    .line 21
    iput-object p2, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 23
    return-void
.end method

.method public static synthetic access$002(Lcom/miui/maml/data/RootExpression;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/data/RootExpression;->mAlwaysEvaluate:Z

    .line 3
    return p1
.end method


# virtual methods
.method public accept(Lcom/miui/maml/data/ExpressionVisitor;)V
    .registers 2

    return-void
.end method

.method public addVarVersion(Lcom/miui/maml/data/RootExpression$VarVersion;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public evaluate()D
    .registers 7

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/data/RootExpression;->mIsNumInit:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_3b

    .line 6
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 8
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 11
    move-result-wide v2

    .line 12
    iput-wide v2, p0, Lcom/miui/maml/data/RootExpression;->mDoubleValue:D

    .line 14
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVarVersionVisitor:Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    .line 16
    if-nez v0, :cond_38

    .line 18
    new-instance v0, Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    .line 20
    invoke-direct {v0, p0}, Lcom/miui/maml/data/RootExpression$VarVersionVisitor;-><init>(Lcom/miui/maml/data/RootExpression;)V

    .line 23
    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVarVersionVisitor:Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    .line 25
    iget-object v2, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 27
    invoke-virtual {v2, v0}, Lcom/miui/maml/data/Expression;->accept(Lcom/miui/maml/data/ExpressionVisitor;)V

    .line 30
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    .line 32
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 35
    move-result v0

    .line 36
    if-gtz v0, :cond_29

    .line 38
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    .line 41
    goto :goto_38

    .line 42
    :cond_29
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    .line 44
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 47
    move-result v0

    .line 48
    new-array v0, v0, [Lcom/miui/maml/data/RootExpression$VarVersion;

    .line 50
    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    .line 52
    iget-object v2, p0, Lcom/miui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    .line 54
    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 57
    :cond_38
    :goto_38
    iput-boolean v1, p0, Lcom/miui/maml/data/RootExpression;->mIsNumInit:Z

    .line 59
    goto :goto_6c

    .line 60
    :cond_3b
    iget-boolean v0, p0, Lcom/miui/maml/data/RootExpression;->mAlwaysEvaluate:Z

    .line 62
    const/4 v2, 0x0

    .line 63
    if-eqz v0, :cond_41

    .line 65
    goto :goto_62

    .line 66
    :cond_41
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    .line 68
    if-eqz v0, :cond_61

    .line 70
    move v0, v2

    .line 71
    :goto_46
    iget-object v3, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    .line 73
    array-length v4, v3

    .line 74
    if-ge v2, v4, :cond_5f

    .line 76
    aget-object v3, v3, v2

    .line 78
    if-eqz v3, :cond_5c

    .line 80
    iget-object v4, p0, Lcom/miui/maml/data/RootExpression;->mVars:Lcom/miui/maml/data/Variables;

    .line 82
    invoke-virtual {v3, v4}, Lcom/miui/maml/data/RootExpression$VarVersion;->getVer(Lcom/miui/maml/data/Variables;)I

    .line 85
    move-result v4

    .line 86
    iget v5, v3, Lcom/miui/maml/data/RootExpression$VarVersion;->mVersion:I

    .line 88
    if-eq v5, v4, :cond_5c

    .line 90
    iput v4, v3, Lcom/miui/maml/data/RootExpression$VarVersion;->mVersion:I

    .line 92
    move v0, v1

    .line 93
    :cond_5c
    add-int/lit8 v2, v2, 0x1

    .line 95
    goto :goto_46

    .line 96
    :cond_5f
    move v1, v0

    .line 97
    goto :goto_62

    .line 98
    :cond_61
    move v1, v2

    .line 99
    :goto_62
    if-eqz v1, :cond_6c

    .line 101
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 103
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 106
    move-result-wide v0

    .line 107
    iput-wide v0, p0, Lcom/miui/maml/data/RootExpression;->mDoubleValue:D

    .line 109
    :cond_6c
    :goto_6c
    iget-wide v0, p0, Lcom/miui/maml/data/RootExpression;->mDoubleValue:D

    .line 111
    return-wide v0
.end method

.method public evaluateStr()Ljava/lang/String;
    .registers 7

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/data/RootExpression;->mIsStrInit:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_2f

    .line 6
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 8
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mStringValue:Ljava/lang/String;

    .line 14
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVarVersionVisitor:Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    .line 16
    if-nez v0, :cond_2c

    .line 18
    new-instance v0, Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    .line 20
    invoke-direct {v0, p0}, Lcom/miui/maml/data/RootExpression$VarVersionVisitor;-><init>(Lcom/miui/maml/data/RootExpression;)V

    .line 23
    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVarVersionVisitor:Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    .line 25
    iget-object v2, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 27
    invoke-virtual {v2, v0}, Lcom/miui/maml/data/Expression;->accept(Lcom/miui/maml/data/ExpressionVisitor;)V

    .line 30
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    .line 32
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 35
    move-result v0

    .line 36
    new-array v0, v0, [Lcom/miui/maml/data/RootExpression$VarVersion;

    .line 38
    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    .line 40
    iget-object v2, p0, Lcom/miui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    .line 42
    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 45
    :cond_2c
    iput-boolean v1, p0, Lcom/miui/maml/data/RootExpression;->mIsStrInit:Z

    .line 47
    goto :goto_60

    .line 48
    :cond_2f
    iget-boolean v0, p0, Lcom/miui/maml/data/RootExpression;->mAlwaysEvaluate:Z

    .line 50
    const/4 v2, 0x0

    .line 51
    if-eqz v0, :cond_35

    .line 53
    goto :goto_56

    .line 54
    :cond_35
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    .line 56
    if-eqz v0, :cond_55

    .line 58
    move v0, v2

    .line 59
    :goto_3a
    iget-object v3, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    .line 61
    array-length v4, v3

    .line 62
    if-ge v2, v4, :cond_53

    .line 64
    aget-object v3, v3, v2

    .line 66
    if-eqz v3, :cond_50

    .line 68
    iget-object v4, p0, Lcom/miui/maml/data/RootExpression;->mVars:Lcom/miui/maml/data/Variables;

    .line 70
    invoke-virtual {v3, v4}, Lcom/miui/maml/data/RootExpression$VarVersion;->getVer(Lcom/miui/maml/data/Variables;)I

    .line 73
    move-result v4

    .line 74
    iget v5, v3, Lcom/miui/maml/data/RootExpression$VarVersion;->mVersion:I

    .line 76
    if-eq v5, v4, :cond_50

    .line 78
    iput v4, v3, Lcom/miui/maml/data/RootExpression$VarVersion;->mVersion:I

    .line 80
    move v0, v1

    .line 81
    :cond_50
    add-int/lit8 v2, v2, 0x1

    .line 83
    goto :goto_3a

    .line 84
    :cond_53
    move v1, v0

    .line 85
    goto :goto_56

    .line 86
    :cond_55
    move v1, v2

    .line 87
    :goto_56
    if-eqz v1, :cond_60

    .line 89
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 91
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 94
    move-result-object v0

    .line 95
    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mStringValue:Ljava/lang/String;

    .line 97
    :cond_60
    :goto_60
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mStringValue:Ljava/lang/String;

    .line 99
    return-object v0
.end method

.method public isNull()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->isNull()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method
