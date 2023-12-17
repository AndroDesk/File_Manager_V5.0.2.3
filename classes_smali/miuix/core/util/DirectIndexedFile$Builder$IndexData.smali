.class Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/core/util/DirectIndexedFile$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndexData"
.end annotation


# instance fields
.field private mDataItemDescriptions:[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

.field private mDataItemHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmiuix/core/util/DirectIndexedFile$Builder$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultValue:Lmiuix/core/util/DirectIndexedFile$Builder$Item;

.field private mIndexDataGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lmiuix/core/util/DirectIndexedFile$Builder$Item;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIndexGroupDescriptions:[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;


# direct methods
.method private constructor <init>(I)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->mDataMap:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;

    .line 6
    new-array p1, p1, [Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    iput-object p1, p0, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    return-void
.end method

.method public synthetic constructor <init>(ILmiuix/core/util/DirectIndexedFile$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;-><init>(I)V

    return-void
.end method

.method public static synthetic access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2600(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Lmiuix/core/util/DirectIndexedFile$Builder$Item;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->mDefaultValue:Lmiuix/core/util/DirectIndexedFile$Builder$Item;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2602(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;Lmiuix/core/util/DirectIndexedFile$Builder$Item;)Lmiuix/core/util/DirectIndexedFile$Builder$Item;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->mDefaultValue:Lmiuix/core/util/DirectIndexedFile$Builder$Item;

    .line 3
    return-object p1
.end method

.method public static synthetic access$2800(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method public static synthetic access$3100(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/HashMap;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->mDataMap:Ljava/util/HashMap;

    .line 3
    return-object p0
.end method

.method public static synthetic access$3400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    .line 3
    return-object p0
.end method

.method public static synthetic access$3402(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    .line 3
    return-object p1
.end method
