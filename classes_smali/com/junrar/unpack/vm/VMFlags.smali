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

    .line 1
    new-instance v0, Lcom/junrar/unpack/vm/VMFlags;

    .line 3
    const-string v1, "VM_FC"

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/junrar/unpack/vm/VMFlags;-><init>(Ljava/lang/String;II)V

    .line 10
    sput-object v0, Lcom/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/junrar/unpack/vm/VMFlags;

    .line 12
    new-instance v1, Lcom/junrar/unpack/vm/VMFlags;

    .line 14
    const-string v4, "VM_FZ"

    .line 16
    const/4 v5, 0x2

    .line 17
    invoke-direct {v1, v4, v3, v5}, Lcom/junrar/unpack/vm/VMFlags;-><init>(Ljava/lang/String;II)V

    .line 20
    sput-object v1, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    .line 22
    new-instance v4, Lcom/junrar/unpack/vm/VMFlags;

    .line 24
    const-string v6, "VM_FS"

    .line 26
    const/high16 v7, -0x80000000

    .line 28
    invoke-direct {v4, v6, v5, v7}, Lcom/junrar/unpack/vm/VMFlags;-><init>(Ljava/lang/String;II)V

    .line 31
    sput-object v4, Lcom/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/junrar/unpack/vm/VMFlags;

    .line 33
    const/4 v6, 0x3

    .line 34
    new-array v6, v6, [Lcom/junrar/unpack/vm/VMFlags;

    .line 36
    aput-object v0, v6, v2

    .line 38
    aput-object v1, v6, v3

    .line 40
    aput-object v4, v6, v5

    .line 42
    sput-object v6, Lcom/junrar/unpack/vm/VMFlags;->$VALUES:[Lcom/junrar/unpack/vm/VMFlags;

    .line 44
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
    iput p3, p0, Lcom/junrar/unpack/vm/VMFlags;->flag:I

    .line 6
    return-void
.end method

.method private equals(I)Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/junrar/unpack/vm/VMFlags;->flag:I

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

.method public static findFlag(I)Lcom/junrar/unpack/vm/VMFlags;
    .registers 3

    .line 1
    sget-object v0, Lcom/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/junrar/unpack/vm/VMFlags;

    .line 3
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMFlags;->equals(I)Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_9

    .line 9
    return-object v0

    .line 10
    :cond_9
    sget-object v0, Lcom/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/junrar/unpack/vm/VMFlags;

    .line 12
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMFlags;->equals(I)Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_12

    .line 18
    return-object v0

    .line 19
    :cond_12
    sget-object v0, Lcom/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/junrar/unpack/vm/VMFlags;

    .line 21
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMFlags;->equals(I)Z

    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_1b

    .line 27
    return-object v0

    .line 28
    :cond_1b
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/junrar/unpack/vm/VMFlags;
    .registers 2

    .line 1
    const-class v0, Lcom/junrar/unpack/vm/VMFlags;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/junrar/unpack/vm/VMFlags;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/junrar/unpack/vm/VMFlags;
    .registers 1

    .line 1
    sget-object v0, Lcom/junrar/unpack/vm/VMFlags;->$VALUES:[Lcom/junrar/unpack/vm/VMFlags;

    .line 3
    invoke-virtual {v0}, [Lcom/junrar/unpack/vm/VMFlags;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/junrar/unpack/vm/VMFlags;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getFlag()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/vm/VMFlags;->flag:I

    .line 3
    return v0
.end method
