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

    .line 1
    new-instance v0, Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 3
    const-string v1, "VMSF_NONE"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/junrar/unpack/vm/VMStandardFilters;-><init>(Ljava/lang/String;II)V

    .line 9
    sput-object v0, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_NONE:Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 11
    new-instance v1, Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 13
    const-string v3, "VMSF_E8"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lcom/junrar/unpack/vm/VMStandardFilters;-><init>(Ljava/lang/String;II)V

    .line 19
    sput-object v1, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_E8:Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 21
    new-instance v3, Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 23
    const-string v5, "VMSF_E8E9"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Lcom/junrar/unpack/vm/VMStandardFilters;-><init>(Ljava/lang/String;II)V

    .line 29
    sput-object v3, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_E8E9:Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 31
    new-instance v5, Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 33
    const-string v7, "VMSF_ITANIUM"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v8}, Lcom/junrar/unpack/vm/VMStandardFilters;-><init>(Ljava/lang/String;II)V

    .line 39
    sput-object v5, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_ITANIUM:Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 41
    new-instance v7, Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 43
    const-string v9, "VMSF_RGB"

    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10, v10}, Lcom/junrar/unpack/vm/VMStandardFilters;-><init>(Ljava/lang/String;II)V

    .line 49
    sput-object v7, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_RGB:Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 51
    new-instance v9, Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 53
    const-string v11, "VMSF_AUDIO"

    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12, v12}, Lcom/junrar/unpack/vm/VMStandardFilters;-><init>(Ljava/lang/String;II)V

    .line 59
    sput-object v9, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_AUDIO:Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 61
    new-instance v11, Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 63
    const-string v13, "VMSF_DELTA"

    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14, v14}, Lcom/junrar/unpack/vm/VMStandardFilters;-><init>(Ljava/lang/String;II)V

    .line 69
    sput-object v11, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_DELTA:Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 71
    new-instance v13, Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 73
    const-string v15, "VMSF_UPCASE"

    .line 75
    const/4 v14, 0x7

    .line 76
    invoke-direct {v13, v15, v14, v14}, Lcom/junrar/unpack/vm/VMStandardFilters;-><init>(Ljava/lang/String;II)V

    .line 79
    sput-object v13, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_UPCASE:Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 81
    const/16 v15, 0x8

    .line 83
    new-array v15, v15, [Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 85
    aput-object v0, v15, v2

    .line 87
    aput-object v1, v15, v4

    .line 89
    aput-object v3, v15, v6

    .line 91
    aput-object v5, v15, v8

    .line 93
    aput-object v7, v15, v10

    .line 95
    aput-object v9, v15, v12

    .line 97
    const/4 v0, 0x6

    .line 98
    aput-object v11, v15, v0

    .line 100
    aput-object v13, v15, v14

    .line 102
    sput-object v15, Lcom/junrar/unpack/vm/VMStandardFilters;->$VALUES:[Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 104
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput p3, p0, Lcom/junrar/unpack/vm/VMStandardFilters;->filter:I

    .line 6
    return-void
.end method

.method private equals(I)Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/junrar/unpack/vm/VMStandardFilters;->filter:I

    .line 3
    if-ne v0, p1, :cond_6

    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 p1, 0x0

    .line 8
    :goto_7
    return p1
.end method

.method public static findFilter(I)Lcom/junrar/unpack/vm/VMStandardFilters;
    .registers 3

    .line 1
    sget-object v0, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_NONE:Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 3
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMStandardFilters;->equals(I)Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_9

    .line 9
    return-object v0

    .line 10
    :cond_9
    sget-object v0, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_E8:Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 12
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMStandardFilters;->equals(I)Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_12

    .line 18
    return-object v0

    .line 19
    :cond_12
    sget-object v0, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_E8E9:Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 21
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMStandardFilters;->equals(I)Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1b

    .line 27
    return-object v0

    .line 28
    :cond_1b
    sget-object v0, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_ITANIUM:Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 30
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMStandardFilters;->equals(I)Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_24

    .line 36
    return-object v0

    .line 37
    :cond_24
    sget-object v0, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_RGB:Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 39
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMStandardFilters;->equals(I)Z

    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2d

    .line 45
    return-object v0

    .line 46
    :cond_2d
    sget-object v0, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_AUDIO:Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 48
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMStandardFilters;->equals(I)Z

    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_36

    .line 54
    return-object v0

    .line 55
    :cond_36
    sget-object v0, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_DELTA:Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 57
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMStandardFilters;->equals(I)Z

    .line 60
    move-result p0

    .line 61
    if-eqz p0, :cond_3f

    .line 63
    return-object v0

    .line 64
    :cond_3f
    const/4 p0, 0x0

    .line 65
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/junrar/unpack/vm/VMStandardFilters;
    .registers 2

    .line 1
    const-class v0, Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/junrar/unpack/vm/VMStandardFilters;
    .registers 1

    .line 1
    sget-object v0, Lcom/junrar/unpack/vm/VMStandardFilters;->$VALUES:[Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 3
    invoke-virtual {v0}, [Lcom/junrar/unpack/vm/VMStandardFilters;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getFilter()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/vm/VMStandardFilters;->filter:I

    .line 3
    return v0
.end method
