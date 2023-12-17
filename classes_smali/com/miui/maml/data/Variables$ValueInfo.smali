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
.method public constructor <init>(Ljava/lang/Object;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/miui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;

    .line 6
    iput p2, p0, Lcom/miui/maml/data/Variables$ValueInfo;->mVersion:I

    .line 8
    return-void
.end method


# virtual methods
.method public reset()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;

    .line 3
    instance-of v1, v0, [D

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_13

    .line 8
    check-cast v0, [D

    .line 10
    :goto_9
    array-length v1, v0

    .line 11
    if-ge v2, v1, :cond_43

    .line 13
    const-wide/16 v3, 0x0

    .line 15
    aput-wide v3, v0, v2

    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 19
    goto :goto_9

    .line 20
    :cond_13
    instance-of v1, v0, [F

    .line 22
    if-eqz v1, :cond_22

    .line 24
    check-cast v0, [F

    .line 26
    :goto_19
    array-length v1, v0

    .line 27
    if-ge v2, v1, :cond_43

    .line 29
    const/4 v1, 0x0

    .line 30
    aput v1, v0, v2

    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 34
    goto :goto_19

    .line 35
    :cond_22
    instance-of v1, v0, [I

    .line 37
    if-eqz v1, :cond_31

    .line 39
    check-cast v0, [I

    .line 41
    move v1, v2

    .line 42
    :goto_29
    array-length v3, v0

    .line 43
    if-ge v1, v3, :cond_43

    .line 45
    aput v2, v0, v1

    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 49
    goto :goto_29

    .line 50
    :cond_31
    instance-of v1, v0, [Ljava/lang/Object;

    .line 52
    const/4 v3, 0x0

    .line 53
    if-eqz v1, :cond_40

    .line 55
    check-cast v0, [Ljava/lang/Object;

    .line 57
    :goto_38
    array-length v1, v0

    .line 58
    if-ge v2, v1, :cond_43

    .line 60
    aput-object v3, v0, v2

    .line 62
    add-int/lit8 v2, v2, 0x1

    .line 64
    goto :goto_38

    .line 65
    :cond_40
    invoke-virtual {p0, v3}, Lcom/miui/maml/data/Variables$ValueInfo;->setValue(Ljava/lang/Object;)V

    .line 68
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

    .line 1
    iput-object p1, p0, Lcom/miui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;

    .line 3
    iget p1, p0, Lcom/miui/maml/data/Variables$ValueInfo;->mVersion:I

    .line 5
    add-int/lit8 p1, p1, 0x1

    .line 7
    iput p1, p0, Lcom/miui/maml/data/Variables$ValueInfo;->mVersion:I

    .line 9
    return-void
.end method
