.class public final enum Lcom/miui/maml/elements/ScreenElement$Align;
.super Ljava/lang/Enum;
.source "ScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/ScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Align"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/elements/ScreenElement$Align;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/elements/ScreenElement$Align;

.field public static final enum CENTER:Lcom/miui/maml/elements/ScreenElement$Align;

.field public static final enum LEFT:Lcom/miui/maml/elements/ScreenElement$Align;

.field public static final enum RIGHT:Lcom/miui/maml/elements/ScreenElement$Align;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/miui/maml/elements/ScreenElement$Align;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement$Align;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/elements/ScreenElement$Align;->LEFT:Lcom/miui/maml/elements/ScreenElement$Align;

    new-instance v1, Lcom/miui/maml/elements/ScreenElement$Align;

    const-string v3, "CENTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/maml/elements/ScreenElement$Align;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/maml/elements/ScreenElement$Align;->CENTER:Lcom/miui/maml/elements/ScreenElement$Align;

    new-instance v3, Lcom/miui/maml/elements/ScreenElement$Align;

    const-string v5, "RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/miui/maml/elements/ScreenElement$Align;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/miui/maml/elements/ScreenElement$Align;->RIGHT:Lcom/miui/maml/elements/ScreenElement$Align;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/miui/maml/elements/ScreenElement$Align;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/miui/maml/elements/ScreenElement$Align;->$VALUES:[Lcom/miui/maml/elements/ScreenElement$Align;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement$Align;
    .registers 2

    const-class v0, Lcom/miui/maml/elements/ScreenElement$Align;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/elements/ScreenElement$Align;

    return-object p0
.end method

.method public static values()[Lcom/miui/maml/elements/ScreenElement$Align;
    .registers 1

    sget-object v0, Lcom/miui/maml/elements/ScreenElement$Align;->$VALUES:[Lcom/miui/maml/elements/ScreenElement$Align;

    invoke-virtual {v0}, [Lcom/miui/maml/elements/ScreenElement$Align;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/maml/elements/ScreenElement$Align;

    return-object v0
.end method
