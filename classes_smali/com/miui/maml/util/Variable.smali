.class public Lcom/miui/maml/util/Variable;
.super Ljava/lang/Object;
.source "Variable.java"


# instance fields
.field private mObjectName:Ljava/lang/String;

.field private mPropertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0x2e

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 9
    move-result v0

    .line 10
    const/4 v1, -0x1

    .line 11
    if-ne v0, v1, :cond_12

    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/miui/maml/util/Variable;->mObjectName:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/miui/maml/util/Variable;->mPropertyName:Ljava/lang/String;

    .line 18
    goto :goto_21

    .line 19
    :cond_12
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    iput-object v1, p0, Lcom/miui/maml/util/Variable;->mObjectName:Ljava/lang/String;

    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/miui/maml/util/Variable;->mPropertyName:Ljava/lang/String;

    .line 34
    :goto_21
    iget-object v0, p0, Lcom/miui/maml/util/Variable;->mPropertyName:Ljava/lang/String;

    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_3f

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    const-string v1, "invalid variable name:"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    const-string v0, "Variable"

    .line 61
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_3f
    return-void
.end method


# virtual methods
.method public getObjName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/Variable;->mObjectName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/Variable;->mPropertyName:Ljava/lang/String;

    .line 3
    return-object v0
.end method
