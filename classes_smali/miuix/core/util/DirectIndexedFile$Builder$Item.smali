.class Lmiuix/core/util/DirectIndexedFile$Builder$Item;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/core/util/DirectIndexedFile$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lmiuix/core/util/DirectIndexedFile$Builder$Item;",
        ">;"
    }
.end annotation


# instance fields
.field private mIndex:I

.field private mObjects:[Ljava/lang/Object;

.field public final synthetic this$0:Lmiuix/core/util/DirectIndexedFile$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lmiuix/core/util/DirectIndexedFile$Builder;I[Ljava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Lmiuix/core/util/DirectIndexedFile$Builder$Item;->this$0:Lmiuix/core/util/DirectIndexedFile$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lmiuix/core/util/DirectIndexedFile$Builder$Item;->mIndex:I

    iput-object p3, p0, Lmiuix/core/util/DirectIndexedFile$Builder$Item;->mObjects:[Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/core/util/DirectIndexedFile$Builder;I[Ljava/lang/Object;Lmiuix/core/util/DirectIndexedFile$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lmiuix/core/util/DirectIndexedFile$Builder$Item;-><init>(Lmiuix/core/util/DirectIndexedFile$Builder;I[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$3500(Lmiuix/core/util/DirectIndexedFile$Builder$Item;)I
    .registers 1

    iget p0, p0, Lmiuix/core/util/DirectIndexedFile$Builder$Item;->mIndex:I

    return p0
.end method

.method public static synthetic access$4200(Lmiuix/core/util/DirectIndexedFile$Builder$Item;)[Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lmiuix/core/util/DirectIndexedFile$Builder$Item;->mObjects:[Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lmiuix/core/util/DirectIndexedFile$Builder$Item;

    invoke-virtual {p0, p1}, Lmiuix/core/util/DirectIndexedFile$Builder$Item;->compareTo(Lmiuix/core/util/DirectIndexedFile$Builder$Item;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lmiuix/core/util/DirectIndexedFile$Builder$Item;)I
    .registers 3

    iget v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder$Item;->mIndex:I

    iget p1, p1, Lmiuix/core/util/DirectIndexedFile$Builder$Item;->mIndex:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    goto :goto_13

    :cond_5
    instance-of v2, p1, Lmiuix/core/util/DirectIndexedFile$Builder$Item;

    if-eqz v2, :cond_12

    iget v2, p0, Lmiuix/core/util/DirectIndexedFile$Builder$Item;->mIndex:I

    check-cast p1, Lmiuix/core/util/DirectIndexedFile$Builder$Item;

    iget p1, p1, Lmiuix/core/util/DirectIndexedFile$Builder$Item;->mIndex:I

    if-ne v2, p1, :cond_12

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    return v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder$Item;->mIndex:I

    return v0
.end method
