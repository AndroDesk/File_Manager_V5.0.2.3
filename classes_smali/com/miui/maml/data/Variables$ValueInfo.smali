.class Lcom/miui/maml/data/Variables$ValueInfo;
.super Ljava/lang/Object;
.source "Variables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Variables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValueInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public mVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;

    iput p2, p0, Lcom/miui/maml/data/Variables$ValueInfo;->mVersion:I

    return-void
.end method


# virtual methods
.method public reset()V
    .registers 6

    iget-object v0, p0, Lcom/miui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;

    instance-of v1, v0, [D

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    check-cast v0, [D

    :goto_9
    array-length v1, v0

    if-ge v2, v1, :cond_43

    const-wide/16 v3, 0x0

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_13
    instance-of v1, v0, [F

    if-eqz v1, :cond_22

    check-cast v0, [F

    :goto_19
    array-length v1, v0

    if-ge v2, v1, :cond_43

    const/4 v1, 0x0

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_22
    instance-of v1, v0, [I

    if-eqz v1, :cond_31

    check-cast v0, [I

    move v1, v2

    :goto_29
    array-length v3, v0

    if-ge v1, v3, :cond_43

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_31
    instance-of v1, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz v1, :cond_40

    check-cast v0, [Ljava/lang/Object;

    :goto_38
    array-length v1, v0

    if-ge v2, v1, :cond_43

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    :cond_40
    invoke-virtual {p0, v3}, Lcom/miui/maml/data/Variables$ValueInfo;->setValue(Ljava/lang/Object;)V

    :cond_43
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;

    iget p1, p0, Lcom/miui/maml/data/Variables$ValueInfo;->mVersion:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/miui/maml/data/Variables$ValueInfo;->mVersion:I

    return-void
.end method
