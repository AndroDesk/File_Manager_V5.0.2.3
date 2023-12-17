.class Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/core/util/DirectIndexedFile$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataItemHolder"
.end annotation


# instance fields
.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lmiuix/core/util/DirectIndexedFile$Builder;


# direct methods
.method private constructor <init>(Lmiuix/core/util/DirectIndexedFile$Builder;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->this$0:Lmiuix/core/util/DirectIndexedFile$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->mMap:Ljava/util/HashMap;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->mList:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/core/util/DirectIndexedFile$Builder;Lmiuix/core/util/DirectIndexedFile$1;)V
    .registers 3

    .line 4
    invoke-direct {p0, p1}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;-><init>(Lmiuix/core/util/DirectIndexedFile$Builder;)V

    return-void
.end method

.method public static synthetic access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$2900(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;)I
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->size()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$4000(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->getAll()Ljava/util/ArrayList;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private getAll()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->mList:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method private put(Ljava/lang/Object;)Ljava/lang/Integer;
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->mMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 9
    if-nez v0, :cond_1e

    .line 11
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->mList:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->mMap:Ljava/util/HashMap;

    .line 23
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->mList:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_1e
    return-object v0
.end method

.method private size()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->mList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method
