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

    new-instance v0, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    const-string v1, "STROKE_CENTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_CENTER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    new-instance v1, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    const-string v3, "STROKE_OUTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_OUTER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    new-instance v3, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    const-string v5, "STROKE_INNER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_INNER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    new-instance v5, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    const-string v7, "FILL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->FILL:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->$VALUES:[Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

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

.method public static getStrokeAlign(Ljava/lang/String;)Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;
    .registers 2

    const-string v0, "inner"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p0, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_INNER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    return-object p0

    :cond_b
    const-string v0, "center"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    sget-object p0, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_CENTER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    return-object p0

    :cond_16
    sget-object p0, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_OUTER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;
    .registers 2

    const-class v0, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    return-object p0
.end method

.method public static values()[Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;
    .registers 1

    sget-object v0, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->$VALUES:[Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    invoke-virtual {v0}, [Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    return-object v0
.end method
