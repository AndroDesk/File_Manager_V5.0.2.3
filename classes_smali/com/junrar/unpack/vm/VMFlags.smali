.class public final enum Lcom/junrar/unpack/vm/VMFlags;
.super Ljava/lang/Enum;
.source "VMFlags.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/junrar/unpack/vm/VMFlags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/junrar/unpack/vm/VMFlags;

.field public static final enum VM_FC:Lcom/junrar/unpack/vm/VMFlags;

.field public static final enum VM_FS:Lcom/junrar/unpack/vm/VMFlags;

.field public static final enum VM_FZ:Lcom/junrar/unpack/vm/VMFlags;


# instance fields
.field private flag:I


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    new-instance v0, Lcom/junrar/unpack/vm/VMFlags;

    const-string v1, "VM_FC"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/junrar/unpack/vm/VMFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/junrar/unpack/vm/VMFlags;

    new-instance v1, Lcom/junrar/unpack/vm/VMFlags;

    const-string v4, "VM_FZ"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/junrar/unpack/vm/VMFlags;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    new-instance v4, Lcom/junrar/unpack/vm/VMFlags;

    const-string v6, "VM_FS"

    const/high16 v7, -0x80000000

    invoke-direct {v4, v6, v5, v7}, Lcom/junrar/unpack/vm/VMFlags;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/junrar/unpack/vm/VMFlags;

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/junrar/unpack/vm/VMFlags;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Lcom/junrar/unpack/vm/VMFlags;->$VALUES:[Lcom/junrar/unpack/vm/VMFlags;

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

    iput p3, p0, Lcom/junrar/unpack/vm/VMFlags;->flag:I

    return-void
.end method

.method private equals(I)Z
    .registers 3

    iget v0, p0, Lcom/junrar/unpack/vm/VMFlags;->flag:I

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public static findFlag(I)Lcom/junrar/unpack/vm/VMFlags;
    .registers 3

    sget-object v0, Lcom/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/junrar/unpack/vm/VMFlags;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMFlags;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_9

    return-object v0

    :cond_9
    sget-object v0, Lcom/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/junrar/unpack/vm/VMFlags;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMFlags;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_12

    return-object v0

    :cond_12
    sget-object v0, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMFlags;->equals(I)Z

    move-result p0

    if-eqz p0, :cond_1b

    return-object v0

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/junrar/unpack/vm/VMFlags;
    .registers 2

    const-class v0, Lcom/junrar/unpack/vm/VMFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/junrar/unpack/vm/VMFlags;

    return-object p0
.end method

.method public static values()[Lcom/junrar/unpack/vm/VMFlags;
    .registers 1

    sget-object v0, Lcom/junrar/unpack/vm/VMFlags;->$VALUES:[Lcom/junrar/unpack/vm/VMFlags;

    invoke-virtual {v0}, [Lcom/junrar/unpack/vm/VMFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/junrar/unpack/vm/VMFlags;

    return-object v0
.end method


# virtual methods
.method public getFlag()I
    .registers 2

    iget v0, p0, Lcom/junrar/unpack/vm/VMFlags;->flag:I

    return v0
.end method
