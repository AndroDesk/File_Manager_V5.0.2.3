.class public final enum Lcom/junrar/unpack/vm/VMStandardFilters;
.super Ljava/lang/Enum;
.source "VMStandardFilters.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/junrar/unpack/vm/VMStandardFilters;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/junrar/unpack/vm/VMStandardFilters;

.field public static final enum VMSF_AUDIO:Lcom/junrar/unpack/vm/VMStandardFilters;

.field public static final enum VMSF_DELTA:Lcom/junrar/unpack/vm/VMStandardFilters;

.field public static final enum VMSF_E8:Lcom/junrar/unpack/vm/VMStandardFilters;

.field public static final enum VMSF_E8E9:Lcom/junrar/unpack/vm/VMStandardFilters;

.field public static final enum VMSF_ITANIUM:Lcom/junrar/unpack/vm/VMStandardFilters;

.field public static final enum VMSF_NONE:Lcom/junrar/unpack/vm/VMStandardFilters;

.field public static final enum VMSF_RGB:Lcom/junrar/unpack/vm/VMStandardFilters;

.field public static final enum VMSF_UPCASE:Lcom/junrar/unpack/vm/VMStandardFilters;


# instance fields
.field private filter:I


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/junrar/unpack/vm/VMStandardFilters;

    const-string v1, "VMSF_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/junrar/unpack/vm/VMStandardFilters;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_NONE:Lcom/junrar/unpack/vm/VMStandardFilters;

    new-instance v1, Lcom/junrar/unpack/vm/VMStandardFilters;

    const-string v3, "VMSF_E8"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/junrar/unpack/vm/VMStandardFilters;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_E8:Lcom/junrar/unpack/vm/VMStandardFilters;

    new-instance v3, Lcom/junrar/unpack/vm/VMStandardFilters;

    const-string v5, "VMSF_E8E9"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/junrar/unpack/vm/VMStandardFilters;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_E8E9:Lcom/junrar/unpack/vm/VMStandardFilters;

    new-instance v5, Lcom/junrar/unpack/vm/VMStandardFilters;

    const-string v7, "VMSF_ITANIUM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/junrar/unpack/vm/VMStandardFilters;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_ITANIUM:Lcom/junrar/unpack/vm/VMStandardFilters;

    new-instance v7, Lcom/junrar/unpack/vm/VMStandardFilters;

    const-string v9, "VMSF_RGB"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/junrar/unpack/vm/VMStandardFilters;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_RGB:Lcom/junrar/unpack/vm/VMStandardFilters;

    new-instance v9, Lcom/junrar/unpack/vm/VMStandardFilters;

    const-string v11, "VMSF_AUDIO"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/junrar/unpack/vm/VMStandardFilters;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_AUDIO:Lcom/junrar/unpack/vm/VMStandardFilters;

    new-instance v11, Lcom/junrar/unpack/vm/VMStandardFilters;

    const-string v13, "VMSF_DELTA"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/junrar/unpack/vm/VMStandardFilters;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_DELTA:Lcom/junrar/unpack/vm/VMStandardFilters;

    new-instance v13, Lcom/junrar/unpack/vm/VMStandardFilters;

    const-string v15, "VMSF_UPCASE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/junrar/unpack/vm/VMStandardFilters;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_UPCASE:Lcom/junrar/unpack/vm/VMStandardFilters;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/junrar/unpack/vm/VMStandardFilters;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/junrar/unpack/vm/VMStandardFilters;->$VALUES:[Lcom/junrar/unpack/vm/VMStandardFilters;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/junrar/unpack/vm/VMStandardFilters;->filter:I

    return-void
.end method

.method private equals(I)Z
    .registers 3

    iget v0, p0, Lcom/junrar/unpack/vm/VMStandardFilters;->filter:I

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public static findFilter(I)Lcom/junrar/unpack/vm/VMStandardFilters;
    .registers 3

    sget-object v0, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_NONE:Lcom/junrar/unpack/vm/VMStandardFilters;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMStandardFilters;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_9

    return-object v0

    :cond_9
    sget-object v0, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_E8:Lcom/junrar/unpack/vm/VMStandardFilters;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMStandardFilters;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_12

    return-object v0

    :cond_12
    sget-object v0, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_E8E9:Lcom/junrar/unpack/vm/VMStandardFilters;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMStandardFilters;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    return-object v0

    :cond_1b
    sget-object v0, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_ITANIUM:Lcom/junrar/unpack/vm/VMStandardFilters;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMStandardFilters;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_24

    return-object v0

    :cond_24
    sget-object v0, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_RGB:Lcom/junrar/unpack/vm/VMStandardFilters;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMStandardFilters;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    return-object v0

    :cond_2d
    sget-object v0, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_AUDIO:Lcom/junrar/unpack/vm/VMStandardFilters;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMStandardFilters;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_36

    return-object v0

    :cond_36
    sget-object v0, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_DELTA:Lcom/junrar/unpack/vm/VMStandardFilters;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMStandardFilters;->equals(I)Z

    move-result p0

    if-eqz p0, :cond_3f

    return-object v0

    :cond_3f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/junrar/unpack/vm/VMStandardFilters;
    .registers 2

    const-class v0, Lcom/junrar/unpack/vm/VMStandardFilters;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/junrar/unpack/vm/VMStandardFilters;

    return-object p0
.end method

.method public static values()[Lcom/junrar/unpack/vm/VMStandardFilters;
    .registers 1

    sget-object v0, Lcom/junrar/unpack/vm/VMStandardFilters;->$VALUES:[Lcom/junrar/unpack/vm/VMStandardFilters;

    invoke-virtual {v0}, [Lcom/junrar/unpack/vm/VMStandardFilters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/junrar/unpack/vm/VMStandardFilters;

    return-object v0
.end method


# virtual methods
.method public getFilter()I
    .registers 2

    iget v0, p0, Lcom/junrar/unpack/vm/VMStandardFilters;->filter:I

    return v0
.end method
