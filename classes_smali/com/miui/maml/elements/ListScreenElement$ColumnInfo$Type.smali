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

    new-instance v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    const-string v1, "STRING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->STRING:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    new-instance v1, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    const-string v3, "BITMAP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->BITMAP:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    new-instance v3, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    const-string v5, "INTEGER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->INTEGER:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    new-instance v5, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    const-string v7, "DOUBLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->DOUBLE:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    new-instance v7, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    const-string v9, "LONG"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->LONG:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    new-instance v9, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    const-string v11, "FLOAT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->FLOAT:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->$VALUES:[Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;
    .registers 2

    const-class v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    return-object p0
.end method

.method public static values()[Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;
    .registers 1

    sget-object v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->$VALUES:[Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v0}, [Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    return-object v0
.end method


# virtual methods
.method public isNumber()Z
    .registers 2

    sget-object v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->INTEGER:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    if-eq p0, v0, :cond_13

    sget-object v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->DOUBLE:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    if-eq p0, v0, :cond_13

    sget-object v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->LONG:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    if-eq p0, v0, :cond_13

    sget-object v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->FLOAT:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method
