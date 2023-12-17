.class Lcom/miui/maml/ActionCommand$ObjVar;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObjVar"
.end annotation


# instance fields
.field private mIndex:I

.field private mIndexArr:Lcom/miui/maml/data/Expression;

.field private mVars:Lcom/miui/maml/data/Variables;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/miui/maml/ActionCommand$ObjVar;->mVars:Lcom/miui/maml/data/Variables;

    .line 6
    const/16 v0, 0x5b

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 11
    move-result v0

    .line 12
    if-lez v0, :cond_25

    .line 14
    const/4 v1, 0x0

    .line 15
    :try_start_e
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 18
    move-result-object v1
    :try_end_12
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_12} :catch_25

    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 21
    :try_start_14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 24
    move-result v2

    .line 25
    add-int/lit8 v2, v2, -0x1

    .line 27
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    invoke-static {p2, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$ObjVar;->mIndexArr:Lcom/miui/maml/data/Expression;
    :try_end_24
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_14 .. :try_end_24} :catch_24

    .line 37
    :catch_24
    move-object p1, v1

    .line 38
    :catch_25
    :cond_25
    invoke-virtual {p2, p1}, Lcom/miui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    .line 41
    move-result p1

    .line 42
    iput p1, p0, Lcom/miui/maml/ActionCommand$ObjVar;->mIndex:I

    .line 44
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$ObjVar;->mVars:Lcom/miui/maml/data/Variables;

    .line 3
    iget v1, p0, Lcom/miui/maml/ActionCommand$ObjVar;->mIndex:I

    .line 5
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1d

    .line 11
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$ObjVar;->mIndexArr:Lcom/miui/maml/data/Expression;

    .line 13
    if-eqz v1, :cond_1d

    .line 15
    instance-of v2, v0, [Ljava/lang/Object;

    .line 17
    if-eqz v2, :cond_1d

    .line 19
    :try_start_12
    check-cast v0, [Ljava/lang/Object;

    .line 21
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 24
    move-result-wide v1

    .line 25
    double-to-int v1, v1

    .line 26
    aget-object v0, v0, v1
    :try_end_1b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_12 .. :try_end_1b} :catch_1c

    .line 28
    return-object v0

    .line 29
    :catch_1c
    const/4 v0, 0x0

    .line 30
    :cond_1d
    return-object v0
.end method
