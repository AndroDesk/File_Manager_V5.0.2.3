.class Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;
.super Ljava/lang/Object;
.source "ListScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/ListScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataIndexMap"
.end annotation


# instance fields
.field public mData:[Ljava/lang/Object;

.field public mElementIndex:I

.field public mNeedRebind:Z


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .registers 3

    const/4 v0, -0x1

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;-><init>([Ljava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mData:[Ljava/lang/Object;

    .line 3
    iput p2, p0, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mElementIndex:I

    return-void
.end method


# virtual methods
.method public setData(ILjava/lang/Object;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mData:[Ljava/lang/Object;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    array-length v1, v0

    .line 6
    if-le v1, p1, :cond_c

    .line 8
    aput-object p2, v0, p1

    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mNeedRebind:Z

    .line 13
    :cond_c
    return-void
.end method
