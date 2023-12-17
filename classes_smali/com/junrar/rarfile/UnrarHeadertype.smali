.class public final enum Lcom/junrar/rarfile/UnrarHeadertype;
.super Ljava/lang/Enum;
.source "UnrarHeadertype.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/junrar/rarfile/UnrarHeadertype;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/junrar/rarfile/UnrarHeadertype;

.field public static final enum AvHeader:Lcom/junrar/rarfile/UnrarHeadertype;

.field public static final enum CommHeader:Lcom/junrar/rarfile/UnrarHeadertype;

.field public static final enum EndArcHeader:Lcom/junrar/rarfile/UnrarHeadertype;

.field public static final enum FileHeader:Lcom/junrar/rarfile/UnrarHeadertype;

.field public static final enum MainHeader:Lcom/junrar/rarfile/UnrarHeadertype;

.field public static final enum MarkHeader:Lcom/junrar/rarfile/UnrarHeadertype;

.field public static final enum NewSubHeader:Lcom/junrar/rarfile/UnrarHeadertype;

.field public static final enum ProtectHeader:Lcom/junrar/rarfile/UnrarHeadertype;

.field public static final enum SignHeader:Lcom/junrar/rarfile/UnrarHeadertype;

.field public static final enum SubHeader:Lcom/junrar/rarfile/UnrarHeadertype;


