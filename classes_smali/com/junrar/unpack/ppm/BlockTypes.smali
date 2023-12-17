.class public final enum Lcom/junrar/unpack/ppm/BlockTypes;
.super Ljava/lang/Enum;
.source "BlockTypes.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/junrar/unpack/ppm/BlockTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/junrar/unpack/ppm/BlockTypes;

.field public static final enum BLOCK_LZ:Lcom/junrar/unpack/ppm/BlockTypes;

.field public static final enum BLOCK_PPM:Lcom/junrar/unpack/ppm/BlockTypes;


# instance fields
.field private blockType:I


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/junrar/unpack/ppm/BlockTypes;

    const-string v1, "BLOCK_LZ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/junrar/unpack/ppm/BlockTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/junrar/unpack/ppm/BlockTypes;->BLOCK_LZ:Lcom/junrar/unpack/ppm/BlockTypes;

    new-instance v1, Lcom/junrar/unpack/ppm/BlockTypes;

    const-string v3, "BLOCK_PPM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/junrar/unpack/ppm/BlockTypes;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/junrar/unpack/ppm/BlockTypes;->BLOCK_PPM:Lcom/junrar/unpack/ppm/BlockTypes;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/junrar/unpack/ppm/BlockTypes;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/junrar/unpack/ppm/BlockTypes;->$VALUES:[Lcom/junrar/unpack/ppm/BlockTypes;

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

    iput p3, p0, Lcom/junrar/unpack/ppm/BlockTypes;->blockType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/junrar/unpack/ppm/BlockTypes;
    .registers 2

    const-class v0, Lcom/junrar/unpack/ppm/BlockTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/junrar/unpack/ppm/BlockTypes;

    return-object p0
.end method

.method public static values()[Lcom/junrar/unpack/ppm/BlockTypes;
    .registers 1

    sget-object v0, Lcom/junrar/unpack/ppm/BlockTypes;->$VALUES:[Lcom/junrar/unpack/ppm/BlockTypes;

    invoke-virtual {v0}, [Lcom/junrar/unpack/ppm/BlockTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/junrar/unpack/ppm/BlockTypes;

    return-object v0
.end method


# virtual methods
.method public equals(I)Z
    .registers 3

    iget v0, p0, Lcom/junrar/unpack/ppm/BlockTypes;->blockType:I

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method
