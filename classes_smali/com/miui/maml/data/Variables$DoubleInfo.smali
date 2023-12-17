.class Lcom/miui/maml/data/Variables$DoubleInfo;
.super Ljava/lang/Object;
.source "Variables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Variables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DoubleInfo"
.end annotation


# instance fields
.field public mValue:D

.field public mVersion:I


# direct methods
.method public constructor <init>(DI)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/miui/maml/data/Variables$DoubleInfo;->mValue:D

    .line 6
    iput p3, p0, Lcom/miui/maml/data/Variables$DoubleInfo;->mVersion:I

    .line 8
    return-void
.end method


# virtual methods
.method public setValue(D)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/miui/maml/data/Variables$DoubleInfo;->mValue:D

    .line 3
    iget p1, p0, Lcom/miui/maml/data/Variables$DoubleInfo;->mVersion:I

    .line 5
    add-int/lit8 p1, p1, 0x1

    .line 7
    iput p1, p0, Lcom/miui/maml/data/Variables$DoubleInfo;->mVersion:I

    .line 9
    return-void
.end method
