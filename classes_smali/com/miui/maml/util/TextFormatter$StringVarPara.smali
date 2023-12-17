.class Lcom/miui/maml/util/TextFormatter$StringVarPara;
.super Lcom/miui/maml/util/TextFormatter$FormatPara;
.source "TextFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/util/TextFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringVarPara"
.end annotation


# instance fields
.field private mVar:Lcom/miui/maml/data/IndexedVariable;

.field private mVariable:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/miui/maml/util/TextFormatter$FormatPara;-><init>(Lcom/miui/maml/util/TextFormatter$1;)V

    .line 5
    iput-object p2, p0, Lcom/miui/maml/util/TextFormatter$StringVarPara;->mVariable:Ljava/lang/String;

    .line 7
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, p2, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 13
    iput-object v0, p0, Lcom/miui/maml/util/TextFormatter$StringVarPara;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 15
    return-void
.end method


# virtual methods
.method public evaluate()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/TextFormatter$StringVarPara;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_a

    .line 9
    const-string v0, ""

    .line 11
    :cond_a
    return-object v0
.end method
