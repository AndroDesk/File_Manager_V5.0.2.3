.class public final enum Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;
.super Ljava/lang/Enum;
.source "ListScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

.field public static final enum BITMAP:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

.field public static final enum DOUBLE:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

.field public static final enum FLOAT:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

.field public static final enum INTEGER:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

.field public static final enum LONG:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

.field public static final enum STRING:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;


# direct methods
.method public static constructor <clinit>()V
    .registers 13

    .line 1
    new-instance v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 3
    const-string v1, "STRING"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->STRING:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 11
    new-instance v1, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 13
    const-string v3, "BITMAP"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->BITMAP:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 21
    new-instance v3, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 23
    const-string v5, "INTEGER"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->INTEGER:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 31
    new-instance v5, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 33
    const-string v7, "DOUBLE"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v5, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->DOUBLE:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 41
    new-instance v7, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 43
    const-string v9, "LONG"

    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;-><init>(Ljava/lang/String;I)V

    .line 49
    sput-object v7, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->LONG:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 51
    new-instance v9, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 53
    const-string v11, "FLOAT"

    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12}, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;-><init>(Ljava/lang/String;I)V

    .line 59
    sput-object v9, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->FLOAT:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 61
    const/4 v11, 0x6

    .line 62
    new-array v11, v11, [Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 64
    aput-object v0, v11, v2

    .line 66
    aput-object v1, v11, v4

    .line 68
    aput-object v3, v11, v6

    .line 70
    aput-object v5, v11, v8

    .line 72
    aput-object v7, v11, v10

    .line 74
    aput-object v9, v11, v12

    .line 76
    sput-object v11, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->$VALUES:[Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 78
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;
    .registers 2

    .line 1
    const-class v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;
    .registers 1

    .line 1
    sget-object v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->$VALUES:[Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 3
    invoke-virtual {v0}, [Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 9
    return-object v0
.end method


# virtual methods
.method public isNumber()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->INTEGER:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 3
    if-eq p0, v0, :cond_13

    .line 5
    sget-object v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->DOUBLE:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 7
    if-eq p0, v0, :cond_13

    .line 9
    sget-object v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->LONG:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 11
    if-eq p0, v0, :cond_13

    .line 13
    sget-object v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->FLOAT:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 15
    if-ne p0, v0, :cond_11

    .line 17
    goto :goto_13

    .line 18
    :cond_11
    const/4 v0, 0x0

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 21
    :goto_14
    return v0
.end method
