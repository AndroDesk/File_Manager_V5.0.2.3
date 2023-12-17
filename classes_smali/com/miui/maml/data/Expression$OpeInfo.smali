.class Lcom/miui/maml/data/Expression$OpeInfo;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpeInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/Expression$OpeInfo$Parser;
    }
.end annotation


# static fields
.field private static final OPE_SIZE:I

.field private static final mOpePar:[I

.field private static final mOpePriority:[I

.field private static final mOpes:[Ljava/lang/String;


# instance fields
.field public participants:I

.field public priority:I

.field public str:Ljava/lang/String;

.field public unary:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 21

    .line 1
    const/16 v0, 0x14

    .line 3
    new-array v1, v0, [I

    .line 5
    fill-array-data v1, :array_42

    .line 8
    sput-object v1, Lcom/miui/maml/data/Expression$OpeInfo;->mOpePriority:[I

    .line 10
    new-array v0, v0, [I

    .line 12
    fill-array-data v0, :array_6e

    .line 15
    sput-object v0, Lcom/miui/maml/data/Expression$OpeInfo;->mOpePar:[I

    .line 17
    const-string v1, "+"

    .line 19
    const-string v2, "-"

    .line 21
    const-string v3, "*"

    .line 23
    const-string v4, "/"

    .line 25
    const-string v5, "%"

    .line 27
    const-string v6, "&"

    .line 29
    const-string v7, "|"

    .line 31
    const-string v8, "^"

    .line 33
    const-string v9, "~"

    .line 35
    const-string v10, "{{"

    .line 37
    const-string v11, "}}"

    .line 39
    const-string v12, "!"

    .line 41
    const-string v13, "=="

    .line 43
    const-string v14, "!="

    .line 45
    const-string v15, "**"

    .line 47
    const-string v16, "||"

    .line 49
    const-string v17, "}"

    .line 51
    const-string v18, "}="

    .line 53
    const-string v19, "{"

    .line 55
    const-string v20, "{="

    .line 57
    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Lcom/miui/maml/data/Expression$OpeInfo;->mOpes:[Ljava/lang/String;

    .line 63
    array-length v0, v0

    .line 64
    sput v0, Lcom/miui/maml/data/Expression$OpeInfo;->OPE_SIZE:I

    .line 66
    return-void

    .line 67
    :array_42
    .array-data 4
        0x4
        0x4
        0x3
        0x3
        0x3
        0x8
        0x9
        0xa
        0x2
        0x5
        0x5
        0x2
        0x7
        0x7
        0xb
        0xc
        0x6
        0x6
        0x6
        0x6
    .end array-data

    .line 111
    :array_6e
    .array-data 4
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()I
    .registers 1

    .line 1
    sget v0, Lcom/miui/maml/data/Expression$OpeInfo;->OPE_SIZE:I

    .line 3
    return v0
.end method

.method public static synthetic access$100()[Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/miui/maml/data/Expression$OpeInfo;->mOpes:[Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static getOpeInfo(I)Lcom/miui/maml/data/Expression$OpeInfo;
    .registers 3

    .line 1
    new-instance v0, Lcom/miui/maml/data/Expression$OpeInfo;

    .line 3
    invoke-direct {v0}, Lcom/miui/maml/data/Expression$OpeInfo;-><init>()V

    .line 6
    sget-object v1, Lcom/miui/maml/data/Expression$OpeInfo;->mOpePriority:[I

    .line 8
    aget v1, v1, p0

    .line 10
    iput v1, v0, Lcom/miui/maml/data/Expression$OpeInfo;->priority:I

    .line 12
    sget-object v1, Lcom/miui/maml/data/Expression$OpeInfo;->mOpePar:[I

    .line 14
    aget v1, v1, p0

    .line 16
    iput v1, v0, Lcom/miui/maml/data/Expression$OpeInfo;->participants:I

    .line 18
    sget-object v1, Lcom/miui/maml/data/Expression$OpeInfo;->mOpes:[Ljava/lang/String;

    .line 20
    aget-object p0, v1, p0

    .line 22
    iput-object p0, v0, Lcom/miui/maml/data/Expression$OpeInfo;->str:Ljava/lang/String;

    .line 24
    return-object v0
.end method