# instance fields
.field private headerByte:B


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/junrar/rarfile/UnrarHeadertype;

    const-string v1, "MainHeader"

    const/4 v2, 0x0

    const/16 v3, 0x73

    invoke-direct {v0, v1, v2, v3}, Lcom/junrar/rarfile/UnrarHeadertype;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/junrar/rarfile/UnrarHeadertype;->MainHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    new-instance v1, Lcom/junrar/rarfile/UnrarHeadertype;

    const-string v3, "MarkHeader"

    const/4 v4, 0x1

    const/16 v5, 0x72

    invoke-direct {v1, v3, v4, v5}, Lcom/junrar/rarfile/UnrarHeadertype;-><init>(Ljava/lang/String;IB)V

    sput-object v1, Lcom/junrar/rarfile/UnrarHeadertype;->MarkHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    new-instance v3, Lcom/junrar/rarfile/UnrarHeadertype;

    const-string v5, "FileHeader"

    const/4 v6, 0x2

    const/16 v7, 0x74

    invoke-direct {v3, v5, v6, v7}, Lcom/junrar/rarfile/UnrarHeadertype;-><init>(Ljava/lang/String;IB)V

    sput-object v3, Lcom/junrar/rarfile/UnrarHeadertype;->FileHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    new-instance v5, Lcom/junrar/rarfile/UnrarHeadertype;

    const-string v7, "CommHeader"

    const/4 v8, 0x3

    const/16 v9, 0x75

    invoke-direct {v5, v7, v8, v9}, Lcom/junrar/rarfile/UnrarHeadertype;-><init>(Ljava/lang/String;IB)V

    sput-object v5, Lcom/junrar/rarfile/UnrarHeadertype;->CommHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    new-instance v7, Lcom/junrar/rarfile/UnrarHeadertype;

    const-string v9, "AvHeader"

    const/4 v10, 0x4

    const/16 v11, 0x76

    invoke-direct {v7, v9, v10, v11}, Lcom/junrar/rarfile/UnrarHeadertype;-><init>(Ljava/lang/String;IB)V

    sput-object v7, Lcom/junrar/rarfile/UnrarHeadertype;->AvHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    new-instance v9, Lcom/junrar/rarfile/UnrarHeadertype;

    const-string v11, "SubHeader"

    const/4 v12, 0x5

    const/16 v13, 0x77

    invoke-direct {v9, v11, v12, v13}, Lcom/junrar/rarfile/UnrarHeadertype;-><init>(Ljava/lang/String;IB)V

    sput-object v9, Lcom/junrar/rarfile/UnrarHeadertype;->SubHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    new-instance v11, Lcom/junrar/rarfile/UnrarHeadertype;

    const-string v13, "ProtectHeader"

    const/4 v14, 0x6

    const/16 v15, 0x78

    invoke-direct {v11, v13, v14, v15}, Lcom/junrar/rarfile/UnrarHeadertype;-><init>(Ljava/lang/String;IB)V

    sput-object v11, Lcom/junrar/rarfile/UnrarHeadertype;->ProtectHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    new-instance v13, Lcom/junrar/rarfile/UnrarHeadertype;

    const-string v15, "SignHeader"

    const/4 v14, 0x7

    const/16 v12, 0x79

    invoke-direct {v13, v15, v14, v12}, Lcom/junrar/rarfile/UnrarHeadertype;-><init>(Ljava/lang/String;IB)V

    sput-object v13, Lcom/junrar/rarfile/UnrarHeadertype;->SignHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    new-instance v12, Lcom/junrar/rarfile/UnrarHeadertype;

    const-string v15, "NewSubHeader"

    const/16 v14, 0x8

    const/16 v10, 0x7a

    invoke-direct {v12, v15, v14, v10}, Lcom/junrar/rarfile/UnrarHeadertype;-><init>(Ljava/lang/String;IB)V

    sput-object v12, Lcom/junrar/rarfile/UnrarHeadertype;->NewSubHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    new-instance v10, Lcom/junrar/rarfile/UnrarHeadertype;

    const-string v15, "EndArcHeader"

    const/16 v14, 0x9

    const/16 v8, 0x7b

    invoke-direct {v10, v15, v14, v8}, Lcom/junrar/rarfile/UnrarHeadertype;-><init>(Ljava/lang/String;IB)V

    sput-object v10, Lcom/junrar/rarfile/UnrarHeadertype;->EndArcHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    const/16 v8, 0xa

    new-array v8, v8, [Lcom/junrar/rarfile/UnrarHeadertype;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v6

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v12, v8, v0

    aput-object v10, v8, v14

    sput-object v8, Lcom/junrar/rarfile/UnrarHeadertype;->$VALUES:[Lcom/junrar/rarfile/UnrarHeadertype;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lcom/junrar/rarfile/UnrarHeadertype;->headerByte:B

    return-void
.end method

.method public static findType(B)Lcom/junrar/rarfile/UnrarHeadertype;
    .registers 7

    sget-object v0, Lcom/junrar/rarfile/UnrarHeadertype;->MarkHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    invoke-virtual {v0, p0}, Lcom/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v1

    if-eqz v1, :cond_9

    return-object v0

    :cond_9
    sget-object v1, Lcom/junrar/rarfile/UnrarHeadertype;->MainHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    invoke-virtual {v1, p0}, Lcom/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v2

    if-eqz v2, :cond_12

    return-object v1

    :cond_12
    sget-object v2, Lcom/junrar/rarfile/UnrarHeadertype;->FileHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    invoke-virtual {v2, p0}, Lcom/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v3

    if-eqz v3, :cond_1b

    return-object v2

    :cond_1b
    sget-object v3, Lcom/junrar/rarfile/UnrarHeadertype;->EndArcHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    invoke-virtual {v3, p0}, Lcom/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v4

    if-eqz v4, :cond_24

    return-object v3

    :cond_24
    sget-object v4, Lcom/junrar/rarfile/UnrarHeadertype;->NewSubHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    invoke-virtual {v4, p0}, Lcom/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v5

    if-eqz v5, :cond_2d

    return-object v4

    :cond_2d
    sget-object v4, Lcom/junrar/rarfile/UnrarHeadertype;->SubHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    invoke-virtual {v4, p0}, Lcom/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v5

    if-eqz v5, :cond_36

    return-object v4

    :cond_36
    sget-object v4, Lcom/junrar/rarfile/UnrarHeadertype;->SignHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    invoke-virtual {v4, p0}, Lcom/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v5

    if-eqz v5, :cond_3f

    return-object v4

    :cond_3f
    sget-object v4, Lcom/junrar/rarfile/UnrarHeadertype;->ProtectHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    invoke-virtual {v4, p0}, Lcom/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v5

    if-eqz v5, :cond_48

    return-object v4

    :cond_48
    invoke-virtual {v0, p0}, Lcom/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v4

    if-eqz v4, :cond_4f

    return-object v0

    :cond_4f
    invoke-virtual {v1, p0}, Lcom/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_56

    return-object v1

    :cond_56
    invoke-virtual {v2, p0}, Lcom/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_5d

    return-object v2

    :cond_5d
    invoke-virtual {v3, p0}, Lcom/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_64

    return-object v3

    :cond_64
    sget-object v0, Lcom/junrar/rarfile/UnrarHeadertype;->CommHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    invoke-virtual {v0, p0}, Lcom/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v1

    if-eqz v1, :cond_6d

    return-object v0

    :cond_6d
    sget-object v0, Lcom/junrar/rarfile/UnrarHeadertype;->AvHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    invoke-virtual {v0, p0}, Lcom/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result p0

    if-eqz p0, :cond_76

    return-object v0

    :cond_76
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/junrar/rarfile/UnrarHeadertype;
    .registers 2

    const-class v0, Lcom/junrar/rarfile/UnrarHeadertype;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/junrar/rarfile/UnrarHeadertype;

    return-object p0
.end method

.method public static values()[Lcom/junrar/rarfile/UnrarHeadertype;
    .registers 1

    sget-object v0, Lcom/junrar/rarfile/UnrarHeadertype;->$VALUES:[Lcom/junrar/rarfile/UnrarHeadertype;

    invoke-virtual {v0}, [Lcom/junrar/rarfile/UnrarHeadertype;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/junrar/rarfile/UnrarHeadertype;

    return-object v0
.end method


# virtual methods
.method public equals(B)Z
    .registers 3

    iget-byte v0, p0, Lcom/junrar/rarfile/UnrarHeadertype;->headerByte:B

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public getHeaderByte()B
    .registers 2

    iget-byte v0, p0, Lcom/junrar/rarfile/UnrarHeadertype;->headerByte:B

    return v0
.end method
