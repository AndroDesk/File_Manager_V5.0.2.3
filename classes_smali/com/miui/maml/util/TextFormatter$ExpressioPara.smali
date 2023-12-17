.class Lcom/miui/maml/util/TextFormatter$ExpressioPara;
.super Lcom/miui/maml/util/TextFormatter$FormatPara;
.source "TextFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/util/TextFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpressioPara"
.end annotation


# instance fields
.field private mExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/Expression;)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/miui/maml/util/TextFormatter$FormatPara;-><init>(Lcom/miui/maml/util/TextFormatter$1;)V

    .line 5
    iput-object p1, p0, Lcom/miui/maml/util/TextFormatter$ExpressioPara;->mExp:Lcom/miui/maml/data/Expression;

    .line 7
    return-void
.end method


# virtual methods
.method public evaluate()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/TextFormatter$ExpressioPara;->mExp:Lcom/miui/maml/data/Expression;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 6
    move-result-wide v0

    .line 7
    double-to-long v0, v0

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method
