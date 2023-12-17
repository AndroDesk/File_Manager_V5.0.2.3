.class public final enum Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;
.super Ljava/lang/Enum;
.source "GeometryScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/GeometryScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DrawMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

.field public static final enum FILL:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

.field public static final enum STROKE_CENTER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

.field public static final enum STROKE_INNER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

.field public static final enum STROKE_OUTER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    .line 1
    new-instance v0, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    .line 3
    const-string v1, "STROKE_CENTER"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_CENTER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    .line 11
    new-instance v1, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    .line 13
    const-string v3, "STROKE_OUTER"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_OUTER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    .line 21
    new-instance v3, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    .line 23
    const-string v5, "STROKE_INNER"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_INNER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    .line 31
    new-instance v5, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    .line 33
    const-string v7, "FILL"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v5, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->FILL:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    .line 41
    const/4 v7, 0x4

    .line 42
    new-array v7, v7, [Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    .line 44
    aput-object v0, v7, v2

    .line 46
    aput-object v1, v7, v4

    .line 48
    aput-object v3, v7, v6

    .line 50
    aput-object v5, v7, v8

    .line 52
    sput-object v7, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->$VALUES:[Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    .line 54
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

.method public static getStrokeAlign(Ljava/lang/String;)Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;
    .registers 2

    .line 1
    const-string v0, "inner"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_b

    .line 9
    sget-object p0, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_INNER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    .line 11
    return-object p0

    .line 12
    :cond_b
    const-string v0, "center"

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_16

    .line 20
    sget-object p0, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_CENTER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    .line 22
    return-object p0

    .line 23
    :cond_16
    sget-object p0, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_OUTER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    .line 25
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;
    .registers 2

    .line 1
    const-class v0, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;
    .registers 1

    .line 1
    sget-object v0, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->$VALUES:[Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    .line 3
    invoke-virtual {v0}, [Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    .line 9
    return-object v0
.end method
